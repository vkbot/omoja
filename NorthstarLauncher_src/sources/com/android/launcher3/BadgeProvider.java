package com.android.launcher3;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: BadgeProvider.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0016J/\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000fH\u0016¢\u0006\u0002\u0010\u0010J\u0012\u0010\u0011\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u001c\u0010\u0013\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016JK\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000b\u001a\u00020\f2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0002\u0010\u001cJ\u0012\u0010\u001d\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0002J9\u0010\u001e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000fH\u0016¢\u0006\u0002\u0010\u001f¨\u0006!"}, d2 = {"Lcom/android/launcher3/BadgeProvider;", "Landroid/content/ContentProvider;", "()V", NotificationCompat.CATEGORY_CALL, "Landroid/os/Bundle;", "method", "", "arg", "extras", "delete", "", "uri", "Landroid/net/Uri;", "selection", "selectionArgs", "", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "getBadgeCount", "getType", "insert", "values", "Landroid/content/ContentValues;", "onCreate", "", "query", "Landroid/database/Cursor;", "projection", "sortOrder", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "setBadgeCount", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class BadgeProvider extends ContentProvider {
    private static final String KEY_BADGE_COUNT = "badge_count";
    private static final String KEY_CLASS_NAME = "class_name";
    private static final String KEY_PACKAGE_NAME = "package_name";
    private static final String METHOD_GET_BADGE_COUNT = "get_badge_count";
    private static final String METHOD_SET_BADGE_COUNT = "set_badge_count";
    private static final String TAG = "BadgeProvider";

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String method, String arg, Bundle extras) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (Intrinsics.areEqual(method, METHOD_GET_BADGE_COUNT)) {
            return getBadgeCount(extras);
        }
        if (Intrinsics.areEqual(method, METHOD_SET_BADGE_COUNT)) {
            return setBadgeCount(extras);
        }
        return super.call(method, arg, extras);
    }

    private final Bundle getBadgeCount(Bundle extras) {
        String str;
        Bundle bundle = new Bundle();
        if (extras == null) {
            bundle.putInt("result_code", -1);
            return bundle;
        }
        String string = extras.getString(KEY_PACKAGE_NAME);
        String string2 = extras.getString(KEY_CLASS_NAME);
        String str2 = string;
        if (str2 == null || str2.length() == 0 || (str = string2) == null || str.length() == 0) {
            MLog.d(TAG, "getBadgeCount: packageName is null");
            bundle.putInt("result_code", -1);
            return bundle;
        }
        int badge = BadgeRepository.INSTANCE.getBadge(string, string2);
        bundle.putInt("result_code", 0);
        bundle.putInt(KEY_BADGE_COUNT, badge);
        return bundle;
    }

    private final Bundle setBadgeCount(Bundle extras) {
        String str;
        Bundle bundle = new Bundle();
        if (extras == null) {
            bundle.putInt("result_code", -1);
            return bundle;
        }
        String string = extras.getString(KEY_PACKAGE_NAME);
        String string2 = extras.getString(KEY_CLASS_NAME);
        int i = extras.getInt(KEY_BADGE_COUNT, -1);
        MLog.d(TAG, "setBadgeCount: component=" + string + '/' + string2 + " count=" + i + " pid=" + Binder.getCallingPid());
        String str2 = string;
        if (str2 == null || str2.length() == 0 || (str = string2) == null || str.length() == 0 || i < 0) {
            bundle.putInt("result_code", -1);
            return bundle;
        }
        BadgeRepository.INSTANCE.setBadge(string, string2, i);
        bundle.putInt("result_code", 0);
        bundle.putInt(KEY_BADGE_COUNT, BadgeRepository.INSTANCE.getBadge(string, string2));
        return bundle;
    }
}
