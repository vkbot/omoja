package com.android.server.protolog.common;

/* JADX INFO: loaded from: classes.dex */
public interface IProtoLogGroup {
    String getTag();

    boolean isEnabled();

    boolean isLogToLogcat();

    boolean isLogToProto();

    String name();

    void setLogToLogcat(boolean z);

    void setLogToProto(boolean z);

    default boolean isLogToAny() {
        return isLogToLogcat() || isLogToProto();
    }
}
