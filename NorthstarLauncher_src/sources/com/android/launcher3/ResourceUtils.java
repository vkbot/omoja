package com.android.launcher3;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes.dex */
public class ResourceUtils {
    public static final int DEFAULT_NAVBAR_VALUE = 48;
    public static final String NAVBAR_BOTTOM_GESTURE_SIZE = "navigation_bar_gesture_height";
    public static final String NAVBAR_LANDSCAPE_LEFT_RIGHT_SIZE = "navigation_bar_width";

    public static int getNavbarSize(String resName, Resources res) {
        return getDimenByName(resName, res, 48);
    }

    public static int getDimenByName(String resName, Resources res, int defaultValue) {
        int identifier = res.getIdentifier(resName, "dimen", "android");
        if (identifier != 0) {
            return res.getDimensionPixelSize(identifier);
        }
        return pxFromDp(defaultValue, res.getDisplayMetrics());
    }

    public static boolean getBoolByName(String resName, Resources res, boolean defaultValue) {
        int identifier = res.getIdentifier(resName, "bool", "android");
        return identifier != 0 ? res.getBoolean(identifier) : defaultValue;
    }

    public static int pxFromDp(float size, DisplayMetrics metrics) {
        return Math.round(TypedValue.applyDimension(1, size, metrics));
    }
}
