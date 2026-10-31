package com.example.navistart;

import a.a;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.os.IBinder;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import b1.t;
import com.example.navistart.SpeedBoard.PPSView;
import com.example.navistart.cores.HUDMassageObj;
import com.github.anastr.speedviewlib.ImageSpeedometer;
import com.google.protobuf.q;
import e0.m;
import e0.p3;
import e0.r2;
import e0.v0;
import e0.w;
import e0.x1;
import h0.b;
import h0.c;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import v0.f;
import v0.h;
import v0.i;
import v1.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SpeedBoardService extends Service implements c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static WindowManager f824g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static WindowManager f825h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static h f826i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static h f827j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f828k = m.h(new byte[]{27, 16, 18, -31, -7, 14, -40, -105, 55, 4, 56, -31, -7, 0, -57, -68, 24, 21, 34, -9, -26, 12, -61, -102, 9, 56, 37, -25, -23}, new byte[]{104, 103, 77, -110, -115, 111, -86, -29});
    public ScheduledFuture c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f829b = w.c(-1, m.h(new byte[]{125, 92, 30, -86, -116, 15, 124, -14, 92, 72, 40, -86, -102, 59, 122, -16, 75}, new byte[]{46, 44, 123, -49, -24, 77, 19, -109}));
    public final r2 d = new r2(0);
    public final r2 e = new r2(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final r2 f830f = new r2(2);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(HUDMassageObj hUDMassageObj) {
        h hVar = f826i;
        if (hVar != null) {
            hVar.setHudMassageObj(hUDMassageObj);
        }
        h hVar2 = f827j;
        if (hVar2 != null) {
            hVar2.setHudMassageObj(hUDMassageObj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Context context) {
        if (b.o().loadBoolean(f828k, false)) {
            context.startService(new Intent(context.getApplicationContext(), (Class<?>) SpeedBoardService.class));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        h hVar;
        h hVar2;
        ScheduledFuture scheduledFuture = this.c;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.c.cancel(true);
        }
        h hVar3 = f826i;
        if (hVar3 != null) {
            hVar3.b();
        }
        h hVar4 = f827j;
        if (hVar4 != null) {
            hVar4.b();
        }
        WindowManager windowManager = f824g;
        if (windowManager != null && (hVar2 = f826i) != null) {
            a.v(windowManager, hVar2.getView());
        }
        WindowManager windowManager2 = f825h;
        if (windowManager2 == null || (hVar = f827j) == null) {
            return;
        }
        a.v(windowManager2, hVar.getView());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h0.c
    public final void d() {
        c();
        b.f2431q = null;
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
        v1.c cVarD = d.a().d();
        cVarD.f5511a.observeForever(this.d);
        cVarD.d.observeForever(this.e);
        cVarD.f5514g.observeForever(this.f830f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        v1.c cVarD = d.a().d();
        cVarD.f5511a.removeObserver(this.d);
        cVarD.d.removeObserver(this.e);
        cVarD.f5514g.removeObserver(this.f830f);
        super.onDestroy();
        c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        h iVar;
        h fVar;
        c();
        Display[] displays = ((DisplayManager) getApplicationContext().getSystemService(m.h(new byte[]{100, 52, 110, 42, -121, 103, Base64.padSymbol}, new byte[]{0, 93, 29, 90, -21, 6, 68, 39}))).getDisplays();
        b.a();
        int priDisplayID = b.n().getPriDisplayID();
        if (priDisplayID > -1 && displays.length > priDisplayID) {
            f824g = (WindowManager) getApplicationContext().createDisplayContext(displays[priDisplayID]).getSystemService(m.h(new byte[]{124, -121, 12, 6, -65, -125}, new byte[]{11, -18, 98, 98, -48, -12, 91, -87}));
            b.a();
            switch (b.p().f3156a) {
                case 0:
                    fVar = new f(this);
                    break;
                case 1:
                    fVar = new f(this);
                    break;
                case 2:
                    PPSView pPSView = new PPSView(this);
                    pPSView.k(2131493120, this);
                    fVar = pPSView;
                    break;
                case 3:
                    fVar = new f(this);
                    break;
                case 4:
                    v0.d dVar = new v0.d(this);
                    View.inflate(this, 2131493121, dVar);
                    dVar.f5503b = (ImageSpeedometer) dVar.findViewById(2131296845);
                    dVar.c = (ImageSpeedometer) dVar.findViewById(2131296846);
                    dVar.setBackgroundColor(0);
                    ImageSpeedometer imageSpeedometer = dVar.f5503b;
                    if (imageSpeedometer != null) {
                        imageSpeedometer.setMaxSpeed(220);
                        dVar.f5503b.setStartDegree(135);
                        dVar.f5503b.setEndDegree(405);
                        dVar.f5503b.setImageSpeedometer(2131165720);
                    }
                    dVar.setBackgroundColor(0);
                    ImageSpeedometer imageSpeedometer2 = dVar.c;
                    fVar = dVar;
                    if (imageSpeedometer2 != null) {
                        imageSpeedometer2.setMaxSpeed(8);
                        dVar.c.setStartDegree(135);
                        dVar.c.setEndDegree(405);
                        dVar.c.setImageSpeedometer(2131165719);
                        fVar = dVar;
                    }
                    break;
                case 5:
                    fVar = new f(this);
                    break;
                default:
                    fVar = new f(this);
                    break;
            }
            f826i = fVar;
            if (!(fVar instanceof f)) {
                try {
                    f824g.addView(fVar.getView(), f826i.getLayParams());
                    f826i.setBackgroundColor(0);
                    ScheduledFuture scheduledFuture = this.c;
                    if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                        this.c.cancel(true);
                    }
                    this.c = this.f829b.scheduleWithFixedDelay(new v0(15, this), 10L, f826i.d(), TimeUnit.MILLISECONDS);
                } catch (Exception unused) {
                }
            }
        }
        b.a();
        int hUDDisplayID = b.n().getHUDDisplayID();
        if (hUDDisplayID > -1 && displays.length > hUDDisplayID) {
            f825h = (WindowManager) getApplicationContext().createDisplayContext(displays[hUDDisplayID]).getSystemService(m.h(new byte[]{14, 64, -71, 103, 72, -66}, new byte[]{121, 41, -41, 3, 39, -55, -54, -101}));
            b.a();
            switch (b.p().f3156a) {
                case 0:
                    iVar = new i(this, new t(m.h(new byte[]{-86, -27, 91, 72, ByteCompanionObject.MIN_VALUE, -41, 91, -48, -115, -7, 111, 89, -86, -46, 109}, new byte[]{-25, -100, 12, 45, -30, -121, 41, -65}), m.h(new byte[]{51, -44, -36, 111, -18, -33, -89, -79, 20, -56, -24, 126, -60, -38, -111, -127, 45, -56, -1, 126, -27, -31, -78, -83, 33, -26, -18, 115}, new byte[]{126, -83, -117, 10, -116, -113, -43, -34}), m.h(new byte[]{50, -103, -18, 120, 54, 1, 36, 38, 62, -119, -20}, new byte[]{86, -4, -120, 25, 67, 109, 80, 121})));
                    break;
                case 1:
                    iVar = new f(this);
                    break;
                case 2:
                    iVar = new f(this);
                    break;
                case 3:
                    iVar = new f(this);
                    break;
                case 4:
                    iVar = new f(this);
                    break;
                case 5:
                    iVar = new i(this, new t(m.h(new byte[]{123, -111, -27, 26, 75, 52, 28, -72, 92, -115, -47, 11, 97, 49, 42}, new byte[]{54, -24, -78, ByteCompanionObject.MAX_VALUE, 41, 100, 110, -41}), m.h(new byte[]{-9, -123, 20, -77, -30, -86, -106, -18, -48, -103, 32, -94, -56, -81, -96, -34, -23, -103, 55, -94, -23, -108, -125, -14, -27, -73, 38, -81}, new byte[]{-70, -4, 67, -42, ByteCompanionObject.MIN_VALUE, -6, -28, -127}), m.h(new byte[]{-121, 49, -22, -121, 70, 109, 47, 48, -117, 33, -24}, new byte[]{-29, 84, -116, -26, 51, 1, 91, 111})));
                    break;
                default:
                    iVar = new i(this, new t(m.h(new byte[]{-43, -71, 57, 125, 118, Base64.padSymbol, 79, -4, -14, -91, 13, 108, 92, 56, 121}, new byte[]{-104, -64, 110, 24, 20, 109, Base64.padSymbol, -109}), m.h(new byte[]{58, 47, -107, -55, -57, -119, -42, -121, 29, 51, -95, -40, -19, -116, -32, -73, 36, 51, -74, -40, -52, -73, -61, -101, 40, 29, -89, -43}, new byte[]{119, 86, -62, -84, -91, -39, -92, -24}), m.h(new byte[]{-82, -98, 118, 89, Base64.padSymbol, 111, -92, -30, -94, -114, 116}, new byte[]{-54, -5, 16, 56, 72, 3, -48, -67})));
                    break;
            }
            f827j = iVar;
            if (!(iVar instanceof f)) {
                try {
                    f825h.addView(iVar.getView(), f827j.getLayParams());
                    f827j.setBackgroundColor(0);
                } catch (Exception unused2) {
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        u0.a aVarO2 = b.o();
        byte[] bArr2 = m.f1892f;
        if ((q.w(bArr2, aVarO2, "", strG) ? Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{-18}, new byte[]{-34, -40, -11, 80, -65, -57, ByteCompanionObject.MIN_VALUE, 25}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
            h hVar = f826i;
            if (hVar != null) {
                hVar.a();
            }
            h hVar2 = f827j;
            if (hVar2 != null) {
                hVar2.a();
            }
        }
        b.f2431q = this;
        return super.onStartCommand(intent, i9, i10);
    }
}
