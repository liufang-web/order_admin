package io.renren.modules.order.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.order.dao.SellerSupportDao;
import io.renren.modules.order.entity.SellerSupportEntity;
import io.renren.modules.order.service.SellerSupportService;


@Service("sellerSupportService")
public class SellerSupportServiceImpl extends ServiceImpl<SellerSupportDao, SellerSupportEntity> implements SellerSupportService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<SellerSupportEntity> page = this.page(
                new Query<SellerSupportEntity>().getPage(params),
                new QueryWrapper<SellerSupportEntity>()
        );

        return new PageUtils(page);
    }

}
