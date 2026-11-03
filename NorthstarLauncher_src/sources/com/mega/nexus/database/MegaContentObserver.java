package com.mega.nexus.database;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MegaContentObserver extends ContentObserver {
    public MegaContentObserver(Handler handler) {
        super(handler);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri, int i) {
        super.onChange(z, uri, i);
    }
}
