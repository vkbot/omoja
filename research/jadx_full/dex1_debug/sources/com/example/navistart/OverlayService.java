package com.example.navistart;

import a4.g;
import android.animation.ValueAnimator;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaPlayer;
import android.os.Build$VERSION;
import android.os.IBinder;
import android.view.WindowManager;
import b1.c;
import c5.h;
import com.example.navistart.mainview.FireballView;
import e0.e2;
import e0.m;
import e0.w;
import java.util.ArrayList;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import t1.a;
import w0.a0;
import w0.b;
import w0.b0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OverlayService extends Service implements b0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile OverlayService f803f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile boolean f804g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f807b;
    public ScheduledFuture d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f806i = m.h(new byte[]{-66, -39, 108, -101, 99, -103, 29, 126, -83, -38, 100, -101, 104, ByteCompanionObject.MIN_VALUE, 10, 122, -82, -62, 96, -57, 114, -49, 14, 102, -77, -104, 82, -59, 111, -126, 20, Base64.padSymbol, -101, -39, 98, -64, 117}, new byte[]{-35, -74, 1, -75, 6, -31, 124, 19});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static b f805h = b.f5599b;
    public final ScheduledThreadPoolExecutor c = w.c(-1, m.h(new byte[]{-46, -34, 48, 73, 62, -51, 101, -124, -8, -38, 35, 82, 49, -55}, new byte[]{-99, -88, 85, 59, 82, -84, 28, -41}));
    public final c e = new c(4, this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Context context) {
        if (h0.b.o().loadBoolean(m.h(new byte[]{-60, 25, 44, 84, 111, 91, 107, 117, -18, 29, 63, 79, 96, 95, 65, 82, -22, 29, Base64.padSymbol}, new byte[]{-117, 111, 73, 38, 3, 58, 18, 38}), false)) {
            context.startService(new Intent(context.getApplicationContext(), (Class<?>) OverlayService.class));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        ScheduledFuture scheduledFuture = this.d;
        if (scheduledFuture == null || scheduledFuture.isDone()) {
            return;
        }
        this.d.cancel(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        if (!f804g) {
            h0.b.a();
            h0.b.q().d();
            if (!a0.e()) {
                this.f807b.a(true);
                f804g = true;
                MediaPlayer mediaPlayerCreate = MediaPlayer.create(this, 2131886087);
                mediaPlayerCreate.setOnCompletionListener(new d6.b(1));
                mediaPlayerCreate.start();
            }
        }
        a();
        if (a0.e()) {
            return;
        }
        this.d = this.c.schedule(new g(17, this), 15000L, TimeUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        if (f804g) {
            f804g = false;
            h0.b.a();
            h0.b.q().a();
            a aVar = this.f807b;
            if (aVar != null) {
                aVar.a(false);
                this.f807b.setText("");
            }
            if (!a0.e()) {
                MediaPlayer mediaPlayerCreate = MediaPlayer.create(this, 2131886089);
                mediaPlayerCreate.setOnCompletionListener(new d6.b(1));
                mediaPlayerCreate.start();
            }
            if (h0.b.o().loadBoolean(m.h(new byte[]{-23, 66, -76, 42, 44, 66, -69, -50, -20, 83, -87, 16, 18, 90, -72, -8, -55, 101}, new byte[]{-102, 50, -35, 117, 77, 41, -49, -89}), false)) {
                h0.b.a();
                h0.b.q().b();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e() {
        a aVar = this.f807b;
        if (aVar != null) {
            FireballView fireballView = aVar.e;
            ValueAnimator valueAnimator = fireballView.f950b;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                fireballView.f950b.removeAllListeners();
                fireballView.f950b.removeAllUpdateListeners();
            }
            aVar.f5336g.removeCallbacksAndMessages(null);
            WindowManager windowManager = aVar.f5334b;
            if (windowManager != null) {
                a.a.v(windowManager, aVar);
            }
            aVar.f5335f = null;
        }
        this.f807b = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.b0
    public final void i(String str) {
        this.c.execute(new e2(this, a0.e(), str, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.b0
    public final void m(b bVar) {
        if (bVar != f805h) {
            f805h = bVar;
            a aVar = this.f807b;
            if (aVar != null) {
                aVar.setStatusSpickView(bVar);
            }
        }
        if (a0.e() && bVar == b.d && !f804g) {
            f804g = true;
            a();
            a aVar2 = this.f807b;
            if (aVar2 != null) {
                aVar2.a(true);
            }
        }
        if (bVar == b.d || !f804g) {
            return;
        }
        f804g = false;
        a();
        a aVar3 = this.f807b;
        if (aVar3 != null) {
            aVar3.a(false);
            this.f807b.setText("");
        }
        if (h0.b.o().loadBoolean(m.h(new byte[]{-7, -95, -64, 4, 109, 9, -108, 30, -4, -80, -35, 62, 83, 17, -105, 40, -39, -122}, new byte[]{-118, -47, -87, 91, 12, 98, -32, 119}), false)) {
            h0.b.a();
            h0.b.q().b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f803f = this;
        String str = a0.f5595a;
        synchronized (a0.class) {
            ArrayList arrayList = a0.e;
            if (!arrayList.contains(this)) {
                arrayList.add(this);
            }
        }
        Si.a(this);
        IntentFilter intentFilter = new IntentFilter(f806i);
        int i9 = Build$VERSION.SDK_INT;
        c cVar = this.e;
        if (i9 >= 33) {
            h.u(this, cVar, intentFilter);
        } else {
            registerReceiver(cVar, intentFilter);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        if (f803f == this) {
            f803f = null;
        }
        super.onDestroy();
        String str = a0.f5595a;
        synchronized (a0.class) {
            a0.e.remove(this);
        }
        e();
        c(this);
        unregisterReceiver(this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        b bVarE;
        e();
        a aVar = new a(this, f805h);
        this.f807b = aVar;
        String str = a0.f5595a;
        synchronized (a0.class) {
            bVarE = a0.d != null ? a0.d.e() : w0.c.f5603a;
        }
        aVar.setStatusSpickView(bVarE);
        return super.onStartCommand(intent, i9, i10);
    }
}
