package com.android.launcher3;

import android.app.ActivityOptions;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.launcher3.util.ResourceBasedOverride;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAppTransitionManager implements ResourceBasedOverride {
    public void registerRemoteAnimations() {
    }

    public boolean supportsAdaptiveIconAnimation() {
        return false;
    }

    public void unregisterRemoteAnimations() {
    }

    public static LauncherAppTransitionManager newInstance(Context context) {
        return (LauncherAppTransitionManager) ResourceBasedOverride.Overrides.getObject(LauncherAppTransitionManager.class, context, R.string.app_transition_manager_class);
    }

    public ActivityOptions getActivityLaunchOptions(Context context, View v) {
        int paddingTop;
        int iWidth;
        int iWidth2;
        Drawable icon;
        int measuredWidth = v.getMeasuredWidth();
        int measuredHeight = v.getMeasuredHeight();
        if (!(v instanceof BubbleTextView) || (icon = ((BubbleTextView) v).getIcon()) == null) {
            paddingTop = 0;
            iWidth = measuredWidth;
            iWidth2 = 0;
        } else {
            Rect bounds = icon.getBounds();
            iWidth2 = (measuredWidth - bounds.width()) / 2;
            paddingTop = v.getPaddingTop();
            iWidth = bounds.width();
            measuredHeight = bounds.height();
        }
        return ActivityOptions.makeClipRevealAnimation(v, iWidth2, paddingTop, iWidth, measuredHeight);
    }
}
