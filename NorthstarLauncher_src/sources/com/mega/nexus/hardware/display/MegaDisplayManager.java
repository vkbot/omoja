package com.mega.nexus.hardware.display;

import android.hardware.display.DisplayManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaDisplayManager {
    public static final int SCREEN_TYPE_CEILING = 7;
    public static final int SCREEN_TYPE_HUD = 5;
    public static final int SCREEN_TYPE_INSTRUMENT = 1;
    public static final int SCREEN_TYPE_LEFT_REAR = 8;
    public static final int SCREEN_TYPE_MAIN = 2;
    public static final int SCREEN_TYPE_MID_REAR = 10;
    public static final int SCREEN_TYPE_PASSENGER = 3;
    public static final int SCREEN_TYPE_RIGHT_REAR = 9;
    public static final int SCREEN_TYPE_UNKNOWN = -1;
    public static final int SCREEN_TYPE_VEHICLE = 4;
    public static final int SCREEN_TYPE_VPA = 6;
    public static final int VIRTUAL_DISPLAY_FLAG_DESTROY_CONTENT_ON_REMOVAL = 256;

    public static int[] getDisplayIdsForScreenType(DisplayManager displayManager, int i) {
        return MegaDisplayManagerAdapter.getDisplayIdsForScreenType(displayManager, i);
    }

    public static int getDefaultDisplayIdForScreenType(DisplayManager displayManager, int i) {
        return MegaDisplayManagerAdapter.getDefaultDisplayIdForScreenType(displayManager, i);
    }

    public static int getScreenTypeForDisplayId(DisplayManager displayManager, int i) {
        return MegaDisplayManagerAdapter.getScreenTypeForDisplayId(displayManager, i);
    }

    public static String screenTypeToString(int i) {
        return MegaDisplayManagerAdapter.screenTypeToString(i);
    }
}
