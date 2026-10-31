package com.bumptech.glide;

import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.widget.TextView;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ViewDragHelper;
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import com.example.navistart.MainActivity;
import com.example.navistart.R;
import com.example.navistart.SystemMessageReceiver;
import com.example.navistart.boot;
import com.example.navistart.cores.ColorText;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
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
import org.json.JSONObject;
import p005a4.C0015h;
import p005a4.RunnableC0010c;
import p005a4.RunnableC0014g;
import p016b1.C0872m;
import p025c0.C0939h;
import p047e0.AbstractC1358g0;
import p047e0.AbstractC1387m;
import p058f1.C1532e;
import p078h0.C1652b;
import p097j.C1884b;
import p130l9.C2242l;
import p130l9.InterfaceC2230e0;
import p132m0.C2325m2;
import p148n7.AbstractC2542t;
import p148n7.C2508f1;
import p148n7.C2537q0;
import p148n7.EnumC2518j;
import p157o7.AbstractC2607b1;
import p157o7.C2603a3;
import p157o7.C2614c2;
import p157o7.C2616c4;
import p157o7.C2617d;
import p157o7.C2623e;
import p157o7.C2625e1;
import p157o7.C2626e2;
import p157o7.C2632f2;
import p157o7.C2646h4;
import p157o7.C2648i0;
import p157o7.C2661k1;
import p157o7.C2666l0;
import p157o7.C2684o0;
import p157o7.C2698q2;
import p157o7.C2727v1;
import p157o7.C2744y1;
import p157o7.C2745y2;
import p157o7.InterfaceC2680n2;
import p157o7.RunnableC2604a4;
import p157o7.RunnableC2624e0;
import p170p7.C2978c;
import p170p7.C2985j;
import p170p7.C2989n;
import p173q0.C3042f;
import p173q0.C3048l;
import p173q0.C3055s;
import p190s1.C3160n0;
import p198t1.C3227e;
import p232w7.AbstractC3536b;
import p232w7.C3535a;

