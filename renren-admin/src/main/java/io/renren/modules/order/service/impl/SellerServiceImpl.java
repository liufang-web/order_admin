package io.renren.modules.order.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.order.dao.SellerDao;
import io.renren.modules.order.entity.SellerEntity;
import io.renren.modules.order.service.SellerService;


@Service("sellerService")
public class SellerServiceImpl extends ServiceImpl<SellerDao, SellerEntity> implements SellerService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<SellerEntity> page = this.page(
                new Query<SellerEntity>().getPage(params),
                new QueryWrapper<SellerEntity>()
        );

        return new PageUtils(page);
    }

}
