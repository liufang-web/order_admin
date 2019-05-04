package io.renren.modules.order.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.order.dao.GoodCategoryDao;
import io.renren.modules.order.entity.GoodCategoryEntity;
import io.renren.modules.order.service.GoodCategoryService;


@Service("goodCategoryService")
public class GoodCategoryServiceImpl extends ServiceImpl<GoodCategoryDao, GoodCategoryEntity> implements GoodCategoryService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<GoodCategoryEntity> page = this.page(
                new Query<GoodCategoryEntity>().getPage(params),
                new QueryWrapper<GoodCategoryEntity>()
        );

        return new PageUtils(page);
    }

}
