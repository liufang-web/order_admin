package io.renren.modules.order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.order.entity.GoodRatingEntity;

import java.util.Map;

/**
 * 商品评论管理
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
public interface GoodRatingService extends IService<GoodRatingEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

