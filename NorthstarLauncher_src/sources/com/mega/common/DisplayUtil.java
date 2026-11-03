package com.mega.common;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class DisplayUtil {
    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2dp(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static boolean isNightMode(Context context) {
        return (context.getResources().getConfiguration().uiMode & 32) != 0;
    }
}
