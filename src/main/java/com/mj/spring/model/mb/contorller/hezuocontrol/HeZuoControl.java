package com.mj.spring.model.mb.contorller.hezuocontrol;

import com.mj.spring.model.mb.service.hezuoservice.HeZuoService;
import com.mj.spring.model.mb.service.zhaomuservice.ZhaoMuService;
import com.mj.spring.model.mb.vo.CoDbinfInfo;
import com.mj.spring.model.mb.vo.CoInvtInf;
import com.mj.spring.model.mb.vo.CoWformInf;
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
public class HeZuoControl {
    @Autowired
    public ZhaoMuService zhaoMuService;
    @Autowired
    private HeZuoService heZuoService;

    //招募信息首页查询 这是引用了一下 这是工单的具体
    @RequestMapping(value = "/HeZuoAll", method = RequestMethod.GET)
    public String findZMAll(@ModelAttribute CoInvtInf coInvtInf, Model model) {
        List<CoInvtInf> zhaomu = zhaoMuService.findAll();
        model.addAttribute("zhaomu", zhaomu);
        return "index/hzzqxx";
    }

    //发起工单
    @RequestMapping(value = "/queryGongDan", method = RequestMethod.GET)
    public String queryGongDan(@ModelAttribute CoWformInf coWformInf, Model model) {

        model.addAttribute("admins", heZuoService.SysAdminfindAll());
        return "index/indexfaqi";
    }

    //反馈工单
    @RequestMapping(value = "/CoWformInfAll", method = RequestMethod.GET)
    public String CoWformInfAll(@ModelAttribute CoWformInf coWformInf, Model model) {
        model.addAttribute("cwis1", heZuoService.CoWformInfAll());
        return "index/indexfankui";
    }

    //查询历史工地
    @RequestMapping(value = "/selectGongdanSuoYou", method = RequestMethod.GET)
    public String selectGongdanSuoYou(@ModelAttribute CoWformInf coWformInf, Model model) {
        model.addAttribute("cwis1", heZuoService.CoWformInfAll());
        return "index/huikuichakan";
    }

    //查看详细质询
    @RequestMapping(value = "/ZiXunSelect", method = RequestMethod.GET)
    public String ZiXunSelect(@ModelAttribute CoDbinfInfo coDbinfInfo, Model model) {
        model.addAttribute("infos", heZuoService.CoDbinfInfoSlect());
        return "index/select";
    }

}
