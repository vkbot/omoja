package com.mega.launcherapi.utils;

import com.mega.launcherapi.WallpaperConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LauncherWallpapersParser.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/mega/launcherapi/utils/Item;", "", WallpaperConstant.WALLPAPER_COLUMN_NAME, "", "iconResId", "", "visible", "", "(Ljava/lang/String;IZ)V", "getIconResId", "()I", "getName", "()Ljava/lang/String;", "getVisible", "()Z", "toString", "wallpaper-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Item {
    private final int iconResId;
    private final String name;
    private final boolean visible;

    public final int getIconResId() {
        return this.iconResId;
    }

    public final String getName() {
        return this.name;
    }

    public final boolean getVisible() {
        return this.visible;
    }

    public Item(String name, int i, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.iconResId = i;
        this.visible = z;
    }

    public String toString() {
        return "Item(name=" + this.name + " iconResId=" + this.iconResId + " visible=" + this.visible + ')';
    }
}
