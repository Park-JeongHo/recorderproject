package kr.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.core.ResolvableType;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.buffer.DataBufferUtils;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.MultipartBodyBuilder;
import org.springframework.http.codec.multipart.DefaultPartHttpMessageReader;
import org.springframework.http.codec.multipart.Part;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.client.WebClient;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.var;
import reactor.core.publisher.Flux;

@RestController
public class PetEyeController {
	
	@Data
	@NoArgsConstructor
	@AllArgsConstructor
	static class PetEyeDetect {
		private String animal;
		private String disease;
	}
	
	@PostMapping("/peteye/detect.do")
	PetEyeDetect peteye_detect(@RequestParam(name = "file") MultipartFile[] uploadfile) throws IllegalStateException, IOException {
		MultipartFile file = uploadfile[0];
		if (file.isEmpty())
			return null;
		
		MultipartBodyBuilder builder = new MultipartBodyBuilder();
	    builder.part("file", new ByteArrayResource(file.getBytes()))
	        .header("Content-Disposition",
	            "form-data; name=file; filename=" + file.getOriginalFilename());
	    
	    PetEyeDetect response =  WebClient.create("http://14.49.45.71:3100")
	            .method(HttpMethod.POST)
	            .uri("/peteye/detect")
	            .body(BodyInserters.fromMultipartData(builder.build()))
	            .retrieve()
	            .bodyToMono(PetEyeDetect.class)
	            .block();
	    
	    return response;
	}
	
	@PostMapping("/peteye/detect/detail.do")
	ResponseEntity<MultiValueMap<String,HttpEntity<?>>>
	peteye_detect_detail(@RequestParam(name = "file") MultipartFile[] uploadfile) throws IllegalStateException, IOException {
		MultipartFile file = uploadfile[0];
		if (file.isEmpty())
			return null;
		
		MultipartBodyBuilder builder = new MultipartBodyBuilder();
	    builder.part("file", new ByteArrayResource(file.getBytes()))
	        .header("Content-Disposition",
	            "form-data; name=file; filename=" + file.getOriginalFilename());

	    final var partReader = new DefaultPartHttpMessageReader();
	    partReader.setStreaming(false); 
	    
	    ResponseEntity<Flux<Part>> request = WebClient.create("http://14.49.45.71:3096")
	            .method(HttpMethod.POST)
	            .uri("/peteye/detect/detail")
	            .body(BodyInserters.fromMultipartData(builder.build()))
	            .accept(MediaType.MULTIPART_FORM_DATA)
	            .retrieve()
	            .toEntityFlux((inputMessage, context) -> 
            	partReader.read(ResolvableType.forType(byte[].class), inputMessage, Map.of()))
	            .block();
	    
	    List<Part> parts = request.getBody().collectList().block();

	    String results = null;
	    byte[] img_bbox = null;
	    ArrayList<byte[]> img_crops = new ArrayList<byte[]>();
	    
	    for (Part part : parts) {
	    	// 각 파트의 바이트 데이터로 읽기
            byte[] data = DataBufferUtils.join(part.content())
                    .map(dataBuffer -> {
                        byte[] bytes = new byte[dataBuffer.readableByteCount()];
                        dataBuffer.read(bytes);
                        DataBufferUtils.release(dataBuffer);
                        return bytes;
                    }).block();

            // 멀티파트의 헤더 읽어 처리
	        String contentDisposition = part.headers().get("Content-Disposition").get(0);
	        if (contentDisposition.contains("results")) {
	        	results = new String(data);
	        } else if (contentDisposition.contains("img_bbox")) {
	        	img_bbox = data;
	        } else if (contentDisposition.contains("img_crops[]")) {
	        	img_crops.add(data);
	        }
	    }

	    // 멀티파트 데이터 생성하기
		MultipartBodyBuilder multiPartBuilder = new MultipartBodyBuilder();
		multiPartBuilder.part("results", results, MediaType.APPLICATION_JSON);
			
		multiPartBuilder.part("img_bbox", new ByteArrayResource(img_bbox))
	        .header("Content-Disposition", "form-data; name=\"img_bbox\"; filename=\"img_bbox.png\"")
	        .header("Content-Type", "image/png");
		
		int index = 0;
		for (byte[] image : img_crops) {
			multiPartBuilder.part("img_crops[]", new ByteArrayResource(image))
	        .header("Content-Disposition", "form-data; name=\"img_crops[]\"; filename=\"img_crop_"+index+ ".png\"")
	        .header("Content-Type", "image/png");
			
			index += 1;
		};
		
		MultiValueMap<String,HttpEntity<?>> responseBody = multiPartBuilder.build();
	    return ResponseEntity.ok()
	    		.contentType(MediaType.MULTIPART_FORM_DATA)  // multipart/formdata
                .body(responseBody)
                ;
        
	}
	
	@RequestMapping(value = "/resttemplate/peteye/detect", method = RequestMethod.POST)
	@ResponseBody
	String peteyeDetect(@RequestParam("file") MultipartFile[] uploadfile) throws IllegalStateException, IOException {
		MultipartFile file = uploadfile[0];
		if (file.isEmpty())
			return null;
	    
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.MULTIPART_FORM_DATA);

		MultiValueMap<String, Object> body
		  = new LinkedMultiValueMap<>();
		
		ByteArrayResource contentAsResource = new ByteArrayResource(file.getBytes()) {
			@Override
			public String getFilename() {
				return file.getOriginalFilename();
			}
		};
		
		body.add("file", contentAsResource);
		
		HttpEntity<MultiValueMap<String, Object>> requestEntity
		 = new HttpEntity<>(body, headers);

		String serverUrl = "http://14.49.45.71:3100/peteye/detect";
		//String serverUrl = "http://localhost:8080/peteye/detect";

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate
		  .postForEntity(serverUrl, requestEntity, String.class);
		
		String result1 = response.getBody();

		
		// JSON 문자열을 jackson의 읽기전용 JsonNode 객체로 변환 
		final ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode = objectMapper.readTree(response.getBody());
		String animal = jsonNode.get("animal").asText();
		String disease = jsonNode.at("/disease").asText();
		
		String result2 = jsonNode.toString();

		
		// 읽고 쓰기 가능한 JSON 객체 생성(jackson ObjectNode)
		ObjectNode objectNode = objectMapper.createObjectNode();
		objectNode.put("animal", "개").put("disease", "결막염");
		//objectNode.with("/").put("animal", "개").put("disease", "결막염");
		
		String result3 = objectNode.toString();

		String result4 = "{ \"animal\": \"개\", \"disease\": \"결막염\" }";

	    return result1;
	}
	
	@RequestMapping("/hospital.do")
	public String hospital() {
		
		return "pet/hospital";
	}
	
	@RequestMapping("/eye2.do")
	public String eye2() {
		
		return "pet/eye2";
	}
}
