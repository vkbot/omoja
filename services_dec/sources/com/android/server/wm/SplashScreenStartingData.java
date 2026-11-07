package com.android.server.wm;

import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import com.android.server.policy.WindowManagerPolicy;

/* JADX INFO: loaded from: classes2.dex */
class SplashScreenStartingData extends StartingData {
    private final CompatibilityInfo mCompatInfo;
    private final int mIcon;
    private final int mLabelRes;
    private final int mLogo;
    private final Configuration mMergedOverrideConfiguration;
    private final CharSequence mNonLocalizedLabel;
    private final String mPkg;
    private final int mTheme;
    private final int mWindowFlags;

    SplashScreenStartingData(WindowManagerService service, String pkg, int theme, CompatibilityInfo compatInfo, CharSequence nonLocalizedLabel, int labelRes, int icon, int logo, int windowFlags, Configuration mergedOverrideConfiguration) {
        super(service);
        this.mPkg = pkg;
        this.mTheme = theme;
        this.mCompatInfo = compatInfo;
        this.mNonLocalizedLabel = nonLocalizedLabel;
        this.mLabelRes = labelRes;
        this.mIcon = icon;
        this.mLogo = logo;
        this.mWindowFlags = windowFlags;
        this.mMergedOverrideConfiguration = mergedOverrideConfiguration;
    }

    @Override // com.android.server.wm.StartingData
    WindowManagerPolicy.StartingSurface createStartingSurface(ActivityRecord activity) {
        return this.mService.mPolicy.addSplashScreen(activity.token, activity.mUserId, this.mPkg, this.mTheme, this.mCompatInfo, this.mNonLocalizedLabel, this.mLabelRes, this.mIcon, this.mLogo, this.mWindowFlags, this.mMergedOverrideConfiguration, activity.getDisplayContent().getDisplayId());
    }
}
