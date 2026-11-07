package com.android.server.wm;

/* JADX INFO: loaded from: classes2.dex */
class DragResizeMode {
    static final int DRAG_RESIZE_MODE_DOCKED_DIVIDER = 1;
    static final int DRAG_RESIZE_MODE_FREEFORM = 0;

    DragResizeMode() {
    }

    static boolean isModeAllowedForStack(ActivityStack stack, int mode) {
        if (mode == 0) {
            return stack.getWindowingMode() == 5;
        }
        if (mode != 1) {
            return false;
        }
        return stack.inSplitScreenWindowingMode();
    }
}
