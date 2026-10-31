package com.wireguard.android.backend;

import android.content.Intent;
import android.net.VpnService;
import android.support.v4.media.h;
import android.util.Log;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import r5.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class GoBackend$VpnService extends VpnService {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GoBackend f1600b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        h hVar = GoBackend.e;
        if (((LinkedBlockingQueue) hVar.c).offer(this)) {
            ((FutureTask) hVar.d).run();
        }
        super.onCreate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        c cVar;
        GoBackend goBackend = this.f1600b;
        if (goBackend != null && (cVar = goBackend.c) != null) {
            int i9 = goBackend.d;
            if (i9 != -1) {
                GoBackend.a(i9);
            }
            GoBackend goBackend2 = this.f1600b;
            goBackend2.c = null;
            goBackend2.d = -1;
            goBackend2.f1599b = null;
            cVar.l(1);
        }
        GoBackend.e.getClass();
        GoBackend.e = new h(5);
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        h hVar = GoBackend.e;
        if (((LinkedBlockingQueue) hVar.c).offer(this)) {
            ((FutureTask) hVar.d).run();
        }
        if (intent == null || intent.getComponent() == null || !intent.getComponent().getPackageName().equals(getPackageName())) {
            Log.d("WireGuard/GoBackend", "Service started by Always-on VPN feature");
        }
        return super.onStartCommand(intent, i9, i10);
    }
}
