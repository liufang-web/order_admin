package io.renren.modules.order.dao;

import io.renren.modules.order.entity.SellerRatingEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 商家评论
 * 
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@Mapper
public interface SellerRatingDao extends BaseMapper<SellerRatingEntity> {
	
}
