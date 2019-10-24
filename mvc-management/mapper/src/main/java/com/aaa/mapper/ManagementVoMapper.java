package com.aaa.mapper;

import base.ResultData;
import com.aaa.vo.ManagementVo;
import org.apache.ibatis.annotations.Select;

public interface ManagementVoMapper {

    @Select("select * from (SELECT  m.id,m.username,m.job_number, m.`password`,d1.name sex,d2.name gener,m.create_time,m.update_time,s.store_location from management m LEFT JOIN  dictionary d1 ON m.sex=d1.id LEFT JOIN  dictionary d2 ON m.genre=d2.id  left JOIN store s ON m.store_id = s.id where m.`status`=1)a where a.id=#{id};")
    ManagementVo selectManagementVo(String id);

}

