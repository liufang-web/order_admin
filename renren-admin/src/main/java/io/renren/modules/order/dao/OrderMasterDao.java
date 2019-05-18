package io.renren.modules.order.dao;

import io.renren.modules.order.entity.OrderMasterEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 订单主表
 * 
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-18 14:04:40
 */
@Mapper
public interface OrderMasterDao extends BaseMapper<OrderMasterEntity> {
	
}
