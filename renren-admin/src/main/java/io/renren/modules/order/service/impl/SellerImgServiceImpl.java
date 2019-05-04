package io.renren.modules.order.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.modules.order.dao.SellerImgDao;
import io.renren.modules.order.entity.SellerImgEntity;
import io.renren.modules.order.service.SellerImgService;


@Service("sellerImgService")
public class SellerImgServiceImpl extends ServiceImpl<SellerImgDao, SellerImgEntity> implements SellerImgService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<SellerImgEntity> page = this.page(
                new Query<SellerImgEntity>().getPage(params),
                new QueryWrapper<SellerImgEntity>()
        );

        return new PageUtils(page);
    }

}
