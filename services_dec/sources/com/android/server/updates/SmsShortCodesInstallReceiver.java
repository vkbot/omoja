package com.android.server.updates;

/* JADX INFO: loaded from: classes2.dex */
public class SmsShortCodesInstallReceiver extends ConfigUpdateInstallReceiver {
    public SmsShortCodesInstallReceiver() {
        super("/data/misc/sms/", "codes", "metadata/", "version");
    }
}
