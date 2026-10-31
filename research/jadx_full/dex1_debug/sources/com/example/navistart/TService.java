package com.example.navistart;

import a4.g;
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
import d2.h;
import e0.m;
import e0.u1;
import e0.v0;
import e0.w;
import f7.c;
import h0.b;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import l7.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TService extends VpnService {
    public static h c;
    public static View d;
    public static ImageView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile boolean f845f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WindowManager f846b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(Boolean bool) {
        f845f = !bool.booleanValue();
        if (d != null) {
            if (bool.booleanValue()) {
                d.setVisibility(0);
            } else {
                d.setVisibility(8);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Boolean bool) {
        if (e != null) {
            new Handler(Looper.getMainLooper()).post(new g(20, bool));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Context context) {
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) TService.class);
        if (b.o().loadBoolean(m.h(new byte[]{109, 82, 95, -93, 81, 37, 2, -6, 114, 65, 84, -113, 125, 51, 4, -19, 105, 86}, new byte[]{27, 34, 49, -4, 34, 64, 112, -116}), false)) {
            context.startService(intent);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.net.VpnService, android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        h hVar = new h();
        hVar.f1677a = w.c(-1, m.h(new byte[]{-62, 106, 20, -80, -49, 94, -20, -104, -11, 122}, new byte[]{-106, 31, 122, -29, -86, 44, -102, -15}));
        hVar.c = getApplicationContext();
        hVar.q();
        c = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        View view;
        super.onDestroy();
        WindowManager windowManager = this.f846b;
        if (windowManager != null && (view = d) != null) {
            try {
                windowManager.removeViewImmediate(view);
            } catch (Exception unused) {
            }
            d = null;
        }
        h hVar = c;
        if (hVar != null) {
            try {
                GoBackend goBackend = (GoBackend) hVar.d;
                if (goBackend != null) {
                    goBackend.c(1, (c) hVar.e, (r5.c) hVar.f1679f);
                } else {
                    hVar.q();
                }
            } catch (Exception unused2) {
            }
            c.getClass();
            c.i();
        }
        c = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:14:0x0077  */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        boolean z8;
        View view;
        View view2;
        WindowManager windowManager = this.f846b;
        if (windowManager != null && (view2 = d) != null) {
            try {
                windowManager.removeViewImmediate(view2);
            } catch (Exception unused) {
            }
            d = null;
        }
        View viewInflate = LayoutInflater.from(this).inflate(2131493150, (ViewGroup) null);
        d = viewInflate;
        e = (ImageView) viewInflate.findViewById(2131297761);
        u1 u1Var = new u1(this, m.h(new byte[]{105, -120, -60, 51, -83, 85, -126, -124, 73, -85, -28, 2, -83, 80, -114, -109, 72}, new byte[]{63, -62, -121, 103, -14, 6, -25, -10}));
        b.a();
        WindowManager windowManagerF = b.g().b().f(d, u1Var.c);
        this.f846b = windowManagerF;
        u1Var.a(d, windowManagerF, new v0(16));
        u1Var.d();
        h hVar = c;
        hVar.getClass();
        try {
            GoBackend goBackend = (GoBackend) hVar.d;
            if (goBackend == null) {
                z8 = false;
            } else if (goBackend.c == ((r5.c) hVar.f1679f)) {
                z8 = true;
            } else {
                z8 = false;
            }
        } catch (Exception unused2) {
        }
        b(Boolean.valueOf(z8));
        if (!b.o().loadBoolean(m.h(new byte[]{-96, -114, 71, 114, 19, -79, 5, 45, ByteCompanionObject.MIN_VALUE, -83, 103, 67, 19, -76, 9, 58, -127, -101, 114, 79, 63, -117, 2, 51, -109}, new byte[]{-10, -60, 4, 38, 76, -30, 96, 95}), false)) {
            a(Boolean.FALSE);
        }
        if (f845f && (view = d) != null) {
            view.setVisibility(8);
        }
        if (b.o().loadBoolean(m.h(new byte[]{-61, -118, -41, 12, -42, -99, 116, -22, -22, -119, -51, 50, -58, -122}, new byte[]{-75, -6, -71, 83, -76, -14, 27, -98}), false) && b.o().loadBoolean(m.h(new byte[]{-27, 24, -101, 57, 106, -28, ByteCompanionObject.MIN_VALUE, Base64.padSymbol, -52, 27, -127, 7, 122, -1, -80, 58, -25, 9, -127, 19, 123}, new byte[]{-109, 104, -11, 102, 8, -117, -17, 73}), false)) {
            h hVar2 = c;
            ((ScheduledThreadPoolExecutor) hVar2.f1677a).execute(new a(hVar2, 0));
        }
        return super.onStartCommand(intent, i9, i10);
    }
}
