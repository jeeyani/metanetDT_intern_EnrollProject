package com.oopsw.member.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class TimeController {
	//시간표조회페이지가져오기
	@RequestMapping(value = "/timetable", method = RequestMethod.GET)
	public String timetable() {
				
		return "timetable";
	}
		
}
