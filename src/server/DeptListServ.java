package server;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;



@WebServlet("/DeptListServ")
public class DeptListServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		// DAO에서 부서 목록 조회
//		ArrayList<Dept> list = new ArrayList<Dept>();
//		list.add(new Dept("10", "개발"));
//		list.add(new Dept("20", "인사"));
//		list.add(new Dept("30", "기획"));
//		
//		response.getWriter().print(JSONArray.toJSONString(list));
//		// JSONArray.toJSONString(obj) :java 객체를 json구조의 string으로 변환
//		// DEPT의 toString을 json구조에 알맞게 만들어야 한다. {"요소1":"값1","요소2":"값2"},{...}
		
		
		
		// toString 귀찮으니까 Map으로 만들기
		// Map toString 형식 : {"key":"value","key2":"value2"}
		ArrayList<Map<String,String>> list = new ArrayList<Map<String,String>>();
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("departmentId", "10");
		map.put("departmentName", "개발");
		list.add(map);

		map = new HashMap<String, String>();
		map.put("departmentId", "20");
		map.put("departmentName", "인사");
		list.add(map);
		
		response.setContentType("text/html; charset=UTF-8"); // 한글 ?? 나오는것 방지
		
		String json = JSONArray.fromObject(list).toString();
		response.getWriter().print(json);
	}
}
