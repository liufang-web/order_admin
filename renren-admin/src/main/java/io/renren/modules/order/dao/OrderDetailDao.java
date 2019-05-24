package io.renren.modules.order.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.renren.modules.order.entity.OrderDetailEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 绅士学java
 * @date 2019/5/18 15:21
 */
@Mapper
public interface OrderDetailDao extends BaseMapper<OrderDetailEntity> {
    List<OrderDetailEntity> findByOrderId(String orderId);
}
