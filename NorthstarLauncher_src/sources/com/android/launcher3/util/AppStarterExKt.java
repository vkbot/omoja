package com.android.launcher3.util;

import android.content.Context;
import android.provider.Settings;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: AppStarterEx.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"MEGA_BT_PHONE_CALL_STATE", "", "isBtPhoneActive", "", "context", "Landroid/content/Context;", "NorthstarLauncher_northstarRelease"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class AppStarterExKt {
    public static final String MEGA_BT_PHONE_CALL_STATE = "com.mega.phone.active_state";

    public static final boolean isBtPhoneActive(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            return Settings.Global.getInt(context.getContentResolver(), MEGA_BT_PHONE_CALL_STATE, 0) == 1;
        } catch (Settings.SettingNotFoundException e) {
            MLog.e("isBtPhoneActive: not found. " + e);
            return false;
        }
    }
}
