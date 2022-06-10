package cn.exrick.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 *通过SqlSessionFactory 获取  SqlSession 实例，执行SQL语句
 */
public class MybatisUtil {

    private static SqlSessionFactory sqlSessionFactory;

    /**
     * 基于XML方式
     * 使用静态代码块加载SqlSessionFactory
     */
    static {
        String resource = "mybatis/Mybatis.xml";
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream(resource);
        } catch (IOException e) {
            e.printStackTrace();
        }
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
    }

    /**
     * 得到SqlSession实例
     * @return  返回SqlSession对象
     */
    public static SqlSession getSqlSession(){
        return sqlSessionFactory.openSession();
    }

}
