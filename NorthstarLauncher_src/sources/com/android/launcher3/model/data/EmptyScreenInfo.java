package com.android.launcher3.model.data;

import android.os.Process;

/* JADX INFO: loaded from: classes.dex */
public class EmptyScreenInfo extends ItemInfo {
    public static final int FIX_CELL_X = 9;
    public static final int FIX_CELL_Y = 1;

    public EmptyScreenInfo() {
        this.itemType = 8;
        this.user = Process.myUserHandle();
        this.cellX = 9;
        this.cellY = 1;
    }
}
