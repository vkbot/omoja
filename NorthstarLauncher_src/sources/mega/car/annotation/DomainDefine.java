package mega.car.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface DomainDefine {

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
        public static final int TYPE_AUDIO = 8;
        public static final int TYPE_ECU = 3;
        public static final int TYPE_HAL = 0;
        public static final int TYPE_LOCAL = 4;
        public static final int TYPE_MESSAGE_CENTER = 2;
        public static final int TYPE_MQTT = 1;
        public static final int TYPE_SETTINGS_GLOBAL = 7;
        public static final int TYPE_SETTINGS_SECURE = 6;
        public static final int TYPE_SETTINGS_SYSTEM = 5;
        public static final int UNDEFINE = -1;
    }

    int domainId();

    @Deprecated
    String name() default "";

    String permission();

    int source() default 2;
}
