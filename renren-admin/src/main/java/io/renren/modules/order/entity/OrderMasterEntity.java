package io.renren.modules.order.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;
import java.io.Serializable;
import java.util.Date;

/**
 * 订单主表
 * 
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-18 14:04:40
 */
@Data
@TableName("order_master")
public class OrderMasterEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 订单号
	 */
	@TableId
	private String orderId;
	/**
	 * 订单金额
	 */
	private BigDecimal orderAmount;
	/**
	 * 桌号
	 */
	private Integer deskId;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 更新时间
	 */
	private Date updateTime;

}
