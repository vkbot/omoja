package com.lion.datapoint.log;

/* JADX INFO: loaded from: classes2.dex */
public interface IServiceConnectListener {
    void onBindServiceResult(boolean z);

    void onBinderDied();

    void onServiceConnected();

    void onServiceDisconnected();

    void onUnbindService();
}
