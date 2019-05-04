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

import io.renren.modules.order.entity.SellerEntity;
import io.renren.modules.order.service.SellerService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 商家管理
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@RestController
@RequestMapping("order/seller")
public class SellerController {
    @Autowired
    private SellerService sellerService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("order:seller:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = sellerService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{sellerId}")
    @RequiresPermissions("order:seller:info")
    public R info(@PathVariable("sellerId") Integer sellerId){
        SellerEntity seller = sellerService.getById(sellerId);

        return R.ok().put("seller", seller);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("order:seller:save")
    public R save(@RequestBody SellerEntity seller){
        sellerService.save(seller);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("order:seller:update")
    public R update(@RequestBody SellerEntity seller){
        ValidatorUtils.validateEntity(seller);
        sellerService.updateById(seller);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("order:seller:delete")
    public R delete(@RequestBody Integer[] sellerIds){
        sellerService.removeByIds(Arrays.asList(sellerIds));

        return R.ok();
    }

}
