package com.prasha.springrestconsumer;

import java.util.Arrays;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class FlightRestClient {

	@RequestMapping("/showAllFlights")
	public String showAllFlights(Model model) {
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Flight[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8080/flightapp/api/getFlights", Flight[].class);
		Flight[] flightsArray = responseEntity.getBody();
		List<Flight> flights = Arrays.asList(flightsArray);
		model.addAttribute("flights", flights);
		return "showAllFlights";
	}

}
