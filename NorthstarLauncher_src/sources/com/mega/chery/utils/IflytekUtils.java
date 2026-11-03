package com.mega.chery.utils;

import android.content.Context;
import android.content.Intent;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class IflytekUtils {
    private static final String TAG = "IflytekUtils";

    public static void hideIflyPermission(Context context) {
        MLog.d(TAG, "hidePermission");
        Intent intent = new Intent();
        intent.putExtra("privacyShowStatus", CheryCountryArea.KEY_CHINA);
        intent.setPackage("com.iflytek.cutefly.speechclient.hmi");
        intent.setAction("com.iflytek.autofly.speech.permissiondismiss");
        context.startService(intent);
    }
}
