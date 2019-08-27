package server;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

@WebServlet("/EmailCheck")
public class EmailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EmailCheck() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// email 파라미더
		String email = request.getParameter("email");
		
		// dao 이용
		HashMap<String, String> map = new HashMap<String, String>();
		if(email.equals("a@a.a")) { // 중복일 경우
			map.put("result", "true");
		} else { // 중복 X
			map.put("result", "false");
		}
		
		// 결과를 json 형식으로 변환해서 출력
		response.getWriter().print(JSONObject.fromObject(map));
		// JSONObject.fromObject(map) :map 객체를 json형태로 변환
		// 결과 :{"result":"true"}
	}

}