/* JADX INFO: renamed from: com.bumptech.glide.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1054m implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1147b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f1148c;

    public /* synthetic */ RunnableC1054m(int i10, Object obj) {
        this.f1147b = i10;
        this.f1148c = obj;
    }

    /* JADX INFO: Infinite loop detected, blocks: 8, insns: 0 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1147b) {
            case 0:
                ComponentCallbacks2C1078p componentCallbacks2C1078p = (ComponentCallbacks2C1078p) this.f1148c;
                componentCallbacks2C1078p.f1194d.mo1334a(componentCallbacks2C1078p);
                return;
            case 1:
                SystemMessageReceiver systemMessageReceiver = (SystemMessageReceiver) this.f1148c;
                if (MainActivity.m1426w() && systemMessageReceiver.f1638c.booleanValue()) {
                    throw null;
                }
                if (MainActivity.m1425v(systemMessageReceiver.f1637b.getApplicationContext()) && systemMessageReceiver.f1638c.booleanValue()) {
                    throw null;
                }
                return;
            case 2:
                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{23, 21, -6, -95}, new byte[]{90, 116, -119, -55, 37, -15, -120, 35}), ColorText.RED);
                C1652b.m2734a().m2757u();
                boot bootVar = (boot) this.f1148c;
                boolean z9 = boot.f1709u;
                bootVar.m1616f();
                bootVar.f1713e = bootVar.f1712d.f3448b.schedule(this, C1652b.m2734a().m2754e().f3361c.booleanValue() ? 50000 : AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH, TimeUnit.MILLISECONDS);
                return;
            case 3:
                CheckableImageButton checkableImageButton = ((TextInputLayout) this.f1148c).f2518d.f3607h;
                checkableImageButton.performClick();
                checkableImageButton.jumpDrawablesToCurrentState();
                return;
            case 4:
                C1532e c1532e = (C1532e) this.f1148c;
                if (c1532e.f3779o) {
                    c1532e.f3767c.execute(new RunnableC0014g(29, this));
                    return;
                }
                return;
            case 5:
                C0015h c0015h = (C0015h) this.f1148c;
                c0015h.f62c = false;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) c0015h.f64e;
                ViewDragHelper viewDragHelper = bottomSheetBehavior.f2137O;
                if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                    c0015h.m52a(c0015h.f61b);
                    return;
                } else {
                    if (bottomSheetBehavior.f2136N == 2) {
                        bottomSheetBehavior.m1765l(c0015h.f61b);
                        return;
                    }
                    return;
                }
            case 6:
                C0872m c0872m = (C0872m) this.f1148c;
                while (true) {
                    try {
                        c0872m.m978b((C1884b) ((ReferenceQueue) c0872m.f603e).remove());
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                break;
            case 7:
                ExlantixTelemetryFragment exlantixTelemetryFragment = (ExlantixTelemetryFragment) this.f1148c;
                if (exlantixTelemetryFragment.active) {
                    if (!exlantixTelemetryFragment.isExlantix()) {
                        exlantixTelemetryFragment.render(null);
                        exlantixTelemetryFragment.status.setText(AbstractC1387m.m2421h(new byte[]{-71, -72, 98, 59, -21, 44, 11, -1, -72, -86, 99, 8, -22, 31, 11, -1, 73, -6, 12, 97, -69, 77, 101, -101, -19, -6, 11, 96, ByteCompanionObject.MIN_VALUE, 76, 87, 106, 44, 82, -33, -47, 85, -23, -78, 50, 73, 111, -25}, new byte[]{105, 42, -77, -80, 59, -99, -37, 74}));
                        return;
                    }
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (exlantixTelemetryFragment.lastResponse == 0 || jElapsedRealtime - exlantixTelemetryFragment.lastResponse > 5000) {
                        exlantixTelemetryFragment.render(null);
                    }
                    if (exlantixTelemetryFragment.busy.compareAndSet(false, true)) {
                        exlantixTelemetryFragment.worker.execute(new RunnableC0010c(this, exlantixTelemetryFragment.generation, 7));
                    }
                    if (exlantixTelemetryFragment.chart != null) {
                        exlantixTelemetryFragment.chart.invalidate();
                    }
                    exlantixTelemetryFragment.main.postDelayed(this, 1000L);
                    return;
                }
                return;
            case 8:
                C2325m2 c2325m2 = (C2325m2) this.f1148c;
                String str = C2325m2.f6221m;
                c2325m2.m3707t();
                c2325m2.f6223c.postDelayed(this, 1000L);
                return;
            case 9:
                AbstractC2607b1 abstractC2607b1 = (AbstractC2607b1) this.f1148c;
                try {
                    AbstractC3536b.m5642c();
                    try {
                        C3535a c3535a = AbstractC3536b.f10507a;
                        c3535a.getClass();
                        C2698q2 c2698q2 = abstractC2607b1.f7290a;
                        if (!c2698q2.isClosed()) {
                            c2698q2.f7723n += (long) 2;
                            c2698q2.m4226b();
                            break;
                        }
                        c3535a.getClass();
                        return;
                    } catch (Throwable th) {
                        try {
                            AbstractC3536b.f10507a.getClass();
                            break;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    ((C2985j) abstractC2607b1).m4782m(th3);
                    return;
                }
            case 10:
                ((C2648i0) this.f1148c).f7516b.mo3910r();
                return;
            case 11:
                ((C2684o0) this.f1148c).f7649b.mo75j();
                return;
            case 12:
                C2661k1 c2661k1 = (C2661k1) ((RunnableC2624e0) this.f1148c).f7362c;
                InterfaceC2680n2 interfaceC2680n2 = c2661k1.f7585r;
                c2661k1.f7584q = null;
                c2661k1.f7585r = null;
                interfaceC2680n2.mo4170a(C2508f1.f6945m.m3934h("InternalSubchannel closed transport due to address change"));
                return;
            case 13:
                ((C2632f2) ((C0939h) this.f1148c).f796b).m4139h();
                return;
            case 14:
                C2632f2 c2632f2 = (C2632f2) this.f1148c;
                if (c2632f2.f7448x == null) {
                    return;
                }
                c2632f2.m4141k(true);
                C2666l0 c2666l0 = c2632f2.f7401E;
                c2666l0.m4184g(null);
                c2632f2.f7410N.mo3905m(2, "Entering IDLE state");
                c2632f2.f7442r.m1075c(EnumC2518j.f6971e);
                C2625e1 c2625e1 = c2632f2.f7421Y;
                Object[] objArr = {c2632f2.f7399C, c2666l0};
                c2625e1.getClass();
                for (int i10 = 0; i10 < 2; i10++) {
                    if (((Set) c2625e1.f5497b).contains(objArr[i10])) {
                        c2632f2.m4139h();
                        return;
                    }
                }
                return;
            case 15:
                C2632f2 c2632f3 = ((C2744y1) this.f1148c).f7894c;
                c2632f3.f7437m.m3957d();
                if (c2632f3.f7447w) {
                    c2632f3.f7446v.mo3916x();
                    return;
                }
                return;
            case 16:
                ((C2614c2) this.f1148c).f7334d.m4139h();
                return;
            case 17:
                C2661k1 c2661k2 = ((C2626e2) this.f1148c).f7371i;
                c2661k2.f7578k.execute(new RunnableC2624e0(15, c2661k2, C2632f2.f7393f0));
                return;
            case 18:
                C2603a3 c2603a3 = (C2603a3) this.f1148c;
                c2603a3.f7266k = null;
                if (c2603a3.f7263h.m4160b()) {
                    c2603a3.mo3948e();
                    return;
                }
                return;
            case 19:
                ((AbstractC2542t) ((C2745y2) this.f1148c).f7897c).mo3982l();
                return;
            case 20:
                C2727v1 c2727v1 = (C2727v1) this.f1148c;
                if (c2727v1.f7810A) {
                    return;
                }
                c2727v1.f7835v.mo75j();
                return;
            case 21:
                RunnableC2604a4 runnableC2604a4 = (RunnableC2604a4) this.f1148c;
                C2727v1 c2727v2 = (C2727v1) runnableC2604a4.f7272d.f7860d;
                C2616c4 c2616c4 = runnableC2604a4.f7271c;
                C2537q0 c2537q0 = C2727v1.f7806F;
                c2727v2.m4251p(c2616c4);
                return;
            case 22:
                ((C2646h4) this.f1148c).mo3916x();
                return;
            case 23:
                C2978c c2978c = (C2978c) this.f1148c;
                C2989n c2989n = c2978c.f8291e;
                try {
                    InterfaceC2230e0 interfaceC2230e0 = c2978c.f8296j;
                    if (interfaceC2230e0 != null) {
                        C2242l c2242l = c2978c.f8289c;
                        long j10 = c2242l.f5878c;
                        if (j10 > 0) {
                            interfaceC2230e0.write(c2242l, j10);
                        }
                    }
                } catch (IOException e) {
                    c2989n.m4796n(e);
                }
                try {
                    InterfaceC2230e0 interfaceC2230e1 = c2978c.f8296j;
                    if (interfaceC2230e1 != null) {
                        interfaceC2230e1.close();
                    }
                } catch (IOException e6) {
                    c2989n.m4796n(e6);
                }
                try {
                    Socket socket = c2978c.f8297k;
                    if (socket != null) {
                        socket.close();
                        return;
                    }
                    return;
                } catch (IOException e10) {
                    c2989n.m4796n(e10);
                    return;
                }
            case 24:
                C2617d c2617d = (C2617d) this.f1148c;
                long j11 = c2617d.f7340a;
                long jMax = Math.max(2 * j11, j11);
                C2623e c2623e = c2617d.f7341b;
                if (c2623e.f7360b.compareAndSet(j11, jMax)) {
                    C2623e.f7358c.log(Level.WARNING, "Increased {0} to {1}", new Object[]{c2623e.f7359a, Long.valueOf(jMax)});
                    return;
                }
                return;
            case 25:
                C2989n c2989n2 = (C2989n) this.f1148c;
                c2989n2.f8401o.execute(c2989n2.f8406t);
                synchronized (((C2989n) this.f1148c).f8397k) {
                    C2989n c2989n3 = (C2989n) this.f1148c;
                    c2989n3.f8374C = Integer.MAX_VALUE;
                    c2989n3.m4800s();
                    break;
                }
                return;
            case 26:
                C3048l c3048l = (C3048l) this.f1148c;
                c3048l.m4878z();
                c3048l.f8570b.postDelayed(this, 1000L);
                return;
            case 27:
                C3055s c3055s = (C3055s) this.f1148c;
                C3042f c3042f = c3055s.f8650c;
                if (c3055s.f8652e) {
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    if (c3055s.f8653f) {
                        long j12 = c3055s.f8656i;
                        if (j12 > 0 && jElapsedRealtime2 - j12 >= 5000) {
                            c3055s.f8653f = false;
                            c3055s.f8656i = 0L;
                            c3055s.f8655h = jElapsedRealtime2;
                            c3042f.m4871c(false);
                        }
                    } else if (jElapsedRealtime2 - c3055s.f8654g >= 10000 && jElapsedRealtime2 - c3055s.f8655h >= 6000) {
                        c3055s.f8653f = true;
                        c3055s.f8656i = 0L;
                        c3042f.m4871c(true);
                    }
                }
                if (c3055s.f8652e) {
                    c3055s.f8651d.postDelayed(this, 1000L);
                    return;
                }
                return;
            case 28:
                C3160n0 c3160n0 = (C3160n0) this.f1148c;
                String strM2403a = AbstractC1358g0.m2403a();
                if (TextUtils.isEmpty(strM2403a)) {
                    strM2403a = AbstractC1387m.m2421h(new byte[]{-78, 123}, new byte[]{-64, 14, 109, -26, 35, 76, -106, 56});
                }
                c3160n0.setText(new SimpleDateFormat(AbstractC1387m.m2421h(new byte[]{104, 49, -54, 27, -103, 119, 122, -116, 96, 57, -62}, new byte[]{45, 116, -113, 55, -71, 19, 90, -63}), new Locale(strM2403a)).format(new Date()));
                c3160n0.postDelayed(this, 60000L);
                return;
            default:
                C3227e c3227e = (C3227e) this.f1148c;
                if (c3227e.f9447d && c3227e.isShown()) {
                    final int i11 = c3227e.f9448e;
                    final double dM5161c = C3227e.m5161c();
                    C3227e.f9444h.execute(new Runnable() { // from class: t1.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            double dM5160a;
                            final double d = dM5161c;
                            try {
                                C1652b.m2734a();
                                JSONObject jSONObjectM1618c = C1652b.m2736d().m1618c(new JSONObject().put(AbstractC1387m.m2421h(new byte[]{-120, -13, 71}, new byte[]{-21, -98, 35, -78, -103, 18, 115, 37}), AbstractC1387m.m2421h(new byte[]{-121, -30, 113, -45, 103, -58, 16, -73, -65, -9, 96, -2, 98, -42, 27, -81}, new byte[]{-32, -121, 5, -116, 1, -77, 117, -37})));
                                dM5160a = d == 0.0d ? C3227e.m5160a(jSONObjectM1618c, 100.0d) : C3227e.m5160a(jSONObjectM1618c, d);
                            } catch (Exception e11) {
                                Log.w(AbstractC1387m.m2421h(new byte[]{-76, -22, -12, 112, -86, 68, 34, 109, -105, -21}, new byte[]{-14, -97, -111, 28, -3, 45, 70, 10}), AbstractC1387m.m2421h(new byte[]{-29, -47, -98, 106, -12, 93, 77, -106, -35, -108, -109, 107, -94, 94, 84}, new byte[]{-79, -76, -1, 14, -44, 59, 56, -13}), e11);
                                dM5160a = Double.NaN;
                            }
                            final double d10 = dM5160a;
                            final RunnableC1054m runnableC1054m = this.f9436b;
                            Handler handler = ((C3227e) runnableC1054m.f1148c).f9445b;
                            final int i12 = i11;
                            handler.post(new Runnable() { // from class: t1.d
                                @Override // java.lang.Runnable
                                public final void run() {
                                    String string;
                                    String string2;
                                    RunnableC1054m runnableC1054m2 = runnableC1054m;
                                    C3227e c3227e2 = (C3227e) runnableC1054m2.f1148c;
                                    int i13 = c3227e2.f9448e;
                                    TextView textView = c3227e2.f9446c;
                                    if (i12 == i13 && c3227e2.f9447d && c3227e2.isShown()) {
                                        double d11 = d10;
                                        if (Double.isNaN(d11)) {
                                            string = c3227e2.getContext().getString(R.string.fuel_widget_unavailable);
                                        } else {
                                            string = c3227e2.getContext().getString(d == 0.0d ? R.string.fuel_widget_percent : R.string.fuel_widget_value, Double.valueOf(d11));
                                        }
                                        textView.setText(string);
                                        if (Double.isNaN(d11)) {
                                            string2 = c3227e2.getContext().getString(R.string.fuel_widget_no_data);
                                        } else {
                                            string2 = c3227e2.getContext().getString(R.string.fuel_widget_title) + AbstractC1387m.m2421h(new byte[]{-92, 43}, new byte[]{-98, 11, -68, 60, 118, -54, 97, 91}) + ((Object) textView.getText());
                                        }
                                        textView.setContentDescription(string2);
                                        c3227e2.f9445b.postDelayed(runnableC1054m2, 10000L);
                                    }
                                }
                            });
                        }
                    });
                    return;
                }
                return;
        }
    }
}
