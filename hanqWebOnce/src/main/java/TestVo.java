import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TestVo {
		
		Test test = new Test();
		List<Map<String, Object>> listTest = new ArrayList<Map<String, Object>>();
		Map<String, Object> map = new HashMap<String, Object>();
		
		public List<Map<String, Object>> getListTest() {
			return listTest;
		}
		public void setListTest(List<Map<String, Object>> listTest) {
			this.listTest = listTest;
		}
		public Map<String, Object> getMap() {
			return map;
		}
		public void setMap(Map<String, Object> map) {
			
			for(int i = 0; i < map.size(); i++) {
				
				this.map.put(Integer.toString(i), map);
			}		
		}
}
