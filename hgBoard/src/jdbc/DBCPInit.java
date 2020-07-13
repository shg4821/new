package jdbc;

import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.commons.dbcp2.ConnectionFactory; 
import org.apache.commons.dbcp2.DriverManagerConnectionFactory; 
import org.apache.commons.dbcp2.PoolableConnection; 
import org.apache.commons.dbcp2.PoolableConnectionFactory; 
import org.apache.commons.dbcp2.PoolingDriver; 
import org.apache.commons.pool2.impl.GenericObjectPool; 
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

public class DBCPInit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		loadJDBCDriver();
		initConnectionPool();
	}

	private void loadJDBCDriver() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("oracle.jdbc.driver.OracleDriver 로딩 완료");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void initConnectionPool() {
		try {
			String jdbcUrl = "jdbc:mysql://127.0.0.1:3306/tdb?useSSL=false&serverTimezone=Asia/Seoul";
			String username = "scott";
			String pw = "Tiger07#";

			ConnectionFactory connFactory = new DriverManagerConnectionFactory(jdbcUrl, username, pw);
			PoolableConnectionFactory poolableConnFactory = new PoolableConnectionFactory(connFactory, null);
			poolableConnFactory.setValidationQuery("select 1");

			GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
			poolConfig.setTimeBetweenEvictionRunsMillis(1000L * 60L * 5L);
			poolConfig.setTestWhileIdle(true);
			poolConfig.setMinIdle(4);
			poolConfig.setMaxTotal(50);

			GenericObjectPool<PoolableConnection> connectionPool = new GenericObjectPool<>(poolableConnFactory,
					poolConfig);
			poolableConnFactory.setPool(connectionPool);

			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver = (PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
			driver.registerPool("cp", connectionPool);

		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}