package io.renren.modules.order.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

/**
 * 商品管理
 * 
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@Data
@TableName("good")
public class GoodEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 商品id
	 */
	@TableId
	private Integer goodId;
	/**
	 * 商品名
	 */
	private String goodName;
	/**
	 * 商品价格
	 */
	private BigDecimal goodPrice;
	/**
	 * 商品描述
	 */
	private String goodDec;
	/**
	 * 商品销售数量
	 */
	private Integer goodSellCount;
	/**
	 * 商品评论数
	 */
	private Integer goodRating;
	/**
	 * 商品信息
	 */
	private String goodInfo;
	/**
	 * 商品icon
	 */
	private String goodIcon;
	/**
	 * 商品大图
	 */
	private String goodImage;

}
