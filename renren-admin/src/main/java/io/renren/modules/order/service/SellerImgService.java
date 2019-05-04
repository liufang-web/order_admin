package io.renren.modules.order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.order.entity.SellerImgEntity;

import java.util.Map;

/**
 * 商家图片
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
public interface SellerImgService extends IService<SellerImgEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

