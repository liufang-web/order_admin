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

import io.renren.modules.order.entity.GoodEntity;
import io.renren.modules.order.service.GoodService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 商品管理
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@RestController
@RequestMapping("order/good")
public class GoodController {
    @Autowired
    private GoodService goodService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("order:good:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = goodService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{goodId}")
    @RequiresPermissions("order:good:info")
    public R info(@PathVariable("goodId") Integer goodId){
        GoodEntity good = goodService.getById(goodId);

        return R.ok().put("good", good);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("order:good:save")
    public R save(@RequestBody GoodEntity good){
        goodService.save(good);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("order:good:update")
    public R update(@RequestBody GoodEntity good){
        ValidatorUtils.validateEntity(good);
        goodService.updateById(good);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("order:good:delete")
    public R delete(@RequestBody Integer[] goodIds){
        goodService.removeByIds(Arrays.asList(goodIds));

        return R.ok();
    }

}
