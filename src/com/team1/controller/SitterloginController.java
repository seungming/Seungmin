package com.team1.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.team1.dto.SitDTO;
import com.team1.mybatis.ISitLoginDAO;

@Controller
public class SitterloginController
{
    @Autowired
    private SqlSession sqlSession;

    // 시터 로그인 처리
    @RequestMapping(value = "/sitterlogin.action", method = RequestMethod.POST)
    public String sitterLogin(@RequestParam("id") String id,
                               @RequestParam("pw") String pw,
                               HttpSession session)
    {
        ISitLoginDAO dao = sqlSession.getMapper(ISitLoginDAO.class);

        List<SitDTO> sitter = dao.loginCheck(id, pw); // 로그인 체크 후 SitDTO 반환

        if (sitter != null) // 로그인 성공
        {
            session.setAttribute("loginSitter", sitter);
            return "sitterMain.jsp";
        }
        else // 로그인 실패
        {
            return "redirect:/login.action?error=1";
        }
    }
}
