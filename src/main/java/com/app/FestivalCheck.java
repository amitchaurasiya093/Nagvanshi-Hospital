package com.app;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

public class FestivalCheck 
  {

	   public static String getTodayFestival() 
	     {
     
		      Map<String, String> festivalMap = new HashMap<>();
     
		      festivalMap.put("2025-05-05", "Buddha Purnima");
     
		      festivalMap.put("2025-08-15", "Independence Day");
     
		      festivalMap.put("2025-10-02", "Gandhi Jayanti");
     
		      String today = LocalDate.now().toString();
     
		      return festivalMap.getOrDefault(today, "");
 
	     }

  }
