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

import io.renren.modules.order.entity.GoodCategoryEntity;
import io.renren.modules.order.service.GoodCategoryService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 分类商品关联
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@RestController
@RequestMapping("order/goodcategory")
public class GoodCategoryController {
    @Autowired
    private GoodCategoryService goodCategoryService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("order:goodcategory:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = goodCategoryService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("order:goodcategory:info")
    public R info(@PathVariable("id") Integer id){
        GoodCategoryEntity goodCategory = goodCategoryService.getById(id);

        return R.ok().put("goodCategory", goodCategory);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("order:goodcategory:save")
    public R save(@RequestBody GoodCategoryEntity goodCategory){
        goodCategoryService.save(goodCategory);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("order:goodcategory:update")
    public R update(@RequestBody GoodCategoryEntity goodCategory){
        ValidatorUtils.validateEntity(goodCategory);
        goodCategoryService.updateById(goodCategory);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("order:goodcategory:delete")
    public R delete(@RequestBody Integer[] ids){
        goodCategoryService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
