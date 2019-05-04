package io.renren.modules.order.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 商品评论管理
 * 
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@Data
@TableName("good_rating")
public class GoodRatingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 评论id
	 */
	@TableId
	private Integer rantingId;
	/**
	 * 商品id
	 */
	private Integer goodId;
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 评论时间
	 */
	private Long rateTime;
	/**
	 * 评论类型
	 */
	private Integer rateType;
	/**
	 * 评论内容
	 */
	private String text;
	/**
	 * 头像
	 */
	private String avatar;

}
