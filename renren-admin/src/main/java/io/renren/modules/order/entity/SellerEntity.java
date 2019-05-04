package io.renren.modules.order.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

/**
 * 商家管理
 * 
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@Data
@TableName("seller")
public class SellerEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 商户id
	 */
	@TableId
	private Integer sellerId;
	/**
	 * 商户名
	 */
	private String name;
	/**
	 * 商户描述
	 */
	private String description;
	/**
	 * 配送时间
	 */
	private Integer deliveryTime;
	/**
	 * 评分
	 */
	private BigDecimal score;
	/**
	 * 服务评分
	 */
	private BigDecimal serviceScore;
	/**
	 * 商品评分
	 */
	private BigDecimal foodScore;
	/**
	 * 高于周边商家百分比
	 */
	private BigDecimal rankRate;
	/**
	 * 最低价格
	 */
	private BigDecimal minPrice;
	/**
	 * 配送费
	 */
	private Integer deliveryPrice;
	/**
	 * 评论数
	 */
	private Integer ratingCount;
	/**
	 * 售卖数
	 */
	private Integer sellCount;
	/**
	 * 描述
	 */
	private String bulletin;
	/**
	 * 商家头像
	 */
	private String avatar;
	/**
	 * 商家简介
	 */
	private String infos;
	/**
	 * 图片列表
	 */
	private String pics;

}
