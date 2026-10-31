package com.example.navistart;

import android.content.Context;
import android.content.Intent;
import android.net.VpnService;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import com.wireguard.android.backend.GoBackend;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p005a4.RunnableC0014g;
import p039d2.C1252h;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1428u1;
import p047e0.RunnableC1431v0;
import p064f7.C1586c;
import p078h0.C1652b;
import p128l7.RunnableC2218a;
import p184r5.C3105c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class TService extends VpnService {

    /* JADX INFO: renamed from: c */
    public static C1252h f1640c;

    /* JADX INFO: renamed from: d */
    public static View f1641d;

    /* JADX INFO: renamed from: e */
    public static ImageView f1642e;

    /* JADX INFO: renamed from: f */
    public static volatile boolean f1643f;

    /* JADX INFO: renamed from: b */
    public WindowManager f1644b;

    /* JADX INFO: renamed from: a */
    public static void m1584a(Boolean bool) {
        f1643f = !bool.booleanValue();
        if (f1641d != null) {
            if (bool.booleanValue()) {
                f1641d.setVisibility(0);
            } else {
                f1641d.setVisibility(8);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m1585b(Boolean bool) {
        if (f1642e != null) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0014g(20, bool));
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m1586c(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) TService.class);
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{109, 82, 95, -93, 81, 37, 2, -6, 114, 65, 84, -113, 125, 51, 4, -19, 105, 86}, new byte[]{27, 34, 49, -4, 34, 64, 112, -116}), false)) {
            context.startService(intent);
        }
    }

    @Override // android.net.VpnService, android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C1252h c1252h = new C1252h();
        c1252h.f2952a = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-62, 106, 20, -80, -49, 94, -20, -104, -11, 122}, new byte[]{-106, 31, 122, -29, -86, 44, -102, -15}));
        c1252h.f2954c = getApplicationContext();
        c1252h.m2255q();
        f1640c = c1252h;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        View view;
        super.onDestroy();
        WindowManager windowManager = this.f1644b;
        if (windowManager != null && (view = f1641d) != null) {
            try {
                windowManager.removeViewImmediate(view);
            } catch (Exception unused) {
            }
            f1641d = null;
        }
        C1252h c1252h = f1640c;
        if (c1252h != null) {
            try {
                GoBackend goBackend = (GoBackend) c1252h.f2955d;
                if (goBackend != null) {
                    goBackend.m2193c(1, (C1586c) c1252h.f2956e, (C3105c) c1252h.f2957f);
                } else {
                    c1252h.m2255q();
                }
            } catch (Exception unused2) {
            }
            f1640c.getClass();
            f1640c.m2247i();
        }
        f1640c = null;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0077  */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        boolean z9;
        View view;
        View view2;
        WindowManager windowManager = this.f1644b;
        if (windowManager != null && (view2 = f1641d) != null) {
            try {
                windowManager.removeViewImmediate(view2);
            } catch (Exception unused) {
            }
            f1641d = null;
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.vpn_service_view, (ViewGroup) null);
        f1641d = viewInflate;
        f1642e = (ImageView) viewInflate.findViewById(R.id.vpn_view_toggle);
        C1428u1 c1428u1 = new C1428u1(this, AbstractC1387m.m2421h(new byte[]{105, -120, -60, 51, -83, 85, -126, -124, 73, -85, -28, 2, -83, 80, -114, -109, 72}, new byte[]{63, -62, -121, 103, -14, 6, -25, -10}));
        C1652b.m2734a();
        WindowManager windowManagerMo1144f = C1652b.m2738g().mo3013b().mo1144f(f1641d, c1428u1.f3431c);
        this.f1644b = windowManagerMo1144f;
        c1428u1.m2476a(f1641d, windowManagerMo1144f, new RunnableC1431v0(16));
        c1428u1.m2479d();
        C1252h c1252h = f1640c;
        c1252h.getClass();
        int i12 = 0;
        try {
            GoBackend goBackend = (GoBackend) c1252h.f2955d;
            if (goBackend == null) {
                z9 = false;
            } else if (goBackend.f2835c == ((C3105c) c1252h.f2957f)) {
                z9 = true;
            } else {
                z9 = false;
            }
        } catch (Exception unused2) {
        }
        m1585b(Boolean.valueOf(z9));
        if (!C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-96, -114, 71, 114, 19, -79, 5, 45, ByteCompanionObject.MIN_VALUE, -83, 103, 67, 19, -76, 9, 58, -127, -101, 114, 79, 63, -117, 2, 51, -109}, new byte[]{-10, -60, 4, 38, 76, -30, 96, 95}), false)) {
            m1584a(Boolean.FALSE);
        }
        if (f1643f && (view = f1641d) != null) {
            view.setVisibility(8);
        }
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-61, -118, -41, 12, -42, -99, 116, -22, -22, -119, -51, 50, -58, -122}, new byte[]{-75, -6, -71, 83, -76, -14, 27, -98}), false) && C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-27, 24, -101, 57, 106, -28, ByteCompanionObject.MIN_VALUE, Base64.padSymbol, -52, 27, -127, 7, 122, -1, -80, 58, -25, 9, -127, 19, 123}, new byte[]{-109, 104, -11, 102, 8, -117, -17, 73}), false)) {
            C1252h c1252h2 = f1640c;
            ((ScheduledThreadPoolExecutor) c1252h2.f2952a).execute(new RunnableC2218a(c1252h2, i12));
        }
        return super.onStartCommand(intent, i10, i11);
    }
}
