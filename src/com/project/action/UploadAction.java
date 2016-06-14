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
	// �ļ�����
	private String fileFileName;
	// �ļ�����
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
		 * System.out.println("execute  �ļ���"); System.out.println("file "+file);
		 * System.out.println("fileFileName "+fileFileName);
		 * System.out.println("fileContentType "+fileContentType);
		 */

		// ��ȡ��Ҫ�ϴ��ļ����ļ�·��
		File uploadFile = new File(ServletActionContext.getServletContext()
				.getRealPath("uploadsss"));
		// System.out.println("Ҫ�ϴ����ĵط�  "+ServletActionContext.getServletContext().getRealPath("uploadsss"));

		// �ж��ļ��Ƿ��ϴ�������ϴ��Ļ����ᴴ����Ŀ¼
		if (!uploadFile.exists()) {
			uploadFile.mkdir(); // ������Ŀ¼
		}

		if (file != null) {
			// �����ļ���������Ϊ������ָ���ļ�·��
			FileInputStream input = new FileInputStream(file);
			// ��ȡ���������ȡ�ļ����ļ���ַ������
			FileOutputStream out = new FileOutputStream(uploadFile + "\\"
					+ fileFileName);
			// System.out.println(out.toString());
			try {
				byte[] b = new byte[1024];// ÿ��д��Ĵ�С
				input.read(b);// ���ļ��е����ݶ�ȡ���ֽ�������
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

		// �ڶ��ַ���
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
			System.out.println(sheet.getCell(3, 5).getContents());// 5��3��
			System.out.println(sheet.getCell(4, 5).getContents());
			System.out.println(sheet.getCell(5, 5).getContents());

			// ��ʦ�İ취
			// ѭ����
			for (int i = 0; i < sheet.getRows(); i++) {
				// ѭ����
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

	
	//��ȡexcel���
	public String preView() {
		String willgo = ServletActionContext.getServletContext().getRealPath(
				"uploadsss");
		String path = willgo + "\\" + fileFileName;
		InputStream is;
		// ���ÿһ������
		List<ClientsBean> list = new ArrayList<ClientsBean>();
		try {
			is = new FileInputStream(path);
			HSSFWorkbook hssfWorkbook = new HSSFWorkbook(is);// ��������������
			// ѭ��������Sheet
			for (int numSheet = 0; numSheet < hssfWorkbook.getNumberOfSheets(); numSheet++) {
				HSSFSheet hssfSheet = hssfWorkbook.getSheetAt(numSheet);// �������������
				if (hssfSheet == null) {
					continue;
				}
		//	System.out.println("hssfSheet.getLastRowNum() "+ hssfSheet.getLastRowNum());// �������������title�Ĳ��ֲ���
				// ѭ����Row,��һ����title�����Դ�1��ʼ��
				for (int rowNum = 1; rowNum <= hssfSheet.getLastRowNum(); rowNum++) {
					HSSFRow hssfRow = hssfSheet.getRow(rowNum);// ȡ��������ĵ� rowNum��
					if (hssfRow != null) {
						ClientsBean c1 = new ClientsBean();
						java.util.Date startt, pret;
						SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");// �涨ʱ����ʾ�ĸ�ʽ
						HSSFCell name = hssfRow.getCell(0); // ȡ����һ�е� i����Ԫ�������
						HSSFCell source = hssfRow.getCell(1);
						HSSFCell status = hssfRow.getCell(2);
						HSSFCell sales = hssfRow.getCell(3);
						HSSFCell statime = hssfRow.getCell(4);// 06�����£�2014
						HSSFCell pretime = hssfRow.getCell(5);
						HSSFCell premoney = hssfRow.getCell(6);
						HSSFCell address = hssfRow.getCell(7);
						HSSFCell remark = hssfRow.getCell(8);
						HSSFCell attachment = hssfRow.getCell(9);
						// System.out.println("source  "+source);
						c1.setName(getValue(name)); // ��name�����жϺ�ȷ����string���ͺ󴫸�c1
						c1.setSource(getValue2(source));// ��double���͵�source���int���ͺ󴫸�c1�����ﲢû��ת���ɹ���
						c1.setStatus(getValue2(status));
						c1.setSales(getValue2(sales));
						// System.out.println("c1.getName() "+c1.getName());
						c1.setPremoney(Double.valueOf(getValue(premoney)));
						c1.setAdress(getValue(address));
						c1.setRemark(getValue(remark));
						// System.out.println("attachment "+getValue(attachment));
						c1.setAttachment(getValue(attachment));

						startt = statime.getDateCellValue();// ʱ��ת��Ϊ Tue May 06
															// 00:00:00 CST 2014
						String stime = ft.format(startt);// ʱ��ת��Ϊ 2014-05-06

						pret = pretime.getDateCellValue();
						String preti = ft.format(pret);

						startt = ft.parse(stime);// ���ַ�����ʱ��ת��ΪData���͵�
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
			// ������ֵ���͵�ֵ
			return (int) hssfCell.getNumericCellValue();// ������Բ�Ҫ
		} else
			return 0;
	}

	// ���ݵ�Ԫ��ͬ���Է����ַ�����ֵ
	private String getValue(HSSFCell hssfCell) {
		if (hssfCell.getCellType() == hssfCell.CELL_TYPE_BOOLEAN) {// �����һ�������Ԫ���������boolean����
			// ���ز������͵�ֵ
			return String.valueOf(hssfCell.getBooleanCellValue());// ���������ת�����ַ�������
		} else if (hssfCell.getCellType() == hssfCell.CELL_TYPE_NUMERIC) {
			// ������ֵ���͵�ֵ
			return String.valueOf(hssfCell.getNumericCellValue());
		} else {
			// �����ַ������͵�ֵ
			return String.valueOf(hssfCell.getStringCellValue());
		}
	}

}
