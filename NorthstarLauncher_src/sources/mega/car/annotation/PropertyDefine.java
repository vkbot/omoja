package mega.car.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface PropertyDefine {

    @Deprecated
    public interface JsonString {
    }

    int changeMode() default 1;

    String permission() default "";

    String publish() default "";

    boolean serializable() default true;

    int source() default -1;

    String subscribe() default "";

    @Deprecated
    String topic() default "";

    Class<?> type();
}
