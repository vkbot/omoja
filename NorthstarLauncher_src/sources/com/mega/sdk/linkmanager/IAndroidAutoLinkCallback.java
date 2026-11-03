package com.mega.sdk.linkmanager;

/* JADX INFO: loaded from: classes2.dex */
public interface IAndroidAutoLinkCallback {
    void onAndroidAutoConnectStatusChanged(int i, int i2, String str);

    default void onAndroidAutoDeviceDeleted(String str) {
    }
}
