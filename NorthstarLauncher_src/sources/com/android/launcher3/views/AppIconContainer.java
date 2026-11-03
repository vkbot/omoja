package com.android.launcher3.views;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;

/* JADX INFO: compiled from: AppIconContainer.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, d2 = {"Lcom/android/launcher3/views/AppIconContainer;", "", "getIcon", "Landroid/graphics/drawable/Drawable;", "getIconBounds", "", "bounds", "Landroid/graphics/Rect;", "setIconVisible", "visible", "", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface AppIconContainer {
    Drawable getIcon();

    void getIconBounds(Rect bounds);

    void setIconVisible(boolean visible);
}
