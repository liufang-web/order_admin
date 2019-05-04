package io.renren.modules.order.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 商家评论
 * 
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@Data
@TableName("seller_rating")
public class SellerRatingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 评论id
	 */
	@TableId
	private Integer rantingId;
	/**
	 * 商家id
	 */
	private Integer sellerId;
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 评论时间
	 */
	private Long rateTime;
	/**
	 * 耗时
	 */
	private Integer deliveryTime;
	/**
	 * 评分
	 */
	private Integer score;
	/**
	 * 评论类型
	 */
	private Integer rateType;
	/**
	 * 评论内容
	 */
	private String rantingContent;
	/**
	 * 推荐内容
	 */
	private String recommend;

}
