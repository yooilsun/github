package egovframework.example.haksasengStatus.service;

import java.util.HashMap;
import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface HaksaengStatusService {

	List<EgovMap> selectHaksaengStatusServiceList() throws Exception;

	List<EgovMap> selectHaksaengStatusChartServiceList() throws Exception;

	List<EgovMap> selectHaksaengStatusTableServiceList() throws Exception;

	List<EgovMap> selectHaksaengStatusTableNameServiceList(String tableName) throws Exception;

	List<EgovMap> selectHaksaengCheckTableServiceList(CheckTableVO checkTableVO) throws Exception;

	List<EgovMap> selectHaksaengCheckTableServiceList(String string) throws Exception;

	List<EgovMap> selectHaksaengCheckTableServiceList(HashMap<String, String> hash) throws Exception;

	List<EgovMap> selectComputerPartsServiceList() throws Exception;

	List<EgovMap> selectComputerPartsOptServiceList()  throws Exception;

	List<EgovMap> selectComputerPartsOptCdServiceList(String parts) throws Exception;

	List<EgovMap> selectHaksaengStatusServiceList(EgovMap paramMap) throws Exception;
	


}
