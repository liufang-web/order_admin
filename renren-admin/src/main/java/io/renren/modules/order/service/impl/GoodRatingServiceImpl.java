package io.renren.modules.order.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.order.dao.GoodRatingDao;
import io.renren.modules.order.entity.GoodRatingEntity;
import io.renren.modules.order.service.GoodRatingService;


@Service("goodRatingService")
public class GoodRatingServiceImpl extends ServiceImpl<GoodRatingDao, GoodRatingEntity> implements GoodRatingService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<GoodRatingEntity> page = this.page(
                new Query<GoodRatingEntity>().getPage(params),
                new QueryWrapper<GoodRatingEntity>()
        );

        return new PageUtils(page);
    }

}
