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

import io.renren.modules.order.entity.CategoryEntity;
import io.renren.modules.order.service.CategoryService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 分类管理
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@RestController
@RequestMapping("order/category")
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("order:category:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = categoryService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{categoryId}")
    @RequiresPermissions("order:category:info")
    public R info(@PathVariable("categoryId") Integer categoryId){
        CategoryEntity category = categoryService.getById(categoryId);

        return R.ok().put("category", category);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("order:category:save")
    public R save(@RequestBody CategoryEntity category){
        categoryService.save(category);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("order:category:update")
    public R update(@RequestBody CategoryEntity category){
        ValidatorUtils.validateEntity(category);
        categoryService.updateById(category);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("order:category:delete")
    public R delete(@RequestBody Integer[] categoryIds){
        categoryService.removeByIds(Arrays.asList(categoryIds));

        return R.ok();
    }

}
