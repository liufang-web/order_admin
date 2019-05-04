package io.renren.modules.order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.order.entity.SellerRatingEntity;

import java.util.Map;

/**
 * 商家评论
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
public interface SellerRatingService extends IService<SellerRatingEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

