package io.renren.modules.order.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 商家图片
 * 
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-04 20:30:04
 */
@Data
@TableName("seller_img")
public class SellerImgEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 图片id
	 */
	@TableId
	private Integer picId;
	/**
	 * 图片string
	 */
	private String picStr;
	/**
	 * 商家id
	 */
	private Integer sellerId;

}
