package com.mj.spring.model.mb.contorller.usercontrol;

import com.mj.spring.model.mb.service.userservice.EnterUserService;
import com.mj.spring.model.mb.vo.CoComUser;
import com.mj.spring.model.mb.vo.CoIntegral;
import com.mj.spring.model.mb.vo.CoPtnrInf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.Servlet;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Set;

/**
 * Created by mingwang on 2017/7/28.
 */
@Controller
public class EnterUserContorl {

    @Autowired
    private EnterUserService enterUserService;

    //    进入主页面的请求
    @RequestMapping("/")
    public String getIndex() {
        return "/index/index";
    }

    //前台登录的
    @RequestMapping(value = "/EnterAdmin", method = RequestMethod.POST)
    //    @ResponseBody
    public String findByName(@ModelAttribute CoComUser coComUser, Model model, HttpServletRequest request) {
        coComUser = enterUserService.findName(coComUser.getUserName(), coComUser.getUserPwd());
        request.getSession().setAttribute("coComUser", coComUser);
//        model.addAttribute("coComUser", coComUser);

//        Set<CoPtnrInf> coPtnrInfs = coComUser.getCoPtnrInfs();
//        model.addAttribute("coPtnrInfs", coPtnrInfs);
        return "index/index";
    }

    //退出登录用的
    @RequestMapping(value = "/ExctUser", method = RequestMethod.GET)
    public String ExctUser(@ModelAttribute CoComUser coComUser, Model model, HttpServletRequest request) {
        coComUser = null;
        request.getSession().setAttribute("coComUser", coComUser);
        return "/index/index";
    }

    //    合作伙伴注册  z这个没写
    @RequestMapping(value = "/IndexEnroll", method = RequestMethod.POST)
    public String IndexEnroll(@ModelAttribute CoPtnrInf coPtnrInf, Model model) {
        model.addAttribute("coPtnrInfs", coPtnrInf);

        return "index/index";
    }

    //积分
    @RequestMapping(value = "/JiFenXinXi", method = RequestMethod.GET)
    public String JFSelectAll(@ModelAttribute CoIntegral coIntegral, Model model) {
        model.addAttribute("alljifen", enterUserService.JFfindAll());
        return "index/user_jifen";
    }

    //    修改信息 这是修改合作伙伴的信息钱的查询
    @RequestMapping(value = "/XiuGaiZ", method = RequestMethod.GET)
    public String getCoPtnrInfByid(@ModelAttribute CoPtnrInf CoPtnrInf, Model model) {
        model.addAttribute("ff", enterUserService.getCoComUserById(CoPtnrInf.getSpId()));
        return "index/XiuGaiZiZhi";
    }

    //    修改密码
    @RequestMapping(value = "/XiuGaiMiMa", method = RequestMethod.POST)
    public String XiugaiMima(@ModelAttribute CoComUser coComUser, Model model, HttpServletRequest request) {
        System.out.println(coComUser.getUserId());
        if (enterUserService.coComUserUpdate(coComUser.getUserPwd(), coComUser.getUserId()) > 0) {
            coComUser = null;
            request.getSession().setAttribute("coComUser", coComUser);
            return "index/index";
        }
        return "index/XiuGaiMiMa";
    }
    @RequestMapping(value = "/Text", method = RequestMethod.GET)
    public String getCoPtnrInfByiddd(@ModelAttribute CoPtnrInf CoPtnrInf, Model model) {
        enterUserService.InsertText();
        return "index/XiuGaiMiMa";
    }
}
