package kr.smhrd.controller;

import java.io.IOException;

import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import kr.smhrd.entity.TblEye;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class PeteyeController {
	
	
	
	@RequestMapping(value = "/peteye/detect", method = RequestMethod.POST)
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

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate
		  .postForEntity(serverUrl, requestEntity, String.class);
		
		// String response = "{ \"animal\": \"개\", \"disease\": \"결막염\" }";
	    return response.getBody();
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
