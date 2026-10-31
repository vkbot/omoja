package com.example.navistart;

import ai.onnxruntime.AbstractC0074a;
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
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p000a.AbstractC0000a;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1428u1;
import p047e0.C1440x1;
import p047e0.EnumC1362h;
import p047e0.RunnableC1342d;
import p047e0.RunnableC1347e;
import p047e0.RunnableC1352f;
import p078h0.C1652b;
import p190s1.C3159n;
import p190s1.C3174u0;
import p206u0.C3277a;
import p235x0.AbstractC3562p;
import p235x0.C3549c;
import p235x0.C3561o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class AllWidgetServices extends Service {

    /* JADX INFO: renamed from: g */
    public static volatile AllWidgetServices f1208g;

    /* JADX INFO: renamed from: h */
    public static volatile boolean f1209h;

    /* JADX INFO: renamed from: i */
    public static volatile boolean f1210i;

    /* JADX INFO: renamed from: c */
    public WindowManager f1212c;

    /* JADX INFO: renamed from: b */
    public final Handler f1211b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d */
    public final Boolean f1213d = Boolean.TRUE;

    /* JADX INFO: renamed from: e */
    public final HashMap f1214e = new HashMap();

    /* JADX INFO: renamed from: f */
    public final HashMap f1215f = new HashMap();

    /* JADX INFO: renamed from: c */
    public static void m1384c(Context context) {
        context.startService(new Intent(context.getApplicationContext(), (Class<?>) AllWidgetServices.class));
    }

    /* JADX INFO: renamed from: a */
    public final void m1385a() {
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{122, -76, 33, -80, -3, 16, 107, -78, 109, -90, 52, -95, -4, 16, 121, -75, 104, -93, Base64.padSymbol, -80, -21}, new byte[]{9, -63, 81, -43, -113, 79, 28, -37}), false)) {
            Display[] displays = ((DisplayManager) getSystemService(AbstractC1387m.m2421h(new byte[]{32, 101, 55, 62, -10, -47, 96}, new byte[]{68, 12, 68, 78, -102, -80, 25, 59}))).getDisplays();
            ArrayList arrayListM5681a = AbstractC3562p.m5681a();
            int size = arrayListM5681a.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayListM5681a.get(i10);
                i10++;
                C3561o c3561o = (C3561o) obj;
                if (c3561o.f10596c) {
                    int i11 = -1;
                    for (int i12 = 0; i12 < displays.length; i12++) {
                        if (displays[i12].getDisplayId() == c3561o.f10601h) {
                            i11 = i12;
                        }
                    }
                    if (i11 >= 0) {
                        Context contextCreateDisplayContext = createDisplayContext(displays[i11]);
                        String str = AbstractC1387m.m2421h(new byte[]{44, -96, -60, -8, -14, -95, -3, -74, 25, -97, -51, -35, -19, -84, -7, -74, 30, -109, -5, -38, -21, -96, -24, -116}, new byte[]{109, -52, -88, -81, -101, -59, -102, -45}) + c3561o.f10594a;
                        C3549c c3549c = new C3549c(contextCreateDisplayContext, c3561o, false, false);
                        C1428u1 c1428u1 = new C1428u1(contextCreateDisplayContext, str);
                        C1652b.m2734a();
                        WindowManager windowManagerMo1145g = C1652b.m2738g().mo3013b().mo1145g(c3549c, i11, c1428u1.f3431c);
                        this.f1214e.put(str, c3549c);
                        this.f1215f.put(c3549c, windowManagerMo1145g);
                        c1428u1.m2476a(c3549c, windowManagerMo1145g, new RunnableC1352f(c3549c, 0));
                        c3549c.f10547o = c1428u1;
                        c3549c.m5665k();
                        C1652b.m2745o().saveBoolean(str.concat(AbstractC1387m.m2421h(new byte[]{92, 12, 44}, new byte[]{3, 67, 66, 78, -86, -32, -46, 5})), true);
                        c3549c.setVisibility(8);
                        m1386b(c3549c, str);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1386b(View view, String str) {
        Boolean boolValueOf;
        if (f1210i) {
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            boolValueOf = Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-4}, new byte[]{-52, -89, 35, 41, 10, -44, -34, 5}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            C3277a c3277aM2745o3 = C1652b.m2745o();
            StringBuilder sbM170u = AbstractC0074a.m170u(str);
            sbM170u.append(AbstractC1387m.m2421h(new byte[]{-24, -78, 48}, new byte[]{-73, -3, 94, -29, -87, -24, -43, -3}));
            if (c3277aM2745o3.loadBoolean(sbM170u.toString(), false)) {
                view.setVisibility(0);
            } else {
                view.setVisibility(8);
            }
        }
        if (MainActivity.m1426w() && this.f1213d.booleanValue()) {
            str.getClass();
        }
        if (MainActivity.m1425v(this) && this.f1213d.booleanValue()) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1387d() {
        HashMap map = this.f1215f;
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getValue() != null) {
                AbstractC0000a.m21v((WindowManager) entry.getValue(), (View) entry.getKey());
            }
        }
        map.clear();
        this.f1214e.clear();
    }

    /* JADX INFO: renamed from: e */
    public final void m1388e(EnumC1362h enumC1362h, boolean z9) {
        View view = (View) this.f1214e.get(AbstractC1387m.m2421h(new byte[]{6, 62, 50, 90, 117, 34, 108, 59, 51, 1, 59, ByteCompanionObject.MAX_VALUE, 106, 47, 104, 59, 52, 13}, new byte[]{71, 82, 94, 13, 28, 70, 11, 94}).concat(enumC1362h.f3256b));
        boolean z10 = !f1210i && z9;
        if (view != null) {
            if (z10) {
                view.setVisibility(0);
            } else {
                view.setVisibility(8);
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f1208g = this;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        if (f1208g == this) {
            f1208g = null;
        }
        super.onDestroy();
        m1387d();
        MainActivity.f1292i1 = this;
        m1384c(getApplicationContext());
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        Runnable runnableC1347e;
        m1387d();
        EnumC1362h[] enumC1362hArrValues = EnumC1362h.values();
        int length = enumC1362hArrValues.length;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            Runnable runnable = null;
            if (i13 >= length) {
                break;
            }
            EnumC1362h enumC1362h = enumC1362hArrValues[i13];
            String strConcat = AbstractC1387m.m2421h(new byte[]{36, 121, 51, 33, -80, -106, -108, 5, 17, 70, 58, 4, -81, -101, -112, 5, 22, 74}, new byte[]{101, 21, 95, 118, -39, -14, -13, 96}).concat(enumC1362h.f3256b);
            View view = (View) enumC1362h.f3257c.create(this);
            this.f1214e.put(strConcat, view);
            if (view != null) {
                C1428u1 c1428u1 = new C1428u1(this, strConcat);
                C1652b.m2734a();
                WindowManager windowManagerMo1144f = C1652b.m2738g().mo3013b().mo1144f(view, c1428u1.f3431c);
                this.f1212c = windowManagerMo1144f;
                this.f1215f.put(view, windowManagerMo1144f);
                boolean z9 = view instanceof C3174u0;
                if (z9) {
                    C3174u0 c3174u0 = (C3174u0) view;
                    WindowManager windowManager = this.f1212c;
                    WindowManager.LayoutParams layoutParams = c1428u1.f3431c;
                    c3174u0.f9229l = windowManager;
                    c3174u0.f9230m = layoutParams;
                    layoutParams.flags = (layoutParams.flags | 256) & (-513);
                    if (C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-13, -45, 40, 78, 92, 74, 106, -124, -58, -20, 33, 107, 67, 71, 110, -124, -63, -32, 23, 112, 91, 73, 97, -124, -27, -42, 42, 125, 90, 89, 85}, new byte[]{-78, -65, 68, 25, 53, 46, 13, -31}), Integer.MIN_VALUE) == Integer.MIN_VALUE) {
                        layoutParams.x = c3174u0.m5090e(8) + c3174u0.m5100o().left;
                        layoutParams.y = c3174u0.m5090e(8) + c3174u0.m5100o().top;
                    }
                    c3174u0.m5093h();
                }
                boolean z10 = view instanceof C3159n;
                if (z10) {
                    C3159n c3159n = (C3159n) view;
                    WindowManager windowManager2 = this.f1212c;
                    WindowManager.LayoutParams layoutParams2 = c1428u1.f3431c;
                    c3159n.f9123j = windowManager2;
                    c3159n.f9124k = layoutParams2;
                }
                if (z10) {
                    runnableC1347e = new RunnableC1342d((C3159n) view, i12);
                } else {
                    if (z9) {
                        runnableC1347e = new RunnableC1347e((C3174u0) view, 0);
                    }
                    c1428u1.m2476a(view, this.f1212c, runnable);
                    c1428u1.m2479d();
                    view.setVisibility(8);
                    m1386b(view, strConcat);
                }
                runnable = runnableC1347e;
                c1428u1.m2476a(view, this.f1212c, runnable);
                c1428u1.m2479d();
                view.setVisibility(8);
                m1386b(view, strConcat);
            }
            i13++;
        }
        if (MainActivity.m1426w() && this.f1213d.booleanValue()) {
            throw null;
        }
        if (MainActivity.m1425v(this) && this.f1213d.booleanValue()) {
            throw null;
        }
        MainActivity.f1292i1 = this;
        m1388e(EnumC1362h.f3253h, f1209h);
        m1385a();
        return super.onStartCommand(intent, i10, i11);
    }
}
