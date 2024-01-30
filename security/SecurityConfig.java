package ca.sheridancollege.barlasc.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.HeadersConfigurer.FrameOptionsConfig;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Autowired
	@Lazy
    private UserDetailsServiceImpl userDetailsService;

    @Bean
    public PasswordEncoder encoder() {
    return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http, HandlerMappingIntrospector introspector) throws Exception {
    MvcRequestMatcher.Builder mvc = new MvcRequestMatcher.Builder(introspector);
    return http.authorizeHttpRequests(authorize -> authorize
    .requestMatchers(mvc.pattern("/secure/**")).hasAnyRole("USER", "ADMIN")
    .requestMatchers(mvc.pattern("/inventory/**")).hasRole("ADMIN")
    .requestMatchers(mvc.pattern("/")).permitAll()
    .requestMatchers(mvc.pattern("/api/v1/products/**")).permitAll() // Permit access to your API endpoints
    .requestMatchers(mvc.pattern("/img/**")).permitAll()
    .requestMatchers(mvc.pattern("/permission-denied")).permitAll()
    .requestMatchers(AntPathRequestMatcher.antMatcher(HttpMethod.POST, "/register")).permitAll()
    .requestMatchers(AntPathRequestMatcher.antMatcher(HttpMethod.GET, "/register")).permitAll()
    .requestMatchers(AntPathRequestMatcher.antMatcher(HttpMethod.GET, "/secure/specials")).permitAll()
    .requestMatchers(AntPathRequestMatcher.antMatcher("/h2-console/")).permitAll()
    .requestMatchers(mvc.pattern("/")).denyAll()
    )
    .csrf(csrf -> csrf.ignoringRequestMatchers(AntPathRequestMatcher.antMatcher("/h2-console/")).disable())
    .headers(headers -> headers.frameOptions(FrameOptionsConfig::disable))
    .formLogin(form -> form
            .loginPage("/login")
            .defaultSuccessUrl("/secure/menu") 
            .permitAll()
    )
    .exceptionHandling(exception -> exception.accessDeniedPage("/permission-denied"))
    .logout(logout -> logout.permitAll())
    .build();
    }
}


