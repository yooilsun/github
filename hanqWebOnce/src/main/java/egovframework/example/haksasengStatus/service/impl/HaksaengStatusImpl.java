package egovframework.example.haksasengStatus.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.haksasengStatus.service.CheckTableVO;
import egovframework.example.haksasengStatus.service.HaksaengStatusService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class HaksaengStatusImpl implements HaksaengStatusService{
	
	@Resource
	HaksaengStatusMapper haksaengStatusMapper;

	@Override
	public List<EgovMap> selectHaksaengStatusServiceList() throws Exception {
		
		return haksaengStatusMapper.selectHaksaengStatusServiceList();
	}

	@Override
	public List<EgovMap> selectHaksaengStatusChartServiceList() throws Exception {
		
		return haksaengStatusMapper.selectHaksaengStatusChartServiceList();
	}

	@Override
	public List<EgovMap> selectHaksaengStatusTableServiceList() throws Exception {
		
		return haksaengStatusMapper.selectHaksaengStatusTableServiceList();
	}

	@Override
	public List<EgovMap> selectHaksaengStatusTableNameServiceList(String tableName) throws Exception {
		
		return haksaengStatusMapper.selectHaksaengStatusTableNameServiceList(tableName);
	}

	@Override
	public List<EgovMap> selectHaksaengCheckTableServiceList(CheckTableVO checkTableVO) throws Exception {
		
		return haksaengStatusMapper.selectHaksaengCheckTableServiceList(checkTableVO);
	}

	@Override
	public List<EgovMap> selectHaksaengCheckTableServiceList(String string) throws Exception {
		
		return haksaengStatusMapper.selectHaksaengCheckTableServiceList(string);
	}

	@Override
	public List<EgovMap> selectHaksaengCheckTableServiceList(HashMap<String, String> hash) throws Exception {
		
		return haksaengStatusMapper.selectHaksaengCheckTableServiceList(hash);
	}

	@Override
	public List<EgovMap> selectComputerPartsServiceList() throws Exception {
		
		return haksaengStatusMapper.selectComputerPartsServiceList();
	}

	@Override
	public List<EgovMap> selectComputerPartsOptServiceList() throws Exception {
	
		return haksaengStatusMapper.selectComputerPartsOptServiceList();
	}

	@Override
	public List<EgovMap> selectComputerPartsOptCdServiceList(String parts) throws Exception {
	
		return haksaengStatusMapper.selectComputerPartsOptCdServiceList(parts);
	}

	@Override
	public List<EgovMap> selectHaksaengStatusServiceList(EgovMap paramMap) throws Exception {
		
		return haksaengStatusMapper.selectHaksaengStatusServiceList(paramMap);
	}



	
	
}
