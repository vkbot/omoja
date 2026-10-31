package com.example.navistart;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import com.google.protobuf.q;
import e0.d;
import e0.e;
import e0.f;
import e0.h;
import e0.m;
import e0.p3;
import e0.u1;
import e0.x1;
import h0.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map$Entry;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import s1.n;
import s1.u0;
import u0.a;
import x0.c;
import x0.o;
import x0.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AllWidgetServices extends Service {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile AllWidgetServices f631g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile boolean f632h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile boolean f633i;
    public WindowManager c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f634b = new Handler(Looper.getMainLooper());
    public final Boolean d = Boolean.TRUE;
    public final HashMap e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f635f = new HashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Context context) {
        context.startService(new Intent(context.getApplicationContext(), (Class<?>) AllWidgetServices.class));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        if (b.o().loadBoolean(m.h(new byte[]{122, -76, 33, -80, -3, 16, 107, -78, 109, -90, 52, -95, -4, 16, 121, -75, 104, -93, Base64.padSymbol, -80, -21}, new byte[]{9, -63, 81, -43, -113, 79, 28, -37}), false)) {
            Display[] displays = ((DisplayManager) getSystemService(m.h(new byte[]{32, 101, 55, 62, -10, -47, 96}, new byte[]{68, 12, 68, 78, -102, -80, 25, 59}))).getDisplays();
            ArrayList arrayListA = p.a();
            int size = arrayListA.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayListA.get(i9);
                i9++;
                o oVar = (o) obj;
                if (oVar.c) {
                    int i10 = -1;
                    for (int i11 = 0; i11 < displays.length; i11++) {
                        if (displays[i11].getDisplayId() == oVar.f6007h) {
                            i10 = i11;
                        }
                    }
                    if (i10 >= 0) {
                        Context contextCreateDisplayContext = createDisplayContext(displays[i10]);
                        String str = m.h(new byte[]{44, -96, -60, -8, -14, -95, -3, -74, 25, -97, -51, -35, -19, -84, -7, -74, 30, -109, -5, -38, -21, -96, -24, -116}, new byte[]{109, -52, -88, -81, -101, -59, -102, -45}) + oVar.f6003a;
                        c cVar = new c(contextCreateDisplayContext, oVar, false, false);
                        u1 u1Var = new u1(contextCreateDisplayContext, str);
                        b.a();
                        WindowManager windowManagerG = b.g().b().g(cVar, i10, u1Var.c);
                        this.e.put(str, cVar);
                        this.f635f.put(cVar, windowManagerG);
                        u1Var.a(cVar, windowManagerG, new f(cVar, 0));
                        cVar.f5974o = u1Var;
                        cVar.k();
                        b.o().saveBoolean(str.concat(m.h(new byte[]{92, 12, 44}, new byte[]{3, 67, 66, 78, -86, -32, -46, 5})), true);
                        cVar.setVisibility(8);
                        b(cVar, str);
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(View view, String str) {
        Boolean boolValueOf;
        if (f633i) {
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        a aVarO = b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        a aVarO2 = b.o();
        byte[] bArr2 = m.f1892f;
        if (q.w(bArr2, aVarO2, "", strG)) {
            boolValueOf = Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{-4}, new byte[]{-52, -89, 35, 41, 10, -44, -34, 5}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            a aVarO3 = b.o();
            StringBuilder sbU = ai.onnxruntime.a.u(str);
            sbU.append(m.h(new byte[]{-24, -78, 48}, new byte[]{-73, -3, 94, -29, -87, -24, -43, -3}));
            if (aVarO3.loadBoolean(sbU.toString(), false)) {
                view.setVisibility(0);
            } else {
                view.setVisibility(8);
            }
        }
        if (MainActivity.w() && this.d.booleanValue()) {
            str.getClass();
        }
        if (MainActivity.v(this) && this.d.booleanValue()) {
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        HashMap map = this.f635f;
        for (Map$Entry map$Entry : map.entrySet()) {
            if (map$Entry.getValue() != null) {
                a.a.v((WindowManager) map$Entry.getValue(), (View) map$Entry.getKey());
            }
        }
        map.clear();
        this.e.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(h hVar, boolean z8) {
        View view = (View) this.e.get(m.h(new byte[]{6, 62, 50, 90, 117, 34, 108, 59, 51, 1, 59, ByteCompanionObject.MAX_VALUE, 106, 47, 104, 59, 52, 13}, new byte[]{71, 82, 94, 13, 28, 70, 11, 94}).concat(hVar.f1854b));
        boolean z9 = !f633i && z8;
        if (view != null) {
            if (z9) {
                view.setVisibility(0);
            } else {
                view.setVisibility(8);
            }
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
        f631g = this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        if (f631g == this) {
            f631g = null;
        }
        super.onDestroy();
        d();
        MainActivity.i1 = this;
        c(getApplicationContext());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        Runnable eVar;
        d();
        h[] hVarArrValues = h.values();
        int length = hVarArrValues.length;
        int i11 = 0;
        while (true) {
            Runnable runnable = null;
            if (i11 >= length) {
                break;
            }
            h hVar = hVarArrValues[i11];
            String strConcat = m.h(new byte[]{36, 121, 51, 33, -80, -106, -108, 5, 17, 70, 58, 4, -81, -101, -112, 5, 22, 74}, new byte[]{101, 21, 95, 118, -39, -14, -13, 96}).concat(hVar.f1854b);
            View view = (View) hVar.c.create(this);
            this.e.put(strConcat, view);
            if (view != null) {
                u1 u1Var = new u1(this, strConcat);
                b.a();
                WindowManager windowManagerF = b.g().b().f(view, u1Var.c);
                this.c = windowManagerF;
                this.f635f.put(view, windowManagerF);
                boolean z8 = view instanceof u0;
                if (z8) {
                    u0 u0Var = (u0) view;
                    WindowManager windowManager = this.c;
                    WindowManager$LayoutParams windowManager$LayoutParams = u1Var.c;
                    u0Var.f5212l = windowManager;
                    u0Var.f5213m = windowManager$LayoutParams;
                    windowManager$LayoutParams.flags = (windowManager$LayoutParams.flags | 256) & (-513);
                    if (b.o().loadInt(m.h(new byte[]{-13, -45, 40, 78, 92, 74, 106, -124, -58, -20, 33, 107, 67, 71, 110, -124, -63, -32, 23, 112, 91, 73, 97, -124, -27, -42, 42, 125, 90, 89, 85}, new byte[]{-78, -65, 68, 25, 53, 46, 13, -31}), Integer.MIN_VALUE) == Integer.MIN_VALUE) {
                        windowManager$LayoutParams.x = u0Var.e(8) + u0Var.o().left;
                        windowManager$LayoutParams.y = u0Var.e(8) + u0Var.o().top;
                    }
                    u0Var.h();
                }
                boolean z9 = view instanceof n;
                if (z9) {
                    n nVar = (n) view;
                    WindowManager windowManager2 = this.c;
                    WindowManager$LayoutParams windowManager$LayoutParams2 = u1Var.c;
                    nVar.f5153j = windowManager2;
                    nVar.f5154k = windowManager$LayoutParams2;
                }
                if (z9) {
                    eVar = new d((n) view, 0);
                } else {
                    if (z8) {
                        eVar = new e((u0) view, 0);
                    }
                    u1Var.a(view, this.c, runnable);
                    u1Var.d();
                    view.setVisibility(8);
                    b(view, strConcat);
                }
                runnable = eVar;
                u1Var.a(view, this.c, runnable);
                u1Var.d();
                view.setVisibility(8);
                b(view, strConcat);
            }
            i11++;
        }
        if (MainActivity.w() && this.d.booleanValue()) {
            throw null;
        }
        if (MainActivity.v(this) && this.d.booleanValue()) {
            throw null;
        }
        MainActivity.i1 = this;
        e(h.f1851h, f632h);
        a();
        return super.onStartCommand(intent, i9, i10);
    }
}
