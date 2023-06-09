package pl.charity.charity.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SpringSecurity {

    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public static PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    SecurityFilterChain defaultSecurityFilterChain(HttpSecurity httpSecurity) throws Exception {
        httpSecurity.authorizeHttpRequests(authorization ->
                        authorization.shouldFilterAllDispatcherTypes(false)
                                .requestMatchers( "/", "/login", "/registration").permitAll()
                                .requestMatchers("/resources/**","/css/**", "/js/**", "/images/**").permitAll()
                                .requestMatchers( "/registration").permitAll()
                                .requestMatchers( "/donation").hasAuthority("USER")
                                .requestMatchers("/admin/**","/institutions/**").hasAuthority("ADMIN")
                                .anyRequest().authenticated())
                .formLogin(form -> form
                        .loginPage("/login")
                        .usernameParameter("email")
                        .defaultSuccessUrl("/account", true)
                        .permitAll())
                .logout().logoutSuccessUrl("/index")
                .logoutUrl("/logout")
                .logoutSuccessUrl("/")
                .and().exceptionHandling()
                .and()
                .csrf()
                .disable();
        return httpSecurity.build();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
}
