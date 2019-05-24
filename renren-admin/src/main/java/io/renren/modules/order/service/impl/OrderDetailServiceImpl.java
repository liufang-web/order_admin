package io.renren.modules.order.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;
import io.renren.modules.order.dao.OrderDetailDao;
import io.renren.modules.order.dao.OrderMasterDao;
import io.renren.modules.order.entity.OrderDetailEntity;
import io.renren.modules.order.entity.OrderMasterEntity;
import io.renren.modules.order.service.OrderDetailService;
import io.renren.modules.order.service.OrderMasterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("orderDetailService")
public class OrderDetailServiceImpl extends ServiceImpl<OrderDetailDao, OrderDetailEntity> implements OrderDetailService {
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<OrderDetailEntity> page = this.page(
                new Query<OrderDetailEntity>().getPage(params),
                new QueryWrapper<OrderDetailEntity>()
        );

        return new PageUtils(page);
    }

    @Override
    public List<OrderDetailEntity> findByOrderId(String orderId) {
        return baseMapper.findByOrderId(orderId);
    }

}
