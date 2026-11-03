package com.android.launcher3.icons.cache;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.LocaleList;
import android.os.UserHandle;
import com.android.launcher3.icons.BitmapInfo;

/* JADX INFO: loaded from: classes.dex */
public interface CachingLogic<T> {
    default boolean addToMemCache() {
        return true;
    }

    ComponentName getComponent(T t);

    default CharSequence getDescription(T t, CharSequence charSequence) {
        return charSequence;
    }

    default String getKeywords(T t, LocaleList localeList) {
        return null;
    }

    CharSequence getLabel(T t);

    UserHandle getUser(T t);

    BitmapInfo loadIcon(Context context, T t);

    default long getLastUpdatedTime(T t, PackageInfo packageInfo) {
        return packageInfo.lastUpdateTime;
    }
}
