package com.android.server.compat;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.android.internal.compat.AndroidBuildClassifier;
import com.android.internal.compat.IOverrideValidator;
import com.android.internal.compat.OverrideAllowedState;

/* JADX INFO: loaded from: classes.dex */
public class OverrideValidatorImpl extends IOverrideValidator.Stub {
    private AndroidBuildClassifier mAndroidBuildClassifier;
    private CompatConfig mCompatConfig;
    private Context mContext;

    OverrideValidatorImpl(AndroidBuildClassifier androidBuildClassifier, Context context, CompatConfig config) {
        this.mAndroidBuildClassifier = androidBuildClassifier;
        this.mContext = context;
        this.mCompatConfig = config;
    }

    public OverrideAllowedState getOverrideAllowedState(long changeId, String packageName) {
        if (this.mCompatConfig.isLoggingOnly(changeId)) {
            return new OverrideAllowedState(5, -1, -1);
        }
        boolean debuggableBuild = this.mAndroidBuildClassifier.isDebuggableBuild();
        boolean finalBuild = this.mAndroidBuildClassifier.isFinalBuild();
        int minTargetSdk = this.mCompatConfig.minTargetSdkForChangeId(changeId);
        boolean disabled = this.mCompatConfig.isDisabled(changeId);
        if (debuggableBuild) {
            return new OverrideAllowedState(0, -1, -1);
        }
        PackageManager packageManager = this.mContext.getPackageManager();
        if (packageManager == null) {
            throw new IllegalStateException("No PackageManager!");
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 0);
            int appTargetSdk = applicationInfo.targetSdkVersion;
            if ((applicationInfo.flags & 2) == 0) {
                return new OverrideAllowedState(1, -1, -1);
            }
            if (!finalBuild) {
                return new OverrideAllowedState(0, appTargetSdk, minTargetSdk);
            }
            if (minTargetSdk == -1 && !disabled) {
                return new OverrideAllowedState(2, appTargetSdk, minTargetSdk);
            }
            if (disabled || appTargetSdk <= minTargetSdk) {
                return new OverrideAllowedState(0, appTargetSdk, minTargetSdk);
            }
            return new OverrideAllowedState(3, appTargetSdk, minTargetSdk);
        } catch (PackageManager.NameNotFoundException e) {
            return new OverrideAllowedState(4, -1, -1);
        }
    }
}
