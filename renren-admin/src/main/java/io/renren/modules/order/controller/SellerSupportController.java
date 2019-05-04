package io.renren.modules.order.controller;

import java.util.Arrays;
import java.util.Map;

import io.renren.common.validator.ValidatorUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.modules.order.entity.SellerSupportEntity;
import io.renren.modules.order.service.SellerSupportService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 商家活动
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@RestController
@RequestMapping("order/sellersupport")
public class SellerSupportController {
    @Autowired
    private SellerSupportService sellerSupportService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("order:sellersupport:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = sellerSupportService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{supportId}")
    @RequiresPermissions("order:sellersupport:info")
    public R info(@PathVariable("supportId") Integer supportId){
        SellerSupportEntity sellerSupport = sellerSupportService.getById(supportId);

        return R.ok().put("sellerSupport", sellerSupport);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("order:sellersupport:save")
    public R save(@RequestBody SellerSupportEntity sellerSupport){
        sellerSupportService.save(sellerSupport);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("order:sellersupport:update")
    public R update(@RequestBody SellerSupportEntity sellerSupport){
        ValidatorUtils.validateEntity(sellerSupport);
        sellerSupportService.updateById(sellerSupport);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("order:sellersupport:delete")
    public R delete(@RequestBody Integer[] supportIds){
        sellerSupportService.removeByIds(Arrays.asList(supportIds));

        return R.ok();
    }

}
