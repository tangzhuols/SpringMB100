package com.mj.spring.model.mb.contorller.zhaomucontrol;

import com.mj.spring.model.mb.service.zhaomuservice.ZhaoMuService;
import com.mj.spring.model.mb.vo.CoInvtInf;
import com.mj.spring.model.mb.vo.CoInvtResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by mingwang on 2017/7/31.
 */
@Controller
public class ZhaoMuControl {
    @Autowired
    public ZhaoMuService zhaoMuService;

    //    招募信息首页查询
    @RequestMapping(value = "/ZhaoMuAll", method = RequestMethod.GET)
    public String findZMAll(@ModelAttribute CoInvtInf coInvtInf, Model model) {
        List<CoInvtInf> zhaomu = zhaoMuService.findAll();
        model.addAttribute("zhaomu", zhaomu);
        return "index/responsezhaomu";
    }

    //    查看响应状态
    @RequestMapping(value = "/select", method = RequestMethod.GET)
    public String select(@ModelAttribute CoInvtResponse coInvtResponse, Model model) {
        model.addAttribute("cointps", zhaoMuService.CoInvtResponsefindAll());
        return "index/listresponse";
    }

    //    响应招募
    @RequestMapping(value = "/ZhaoMuadd", method = RequestMethod.GET)
    public String ZhaoMuadd(@ModelAttribute CoInvtResponse coInvtResponse, Model model) {
        System.out.println(coInvtResponse.getPtnrId().getSpId());
        model.addAttribute("coInvtResponse", coInvtResponse);
        return "index/xiangyingzhaomu";
    }
}
