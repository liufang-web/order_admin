package io.renren.modules.order.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @author 绅士学java
 * @date 2019/5/18 15:18
 */
@Data
@TableName("order_detail")
public class OrderDetailEntity implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer detailId;
    private String orderId;
    private String productName;
    private Integer productQuantity;
    private String productIcon;
}
