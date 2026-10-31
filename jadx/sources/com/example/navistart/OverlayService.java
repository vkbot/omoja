package com.example.navistart;

import android.animation.ValueAnimator;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.IBinder;
import android.view.WindowManager;
import com.example.navistart.mainview.FireballView;
import java.util.ArrayList;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p000a.AbstractC0000a;
import p005a4.RunnableC0014g;
import p016b1.C0862c;
import p043d6.C1303b;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.RunnableC1350e2;
import p078h0.C1652b;
import p198t1.C3223a;
import p225w0.AbstractC3441a0;
import p225w0.AbstractC3446c;
import p225w0.EnumC3443b;
import p225w0.InterfaceC3444b0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class OverlayService extends Service implements InterfaceC3444b0 {

    /* JADX INFO: renamed from: f */
    public static volatile OverlayService f1499f;

    /* JADX INFO: renamed from: g */
    public static volatile boolean f1500g;

    /* JADX INFO: renamed from: b */
    public C3223a f1503b;

    /* JADX INFO: renamed from: d */
    public ScheduledFuture f1505d;

    /* JADX INFO: renamed from: i */
    public static final String f1502i = AbstractC1387m.m2421h(new byte[]{-66, -39, 108, -101, 99, -103, 29, 126, -83, -38, 100, -101, 104, ByteCompanionObject.MIN_VALUE, 10, 122, -82, -62, 96, -57, 114, -49, 14, 102, -77, -104, 82, -59, 111, -126, 20, Base64.padSymbol, -101, -39, 98, -64, 117}, new byte[]{-35, -74, 1, -75, 6, -31, 124, 19});

    /* JADX INFO: renamed from: h */
    public static EnumC3443b f1501h = EnumC3443b.f9929b;

    /* JADX INFO: renamed from: c */
    public final ScheduledThreadPoolExecutor f1504c = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-46, -34, 48, 73, 62, -51, 101, -124, -8, -38, 35, 82, 49, -55}, new byte[]{-99, -88, 85, 59, 82, -84, 28, -41}));

    /* JADX INFO: renamed from: e */
    public final C0862c f1506e = new C0862c(4, this);

    /* JADX INFO: renamed from: c */
    public static void m1512c(Context context) {
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-60, 25, 44, 84, 111, 91, 107, 117, -18, 29, 63, 79, 96, 95, 65, 82, -22, 29, Base64.padSymbol}, new byte[]{-117, 111, 73, 38, 3, 58, 18, 38}), false)) {
            context.startService(new Intent(context.getApplicationContext(), (Class<?>) OverlayService.class));
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1513a() {
        ScheduledFuture scheduledFuture = this.f1505d;
        if (scheduledFuture == null || scheduledFuture.isDone()) {
            return;
        }
        this.f1505d.cancel(false);
    }

    /* JADX INFO: renamed from: b */
    public final void m1514b() {
        if (!f1500g) {
            C1652b.m2734a();
            C1652b.m2747q().mo5405d();
            if (!AbstractC3441a0.m5371e()) {
                this.f1503b.m5159a(true);
                f1500g = true;
                MediaPlayer mediaPlayerCreate = MediaPlayer.create(this, R.raw.pop_402324);
                mediaPlayerCreate.setOnCompletionListener(new C1303b(1));
                mediaPlayerCreate.start();
            }
        }
        m1513a();
        if (AbstractC3441a0.m5371e()) {
            return;
        }
        this.f1505d = this.f1504c.schedule(new RunnableC0014g(17, this), 15000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: d */
    public final void m1515d() {
        if (f1500g) {
            f1500g = false;
            C1652b.m2734a();
            C1652b.m2747q().mo5402a();
            C3223a c3223a = this.f1503b;
            if (c3223a != null) {
                c3223a.m5159a(false);
                this.f1503b.setText("");
            }
            if (!AbstractC3441a0.m5371e()) {
                MediaPlayer mediaPlayerCreate = MediaPlayer.create(this, R.raw.shredder_switch_01_422056);
                mediaPlayerCreate.setOnCompletionListener(new C1303b(1));
                mediaPlayerCreate.start();
            }
            if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-23, 66, -76, 42, 44, 66, -69, -50, -20, 83, -87, 16, 18, 90, -72, -8, -55, 101}, new byte[]{-102, 50, -35, 117, 77, 41, -49, -89}), false)) {
                C1652b.m2734a();
                C1652b.m2747q().mo5403b();
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m1516e() {
        C3223a c3223a = this.f1503b;
        if (c3223a != null) {
            FireballView fireballView = c3223a.f9430e;
            ValueAnimator valueAnimator = fireballView.f1793b;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                fireballView.f1793b.removeAllListeners();
                fireballView.f1793b.removeAllUpdateListeners();
            }
            c3223a.f9432g.removeCallbacksAndMessages(null);
            WindowManager windowManager = c3223a.f9427b;
            if (windowManager != null) {
                AbstractC0000a.m21v(windowManager, c3223a);
            }
            c3223a.f9431f = null;
        }
        this.f1503b = null;
    }

    @Override // p225w0.InterfaceC3444b0
    /* JADX INFO: renamed from: i */
    public final void mo1517i(String str) {
        this.f1504c.execute(new RunnableC1350e2(this, AbstractC3441a0.m5371e(), str, 0));
    }

    @Override // p225w0.InterfaceC3444b0
    /* JADX INFO: renamed from: m */
    public final void mo1518m(EnumC3443b enumC3443b) {
        if (enumC3443b != f1501h) {
            f1501h = enumC3443b;
            C3223a c3223a = this.f1503b;
            if (c3223a != null) {
                c3223a.setStatusSpickView(enumC3443b);
            }
        }
        if (AbstractC3441a0.m5371e() && enumC3443b == EnumC3443b.f9931d && !f1500g) {
            f1500g = true;
            m1513a();
            C3223a c3223a2 = this.f1503b;
            if (c3223a2 != null) {
                c3223a2.m5159a(true);
            }
        }
        if (enumC3443b == EnumC3443b.f9931d || !f1500g) {
            return;
        }
        f1500g = false;
        m1513a();
        C3223a c3223a3 = this.f1503b;
        if (c3223a3 != null) {
            c3223a3.m5159a(false);
            this.f1503b.setText("");
        }
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-7, -95, -64, 4, 109, 9, -108, 30, -4, -80, -35, 62, 83, 17, -105, 40, -39, -122}, new byte[]{-118, -47, -87, 91, 12, 98, -32, 119}), false)) {
            C1652b.m2734a();
            C1652b.m2747q().mo5403b();
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f1499f = this;
        String str = AbstractC3441a0.f9921a;
        synchronized (AbstractC3441a0.class) {
            ArrayList arrayList = AbstractC3441a0.f9925e;
            if (!arrayList.contains(this)) {
                arrayList.add(this);
            }
        }
        ServiceC1080Si.m1527a(this);
        IntentFilter intentFilter = new IntentFilter(f1502i);
        int i10 = Build.VERSION.SDK_INT;
        C0862c c0862c = this.f1506e;
        if (i10 >= 33) {
            registerReceiver(c0862c, intentFilter, 2);
        } else {
            registerReceiver(c0862c, intentFilter);
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        if (f1499f == this) {
            f1499f = null;
        }
        super.onDestroy();
        String str = AbstractC3441a0.f9921a;
        synchronized (AbstractC3441a0.class) {
            AbstractC3441a0.f9925e.remove(this);
        }
        m1516e();
        m1512c(this);
        unregisterReceiver(this.f1506e);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        EnumC3443b enumC3443bMo5406e;
        m1516e();
        C3223a c3223a = new C3223a(this, f1501h);
        this.f1503b = c3223a;
        String str = AbstractC3441a0.f9921a;
        synchronized (AbstractC3441a0.class) {
            enumC3443bMo5406e = AbstractC3441a0.f9924d != null ? AbstractC3441a0.f9924d.mo5406e() : AbstractC3446c.f9939a;
        }
        c3223a.setStatusSpickView(enumC3443bMo5406e);
        return super.onStartCommand(intent, i10, i11);
    }
}
