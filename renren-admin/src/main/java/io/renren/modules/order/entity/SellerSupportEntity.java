package io.renren.modules.order.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 商家活动
 * 
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@Data
@TableName("seller_support")
public class SellerSupportEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 活动id
	 */
	@TableId
	private Integer supportId;
	/**
	 * 满减打折小图标
	 */
	private Integer type;
	/**
	 * 描述
	 */
	private String description;
	/**
	 * 商户id
	 */
	private Integer sellerId;

}
