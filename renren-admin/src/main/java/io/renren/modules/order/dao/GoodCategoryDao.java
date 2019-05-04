package io.renren.modules.order.dao;

import io.renren.modules.order.entity.GoodCategoryEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 分类商品关联
 * 
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@Mapper
public interface GoodCategoryDao extends BaseMapper<GoodCategoryEntity> {
	
}
