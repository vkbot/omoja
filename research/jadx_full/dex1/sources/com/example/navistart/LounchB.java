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
import b1.m;
import e0.j0;
import e0.u1;
import h0.b;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import r0.a;
import r0.e;
import r5.c;
import t1.j;
import t1.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LounchB extends Service {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static WindowManager f684g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static c f685h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RelativeLayout f686b;
    public j c;
    public m d;
    public k e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a f687f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Context context) {
        if (b.o().loadBoolean(e0.m.h(new byte[]{-124, -123, Base64.padSymbol, 7, -28, -39, -12, -57, -70, -97, 45}, new byte[]{-56, -22, 72, 105, -121, -79, -74, -109}), false) || b.o().loadBoolean(e0.m.h(new byte[]{23, 10, -57, 47, 94, -28, 44, -11, 59, 31, -19, 54, 95, -25, 54}, new byte[]{100, 125, -104, 66, 43, -120, 88, -100}), false)) {
            context.startService(new Intent(context.getApplicationContext(), (Class<?>) LounchB.class));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        Display[] displays = ((DisplayManager) getSystemService(e0.m.h(new byte[]{57, 27, 26, -58, -52, -127, -113}, new byte[]{93, 114, 105, -74, -96, -32, -10, -117}))).getDisplays();
        b.a();
        if (b.n().getGuDisplayID() > -1) {
            int length = displays.length;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(boolean z8) {
        j jVar;
        j jVar2;
        j jVar3 = this.c;
        if (jVar3 != null) {
            jVar3.setVisibility(z8 ? 0 : 8);
        }
        m mVar = this.d;
        if (mVar != null && (jVar2 = (j) mVar.d) != null) {
            jVar2.setVisibility(z8 ? 0 : 8);
        }
        k kVar = this.e;
        if (kVar == null || (jVar = kVar.f5372b) == null) {
            return;
        }
        jVar.setVisibility(z8 ? 0 : 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        try {
            a.a.v(f684g, this.c);
            m mVar = this.d;
            if (mVar != null) {
                mVar.d();
                WindowManager windowManager = (WindowManager) mVar.c;
                if (windowManager != null) {
                    a.a.v(windowManager, (j) mVar.d);
                }
            }
            k kVar = this.e;
            if (kVar != null) {
                kVar.a();
                WindowManager windowManager2 = kVar.f5371a;
                if (windowManager2 != null) {
                    a.a.v(windowManager2, kVar.f5372b);
                }
            }
        } catch (Exception unused) {
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
        f685h = new c(7, this);
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        f685h = null;
        WindowManager windowManager = f684g;
        if (windowManager != null) {
            a.a.v(windowManager, this.f686b);
            this.f686b.removeAllViews();
            this.f686b.requestLayout();
            this.f686b.invalidate();
            this.f686b = null;
            d();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        a();
        try {
            a.a.v(f684g, this.f686b);
        } catch (Exception unused) {
        }
        u1 u1Var = new u1(this, e0.m.h(new byte[]{-6, 16, Base64.padSymbol, 110, 51, -43, 26}, new byte[]{-74, ByteCompanionObject.MAX_VALUE, 72, 0, 80, -67, 88, 62}));
        this.f686b = (RelativeLayout) LayoutInflater.from(this).inflate(2131492998, (ViewGroup) null);
        b.a();
        WindowManager windowManagerF = b.g().b().f(this.f686b, u1Var.c);
        f684g = windowManagerF;
        u1Var.a(this.f686b, windowManagerF, new j0(this, 1));
        u1Var.d();
        boolean zLoadBoolean = b.o().loadBoolean(e0.m.h(new byte[]{-69, -78, -50, 104, -113, -11, -108, -15, -123, -88, -34}, new byte[]{-9, -35, -69, 6, -20, -99, -42, -91}), false);
        RelativeLayout relativeLayout = this.f686b;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(zLoadBoolean ? 0 : 8);
        }
        d();
        this.f687f = new a(this);
        this.c = new j(this);
        u1 u1Var2 = new u1(this, e0.m.h(new byte[]{-107, -29, -88, -93, 83, 0, -119, -75, -116, -30, -85, -71, 101, 41, -94, -91, -113}, new byte[]{-8, -106, -60, -41, 58, 95, -53, -64}));
        b.a();
        z0.a aVarB = b.g().b();
        j jVar = this.c;
        b.a();
        WindowManager windowManagerG = aVarB.g(jVar, b.n().getGuDisplayID(), u1Var2.c);
        f684g = windowManagerG;
        u1Var2.a(this.c, windowManagerG, new j0(this, 0));
        u1Var2.d();
        this.d = new m(this);
        b.a();
        this.e = new k(this, b.n().getZaPassDisplayID(), e0.m.h(new byte[]{Base64.padSymbol, -125, ByteCompanionObject.MAX_VALUE, -29, -20, 32, -11, 3, 36, -126, 124, -7, -38, 9, -34, 19, 39, -87, 105, -10, -31}, new byte[]{80, -10, 19, -105, -123, ByteCompanionObject.MAX_VALUE, -73, 118}));
        b(b.o().loadBoolean(e0.m.h(new byte[]{52, -15, -14, -42, -113, -111, -77, -73, 24, -28, -40, -49, -114, -110, -87}, new byte[]{71, -122, -83, -69, -6, -3, -57, -34}), false));
        this.c.e(new a4.c(this, 0, 4), new a4.c(this, 1, 4), new a4.c(this, 2, 4), new a4.c(this, 3, 4), new a4.c(this, 4, 4), new a4.c(this, 5, 4), new a4.c(this, 6, 4), new a4.c(this, 7, 4));
        this.c.setImageRun(e.a(this));
        return super.onStartCommand(intent, i9, i10);
    }
}
