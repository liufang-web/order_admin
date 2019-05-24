package io.renren.modules.order.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import io.renren.common.validator.ValidatorUtils;
import io.renren.modules.order.entity.OrderDetailEntity;
import io.renren.modules.order.service.OrderDetailService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.renren.modules.order.entity.OrderMasterEntity;
import io.renren.modules.order.service.OrderMasterService;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;



/**
 * 订单主表
 *
 * @author liufang
 * @email liufangweb@163.com
 * @date 2019-05-18 14:04:40
 */
@RestController
@RequestMapping("order/ordermaster")
public class OrderMasterController {
    @Autowired
    private OrderMasterService orderMasterService;

    @Autowired
    private OrderDetailService orderDetailService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("order:ordermaster:list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = orderMasterService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{orderId}")
    @RequiresPermissions("order:ordermaster:info")
    public R info(@PathVariable("orderId") String orderId){
        OrderMasterEntity orderMaster = orderMasterService.getById(orderId);

        return R.ok().put("orderMaster", orderMaster);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("order:ordermaster:save")
    public R save(@RequestBody OrderMasterEntity orderMaster){
        orderMasterService.save(orderMaster);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("order:ordermaster:update")
    public R update(@RequestBody OrderMasterEntity orderMaster){
        ValidatorUtils.validateEntity(orderMaster);
        orderMasterService.updateById(orderMaster);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("order:ordermaster:delete")
    public R delete(@RequestBody String[] orderIds){
        orderMasterService.removeByIds(Arrays.asList(orderIds));

        return R.ok();
    }
    /**
     * 订单详情
     */
    @RequestMapping("/detail")
    public List<OrderDetailEntity> findDetail (@RequestParam String orderId){
       return orderDetailService.findByOrderId(orderId);
    }
}
