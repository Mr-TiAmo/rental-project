package utils;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class MD5Utils {
    //加密算法MD5
    private static String name = "MD5";

    public static String enc(String salt,Object source){

        //将String类型的参数转换为salt
        ByteSource newsalt = ByteSource.Util.bytes(salt);
        SimpleHash simpleHash = new SimpleHash(name, source, newsalt,1024);
        String hex = simpleHash.toHex();
        System.out.println("hex:"+hex);
        return hex;
    }

    public static void main(String[] args) {
        String salt = "zhangsan";
        Object source = "123456";
        enc(salt, source);
    }
}
