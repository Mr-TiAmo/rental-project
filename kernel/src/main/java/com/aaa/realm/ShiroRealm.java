package com.aaa.realm;

import base.ResultData;
import com.aaa.model.Management;
import com.aaa.service.IProjectService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import status.LoginStatus;
import utils.CookieUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* @Description:
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/18
*/
public class ShiroRealm extends AuthorizingRealm {

    @Autowired
    private IProjectService projectService;

    /**
    * @Description: 认证方法
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/18
    */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        // 1.获取用户名
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();
        // 2.根据用户名查询数据库，判断用户是否存在
        ResultData<Management> resultData = projectService.selectUserByUsername(username);
        SimpleAuthenticationInfo info = null;
        Management m = null;
        // 3.判断
        if(LoginStatus.USER_EXIST.getCode().equals(resultData.getCode())){
            m = resultData.getData();
            info = new SimpleAuthenticationInfo(m, m.getPassword(), ByteSource.Util.bytes(m.getSalt()),this.getName());

        }else {
            throw new UnknownAccountException(LoginStatus.USER_NOT_EXIST.getMsg());
        }
        // 4.用户登录成功后，需要把对象信息存入到session中
        if(null != info && null != m){
            Session session = SecurityUtils.getSubject().getSession();
            // 5.把用户的密码设置为null
            m.setPassword(null);
            // 6.把session的key保存到用户的本机电脑上(cookie中)
            HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();;
            HttpServletResponse response = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();
            CookieUtil.setCookie(request, response, "COOKIE_KEY", m.getUsername());
            session.setAttribute(m.getUsername(), m);
        }
        return info;

    }
    /**
    * @Description: 授权方法
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/18
    */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

}
