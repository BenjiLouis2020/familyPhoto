package com.email;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sendmail
 */
@WebServlet("/sendmail")
public class sendmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sendmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");//֪ͨ������Ժ�������
		response.setCharacterEncoding("GB2312");//֪ͨ��������������ʱ���ĵ����
		PrintWriter out = response.getWriter();  
		String email = request.getParameter("email");
		String code = request.getParameter("code");
		String type = request.getParameter("type");
		String password = request.getParameter("password");
		String text=""+email+",��ã��������Ϊ"+code+"����ʾ:��������ϵͳ������ϵͳ�����ջ���,����ֱ�ӻظ�!";
        MailUtil.sendMail("3562499648@qq.com", "��ͥ������ϵͳ",text);
        if(type.equals("1")){
        	if(password.equals("147258")){
        		out.print("��֤�ɹ�!");
        	}else{
        		out.print("��֤ʧ��!");
        	}
        }
        else{
        	out.print(text);
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
