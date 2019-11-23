package config.interceptor;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD , ElementType.TYPE})
public @interface Auth {

    // enum contain role access controller
    public enum Role {
        ADMIN,
        USER,
        ANY
    }
    
    public Role role() default Role.ANY;
}
