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

import io.renren.modules.order.entity.GoodRatingEntity;
import io.renren.modules.order.service.GoodRatingService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 商品评论管理
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@RestController
@RequestMapping("order/goodrating")
public class GoodRatingController {
    @Autowired
    private GoodRatingService goodRatingService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("order:goodrating:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = goodRatingService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{rantingId}")
    @RequiresPermissions("order:goodrating:info")
    public R info(@PathVariable("rantingId") Integer rantingId){
        GoodRatingEntity goodRating = goodRatingService.getById(rantingId);

        return R.ok().put("goodRating", goodRating);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("order:goodrating:save")
    public R save(@RequestBody GoodRatingEntity goodRating){
        goodRatingService.save(goodRating);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("order:goodrating:update")
    public R update(@RequestBody GoodRatingEntity goodRating){
        ValidatorUtils.validateEntity(goodRating);
        goodRatingService.updateById(goodRating);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("order:goodrating:delete")
    public R delete(@RequestBody Integer[] rantingIds){
        goodRatingService.removeByIds(Arrays.asList(rantingIds));

        return R.ok();
    }

}
