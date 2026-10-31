package com.bumptech.glide;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ViewDragHelper;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import com.example.navistart.MainActivity;
import com.example.navistart.SystemMessageReceiver;
import com.example.navistart.boot;
import com.example.navistart.cores.ColorText;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import e0.g0;
import java.io.IOException;
import java.lang.ref.ReferenceQueue;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.m2;
import n7.f1;
import n7.q0;
import n7.t;
import o7.a3;
import o7.a4;
import o7.b1;
import o7.c2;
import o7.c4;
import o7.e0;
import o7.e1;
import o7.e2;
import o7.f2;
import o7.h4;
import o7.i0;
import o7.k1;
import o7.l0;
import o7.n2;
import o7.o0;
import o7.q2;
import o7.v1;
import o7.y1;
import o7.y2;
import q0.s;
import s1.n0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f596b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ m(int i9, Object obj) {
        this.f596b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Infinite loop detected, blocks: 8, insns: 0 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f596b) {
            case 0:
                p pVar = (p) this.c;
                pVar.d.a(pVar);
                return;
            case 1:
                SystemMessageReceiver systemMessageReceiver = (SystemMessageReceiver) this.c;
                if (MainActivity.w() && systemMessageReceiver.c.booleanValue()) {
                    throw null;
                }
                if (MainActivity.v(systemMessageReceiver.f844b.getApplicationContext()) && systemMessageReceiver.c.booleanValue()) {
                    throw null;
                }
                return;
            case 2:
                h0.b.w(e0.m.h(new byte[]{23, 21, -6, -95}, new byte[]{90, 116, -119, -55, 37, -15, -120, 35}), ColorText.RED);
                h0.b.a().u();
                boot bootVar = (boot) this.c;
                boolean z8 = boot.f891u;
                bootVar.f();
                bootVar.e = bootVar.d.f1975b.schedule(this, h0.b.a().e().c.booleanValue() ? 50000 : AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH, TimeUnit.MILLISECONDS);
                return;
            case 3:
                CheckableImageButton checkableImageButton = ((TextInputLayout) this.c).d.f2077h;
                checkableImageButton.performClick();
                checkableImageButton.jumpDrawablesToCurrentState();
                return;
            case 4:
                f1.e eVar = (f1.e) this.c;
                if (eVar.f2178o) {
                    eVar.c.execute(new a4.g(29, this));
                    return;
                }
                return;
            case 5:
                a4.h hVar = (a4.h) this.c;
                hVar.c = false;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) hVar.e;
                ViewDragHelper viewDragHelper = bottomSheetBehavior.O;
                if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                    hVar.a(hVar.f36b);
                    return;
                } else {
                    if (bottomSheetBehavior.N == 2) {
                        bottomSheetBehavior.l(hVar.f36b);
                        return;
                    }
                    return;
                }
            case 6:
                b1.m mVar = (b1.m) this.c;
                while (true) {
                    try {
                        mVar.b((j.b) ((ReferenceQueue) mVar.e).remove());
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                break;
            case 7:
                ExlantixTelemetryFragment exlantixTelemetryFragment = (ExlantixTelemetryFragment) this.c;
                if (ExlantixTelemetryFragment.v(exlantixTelemetryFragment)) {
                    if (!ExlantixTelemetryFragment.K(exlantixTelemetryFragment)) {
                        ExlantixTelemetryFragment.L(exlantixTelemetryFragment, null);
                        ExlantixTelemetryFragment.G(exlantixTelemetryFragment).setText(e0.m.h(new byte[]{-71, -72, 98, 59, -21, 44, 11, -1, -72, -86, 99, 8, -22, 31, 11, -1, 73, -6, 12, 97, -69, 77, 101, -101, -19, -6, 11, 96, ByteCompanionObject.MIN_VALUE, 76, 87, 106, 44, 82, -33, -47, 85, -23, -78, 50, 73, 111, -25}, new byte[]{105, 42, -77, -80, 59, -99, -37, 74}));
                        return;
                    }
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (ExlantixTelemetryFragment.C(exlantixTelemetryFragment) == 0 || jElapsedRealtime - ExlantixTelemetryFragment.C(exlantixTelemetryFragment) > 5000) {
                        ExlantixTelemetryFragment.L(exlantixTelemetryFragment, null);
                    }
                    if (ExlantixTelemetryFragment.x(exlantixTelemetryFragment).compareAndSet(false, true)) {
                        ExlantixTelemetryFragment.H(exlantixTelemetryFragment).execute(new a4.c(this, ExlantixTelemetryFragment.z(exlantixTelemetryFragment), 7));
                    }
                    if (ExlantixTelemetryFragment.y(exlantixTelemetryFragment) != null) {
                        ExlantixTelemetryFragment.y(exlantixTelemetryFragment).invalidate();
                    }
                    ExlantixTelemetryFragment.D(exlantixTelemetryFragment).postDelayed(this, 1000L);
                    return;
                }
                return;
            case 8:
                m2 m2Var = (m2) this.c;
                String str = m2.f3514m;
                m2Var.t();
                m2Var.c.postDelayed(this, 1000L);
                return;
            case 9:
                b1 b1Var = (b1) this.c;
                try {
                    w7.b.c();
                    try {
                        w7.a aVar = w7.b.f5947a;
                        aVar.getClass();
                        q2 q2Var = b1Var.f4143a;
                        if (!q2Var.isClosed()) {
                            q2Var.f4407n += (long) 2;
                            q2Var.b();
                            break;
                        }
                        aVar.getClass();
                        return;
                    } catch (Throwable th) {
                        try {
                            w7.b.f5947a.getClass();
                            break;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    ((p7.j) b1Var).m(th3);
                    return;
                }
            case 10:
                ((i0) this.c).f4277b.r();
                return;
            case 11:
                ((o0) this.c).f4358b.j();
                return;
            case 12:
                k1 k1Var = (k1) ((e0) this.c).c;
                n2 n2Var = k1Var.r;
                k1Var.f4319q = null;
                k1Var.r = null;
                n2Var.a(f1.f3930m.h("InternalSubchannel closed transport due to address change"));
                return;
            case 13:
                ((f2) ((c0.h) this.c).f400b).h();
                return;
            case 14:
                f2 f2Var = (f2) this.c;
                if (f2Var.f4237x == null) {
                    return;
                }
                f2Var.k(true);
                l0 l0Var = f2Var.E;
                l0Var.g(null);
                f2Var.N.m(2, "Entering IDLE state");
                f2Var.r.c(n7.j.e);
                e1 e1Var = f2Var.Y;
                Object[] objArr = {f2Var.C, l0Var};
                e1Var.getClass();
                for (int i9 = 0; i9 < 2; i9++) {
                    if (((Set) e1Var.f3128b).contains(objArr[i9])) {
                        f2Var.h();
                        return;
                    }
                }
                return;
            case 15:
                f2 f2Var2 = ((y1) this.c).c;
                f2Var2.f4229m.d();
                if (f2Var2.w) {
                    f2Var2.f4236v.x();
                    return;
                }
                return;
            case 16:
                ((c2) this.c).d.h();
                return;
            case 17:
                k1 k1Var2 = ((e2) this.c).f4197i;
                k1Var2.f4313k.execute(new e0(15, k1Var2, f2.f4214f0));
                return;
            case 18:
                a3 a3Var = (a3) this.c;
                a3Var.f4127k = null;
                if (a3Var.f4124h.b()) {
                    a3Var.e();
                    return;
                }
                return;
            case 19:
                ((t) ((y2) this.c).c).l();
                return;
            case 20:
                v1 v1Var = (v1) this.c;
                if (v1Var.A) {
                    return;
                }
                v1Var.f4479v.j();
                return;
            case 21:
                a4 a4Var = (a4) this.c;
                v1 v1Var2 = (v1) a4Var.d.d;
                c4 c4Var = a4Var.c;
                q0 q0Var = v1.F;
                v1Var2.p(c4Var);
                return;
            case 22:
                ((h4) this.c).x();
                return;
            case 23:
                p7.c cVar = (p7.c) this.c;
                p7.n nVar = cVar.e;
                try {
                    l9.e0 e0Var = cVar.f4613j;
                    if (e0Var != null) {
                        l9.l lVar = cVar.c;
                        long j9 = lVar.c;
                        if (j9 > 0) {
                            e0Var.write(lVar, j9);
                        }
                    }
                } catch (IOException e) {
                    nVar.n(e);
                }
                try {
                    l9.e0 e0Var2 = cVar.f4613j;
                    if (e0Var2 != null) {
                        e0Var2.close();
                    }
                } catch (IOException e6) {
                    nVar.n(e6);
                }
                try {
                    Socket socket = cVar.f4614k;
                    if (socket != null) {
                        socket.close();
                        return;
                    }
                    return;
                } catch (IOException e9) {
                    nVar.n(e9);
                    return;
                }
            case 24:
                o7.d dVar = (o7.d) this.c;
                long j10 = dVar.f4179a;
                long jMax = Math.max(2 * j10, j10);
                o7.e eVar2 = dVar.f4180b;
                if (eVar2.f4192b.compareAndSet(j10, jMax)) {
                    o7.e.c.log(Level.WARNING, "Increased {0} to {1}", new Object[]{eVar2.f4191a, Long.valueOf(jMax)});
                    return;
                }
                return;
            case 25:
                p7.n nVar2 = (p7.n) this.c;
                nVar2.f4670o.execute(nVar2.t);
                synchronized (((p7.n) this.c).f4666k) {
                    p7.n nVar3 = (p7.n) this.c;
                    nVar3.C = Integer.MAX_VALUE;
                    nVar3.s();
                    break;
                }
                return;
            case 26:
                q0.l lVar2 = (q0.l) this.c;
                lVar2.z();
                lVar2.f4787b.postDelayed(this, 1000L);
                return;
            case 27:
                s sVar = (s) this.c;
                q0.f fVar = sVar.c;
                if (sVar.e) {
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    if (sVar.f4850f) {
                        long j11 = sVar.f4853i;
                        if (j11 > 0 && jElapsedRealtime2 - j11 >= 5000) {
                            sVar.f4850f = false;
                            sVar.f4853i = 0L;
                            sVar.f4852h = jElapsedRealtime2;
                            fVar.c(false);
                        }
                    } else if (jElapsedRealtime2 - sVar.f4851g >= 10000 && jElapsedRealtime2 - sVar.f4852h >= 6000) {
                        sVar.f4850f = true;
                        sVar.f4853i = 0L;
                        fVar.c(true);
                    }
                }
                if (sVar.e) {
                    sVar.d.postDelayed(this, 1000L);
                    return;
                }
                return;
            case 28:
                n0 n0Var = (n0) this.c;
                String strA = g0.a();
                if (TextUtils.isEmpty(strA)) {
                    strA = e0.m.h(new byte[]{-78, 123}, new byte[]{-64, 14, 109, -26, 35, 76, -106, 56});
                }
                n0Var.setText(new SimpleDateFormat(e0.m.h(new byte[]{104, 49, -54, 27, -103, 119, 122, -116, 96, 57, -62}, new byte[]{45, 116, -113, 55, -71, 19, 90, -63}), new Locale(strA)).format(new Date()));
                n0Var.postDelayed(this, 60000L);
                return;
            default:
                t1.e eVar3 = (t1.e) this.c;
                if (eVar3.d && eVar3.isShown()) {
                    t1.e.f5342h.execute(new t1.c(this, t1.e.c(), eVar3.e));
                    return;
                }
                return;
        }
    }
}
