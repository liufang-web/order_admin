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

import io.renren.modules.order.entity.SellerImgEntity;
import io.renren.modules.order.service.SellerImgService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 商家图片
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@RestController
@RequestMapping("order/sellerimg")
public class SellerImgController {
    @Autowired
    private SellerImgService sellerImgService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("order:sellerimg:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = sellerImgService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{picId}")
    @RequiresPermissions("order:sellerimg:info")
    public R info(@PathVariable("picId") Integer picId){
        SellerImgEntity sellerImg = sellerImgService.getById(picId);

        return R.ok().put("sellerImg", sellerImg);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("order:sellerimg:save")
    public R save(@RequestBody SellerImgEntity sellerImg){
        sellerImgService.save(sellerImg);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("order:sellerimg:update")
    public R update(@RequestBody SellerImgEntity sellerImg){
        ValidatorUtils.validateEntity(sellerImg);
        sellerImgService.updateById(sellerImg);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("order:sellerimg:delete")
    public R delete(@RequestBody Integer[] picIds){
        sellerImgService.removeByIds(Arrays.asList(picIds));

        return R.ok();
    }

}
