package com.example.navistart;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.os.IBinder;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.example.navistart.LounchB;
import com.example.navistart.ModernMainActivity;
import com.google.protobuf.AbstractC1178q;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p000a.AbstractC0000a;
import p005a4.RunnableC0010c;
import p016b1.C0872m;
import p047e0.AbstractC1387m;
import p047e0.C1428u1;
import p078h0.C1652b;
import p180r0.C3088a;
import p180r0.C3092e;
import p184r5.C3105c;
import p198t1.C3232j;
import p198t1.C3233k;
import p206u0.C3277a;
import p250y5.AbstractC3656k;
import p255z0.InterfaceC3692a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class LounchB extends Service {

    /* JADX INFO: renamed from: g */
    public static WindowManager f1281g;

    /* JADX INFO: renamed from: h */
    public static C3105c f1282h;

    /* JADX INFO: renamed from: b */
    public RelativeLayout f1283b;

    /* JADX INFO: renamed from: c */
    public C3232j f1284c;

    /* JADX INFO: renamed from: d */
    public C0872m f1285d;

    /* JADX INFO: renamed from: e */
    public C3233k f1286e;

    /* JADX INFO: renamed from: f */
    public C3088a f1287f;

    /* JADX INFO: renamed from: c */
    public static void m1419c(Context context) {
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-124, -123, Base64.padSymbol, 7, -28, -39, -12, -57, -70, -97, 45}, new byte[]{-56, -22, 72, 105, -121, -79, -74, -109}), false) || C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{23, 10, -57, 47, 94, -28, 44, -11, 59, 31, -19, 54, 95, -25, 54}, new byte[]{100, 125, -104, 66, 43, -120, 88, -100}), false)) {
            context.startService(new Intent(context.getApplicationContext(), (Class<?>) LounchB.class));
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1420a() {
        Display[] displays = ((DisplayManager) getSystemService(AbstractC1387m.m2421h(new byte[]{57, 27, 26, -58, -52, -127, -113}, new byte[]{93, 114, 105, -74, -96, -32, -10, -117}))).getDisplays();
        C1652b.m2734a();
        if (C1652b.m2744n().getGuDisplayID() > -1) {
            int length = displays.length;
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1421b(boolean z9) {
        C3232j c3232j;
        C3232j c3232j2;
        C3232j c3232j3 = this.f1284c;
        if (c3232j3 != null) {
            c3232j3.setVisibility(z9 ? 0 : 8);
        }
        C0872m c0872m = this.f1285d;
        if (c0872m != null && (c3232j2 = (C3232j) c0872m.f602d) != null) {
            c3232j2.setVisibility(z9 ? 0 : 8);
        }
        C3233k c3233k = this.f1286e;
        if (c3233k == null || (c3232j = c3233k.f9488b) == null) {
            return;
        }
        c3232j.setVisibility(z9 ? 0 : 8);
    }

    /* JADX INFO: renamed from: d */
    public final void m1422d() {
        try {
            AbstractC0000a.m21v(f1281g, this.f1284c);
            C0872m c0872m = this.f1285d;
            if (c0872m != null) {
                c0872m.m980d();
                WindowManager windowManager = (WindowManager) c0872m.f601c;
                if (windowManager != null) {
                    AbstractC0000a.m21v(windowManager, (C3232j) c0872m.f602d);
                }
            }
            C3233k c3233k = this.f1286e;
            if (c3233k != null) {
                c3233k.m5175a();
                WindowManager windowManager2 = c3233k.f9487a;
                if (windowManager2 != null) {
                    AbstractC0000a.m21v(windowManager2, c3233k.f9488b);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f1282h = new C3105c(7, this);
        m1420a();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        f1282h = null;
        WindowManager windowManager = f1281g;
        if (windowManager != null) {
            AbstractC0000a.m21v(windowManager, this.f1283b);
            this.f1283b.removeAllViews();
            this.f1283b.requestLayout();
            this.f1283b.invalidate();
            this.f1283b = null;
            m1422d();
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        m1420a();
        try {
            AbstractC0000a.m21v(f1281g, this.f1283b);
        } catch (Exception unused) {
        }
        C1428u1 c1428u1 = new C1428u1(this, AbstractC1387m.m2421h(new byte[]{-6, 16, Base64.padSymbol, 110, 51, -43, 26}, new byte[]{-74, ByteCompanionObject.MAX_VALUE, 72, 0, 80, -67, 88, 62}));
        this.f1283b = (RelativeLayout) LayoutInflater.from(this).inflate(R.layout.lounchb, (ViewGroup) null);
        C1652b.m2734a();
        WindowManager windowManagerMo1144f = C1652b.m2738g().mo3013b().mo1144f(this.f1283b, c1428u1.f3431c);
        f1281g = windowManagerMo1144f;
        final int i12 = 1;
        c1428u1.m2476a(this.f1283b, windowManagerMo1144f, new Runnable(this) { // from class: e0.j0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ LounchB f3278c;

            {
                this.f3278c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i13 = i12;
                LounchB lounchB = this.f3278c;
                switch (i13) {
                    case 0:
                        lounchB.f1284c.m5171d(lounchB);
                        break;
                    default:
                        WindowManager windowManager = LounchB.f1281g;
                        StringBuilder sb = new StringBuilder();
                        C3277a c3277aM2745o = C1652b.m2745o();
                        byte[] bArr = AbstractC1387m.f3322j;
                        String[] strArr = AbstractC1406p3.f3368a;
                        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                        C3277a c3277aM2745o2 = C1652b.m2745o();
                        byte[] bArr2 = AbstractC1387m.f3318f;
                        if (!(AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g) ? Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-6}, new byte[]{-54, Base64.padSymbol, 91, -11, -9, -54, 43, -84}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                            AbstractC3656k.m5875u(lounchB, new Intent(lounchB, (Class<?>) ModernMainActivity.class).addFlags(268435456), null);
                        } else {
                            C1652b.m2734a();
                            C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{-101, 74, -121, 113, 13, 26, -27, -85, -92, 64, -122, 64, 0, 23, -48}, new byte[]{-41, 37, -14, 31, 110, 114, -89, -12}));
                        }
                        break;
                }
            }
        });
        c1428u1.m2479d();
        final int i13 = 0;
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-69, -78, -50, 104, -113, -11, -108, -15, -123, -88, -34}, new byte[]{-9, -35, -69, 6, -20, -99, -42, -91}), false);
        RelativeLayout relativeLayout = this.f1283b;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(zLoadBoolean ? 0 : 8);
        }
        m1422d();
        this.f1287f = new C3088a(this);
        this.f1284c = new C3232j(this);
        C1428u1 c1428u2 = new C1428u1(this, AbstractC1387m.m2421h(new byte[]{-107, -29, -88, -93, 83, 0, -119, -75, -116, -30, -85, -71, 101, 41, -94, -91, -113}, new byte[]{-8, -106, -60, -41, 58, 95, -53, -64}));
        C1652b.m2734a();
        InterfaceC3692a interfaceC3692aMo3013b = C1652b.m2738g().mo3013b();
        C3232j c3232j = this.f1284c;
        C1652b.m2734a();
        WindowManager windowManagerMo1145g = interfaceC3692aMo3013b.mo1145g(c3232j, C1652b.m2744n().getGuDisplayID(), c1428u2.f3431c);
        f1281g = windowManagerMo1145g;
        c1428u2.m2476a(this.f1284c, windowManagerMo1145g, new Runnable(this) { // from class: e0.j0

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ LounchB f3278c;

            {
                this.f3278c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i14 = i13;
                LounchB lounchB = this.f3278c;
                switch (i14) {
                    case 0:
                        lounchB.f1284c.m5171d(lounchB);
                        break;
                    default:
                        WindowManager windowManager = LounchB.f1281g;
                        StringBuilder sb = new StringBuilder();
                        C3277a c3277aM2745o = C1652b.m2745o();
                        byte[] bArr = AbstractC1387m.f3322j;
                        String[] strArr = AbstractC1406p3.f3368a;
                        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                        C3277a c3277aM2745o2 = C1652b.m2745o();
                        byte[] bArr2 = AbstractC1387m.f3318f;
                        if (!(AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g) ? Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-6}, new byte[]{-54, Base64.padSymbol, 91, -11, -9, -54, 43, -84}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                            AbstractC3656k.m5875u(lounchB, new Intent(lounchB, (Class<?>) ModernMainActivity.class).addFlags(268435456), null);
                        } else {
                            C1652b.m2734a();
                            C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{-101, 74, -121, 113, 13, 26, -27, -85, -92, 64, -122, 64, 0, 23, -48}, new byte[]{-41, 37, -14, 31, 110, 114, -89, -12}));
                        }
                        break;
                }
            }
        });
        c1428u2.m2479d();
        this.f1285d = new C0872m(this);
        C1652b.m2734a();
        this.f1286e = new C3233k(this, C1652b.m2744n().getZaPassDisplayID(), AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -125, ByteCompanionObject.MAX_VALUE, -29, -20, 32, -11, 3, 36, -126, 124, -7, -38, 9, -34, 19, 39, -87, 105, -10, -31}, new byte[]{80, -10, 19, -105, -123, ByteCompanionObject.MAX_VALUE, -73, 118}));
        m1421b(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{52, -15, -14, -42, -113, -111, -77, -73, 24, -28, -40, -49, -114, -110, -87}, new byte[]{71, -122, -83, -69, -6, -3, -57, -34}), false));
        this.f1284c.m5172e(new RunnableC0010c(this, 0, 4), new RunnableC0010c(this, 1, 4), new RunnableC0010c(this, 2, 4), new RunnableC0010c(this, 3, 4), new RunnableC0010c(this, 4, 4), new RunnableC0010c(this, 5, 4), new RunnableC0010c(this, 6, 4), new RunnableC0010c(this, 7, 4));
        this.f1284c.setImageRun(C3092e.m4924a(this));
        return super.onStartCommand(intent, i10, i11);
    }
}
