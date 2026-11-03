package com.mega.nexus.permission;

import android.content.Context;
import android.provider.Settings;

/* JADX INFO: loaded from: classes2.dex */
public class MegaPrivacyPermissionManager {
    public static final String PRIVACY_CAMERA = "privacy_camera";
    public static final String PRIVACY_LOCATION = "privacy_location";
    public static final String PRIVACY_MICROPHONE = "privacy_microphone";
    public static final int PRIVACY_PERMISSION_DENIED = -1;
    public static final int PRIVACY_PERMISSION_GRANTED = 0;
    public static final int PRIVACY_PERMISSION_INVALID = -2;

    public static int checkPrivacyPermission(Context context, String str) {
        return Settings.Global.getInt(context.getContentResolver(), str, -2);
    }

    public static void grantPrivacyPermission(Context context, String str) {
        Settings.Global.putInt(context.getContentResolver(), str, 0);
    }

    public static void revokePrivacyPermission(Context context, String str) {
        Settings.Global.putInt(context.getContentResolver(), str, -1);
    }
}
