package com.mcom.mapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/jstl_map", method = RequestMethod.GET)
	public String jstl_map(Locale locale, Model model) {
		
		// 맵, 키:아이디, 벨류:이름
		Map<String, String> idnames = new HashMap<String, String>(){{
			put("iu","아이유");
			put("nola","놀아줘");
			put("sonhm","손흥민");
		}};
		// 모델객체에 추가
		model.addAttribute("idnames", idnames);
		// JSP로 이동
		return "jstl_map";
	}	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/only_map", method = RequestMethod.GET)
	public String only_map(Locale locale, Model model) {
		
		// 맵, 키:아이디, 벨류:이름
		Map<String, String> idnames = new HashMap<String, String>(){{
			put("iu","아이유");
			put("nola","놀아줘");
			put("sonhm","손흥민");
		}};
		// 모델객체에 추가
		model.addAttribute("idnames", idnames);
		// JSP로 이동
		return "only_map";
	}	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}
