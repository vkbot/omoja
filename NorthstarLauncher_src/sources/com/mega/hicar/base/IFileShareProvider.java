package com.mega.hicar.base;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public interface IFileShareProvider {

    @Retention(RetentionPolicy.SOURCE)
    public @interface Car2Phone {
        public static final int PHONE_CAR_CANCEL = 207;
        public static final int PHONE_CAR_SEND = 206;
        public static final int PHONE_CAR_TIMEOUT = 205;
        public static final int PHONE_NO_SPACE = 203;
        public static final int PHONE_PHONE_CANCEL = 208;
        public static final int PHONE_RECEIVER = 202;
        public static final int PHONE_REFUSE = 204;
        public static final int PHONE_SEND_SUCCESS = 211;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FileShareStatus {
        public static final int STATUS_AGREE_RECEIVE = 1;
        public static final int STATUS_CANCEL = 4;
        public static final int STATUS_CAR_NO_SPACE = 2;
        public static final int STATUS_REFUSE = 3;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Phone2Car {
        public static final int CAR_CAR_CANCEL = 108;
        public static final int CAR_NO_SPACE = 103;
        public static final int CAR_PHONE_CANCEL = 107;
        public static final int CAR_PHONE_SEND = 106;
        public static final int CAR_PHONE_TIMEOUT = 105;
        public static final int CAR_RECEIVER = 102;
        public static final int CAR_REFUSE = 104;
        public static final int CAR_SEND_SUCCESS = 111;
    }
}
