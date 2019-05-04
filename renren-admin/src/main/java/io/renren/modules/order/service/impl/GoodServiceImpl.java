package io.renren.modules.order.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.order.dao.GoodDao;
import io.renren.modules.order.entity.GoodEntity;
import io.renren.modules.order.service.GoodService;


@Service("goodService")
public class GoodServiceImpl extends ServiceImpl<GoodDao, GoodEntity> implements GoodService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<GoodEntity> page = this.page(
                new Query<GoodEntity>().getPage(params),
                new QueryWrapper<GoodEntity>()
        );

        return new PageUtils(page);
    }

}
