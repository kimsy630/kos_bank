package spring.mvc.teamProject.service;

import java.io.FileInputStream;
import java.io.IOException; 
import java.io.InputStream; 
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator; 
import java.util.List; 
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.ss.usermodel.Cell; 
import org.apache.poi.ss.usermodel.DateUtil; 
import org.apache.poi.ss.usermodel.Row; 
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook; 
import org.apache.poi.ss.usermodel.WorkbookFactory;

import spring.mvc.teamProject.vo.ExchangeVO; 
public class ExcelImport { 
	public static void main( String[] args ) throws EncryptedDocumentException, IOException {
		List<ExchangeVO> studnetList = getStudentList(); 
		for (ExchangeVO studentDTO : studnetList) { 
			System.out.println(studentDTO.getClass() + ", " + studentDTO.getClass() + ", " + studentDTO.getClass()); 
		} 
	} 
	public static List<ExchangeVO> getStudentList() throws EncryptedDocumentException, IOException { 
		
		List<ExchangeVO> exchangeList = new ArrayList<ExchangeVO>();
		// 웹상에서 업로드 되어 MultipartFile인 경우 바로 InputStream으로 변경하여 사용. 
		// InputStream inputStream = new ByteArrayInputStream(file.getBytes());
		String filePath = "D:\\test.xlsx";// xlsx 형식 
		// String filePath = "D:\\student.xls"; // xls 형식
		
		InputStream inputStream = new FileInputStream(filePath); 
		// 엑셀 로드 
		Workbook workbook = WorkbookFactory.create(inputStream); 
		// 시트 로드 0, 첫번째 시트 로드 
		Sheet sheet = workbook.getSheetAt(0); 
		Iterator<Row> rowItr = sheet.iterator(); 
		// 행만큼 반복 
		while(rowItr.hasNext()) { 
			ExchangeVO exchange = new ExchangeVO(); 
			Row row = rowItr.next(); 
			// 첫번재 행이 해더인 경우 스킵, 2번째 행부터 data 로드 
			if(row.getRowNum() == 0) { 
				continue; 
			} 
			Iterator<Cell> cellItr = row.cellIterator(); 
			// 한행이 한열씩 읽기 (셀 읽기) 
			while(cellItr.hasNext()) {
				Cell cell = cellItr.next(); 
				int index = cell.getColumnIndex(); 
				switch(index) { 
				case 0://외화
					exchange.setCountry_name(((String)getValueFromCell(cell)));
					break; 
				case 1://현찰 살 때
					exchange.setBuying_cost(Float.valueOf(getValueFromCell(cell).toString()));
					break; 
				case 2: // 현찰 살 때 수수료율
					exchange.setBfee_ratio(Float.valueOf(getValueFromCell(cell).toString()));
					break; 
				case 3: // 현찰 팔 때 
					exchange.setSelling_cost(Float.valueOf(getValueFromCell(cell).toString()));
					break; 
				case 4: // 현찰 팔 때 수수료율
					exchange.setSlfee_ratio(Float.valueOf(getValueFromCell(cell).toString()));
					break; 
				case 5: //송금 보낼 떄
					exchange.setSending_cost(Float.valueOf(getValueFromCell(cell).toString()));
					break; 
				case 6: // 송금 보낼 때 수수료율
					exchange.setSefee_ratio(Float.valueOf(getValueFromCell(cell).toString()));
					break; 
				case 7: // 매매기준율
					exchange.setDealing_br(Float.valueOf(getValueFromCell(cell).toString()));
					break; 
				} 
				
			} 
			exchangeList.add(exchange); 
		}
		return exchangeList; 
	}
	// 셀서식에 맞게 값 읽기 
		private static Object getValueFromCell(Cell cell) { 
			switch(cell.getCellType()) { 
			case STRING: 
				return cell.getStringCellValue(); 
			case BOOLEAN: 
				return cell.getBooleanCellValue(); 
			case NUMERIC: 
				if(DateUtil.isCellDateFormatted(cell)) { 
					return cell.getDateCellValue(); 
				} 
				return cell.getNumericCellValue(); 
			case FORMULA: return cell.getCellFormula(); 
			case BLANK: 
				return ""; 
			default: return ""; 
		} 	
	}
}
