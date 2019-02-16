package config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
@PropertySource("classpath:db.properties")
public class AppConfig {

	@Autowired
	private Environment env;
	
	@Bean
	public DataSource getDataSource() {
		
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName(env.getProperty("h2.driver"));
		ds.setUrl(env.getProperty("h2.jdbcUrl"));
		ds.setUsername(env.getProperty("h2.username"));
		ds.setPassword(env.getProperty("h2.password"));
		return ds;
		
	}
	
}