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
public class PetEmotionController {
	
	@PostMapping("/petemotion/detect.do")
	String peteye_detect(@RequestParam(name = "file") MultipartFile[] uploadfile) throws IllegalStateException, IOException {
		MultipartFile file = uploadfile[0];
		if (file.isEmpty())
			return null;
		
		MultipartBodyBuilder builder = new MultipartBodyBuilder();
	    builder.part("file", new ByteArrayResource(file.getBytes()))
	        .header("Content-Disposition",
	            "form-data; name=file; filename=" + file.getOriginalFilename());
	    
	    String response =  WebClient.create("http://14.49.45.71:3098")
	            .method(HttpMethod.POST)
	            .uri("/petemotion/detect")
	            .body(BodyInserters.fromMultipartData(builder.build()))
	            .retrieve()
	            .bodyToMono(String.class)
	            .block();
	    
		// JSON 문자열을 jackson의 읽기전용 JsonNode 객체로 변환 
		final ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode = objectMapper.readTree(response);
		String animal = jsonNode.at("/animal").asText();
		String action = jsonNode.at("/action").asText();
		String emotion = jsonNode.at("/emotion").asText();
		
		String result = jsonNode.toString();
	    
	    return result;
	}
	
}
