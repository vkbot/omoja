package com.mega.launcher.wallpaper.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDiskIOException;
import android.net.Uri;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.android.launcher3.carproperty.VehicleModel;
import com.mega.launcher.wallpaper.WallpaperPreference;
import com.mega.launcher.wallpaper.WallpaperRepository;
import com.mega.launcher.wallpaper.bean.WallpaperInfo;
import com.mega.launcher.wallpaper.database.WallpaperDatabase;
import com.mega.launcherapi.utils.LiveWallpaperContract;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: WallpapersProvider.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 %2\u00020\u0001:\u0001%B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0016J/\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0011H\u0016¢\u0006\u0002\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016JK\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00112\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00112\b\u0010\u001c\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0002\u0010\u001dJ\u001c\u0010\u001e\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0002J\u001e\u0010!\u001a\u0004\u0018\u00010\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0002J\u001c\u0010\"\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0002J9\u0010#\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0011H\u0016¢\u0006\u0002\u0010$R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/mega/launcher/wallpaper/provider/WallpapersProvider;", "Landroid/content/ContentProvider;", "()V", "mUriMatcher", "Landroid/content/UriMatcher;", NotificationCompat.CATEGORY_CALL, "Landroid/os/Bundle;", "method", "", "arg", "extras", "delete", "", "uri", "Landroid/net/Uri;", "selection", "selectionArgs", "", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "getType", "insert", "values", "Landroid/content/ContentValues;", "onCreate", "", "query", "Landroid/database/Cursor;", "projection", "sortOrder", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "setLiveWallpaperEnabled", "context", "Landroid/content/Context;", "setWallpaperType", "showLiveWallpaper", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WallpapersProvider extends ContentProvider {
    private static final String TABLE_NAME = "Wallpaper";
    private static final String TAG = "WallpapersProvider";
    private static final int WALLPAPERS_SHOW = 1;
    private static final int WALLPAPER_ALL = 0;
    private final UriMatcher mUriMatcher;

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }

    public WallpapersProvider() {
        UriMatcher uriMatcher = new UriMatcher(-1);
        uriMatcher.addURI(LiveWallpaperContract.AUTHORITY, "wallpapers", 0);
        uriMatcher.addURI(LiveWallpaperContract.AUTHORITY, "wallpapers/all", 0);
        uriMatcher.addURI(LiveWallpaperContract.AUTHORITY, "wallpapers/show", 1);
        this.mUriMatcher = uriMatcher;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        MLog.d(TAG, "onCreate: ");
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        String str = "query: uri=" + uri + " projection=" + projection + " selection=" + selection + " selectionArgs=" + selectionArgs + " sortOrder=" + sortOrder;
        MLog.d(TAG, str);
        int iMatch = this.mUriMatcher.match(uri);
        if (iMatch == 0) {
            try {
                WallpaperDatabase.Companion companion = WallpaperDatabase.INSTANCE;
                Context context = getContext();
                Intrinsics.checkNotNull(context);
                return companion.getDatabase(context).wallpaperDao().queryAllAsCursor();
            } catch (SQLiteDiskIOException e) {
                e.printStackTrace();
                return null;
            } finally {
                MLog.d(TAG, "query: finally");
            }
        }
        try {
            if (iMatch != 1) {
                return null;
            }
            WallpaperDatabase.Companion companion2 = WallpaperDatabase.INSTANCE;
            Context context2 = getContext();
            Intrinsics.checkNotNull(context2);
            return companion2.getDatabase(context2).wallpaperDao().queryAllShowAsCursor();
        } catch (SQLiteDiskIOException e2) {
            e2.printStackTrace();
            return null;
        } finally {
            MLog.d(TAG, "query: finally");
        }
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (this.mUriMatcher.match(uri) == 0) {
            return "vnd.android.cursor.dir/vnd.com.android.launcher3.wallpaperprovider.wallpapers";
        }
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.ContentProvider
    public Bundle call(String method, String arg, Bundle extras) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (extras != null) {
            extras.size();
        }
        MLog.w(TAG, "call: " + method + " arg=" + arg + " extras=" + extras);
        Context context = getContext();
        switch (method.hashCode()) {
            case -1610143250:
                if (method.equals(LiveWallpaperContract.METHOD_SET_LIVE_WALLPAPER_ENABLED)) {
                    return setLiveWallpaperEnabled(context, extras);
                }
                break;
            case -1519669681:
                if (method.equals("test_reset_landmark_interval")) {
                    WallpaperPreference.INSTANCE.removeLandmarkInterval();
                }
                break;
            case -767419407:
                if (method.equals(LiveWallpaperContract.METHOD_SHOW_LIVE_WALLPAPER)) {
                    return showLiveWallpaper(context, extras);
                }
                break;
            case 1134546132:
                if (method.equals(LiveWallpaperContract.METHOD_SET_WALLPAPER_TYPE)) {
                    return setWallpaperType(context, extras);
                }
                break;
            case 1243449186:
                if (method.equals("test_set_landmark_interval") && extras != null && extras.containsKey("interval")) {
                    WallpaperPreference.INSTANCE.setLandmarkInterval(extras.getLong("interval"));
                }
                break;
        }
        return super.call(method, arg, extras);
    }

    private final Bundle showLiveWallpaper(Context context, Bundle extras) {
        Bundle bundle = new Bundle();
        if (context == null || extras == null) {
            MLog.w(TAG, "showLiveWallpaper: invalid args");
            bundle.putInt("result_code", -1);
            return bundle;
        }
        if (VehicleModel.isT19CFL1()) {
            MLog.w(TAG, "showLiveWallpaper: not supported");
            bundle.putInt("result_code", -3);
            return bundle;
        }
        String string = extras.getString(LiveWallpaperContract.KEY_WALLPAPER_NAME);
        MLog.w(TAG, "showLiveWallpaper: args=" + extras);
        WallpaperInfo liveWallpaper = WallpaperRepository.INSTANCE.getInstance(context).getLiveWallpaper(string);
        if (liveWallpaper == null) {
            MLog.w(TAG, "showLiveWallpaper: not exist");
            bundle.putInt("result_code", -2);
            return bundle;
        }
        WallpaperRepository.INSTANCE.getInstance(context).showLiveWallpaper(liveWallpaper);
        bundle.putInt("result_code", 0);
        return bundle;
    }

    private final Bundle setLiveWallpaperEnabled(Context context, Bundle extras) {
        Bundle bundle = new Bundle();
        if (context == null || extras == null) {
            MLog.w(TAG, "setLiveWallpaperEnabled: invalid args");
            bundle.putInt("result_code", -1);
            return bundle;
        }
        boolean z = extras.getBoolean(LiveWallpaperContract.KEY_ENABLED);
        MLog.w(TAG, "showLiveWallpaper: args=" + extras);
        WallpaperRepository companion = WallpaperRepository.INSTANCE.getInstance(context);
        if (z) {
            WallpaperInfo currentLiveWallpaper = companion.getCurrentLiveWallpaper();
            if (currentLiveWallpaper == null) {
                MLog.w(TAG, "showLiveWallpaper: current is empty");
                bundle.putInt("result_code", -2);
                return bundle;
            }
            companion.showLiveWallpaper(currentLiveWallpaper);
        } else {
            companion.showStaticWallpapers();
        }
        bundle.putInt("result_code", 0);
        return bundle;
    }

    private final Bundle setWallpaperType(Context context, Bundle extras) {
        Bundle bundle = new Bundle();
        if (context == null || extras == null) {
            MLog.w(TAG, "setWallpaperType: invalid args");
            bundle.putInt("result_code", -1);
            return bundle;
        }
        int i = extras.getInt(LiveWallpaperContract.KEY_TYPE);
        MLog.w(TAG, "setWallpaperType: type=" + i);
        WallpaperRepository companion = WallpaperRepository.INSTANCE.getInstance(context);
        if (i == 0) {
            companion.showStaticWallpapers();
            bundle.putInt("result_code", 0);
            return bundle;
        }
        if (i != 1) {
            if (i == 2) {
                companion.showLandmarkWallpaper();
                bundle.putInt("result_code", 0);
                return bundle;
            }
            MLog.w(TAG, "setWallpaperType: invalid type");
            return null;
        }
        if (VehicleModel.isLiveWallpaperDisabled()) {
            MLog.w(TAG, "setWallpaperType: not supported");
            bundle.putInt("result_code", -3);
            return bundle;
        }
        WallpaperInfo currentLiveWallpaper = companion.getCurrentLiveWallpaper();
        if (currentLiveWallpaper == null) {
            MLog.w(TAG, "setWallpaperType: current is empty");
            bundle.putInt("result_code", -2);
            return bundle;
        }
        companion.showLiveWallpaper(currentLiveWallpaper);
        bundle.putInt("result_code", 0);
        return bundle;
    }
}
