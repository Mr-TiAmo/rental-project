package com.aaa.mapper;

import base.ResultData;
import com.aaa.base.BaseModel;
import com.aaa.model.CarInfo;
import com.aaa.page.PageInfos;
import com.aaa.vo.VoCarInfo;
import org.apache.ibatis.annotations.Select;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface CarInfoMapper extends Mapper<CarInfo> {
    /**
     * 查询在前端展示的车辆信息
     * @return
     */
    //@Select("SELECT c.id,c.name,c.charge ,c.pic_path ,d1.name operation  ,d2.name space ,d3.name fuel ,d4.name drive,d5.name carStatus,d6.name color,d7.name power,d8.name brand,d9.name style,s.store_location from car c left JOIN car_info cin on c.id = cin.id left JOIN dictionary d1 ON d1.id = c.dict_car_operation_id left JOIN dictionary d2 ON d2.id = c.dict_car_space_id left JOIN dictionary d3 ON d3.id = cin.dict_car_fuel_id left JOIN dictionary d4 ON d4.id = cin.dict_car_drive_id left JOIN dictionary d5 ON d5.id = cin.dict_car_status_id left JOIN dictionary d6 ON d6.id = cin.dict_car_color_id left JOIN dictionary d7 ON d7.id = cin.dict_car_power_id left JOIN dictionary d8 ON d8.id = cin.dict_car_brand_id left JOIN dictionary d9 ON d9.id = cin.dict_car_style_id left JOIN store s on s.id = cin.store_id where c.status=1 ")
    List<VoCarInfo> queryCarInfo(VoCarInfo carInfo);

    //@Select("SELECT c.id,c.name,c.charge ,c.pic_path ,d1.name operation  ,d2.name space ,d3.name fuel ,d4.name drive,d5.name carStatus,d6.name color,d7.name power,d8.name brand,d9.name style,s.store_location from car c left JOIN car_info cin on c.id = cin.id left JOIN dictionary d1 ON d1.id = c.dict_car_operation_id left JOIN dictionary d2 ON d2.id = c.dict_car_space_id left JOIN dictionary d3 ON d3.id = cin.dict_car_fuel_id left JOIN dictionary d4 ON d4.id = cin.dict_car_drive_id left JOIN dictionary d5 ON d5.id = cin.dict_car_status_id left JOIN dictionary d6 ON d6.id = cin.dict_car_color_id left JOIN dictionary d7 ON d7.id = cin.dict_car_power_id left JOIN dictionary d8 ON d8.id = cin.dict_car_brand_id left JOIN dictionary d9 ON d9.id = cin.dict_car_style_id left JOIN store s on s.id = cin.store_id where c.status=1 and  s.store_location like CONCAT('%',#{chooseLocation,jdbcType=VARCHAR},'%')")
    List<VoCarInfo> queryCarInfoby(VoCarInfo carInfo);

    @Select("SELECT count(1) from car c left JOIN car_info cin on c.id = cin.id left JOIN dictionary d1 ON d1.id = c.dict_car_operation_id left JOIN dictionary d2 ON d2.id = c.dict_car_space_id left JOIN dictionary d3 ON d3.id = cin.dict_car_fuel_id left JOIN dictionary d4 ON d4.id = cin.dict_car_drive_id left JOIN dictionary d5 ON d5.id = cin.dict_car_status_id left JOIN dictionary d6 ON d6.id = cin.dict_car_color_id left JOIN dictionary d7 ON d7.id = cin.dict_car_power_id left JOIN dictionary d8 ON d8.id = cin.dict_car_brand_id left JOIN dictionary d9 ON d9.id = cin.dict_car_style_id left JOIN store s on s.id = cin.store_id where c.status=1 ")
    Integer queryCarInfoConut(VoCarInfo carInfo);
}