package com.mega.launcherapi.utils;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.mega.launcherapi.R;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LauncherWallpapersParser.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u0010\u0010#\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0002J\b\u0010$\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR!\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u000e`\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\t\"\u0004\b\u0018\u0010\u000bR\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006%"}, d2 = {"Lcom/mega/launcherapi/utils/LauncherWallpapersParser;", "", "()V", "TAG", "", "TAG_ITEM", "TAG_WALLPAPER", "defaultItem", "getDefaultItem", "()Ljava/lang/String;", "setDefaultItem", "(Ljava/lang/String;)V", "items", "Ljava/util/ArrayList;", "Lcom/mega/launcherapi/utils/Item;", "Lkotlin/collections/ArrayList;", "getItems", "()Ljava/util/ArrayList;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "parsed", "", "tag", "getTag", "setTag", BaseIconCache.IconDB.COLUMN_VERSION, "", "getVersion", "()I", "setVersion", "(I)V", "parse", "", "context", "Landroid/content/Context;", "parseInner", "toString", "wallpaper-lib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class LauncherWallpapersParser {
    private static final String TAG = "LauncherWallpapersParser";
    private static final String TAG_ITEM = "item";
    private static final String TAG_WALLPAPER = "wallpaper";
    private static boolean parsed;
    private static int version;
    public static final LauncherWallpapersParser INSTANCE = new LauncherWallpapersParser();
    private static String tag = "";
    private static String defaultItem = "";
    private static final ArrayList<Item> items = new ArrayList<>();
    private static final ReentrantLock lock = new ReentrantLock();

    public final String getDefaultItem() {
        return defaultItem;
    }

    public final ArrayList<Item> getItems() {
        return items;
    }

    public final String getTag() {
        return tag;
    }

    public final int getVersion() {
        return version;
    }

    public final void setDefaultItem(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        defaultItem = str;
    }

    public final void setTag(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        tag = str;
    }

    public final void setVersion(int i) {
        version = i;
    }

    private LauncherWallpapersParser() {
    }

    public final void parse(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ReentrantLock reentrantLock = lock;
        reentrantLock.lock();
        try {
            if (parsed) {
                return;
            }
            INSTANCE.parseInner(context);
            parsed = true;
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    private final void parseInner(Context context) {
        int i;
        if (Utils.isT1GC() || Utils.isT1GCInt() || Utils.isT19CFL1()) {
            tag = "T1GC";
            i = R.xml.launcher_wallpapers_t1gc;
        } else if (Utils.isT28() && Utils.is25My()) {
            tag = Utils.TAG_T28_25MY;
            i = R.xml.launcher_wallpapers_25;
        } else {
            tag = "T28";
            i = R.xml.launcher_wallpapers;
        }
        XmlResourceParser xml = context.getResources().getXml(i);
        Intrinsics.checkNotNullExpressionValue(xml, "context.resources.getXml(xmlResId)");
        int depth = xml.getDepth();
        while (true) {
            int next = xml.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xml.getDepth() <= depth) {
                return;
            }
            if (next != 3) {
                String name = xml.getName();
                if (Intrinsics.areEqual(name, TAG_WALLPAPER)) {
                    TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xml), R.styleable.Wallpaper);
                    Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…s, R.styleable.Wallpaper)");
                    version = typedArrayObtainStyledAttributes.getInt(R.styleable.Wallpaper_wallpaper_version, 0);
                    String string = typedArrayObtainStyledAttributes.getString(R.styleable.Wallpaper_default_wallpaper_name);
                    if (string == null) {
                        string = "";
                    }
                    defaultItem = string;
                    Log.d(TAG, "parseInner: version=" + version + " defaultItem=" + defaultItem);
                    typedArrayObtainStyledAttributes.recycle();
                } else if (Intrinsics.areEqual(name, TAG_ITEM)) {
                    TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(Xml.asAttributeSet(xml), R.styleable.WallpaperItem);
                    Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes2, "context.obtainStyledAttr….styleable.WallpaperItem)");
                    String string2 = typedArrayObtainStyledAttributes2.getString(R.styleable.WallpaperItem_wallpaper_name);
                    Log.d(TAG, "parseInner: name=" + string2);
                    if (string2 != null) {
                        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(R.styleable.WallpaperItem_wallpaper_icon, 0);
                        boolean z = typedArrayObtainStyledAttributes2.getBoolean(R.styleable.WallpaperItem_wallpaper_visible, false);
                        typedArrayObtainStyledAttributes2.recycle();
                        items.add(new Item(string2, resourceId, z));
                    }
                }
            }
        }
    }

    public String toString() {
        return "LauncherWallpapersParser(version=" + version + ", tag=" + tag + ", defaultItem=" + defaultItem + ", items=" + items + ')';
    }
}
