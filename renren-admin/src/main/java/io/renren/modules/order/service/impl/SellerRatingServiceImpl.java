package io.renren.modules.order.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.order.dao.SellerRatingDao;
import io.renren.modules.order.entity.SellerRatingEntity;
import io.renren.modules.order.service.SellerRatingService;


@Service("sellerRatingService")
public class SellerRatingServiceImpl extends ServiceImpl<SellerRatingDao, SellerRatingEntity> implements SellerRatingService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<SellerRatingEntity> page = this.page(
                new Query<SellerRatingEntity>().getPage(params),
                new QueryWrapper<SellerRatingEntity>()
        );

        return new PageUtils(page);
    }

}
