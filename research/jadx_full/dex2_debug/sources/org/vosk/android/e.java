package org.vosk.android;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class e implements Runnable {
    public final /* synthetic */ Context b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ Handler e;
    public final /* synthetic */ StorageService$Callback f;
    public final /* synthetic */ StorageService$Callback g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(Context context, String str, String str2, Handler handler, StorageService$Callback storageService$Callback, StorageService$Callback storageService$Callback2) {
        this.b = context;
        this.c = str;
        this.d = str2;
        this.e = handler;
        this.f = storageService$Callback;
        this.g = storageService$Callback2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        StorageService.a(this.b, this.c, this.d, this.e, this.f, this.g);
    }
}
