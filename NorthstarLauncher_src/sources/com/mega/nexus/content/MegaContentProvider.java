package com.mega.nexus.content;

import android.content.ContentProvider;
import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public class MegaContentProvider {
    public static Uri maybeAddUserId(Uri uri, int i) {
        return ContentProvider.maybeAddUserId(uri, i);
    }
}
