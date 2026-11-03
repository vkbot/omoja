package com.mega.nexus.content;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public class MegaContentResolver {
    public static void registerContentObserver(ContentResolver contentResolver, Uri uri, boolean z, ContentObserver contentObserver, int i) {
        contentResolver.registerContentObserver(uri, z, contentObserver, i);
    }

    public static void notifyChange(ContentResolver contentResolver, Uri uri, ContentObserver contentObserver, boolean z, int i) {
        contentResolver.notifyChange(uri, contentObserver, z, i);
    }
}
