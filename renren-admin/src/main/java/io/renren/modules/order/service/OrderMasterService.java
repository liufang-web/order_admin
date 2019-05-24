package io.renren.modules.order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.modules.order.entity.OrderMasterEntity;

import java.util.Map;

/**
 * 订单主表
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-18 14:04:40
 */
public interface OrderMasterService extends IService<OrderMasterEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

