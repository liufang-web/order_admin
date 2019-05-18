package io.renren.modules.order.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.order.dao.OrderMasterDao;
import io.renren.modules.order.entity.OrderMasterEntity;
import io.renren.modules.order.service.OrderMasterService;


@Service("orderMasterService")
public class OrderMasterServiceImpl extends ServiceImpl<OrderMasterDao, OrderMasterEntity> implements OrderMasterService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<OrderMasterEntity> page = this.page(
                new Query<OrderMasterEntity>().getPage(params),
                new QueryWrapper<OrderMasterEntity>()
        );

        return new PageUtils(page);
    }

}
