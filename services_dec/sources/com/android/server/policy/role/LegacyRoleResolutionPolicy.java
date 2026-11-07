package com.android.server.policy.role;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ResolveInfo;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Slog;
import com.android.internal.util.CollectionUtils;
import com.android.server.LocalServices;
import com.android.server.role.RoleManagerService;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class LegacyRoleResolutionPolicy implements RoleManagerService.RoleHoldersResolver {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "LegacyRoleResolutionPol";
    private final Context mContext;

    public LegacyRoleResolutionPolicy(Context context) {
        this.mContext = context;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x0049  */
    @Override // com.android.server.role.RoleManagerService.RoleHoldersResolver
    public List<String> getRoleHolders(String roleName, int userId) {
        byte b;
        String packageName;
        String packageName2;
        String packageName3;
        String packageName4;
        switch (roleName) {
            case "android.app.role.SMS":
                b = 3;
                break;
            case "android.app.role.DIALER":
                b = 2;
                break;
            case "android.app.role.HOME":
                b = 4;
                break;
            case "android.app.role.ASSISTANT":
                b = 0;
                break;
            case "android.app.role.EMERGENCY":
                b = 5;
                break;
            case "android.app.role.BROWSER":
                b = 1;
                break;
            default:
                b = -1;
                break;
        }
        String str = null;
        if (b == 0) {
            String setting = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "assistant", userId);
            if (setting != null) {
                if (!setting.isEmpty()) {
                    ComponentName componentName = ComponentName.unflattenFromString(setting);
                    packageName = componentName != null ? componentName.getPackageName() : null;
                } else {
                    packageName = null;
                }
            } else if (this.mContext.getPackageManager().isDeviceUpgrading()) {
                String defaultAssistant = this.mContext.getString(R.string.config_defaultAssistant);
                packageName = TextUtils.isEmpty(defaultAssistant) ? null : defaultAssistant;
            } else {
                packageName = null;
            }
            return CollectionUtils.singletonOrEmpty(packageName);
        }
        if (b == 1) {
            PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            String packageName5 = packageManagerInternal.removeLegacyDefaultBrowserPackageName(userId);
            return CollectionUtils.singletonOrEmpty(packageName5);
        }
        if (b == 2) {
            String setting2 = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "dialer_default_application", userId);
            if (!TextUtils.isEmpty(setting2)) {
                packageName2 = setting2;
            } else if (this.mContext.getPackageManager().isDeviceUpgrading()) {
                packageName2 = this.mContext.getString(R.string.config_defaultDialer);
            } else {
                packageName2 = null;
            }
            return CollectionUtils.singletonOrEmpty(packageName2);
        }
        if (b == 3) {
            String setting3 = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "sms_default_application", userId);
            if (!TextUtils.isEmpty(setting3)) {
                packageName3 = setting3;
            } else if (this.mContext.getPackageManager().isDeviceUpgrading()) {
                packageName3 = this.mContext.getString(R.string.config_defaultSms);
            } else {
                packageName3 = null;
            }
            return CollectionUtils.singletonOrEmpty(packageName3);
        }
        if (b != 4) {
            if (b == 5) {
                String defaultEmergencyApp = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "emergency_assistance_application", userId);
                return CollectionUtils.singletonOrEmpty(defaultEmergencyApp);
            }
            Slog.e(LOG_TAG, "Don't know how to find legacy role holders for " + roleName);
            return Collections.emptyList();
        }
        PackageManager packageManager = this.mContext.getPackageManager();
        if (packageManager.isDeviceUpgrading()) {
            ResolveInfo resolveInfo = packageManager.resolveActivityAsUser(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"), 851968, userId);
            if (resolveInfo != null && resolveInfo.activityInfo != null) {
                str = resolveInfo.activityInfo.packageName;
            }
            packageName4 = str;
            if (packageName4 != null && isSettingsApplication(packageName4, userId)) {
                packageName4 = null;
            }
        } else {
            packageName4 = null;
        }
        return CollectionUtils.singletonOrEmpty(packageName4);
    }

    private boolean isSettingsApplication(String packageName, int userId) {
        PackageManager packageManager = this.mContext.getPackageManager();
        ResolveInfo resolveInfo = packageManager.resolveActivityAsUser(new Intent("android.settings.SETTINGS"), 851968, userId);
        if (resolveInfo == null || resolveInfo.activityInfo == null) {
            return false;
        }
        return Objects.equals(packageName, resolveInfo.activityInfo.packageName);
    }
}
