package com.example.navistart;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.location.Location;
import android.os.IBinder;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import androidx.lifecycle.Observer;
import com.example.navistart.SpeedBoard.PPSView;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.cores.HUDMassageObj;
import com.github.anastr.speedviewlib.ImageSpeedometer;
import com.google.protobuf.AbstractC1178q;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p000a.AbstractC0000a;
import p016b1.C0879t;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1415r2;
import p047e0.C1440x1;
import p047e0.RunnableC1431v0;
import p078h0.C1652b;
import p078h0.InterfaceC1653c;
import p206u0.C3277a;
import p216v0.C3317d;
import p216v0.C3319f;
import p216v0.C3322i;
import p216v0.InterfaceC3321h;
import p217v1.C3325c;
import p217v1.C3326d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class SpeedBoardService extends Service implements InterfaceC1653c {

    /* JADX INFO: renamed from: g */
    public static WindowManager f1610g;

    /* JADX INFO: renamed from: h */
    public static WindowManager f1611h;

    /* JADX INFO: renamed from: i */
    public static InterfaceC3321h f1612i;

    /* JADX INFO: renamed from: j */
    public static InterfaceC3321h f1613j;

    /* JADX INFO: renamed from: k */
    public static final String f1614k = AbstractC1387m.m2421h(new byte[]{27, 16, 18, -31, -7, 14, -40, -105, 55, 4, 56, -31, -7, 0, -57, -68, 24, 21, 34, -9, -26, 12, -61, -102, 9, 56, 37, -25, -23}, new byte[]{104, 103, 77, -110, -115, 111, -86, -29});

    /* JADX INFO: renamed from: b */
    public final ScheduledThreadPoolExecutor f1615b = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{125, 92, 30, -86, -116, 15, 124, -14, 92, 72, 40, -86, -102, 59, 122, -16, 75}, new byte[]{46, 44, 123, -49, -24, 77, 19, -109}));

    /* JADX INFO: renamed from: c */
    public ScheduledFuture f1616c;

    /* JADX INFO: renamed from: d */
    public final C1415r2 f1617d;

    /* JADX INFO: renamed from: e */
    public final C1415r2 f1618e;

    /* JADX INFO: renamed from: f */
    public final C1415r2 f1619f;

    /* JADX WARN: Type inference failed for: r0v4, types: [e0.r2] */
    /* JADX WARN: Type inference failed for: r0v5, types: [e0.r2] */
    /* JADX WARN: Type inference failed for: r0v6, types: [e0.r2] */
    public SpeedBoardService() {
        final int i10 = 0;
        this.f1617d = new Observer() { // from class: e0.r2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                switch (i10) {
                    case 0:
                        Integer num = (Integer) obj;
                        WindowManager windowManager = SpeedBoardService.f1610g;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            InterfaceC3321h interfaceC3321h = SpeedBoardService.f1612i;
                            if (interfaceC3321h != null) {
                                interfaceC3321h.setSpeed(iIntValue);
                            }
                            InterfaceC3321h interfaceC3321h2 = SpeedBoardService.f1613j;
                            if (interfaceC3321h2 != null) {
                                interfaceC3321h2.setSpeed(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            WindowManager windowManager2 = SpeedBoardService.f1610g;
                        } else {
                            SpeedBoardService.m1541a(hUDMassageObj);
                        }
                        break;
                    default:
                        Location location = (Location) obj;
                        if (location == null) {
                            WindowManager windowManager3 = SpeedBoardService.f1610g;
                        } else {
                            InterfaceC3321h interfaceC3321h3 = SpeedBoardService.f1612i;
                            if (interfaceC3321h3 != null) {
                                interfaceC3321h3.mo5237f(location);
                            }
                            InterfaceC3321h interfaceC3321h4 = SpeedBoardService.f1613j;
                            if (interfaceC3321h4 != null) {
                                interfaceC3321h4.mo5237f(location);
                            }
                        }
                        break;
                }
            }
        };
        final int i11 = 1;
        this.f1618e = new Observer() { // from class: e0.r2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                switch (i11) {
                    case 0:
                        Integer num = (Integer) obj;
                        WindowManager windowManager = SpeedBoardService.f1610g;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            InterfaceC3321h interfaceC3321h = SpeedBoardService.f1612i;
                            if (interfaceC3321h != null) {
                                interfaceC3321h.setSpeed(iIntValue);
                            }
                            InterfaceC3321h interfaceC3321h2 = SpeedBoardService.f1613j;
                            if (interfaceC3321h2 != null) {
                                interfaceC3321h2.setSpeed(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            WindowManager windowManager2 = SpeedBoardService.f1610g;
                        } else {
                            SpeedBoardService.m1541a(hUDMassageObj);
                        }
                        break;
                    default:
                        Location location = (Location) obj;
                        if (location == null) {
                            WindowManager windowManager3 = SpeedBoardService.f1610g;
                        } else {
                            InterfaceC3321h interfaceC3321h3 = SpeedBoardService.f1612i;
                            if (interfaceC3321h3 != null) {
                                interfaceC3321h3.mo5237f(location);
                            }
                            InterfaceC3321h interfaceC3321h4 = SpeedBoardService.f1613j;
                            if (interfaceC3321h4 != null) {
                                interfaceC3321h4.mo5237f(location);
                            }
                        }
                        break;
                }
            }
        };
        final int i12 = 2;
        this.f1619f = new Observer() { // from class: e0.r2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                switch (i12) {
                    case 0:
                        Integer num = (Integer) obj;
                        WindowManager windowManager = SpeedBoardService.f1610g;
                        if (num != null) {
                            int iIntValue = num.intValue();
                            InterfaceC3321h interfaceC3321h = SpeedBoardService.f1612i;
                            if (interfaceC3321h != null) {
                                interfaceC3321h.setSpeed(iIntValue);
                            }
                            InterfaceC3321h interfaceC3321h2 = SpeedBoardService.f1613j;
                            if (interfaceC3321h2 != null) {
                                interfaceC3321h2.setSpeed(iIntValue);
                            }
                        }
                        break;
                    case 1:
                        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                        if (hUDMassageObj == null) {
                            WindowManager windowManager2 = SpeedBoardService.f1610g;
                        } else {
                            SpeedBoardService.m1541a(hUDMassageObj);
                        }
                        break;
                    default:
                        Location location = (Location) obj;
                        if (location == null) {
                            WindowManager windowManager3 = SpeedBoardService.f1610g;
                        } else {
                            InterfaceC3321h interfaceC3321h3 = SpeedBoardService.f1612i;
                            if (interfaceC3321h3 != null) {
                                interfaceC3321h3.mo5237f(location);
                            }
                            InterfaceC3321h interfaceC3321h4 = SpeedBoardService.f1613j;
                            if (interfaceC3321h4 != null) {
                                interfaceC3321h4.mo5237f(location);
                            }
                        }
                        break;
                }
            }
        };
    }

    /* JADX INFO: renamed from: a */
    public static void m1541a(HUDMassageObj hUDMassageObj) {
        InterfaceC3321h interfaceC3321h = f1612i;
        if (interfaceC3321h != null) {
            interfaceC3321h.setHudMassageObj(hUDMassageObj);
        }
        InterfaceC3321h interfaceC3321h2 = f1613j;
        if (interfaceC3321h2 != null) {
            interfaceC3321h2.setHudMassageObj(hUDMassageObj);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m1542b(Context context) {
        if (C1652b.m2745o().loadBoolean(f1614k, false)) {
            context.startService(new Intent(context.getApplicationContext(), (Class<?>) SpeedBoardService.class));
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1543c() {
        InterfaceC3321h interfaceC3321h;
        InterfaceC3321h interfaceC3321h2;
        ScheduledFuture scheduledFuture = this.f1616c;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f1616c.cancel(true);
        }
        InterfaceC3321h interfaceC3321h3 = f1612i;
        if (interfaceC3321h3 != null) {
            interfaceC3321h3.mo1535b();
        }
        InterfaceC3321h interfaceC3321h4 = f1613j;
        if (interfaceC3321h4 != null) {
            interfaceC3321h4.mo1535b();
        }
        WindowManager windowManager = f1610g;
        if (windowManager != null && (interfaceC3321h2 = f1612i) != null) {
            AbstractC0000a.m21v(windowManager, interfaceC3321h2.getView());
        }
        WindowManager windowManager2 = f1611h;
        if (windowManager2 == null || (interfaceC3321h = f1613j) == null) {
            return;
        }
        AbstractC0000a.m21v(windowManager2, interfaceC3321h.getView());
    }

    @Override // p078h0.InterfaceC1653c
    /* JADX INFO: renamed from: d */
    public final void mo1544d() {
        m1543c();
        C1652b.f4208q = null;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C3325c c3325cM5245d = C3326d.m5242a().m5245d();
        c3325cM5245d.f9728a.observeForever(this.f1617d);
        c3325cM5245d.f9731d.observeForever(this.f1618e);
        c3325cM5245d.f9734g.observeForever(this.f1619f);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        C3325c c3325cM5245d = C3326d.m5242a().m5245d();
        c3325cM5245d.f9728a.removeObserver(this.f1617d);
        c3325cM5245d.f9731d.removeObserver(this.f1618e);
        c3325cM5245d.f9734g.removeObserver(this.f1619f);
        super.onDestroy();
        m1543c();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        InterfaceC3321h c3322i;
        InterfaceC3321h c3319f;
        m1543c();
        Display[] displays = ((DisplayManager) getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{100, 52, 110, 42, -121, 103, Base64.padSymbol}, new byte[]{0, 93, 29, 90, -21, 6, 68, 39}))).getDisplays();
        C1652b.m2734a();
        int priDisplayID = C1652b.m2744n().getPriDisplayID();
        if (priDisplayID > -1 && displays.length > priDisplayID) {
            f1610g = (WindowManager) getApplicationContext().createDisplayContext(displays[priDisplayID]).getSystemService(AbstractC1387m.m2421h(new byte[]{124, -121, 12, 6, -65, -125}, new byte[]{11, -18, 98, 98, -48, -12, 91, -87}));
            C1652b.m2734a();
            switch (C1652b.m2746p().f5539a) {
                case 0:
                    c3319f = new C3319f(this);
                    break;
                case 1:
                    c3319f = new C3319f(this);
                    break;
                case 2:
                    PPSView pPSView = new PPSView(this);
                    pPSView.m1539k(R.layout.pps_view2, this);
                    c3319f = pPSView;
                    break;
                case 3:
                    c3319f = new C3319f(this);
                    break;
                case 4:
                    C3317d c3317d = new C3317d(this);
                    View.inflate(this, R.layout.pps_view_col, c3317d);
                    c3317d.f9715b = (ImageSpeedometer) c3317d.findViewById(R.id.imageSpeedometer);
                    c3317d.f9716c = (ImageSpeedometer) c3317d.findViewById(R.id.imageSpeedometerrpm);
                    c3317d.setBackgroundColor(0);
                    ImageSpeedometer imageSpeedometer = c3317d.f9715b;
                    if (imageSpeedometer != null) {
                        imageSpeedometer.setMaxSpeed(220);
                        c3317d.f9715b.setStartDegree(135);
                        c3317d.f9715b.setEndDegree(405);
                        c3317d.f9715b.setImageSpeedometer(R.drawable.pri3_spd);
                    }
                    c3317d.setBackgroundColor(0);
                    ImageSpeedometer imageSpeedometer2 = c3317d.f9716c;
                    c3319f = c3317d;
                    if (imageSpeedometer2 != null) {
                        imageSpeedometer2.setMaxSpeed(8);
                        c3317d.f9716c.setStartDegree(135);
                        c3317d.f9716c.setEndDegree(405);
                        c3317d.f9716c.setImageSpeedometer(R.drawable.pri3_rpm);
                        c3319f = c3317d;
                    }
                    break;
                case 5:
                    c3319f = new C3319f(this);
                    break;
                default:
                    c3319f = new C3319f(this);
                    break;
            }
            f1612i = c3319f;
            if (!(c3319f instanceof C3319f)) {
                try {
                    f1610g.addView(c3319f.getView(), f1612i.getLayParams());
                    f1612i.setBackgroundColor(0);
                    ScheduledFuture scheduledFuture = this.f1616c;
                    if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                        this.f1616c.cancel(true);
                    }
                    this.f1616c = this.f1615b.scheduleWithFixedDelay(new RunnableC1431v0(15, this), 10L, f1612i.mo1537d(), TimeUnit.MILLISECONDS);
                } catch (Exception unused) {
                }
            }
        }
        C1652b.m2734a();
        int hUDDisplayID = C1652b.m2744n().getHUDDisplayID();
        if (hUDDisplayID > -1 && displays.length > hUDDisplayID) {
            f1611h = (WindowManager) getApplicationContext().createDisplayContext(displays[hUDDisplayID]).getSystemService(AbstractC1387m.m2421h(new byte[]{14, 64, -71, 103, 72, -66}, new byte[]{121, 41, -41, 3, 39, -55, -54, -101}));
            C1652b.m2734a();
            switch (C1652b.m2746p().f5539a) {
                case 0:
                    c3322i = new C3322i(this, new C0879t(AbstractC1387m.m2421h(new byte[]{-86, -27, 91, 72, ByteCompanionObject.MIN_VALUE, -41, 91, -48, -115, -7, 111, 89, -86, -46, 109}, new byte[]{-25, -100, 12, 45, -30, -121, 41, -65}), AbstractC1387m.m2421h(new byte[]{51, -44, -36, 111, -18, -33, -89, -79, 20, -56, -24, 126, -60, -38, -111, -127, 45, -56, -1, 126, -27, -31, -78, -83, 33, -26, -18, 115}, new byte[]{126, -83, -117, 10, -116, -113, -43, -34}), AbstractC1387m.m2421h(new byte[]{50, -103, -18, 120, 54, 1, 36, 38, 62, -119, -20}, new byte[]{86, -4, -120, 25, 67, 109, 80, 121})));
                    break;
                case 1:
                    c3322i = new C3319f(this);
                    break;
                case 2:
                    c3322i = new C3319f(this);
                    break;
                case 3:
                    c3322i = new C3319f(this);
                    break;
                case 4:
                    c3322i = new C3319f(this);
                    break;
                case 5:
                    c3322i = new C3322i(this, new C0879t(AbstractC1387m.m2421h(new byte[]{123, -111, -27, 26, 75, 52, 28, -72, 92, -115, -47, 11, 97, 49, 42}, new byte[]{54, -24, -78, ByteCompanionObject.MAX_VALUE, 41, 100, 110, -41}), AbstractC1387m.m2421h(new byte[]{-9, -123, 20, -77, -30, -86, -106, -18, -48, -103, 32, -94, -56, -81, -96, -34, -23, -103, 55, -94, -23, -108, -125, -14, -27, -73, 38, -81}, new byte[]{-70, -4, 67, -42, ByteCompanionObject.MIN_VALUE, -6, -28, -127}), AbstractC1387m.m2421h(new byte[]{-121, 49, -22, -121, 70, 109, 47, 48, -117, 33, -24}, new byte[]{-29, 84, -116, -26, 51, 1, 91, 111})));
                    break;
                default:
                    c3322i = new C3322i(this, new C0879t(AbstractC1387m.m2421h(new byte[]{-43, -71, 57, 125, 118, Base64.padSymbol, 79, -4, -14, -91, 13, 108, 92, 56, 121}, new byte[]{-104, -64, 110, 24, 20, 109, Base64.padSymbol, -109}), AbstractC1387m.m2421h(new byte[]{58, 47, -107, -55, -57, -119, -42, -121, 29, 51, -95, -40, -19, -116, -32, -73, 36, 51, -74, -40, -52, -73, -61, -101, 40, 29, -89, -43}, new byte[]{119, 86, -62, -84, -91, -39, -92, -24}), AbstractC1387m.m2421h(new byte[]{-82, -98, 118, 89, Base64.padSymbol, 111, -92, -30, -94, -114, 116}, new byte[]{-54, -5, 16, 56, 72, 3, -48, -67})));
                    break;
            }
            f1613j = c3322i;
            if (!(c3322i instanceof C3319f)) {
                try {
                    f1611h.addView(c3322i.getView(), f1613j.getLayParams());
                    f1613j.setBackgroundColor(0);
                } catch (Exception unused2) {
                }
            }
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
        if ((AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g) ? Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-18}, new byte[]{-34, -40, -11, 80, -65, -57, ByteCompanionObject.MIN_VALUE, 25}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
            InterfaceC3321h interfaceC3321h = f1612i;
            if (interfaceC3321h != null) {
                interfaceC3321h.mo1534a();
            }
            InterfaceC3321h interfaceC3321h2 = f1613j;
            if (interfaceC3321h2 != null) {
                interfaceC3321h2.mo1534a();
            }
        }
        C1652b.f4208q = this;
        return super.onStartCommand(intent, i10, i11);
    }
}
