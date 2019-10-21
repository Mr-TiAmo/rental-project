package com.aaa.base;

import com.aaa.page.PageInfos;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.session.RowBounds;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;


/**
* @Description:
 *  因为service层需要mapper注入
 *  *      --->注入进来的是什么类型的mapper，就实现什么类型的增删改查
 *  *          UserMapper ---> 对User的增删改查
 *  *
 *  *      UserMapper ---> 继承了Mapper<T>
 *  *          在通用mapper中所封装的都是增删改查
 *  *          Mapper<T>:
 *  *              Integer add(T t);
 *  *              Integer update(T t);
 *  *              Integer delete(Object id);
 *  *              T selectById(Object id);
 *  *              List<T> selectAll();
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/19
*/
public abstract class BaseService<T> {
    /**
    * @Description:   注入各种类型的mapper
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public abstract Mapper<T> getMapper();

    /**
    * @Description:  新增数据
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public Integer insert(T t) throws Exception{
        return getMapper().insert(t);
    }
    /**
    * @Description:   通过主键进行更新
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public Integer updateByPrimaryKey(T t) throws Exception{
        return getMapper().updateByPrimaryKey(t);
    }
    /**
    * @Description:   通过主键进行删除
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public Integer deleteByPrimaryKey(T t) throws Exception{
        return getMapper().deleteByPrimaryKey(t);
    }
    /**
    * @Description: 通过实体类的属性进行删除
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public Integer delete(T t) throws Exception {
        return getMapper().delete(t);
    }

    /**
    * @Description: 通过主键进行查询
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public T get(Object key) throws Exception {
        return getMapper().selectByPrimaryKey(key);
    }
    /**
    * @Description: 查询所有的数据
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public List<T> selectAll() throws Exception {
        return getMapper().selectAll();
    }
    /**
    * @Description:  根据实体类中的属性进行查询(单条数据的查询)，如果查询出来两条则抛出异常(一般适合唯一键查询)
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public T selectOne(T t) throws Exception {
        return getMapper().selectOne(t);
    }
    /**
    * @Description:  根据实体类的属性进行条件查询(支持多条件查询)
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public List<T> selectModel(T t) throws Exception {
        return getMapper().select(t);
    }

    /**
    * @Description:  带条件的分页查询
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public List<T> selectModel(T t, PageInfos<T> pageInfos) throws Exception {
        return getMapper().selectByRowBounds(t, new RowBounds(pageInfos.getPageNum(),pageInfos.getPageSize()));
    }

    /**
    * @Description:  条件查询数量，如果需要查询所有的数量，则直接传null
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public Integer selectCount(T t) throws Exception {
        return getMapper().selectCount(t);
    }

    /**
    * @Description:  根据实体类中的属性进行分页查询，返回pageInfo对象
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public PageInfo<T> selectPageInfo(PageInfos<T> pageInfos) throws Exception{
        /**
         * 如果当前页码数为null，则默认为第一页
         */
        if(pageInfos.getPageNum() == null){
            pageInfos.setPageNum(0);
        }
        /**
         * 如果每一页显示的条数为null，则默认每一页显示5条
         */
        if(pageInfos.getPageSize() == null) {
            pageInfos.setPageSize(5);
        }

        PageHelper.startPage(pageInfos.getPageNum(), pageInfos.getPageSize());
        List<T> list = this.selectModel(pageInfos.getData());
        PageInfo<T> pageInfo = new PageInfo<T>(list);
        pageInfo.setTotal(selectCount(pageInfos.getData()));
        return pageInfo;
    }
}
