package com.mega.hicar.view;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.ArrayMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: IconCache.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u0018\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/mega/hicar/view/IconCache;", "", "()V", "TAG", "", "iconMap", "Landroid/util/ArrayMap;", "Landroid/graphics/Bitmap;", "clear", "", "getIcon", "packageName", "icon", "", "hicar-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class IconCache {
    private static final String TAG = "IconCache";
    public static final IconCache INSTANCE = new IconCache();
    private static ArrayMap<String, Bitmap> iconMap = new ArrayMap<>();

    private IconCache() {
    }

    public final Bitmap getIcon(String packageName, byte[] icon) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(icon, "icon");
        if (iconMap.containsKey(packageName)) {
            return iconMap.get(packageName);
        }
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(icon, 0, icon.length);
        if (bitmapDecodeByteArray == null) {
            return null;
        }
        iconMap.put(packageName, bitmapDecodeByteArray);
        return bitmapDecodeByteArray;
    }

    public final void clear() {
        MLog.d(TAG, "clear()");
        iconMap.clear();
    }
}
