package com.mj.spring.model.mb.contorller.xuanyancontrol;

import com.mj.spring.model.mb.service.xuanyanservice.XuanYanService;
import com.mj.spring.model.mb.serviceimpl.xuanyanserviceimpl.XuanYanServiceImpl;
import com.mj.spring.model.mb.vo.CoDbinfInfo;
import com.mj.spring.model.mb.vo.CoPtnrInf;
import com.mj.spring.model.mb.vo.CoSlctList;
import com.mj.spring.model.mb.vo.CoSlctSchema;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.persistence.GeneratedValue;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by mingwang on 2017/7/31.
 */
@Controller
public class XuanYanControl {
    @Autowired
    public XuanYanService xuanYanService;

    //    资讯信息表首页查询
    @RequestMapping(value = "/ZiXunAll", method = RequestMethod.GET)
    public String XuanYanSAll(@ModelAttribute CoDbinfInfo coDbinfInfo, Model model) {
        model.addAttribute("infos", xuanYanService.findAll());
        return "index/select";
    }

    //添加宣言方案
    @RequestMapping(value = "/submitplan", method = RequestMethod.POST)
    public String submitplan(@ModelAttribute CoSlctSchema coSlctSchema, Model model) {
        Date c = new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dates=sdf.format(c);//减了的时间
//        Date date=c.getTime();
        int i = xuanYanService.insertCoSlctSchema(coSlctSchema.getPtnrIdSlct().getSpId(),coSlctSchema.getSchemaName(),coSlctSchema.getSchemaDesc(),coSlctSchema.getSlctType(),dates);
        if (i>0)
            return "index/tijiaofangan";
        return "";
    }

    //    查看当前自己的宣言申请
    @RequestMapping(value = "/xuanyanapply", method = RequestMethod.GET)
    public String xuanyanSelectById(@ModelAttribute CoSlctSchema coSlctSchema, Model model) {
        model.addAttribute("scss", xuanYanService.selectSpID(coSlctSchema.getSchemaId()));
        return "index/slec_fanganlist";
    }
}
