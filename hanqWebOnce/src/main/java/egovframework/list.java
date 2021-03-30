package egovframework;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class list {

	public static void main(String[] args) {
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();

		for(int i = 0; i < 5; i++) {
			
			list.add(i, new HashMap<String,Object>());
			
			list.get(i).put(Integer.toString(i),i);
			
		}
		System.out.println(list);
	}

}
