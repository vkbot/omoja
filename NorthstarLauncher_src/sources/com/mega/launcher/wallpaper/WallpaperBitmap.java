package com.mega.launcher.wallpaper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.BitmapUtils;
import com.android.launcher3.util.SerialExecutor;
import com.mega.launcher.wallpaper.bean.Wallpaper;
import com.mega.launcher.wallpaper.bean.WallpaperInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class WallpaperBitmap {
    public static final int MAX_BITMAP_CACHE_SIZE = 5;
    private static final String TAG = "WallpaperBitmap";
    private final Map<String, Bitmap> mPathBitmapCache = new ConcurrentHashMap(5);
    private final List<Bitmap> mTmpCache1 = new ArrayList();
    private final Executor mSerialExecutor = new SerialExecutor();

    WallpaperBitmap() {
    }

    public void beginLoadingBitmap() {
        this.mTmpCache1.addAll(this.mPathBitmapCache.values());
        this.mPathBitmapCache.clear();
    }

    public void finishLoadingBitmap() {
        this.mTmpCache1.forEach(new Consumer() { // from class: com.mega.launcher.wallpaper.WallpaperBitmap$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Bitmap) obj).recycle();
            }
        });
        this.mTmpCache1.clear();
    }

    public Bitmap getBitmap(Context context, WallpaperInfo wallpaperInfo, BitmapFactory.Options options) {
        return this.mPathBitmapCache.get(wallpaperInfo.getWallpaper().getWallpaperId());
    }

    public void refreshCache(Context context, final Set<WallpaperInfo> infoSet, BitmapFactory.Options options) {
        addAllInfo(context, infoSet, options, true);
    }

    public void refreshCache(Context context, final Set<WallpaperInfo> infoSet, BitmapFactory.Options options, boolean clearAll, boolean sync) {
        Bitmap bitmapRemove;
        if (clearAll) {
            this.mPathBitmapCache.clear();
            addAllInfo(context, infoSet, options, sync);
        } else if (infoSet != null) {
            Set set = (Set) infoSet.stream().map(new Function() { // from class: com.mega.launcher.wallpaper.WallpaperBitmap$$ExternalSyntheticLambda1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((WallpaperInfo) obj).getWallpaper().getWallpaperId();
                }
            }).collect(Collectors.toSet());
            for (String str : this.mPathBitmapCache.keySet()) {
                if (!set.contains(str) && (bitmapRemove = this.mPathBitmapCache.remove(str)) != null) {
                    bitmapRemove.recycle();
                }
            }
            addAllInfo(context, infoSet, options, sync);
        }
    }

    private void addAllInfo(final Context context, final Set<WallpaperInfo> infoSet, final BitmapFactory.Options options, boolean sync) {
        final boolean zIsDarkTheme = Utilities.isDarkTheme(context);
        MLog.d(TAG, "try save bitmaps " + infoSet);
        Runnable runnable = new Runnable() { // from class: com.mega.launcher.wallpaper.WallpaperBitmap$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m270lambda$addAllInfo$1$commegalauncherwallpaperWallpaperBitmap(infoSet, zIsDarkTheme, context, options);
            }
        };
        if (sync) {
            runnable.run();
        } else {
            this.mSerialExecutor.execute(runnable);
        }
    }

    /* JADX INFO: renamed from: lambda$addAllInfo$1$com-mega-launcher-wallpaper-WallpaperBitmap, reason: not valid java name */
    /* synthetic */ void m270lambda$addAllInfo$1$commegalauncherwallpaperWallpaperBitmap(Set set, boolean z, Context context, BitmapFactory.Options options) {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            WallpaperInfo wallpaperInfo = (WallpaperInfo) it.next();
            Wallpaper wallpaper = wallpaperInfo.getWallpaper();
            String wallpaperId = wallpaper.getWallpaperId();
            String adaptivePath = wallpaperInfo.getAdaptivePath(z);
            Bitmap bitmapLoadBitmap = this.mPathBitmapCache.get(wallpaperId);
            if (bitmapLoadBitmap == null) {
                if (wallpaper.getType() == 0) {
                    int identifier = WallpaperUtilities.getIdentifier(context, wallpaper.getName());
                    if (identifier != 0) {
                        bitmapLoadBitmap = BitmapUtils.loadBitmap(context, identifier, options.outWidth, options.outHeight);
                    }
                } else if (wallpaper.getType() == 1) {
                    bitmapLoadBitmap = BitmapUtils.loadBitmap(adaptivePath, options.outWidth, options.outHeight);
                }
                if (bitmapLoadBitmap != null && !bitmapLoadBitmap.isRecycled()) {
                    MLog.d(TAG, "addAllInfo: wallpaperId=" + wallpaperId + " bitmap=" + bitmapLoadBitmap.getWidth() + "*" + bitmapLoadBitmap.getHeight());
                    this.mPathBitmapCache.put(wallpaperId, bitmapLoadBitmap);
                }
            }
        }
    }
}
