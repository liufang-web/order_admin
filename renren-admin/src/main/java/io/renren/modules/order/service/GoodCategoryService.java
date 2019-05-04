package io.renren.modules.order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.order.entity.GoodCategoryEntity;

import java.util.Map;

/**
 * 分类商品关联
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
public interface GoodCategoryService extends IService<GoodCategoryEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

