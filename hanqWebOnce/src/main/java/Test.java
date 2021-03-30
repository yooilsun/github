import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Test {
	

	public static void main(String[] args) {
		
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		
		for (int i = 0; i < 3; i++) {
			Map<String, Object> map = new HashMap<String, Object>();
			
			list.add(i, map);
			
			map.put(Integer.toString(i), i);
		}
		
		for(int i = 0; i < list.size(); i++) {
			Map<String,Object> map = new HashMap<String, Object>();
			
			
			map.put(Integer.toString(i), (i < 2) ? "dp" + i : i);
			
			list.set(i, map);
			
		}
		
		System.out.println(list);
		
		TestVo testVo = new TestVo();
		
		for(int i = 0; i < list.size(); i++) {
			
			if(i % 2 == 0) testVo.setMap((list.get(i)));
			
			else continue;
		}	
		System.out.println(testVo.getMap());
	}

}
