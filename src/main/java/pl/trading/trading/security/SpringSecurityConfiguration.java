package pl.trading.trading.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.SecurityFilterChain;
import pl.trading.trading.repository.UserRepository;


@Configuration
class SpringSecurityConfiguration {

    @Bean
    SecurityFilterChain defaultSecurityFilterChain(HttpSecurity httpSecurity) throws Exception {

        httpSecurity
                .authorizeHttpRequests(authorization ->
                        authorization
                                .shouldFilterAllDispatcherTypes(false)
                                .requestMatchers(HttpMethod.GET, "/pesel","/home","/register").permitAll()
                                .anyRequest()
                                .authenticated())
                .formLogin(form ->
                        form
                                .loginPage("/login")
                                .defaultSuccessUrl("/index")
                                .permitAll())
                .logout().logoutSuccessUrl("/home")
                .logoutUrl("/logout")
                .and().exceptionHandling();
        return httpSecurity.build();
    }

    @Bean
    UserDetailsService userDetailsService(UserRepository userRepository) {
        return new CustomUserDetailsService(userRepository);
    }
}
