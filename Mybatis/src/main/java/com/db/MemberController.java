package com.db;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.DTOMember;





@Controller
public class MemberController {

	private MemberService memberService;
	
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	
	//처음에 register에 들어갈때 주는 멥핑 
	@RequestMapping("/member.do")
	public String memberrMain(HttpServletRequest request) {
		return "member/register";
	}
	
	//회원 등록하는 맵핑
	
	  @RequestMapping("/registermember.do")
	  public String register(HttpServletRequest request) { 
		  String mem_id =request.getParameter("mem_id"); 
		  String mem_email =request.getParameter("mem_email"); 
		  String mem_name =request.getParameter("mem_name");
		  String mem_pw =request.getParameter("mem_pw");
		  String num1 =request.getParameter("phone_num1"); 
		  String num2 =request.getParameter("phone_num2"); 
		  String num3 =request.getParameter("phone_num3"); 
		  String mem_nickname =request.getParameter("mem_nickname"); 
		  String mem_sex =request.getParameter("mem_sex"); 
		  String mem_birthday =request.getParameter("mem_birthday");		 
		  String img =request.getParameter("mem_img");
		  int age =Integer.parseInt(request.getParameter("mem_age")); 
		  String mem_phone =num1+num2+num3;
		  
			

	  
	  int count = memberService.insertMember(new
	  DTOMember(mem_id,mem_email,mem_pw,mem_phone,
	  mem_nickname,mem_name,mem_sex,mem_birthday,age,img));
	  
	  System.out.println(count + "건 등록완료"); 
	  return memberrMain(request);
	  }
	  
	  
	  
	  @RequestMapping("member/login")
	  public String login(HttpServletRequest request) {
		  return "/member/login";
	  }
	  
		
	  @RequestMapping("/login.do")
		public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
			String mem_id = request.getParameter("mem_id");
			String mem_pw = request.getParameter("mem_pw");
			DTOMember dto = memberService.login(mem_id, mem_pw);
			// HttpSession session = request.getSession();
			if (dto != null) {
				session.setAttribute("login", true);
				session.setAttribute("mem_id", dto.getMem_id());
				session.setAttribute("mem_name", dto.getMem_name());
				session.setAttribute("mem_nickname", dto.getMem_nickname());
				session.setAttribute("mem_phonnumber", dto.getMem_phonnumber());
				session.setAttribute("mem_pw", dto.getMem_pw());
				
				session.setMaxInactiveInterval(10 * 60);
				System.out.println("로그인 성공");
				return login(request);
			} else {
				try {
					response.setContentType("text/html;charset=utf-8");
					response.getWriter().write("<script>alert('아이디 비번을 확인하세요');history.back();</script>");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			return null;
		}
		
	  
	  
	  @RequestMapping("updatemember.do")
	  public String updatemember(HttpServletRequest request) {
		  String command = request.getParameter("command");
			String mem_id = request.getParameter("mem_id");
			
			if(command.equals("update")) {
				String mem_email =request.getParameter("mem_email");
				String mem_phone =request.getParameter("mem_phone"); 
				String mem_nickname =request.getParameter("mem_nickname");
				String mem_pw =request.getParameter("mem_pw");
				
				//수정
				int count = memberService.updateMember(new DTOMember(mem_email,mem_pw,mem_phone,mem_nickname));
				System.out.println("수정 : " + count);
			}
			return memberrMain(request);
			
	  }
	 
	
	
	
	
}
