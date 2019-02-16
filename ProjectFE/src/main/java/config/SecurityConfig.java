package config;


import javax.sql.DataSource;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	/*@Autowired
	PasswordEncoder password;
	*/
	@Autowired
	private DataSource ds;
	
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.jdbcAuthentication().dataSource(ds)
		.usersByUsernameQuery("select username, password, enabled" + " from userinfo where username=?")
		.authoritiesByUsernameQuery("select username, authority " + "from authorities where username=?")
		.passwordEncoder(new BCryptPasswordEncoder());
		
		
		
		
		/*auth.inMemoryAuthentication().passwordEncoder(password).
		withUser("vinodh").password(password.encode("123456")).
		roles("USER").and().withUser("admin").
		password(password.encode("admin@123")).
		roles("USER", "ADMIN"); */
	}
	
	/* public static void main(String[] args) {
         String password = "123456";
         BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
         System.out.println(passwordEncoder.encode(password));
 }
	*/
	protected void configure(HttpSecurity http)throws Exception {
		http.authorizeRequests().
		antMatchers("/login").
		permitAll().
		antMatchers("/").
				 hasAnyRole("ADMIN","USER"). 
				 antMatchers("/manageproducts").access("hasRole('ROLE_ADMIN')"). 
		and().
			formLogin().loginPage("/login").
			defaultSuccessUrl("/").
			failureUrl("/login?error=true").
			permitAll().
		and().
			logout().
			logoutSuccessUrl("/login?logout=true").
			invalidateHttpSession(true).
			permitAll().
			and().
			csrf().
			disable();
		
		/*
		 * http.sessionManagement().maximumSessions(1).expiredUrl("/login?expired");
		 * http.sessionManagement().wait(10*60);
		 */
		 
	}
	
}



