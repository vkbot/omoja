package com.android.launcher3.util;

import android.graphics.Point;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public class WindowBounds {
    public final Point availableSize;
    public final Rect bounds;
    public final Rect insets;

    public WindowBounds(Rect bounds, Rect insets) {
        this.bounds = bounds;
        this.insets = insets;
        this.availableSize = new Point((bounds.width() - insets.left) - insets.right, (bounds.height() - insets.top) - insets.bottom);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof WindowBounds)) {
            return false;
        }
        WindowBounds windowBounds = (WindowBounds) obj;
        return windowBounds.bounds.equals(this.bounds) && windowBounds.insets.equals(this.insets);
    }
}
