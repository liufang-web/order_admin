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

import io.renren.modules.order.entity.SellerRatingEntity;
import io.renren.modules.order.service.SellerRatingService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 商家评论
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@RestController
@RequestMapping("order/sellerrating")
public class SellerRatingController {
    @Autowired
    private SellerRatingService sellerRatingService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("order:sellerrating:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = sellerRatingService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{rantingId}")
    @RequiresPermissions("order:sellerrating:info")
    public R info(@PathVariable("rantingId") Integer rantingId){
        SellerRatingEntity sellerRating = sellerRatingService.getById(rantingId);

        return R.ok().put("sellerRating", sellerRating);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("order:sellerrating:save")
    public R save(@RequestBody SellerRatingEntity sellerRating){
        sellerRatingService.save(sellerRating);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("order:sellerrating:update")
    public R update(@RequestBody SellerRatingEntity sellerRating){
        ValidatorUtils.validateEntity(sellerRating);
        sellerRatingService.updateById(sellerRating);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("order:sellerrating:delete")
    public R delete(@RequestBody Integer[] rantingIds){
        sellerRatingService.removeByIds(Arrays.asList(rantingIds));

        return R.ok();
    }

}
