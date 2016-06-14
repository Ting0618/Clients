package com.project.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.project.bean.ClientsBean;

@Controller
public class UploadAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private File file;
	// 文件名称
	private String fileFileName;
	// 文件类型
	private String fileContentType;
	private Map<String, Object> session;

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String execute() throws Exception {

		/*
		 * System.out.println("execute  文件的"); System.out.println("file "+file);
		 * System.out.println("fileFileName "+fileFileName);
		 * System.out.println("fileContentType "+fileContentType);
		 */

		// 获取需要上传文件的文件路径
		File uploadFile = new File(ServletActionContext.getServletContext()
				.getRealPath("uploadsss"));
		// System.out.println("要上传到的地方  "+ServletActionContext.getServletContext().getRealPath("uploadsss"));

		// 判断文件是否上传，如果上传的话将会创建该目录
		if (!uploadFile.exists()) {
			uploadFile.mkdir(); // 创建该目录
		}

		if (file != null) {
			// 声明文件输入流，为输入流指定文件路径
			FileInputStream input = new FileInputStream(file);
			// 获取输出流，获取文件的文件地址及名称
			FileOutputStream out = new FileOutputStream(uploadFile + "\\"
					+ fileFileName);
			// System.out.println(out.toString());
			try {
				byte[] b = new byte[1024];// 每次写入的大小
				input.read(b);// 将文件中的内容读取到字节数组中
				// System.out.println(input.read(b));
				int i = 0;
				while ((i = input.read(b)) > 0) {
					// System.out.println("here");
					out.write(b, 0, i);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				input.close();
				out.close();
			}
			return "success";
		} else {
			return "error";
		}

		// 第二种方法
		/*
		 * BufferedReader bReader=new BufferedReader(new InputStreamReader(new
		 * FileInputStream(file))); BufferedWriter bWriter=new
		 * BufferedWriter(new OutputStreamWriter(new
		 * FileOutputStream(uploadFile+"\\"+fileFileName)));
		 * 
		 * try{ char[] str=new char[1024]; int i=0;
		 * while((i=bReader.read(str))>0){ bWriter.write(str,0,i); }
		 * }catch(Exception e){ e.printStackTrace(); }finally{ bReader.close();
		 * bWriter.close(); uploadFile.delete(); }
		 */
	}

	public String preView2() {
		String willgo = ServletActionContext.getServletContext().getRealPath(
				"uploadsss");
		String path = willgo + "\\" + fileFileName;
		System.out.println(path);
		List<ClientsBean> fileList = new ArrayList<ClientsBean>();
		File file = new File(path);
		try {
			Workbook wb = Workbook.getWorkbook(file);
			Sheet sheet = wb.getSheet(0);
			System.out.println(sheet.getRows());
			System.out.println(sheet.getColumns());
			System.out.println(sheet.getCell(3, 5).getContents());// 5行3列
			System.out.println(sheet.getCell(4, 5).getContents());
			System.out.println(sheet.getCell(5, 5).getContents());

			// 老师的办法
			// 循环行
			for (int i = 0; i < sheet.getRows(); i++) {
				// 循环列
				for (int j = 0; j < sheet.getColumns() - 1; j++) {
					// fileList.add(sheet.getCell(j, i).getContents());
					// System.out.println(sheet.getCell(i, j).getContents());
				}
			}

			session.put("fileList", fileList);
			wb.close();
		} catch (BiffException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
	}

	
	//读取excel表格
	public String preView() {
		String willgo = ServletActionContext.getServletContext().getRealPath(
				"uploadsss");
		String path = willgo + "\\" + fileFileName;
		InputStream is;
		// 存放每一行数据
		List<ClientsBean> list = new ArrayList<ClientsBean>();
		try {
			is = new FileInputStream(path);
			HSSFWorkbook hssfWorkbook = new HSSFWorkbook(is);// 产生工作簿对象
			// 循环工作表Sheet
			for (int numSheet = 0; numSheet < hssfWorkbook.getNumberOfSheets(); numSheet++) {
				HSSFSheet hssfSheet = hssfWorkbook.getSheetAt(numSheet);// 产生工作表对象
				if (hssfSheet == null) {
					continue;
				}
		//	System.out.println("hssfSheet.getLastRowNum() "+ hssfSheet.getLastRowNum());// 工作表的行数，title的部分不算
				// 循环行Row,第一行是title，所以从1开始的
				for (int rowNum = 1; rowNum <= hssfSheet.getLastRowNum(); rowNum++) {
					HSSFRow hssfRow = hssfSheet.getRow(rowNum);// 取出工作表的第 rowNum行
					if (hssfRow != null) {
						ClientsBean c1 = new ClientsBean();
						java.util.Date startt, pret;
						SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");// 规定时间显示的格式
						HSSFCell name = hssfRow.getCell(0); // 取出这一行第 i个单元格的数据
						HSSFCell source = hssfRow.getCell(1);
						HSSFCell status = hssfRow.getCell(2);
						HSSFCell sales = hssfRow.getCell(3);
						HSSFCell statime = hssfRow.getCell(4);// 06，五月，2014
						HSSFCell pretime = hssfRow.getCell(5);
						HSSFCell premoney = hssfRow.getCell(6);
						HSSFCell address = hssfRow.getCell(7);
						HSSFCell remark = hssfRow.getCell(8);
						HSSFCell attachment = hssfRow.getCell(9);
						// System.out.println("source  "+source);
						c1.setName(getValue(name)); // 将name进行判断后确认是string类型后传给c1
						c1.setSource(getValue2(source));// 将double类型的source编程int类型后传给c1（这里并没有转换成功）
						c1.setStatus(getValue2(status));
						c1.setSales(getValue2(sales));
						// System.out.println("c1.getName() "+c1.getName());
						c1.setPremoney(Double.valueOf(getValue(premoney)));
						c1.setAdress(getValue(address));
						c1.setRemark(getValue(remark));
						// System.out.println("attachment "+getValue(attachment));
						c1.setAttachment(getValue(attachment));

						startt = statime.getDateCellValue();// 时间转化为 Tue May 06
															// 00:00:00 CST 2014
						String stime = ft.format(startt);// 时间转化为 2014-05-06

						pret = pretime.getDateCellValue();
						String preti = ft.format(pret);

						startt = ft.parse(stime);// 将字符串的时间转化为Data类型的
						pret = ft.parse(preti);
						c1.setStatime(startt);
						c1.setPretime(pret);

						list.add(c1);
					}
				}
			}
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			System.out.println("FileNotFoundException");
			e1.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("IOException");
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Exception");
			e.printStackTrace();
		}
		session.put("newClient", list);
		return "success";
	}

	private int getValue2(HSSFCell hssfCell) {
		if (hssfCell.getCellType() == hssfCell.CELL_TYPE_NUMERIC) {
			// 返回数值类型的值
			return (int) hssfCell.getNumericCellValue();// 好像可以不要
		} else
			return 0;
	}

	// 根据单元格不同属性返回字符串数值
	private String getValue(HSSFCell hssfCell) {
		if (hssfCell.getCellType() == hssfCell.CELL_TYPE_BOOLEAN) {// 如果这一行这个单元格的数据是boolean类型
			// 返回布尔类型的值
			return String.valueOf(hssfCell.getBooleanCellValue());// 把这个数据转换成字符串类型
		} else if (hssfCell.getCellType() == hssfCell.CELL_TYPE_NUMERIC) {
			// 返回数值类型的值
			return String.valueOf(hssfCell.getNumericCellValue());
		} else {
			// 返回字符串类型的值
			return String.valueOf(hssfCell.getStringCellValue());
		}
	}

}
