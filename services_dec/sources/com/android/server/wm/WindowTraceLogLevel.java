package com.android.server.wm;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
@Retention(RetentionPolicy.SOURCE)
@interface WindowTraceLogLevel {
    public static final int ALL = 0;
    public static final int CRITICAL = 2;
    public static final int TRIM = 1;
}
