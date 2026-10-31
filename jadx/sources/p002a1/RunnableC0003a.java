package p002a1;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.YuvImage;
import android.location.Location;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.core.content.res.ResourcesCompat;
import androidx.fragment.app.C0566h;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.Violation;
import androidx.lifecycle.DispatchQueue;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.window.embedding.ExtensionEmbeddingBackend;
import androidx.window.layout.SidecarWindowBackend;
import androidx.window.layout.WindowLayoutInfo;
import com.example.navistart.APInAct;
import com.example.navistart.LocServ;
import com.example.navistart.MainActivity;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.MyA11yService;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.NLService;
import com.example.navistart.Notik;
import com.example.navistart.R;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.HUDMassageObj;
import com.google.android.flexbox.FlexboxLayout;
import com.google.protobuf.AbstractC1178q;
import com.journeyapps.barcodescanner.CaptureActivity;
import com.woha.atir.CameraInfoView;
import com.woha.pogoda.WeatherService;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.function.ToDoubleFunction;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.ftp.FTPReply;
import org.json.JSONArray;
import org.json.JSONObject;
import p000a.AbstractC0000a;
import p016b1.C0865f;
import p016b1.C0871l;
import p016b1.C0872m;
import p016b1.C0877r;
import p016b1.InterfaceC0864e;
import p022b7.C0905a;
import p022b7.C0914j;
import p022b7.C0923s;
import p022b7.C0926v;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.AsyncTaskC1364h1;
import p047e0.AsyncTaskC1379k1;
import p047e0.C1343d0;
import p047e0.C1360g2;
import p047e0.C1386l3;
import p047e0.C1396n3;
import p047e0.C1428u1;
import p047e0.C1440x1;
import p047e0.RunnableC1332b;
import p047e0.RunnableC1431v0;
import p047e0.RunnableC1446z;
import p047e0.ScheduledExecutorServiceC1430v;
import p062f5.RunnableC1556j;
import p067g0.C1603e;
import p067g0.RunnableC1600b;
import p078h0.C1652b;
import p094i7.C1752a;
import p094i7.C1758g;
import p094i7.C1760i;
import p094i7.C1761j;
import p094i7.C1762k;
import p094i7.C1764m;
import p094i7.C1765n;
import p094i7.C1770s;
import p094i7.C1775x;
import p094i7.RunnableC1757f;
import p099j1.C1929i;
import p110k1.C2028a;
import p115k7.C2052b;
import p142n0.EnumC2471f;
import p142n0.EnumC2472g;
import p184r5.C3105c;
import p189s0.C3129a;
import p206u0.C3277a;
import p216v0.InterfaceC3321h;
import p217v1.C3326d;
import p260z5.C3757m;
import p260z5.EnumC3758n;
import ru.transfer.MessageData;

/* JADX INFO: renamed from: a1.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0003a implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f2c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f3d;

    public /* synthetic */ RunnableC0003a(MyA11yService myA11yService, List list, String str) {
        this.f1b = 24;
        this.f2c = list;
        this.f3d = str;
    }

    /* JADX INFO: renamed from: a */
    private final void m27a() {
        APInAct aPInAct = (APInAct) this.f2c;
        ArrayList arrayList = (ArrayList) this.f3d;
        String str = APInAct.f1202f;
        C3326d.m5242a().m5243b().m5239a(aPInAct.getResources().getString(R.string.install_podgotovka));
        C3326d.m5242a().m5243b().f9725b.postValue(Boolean.FALSE);
        if (arrayList == null || (arrayList.isEmpty() && !aPInAct.m1381s().booleanValue())) {
            C3326d.m5242a().m5243b().m5239a(aPInAct.getResources().getString(R.string.install_error_intent));
            return;
        }
        try {
            if (!aPInAct.m1381s().booleanValue()) {
                C3326d.m5242a().m5243b().m5239a(aPInAct.getResources().getString(R.string.install_error_intent));
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i10 = 0;
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                arrayList2.add(aPInAct.m1382t((Uri) obj));
            }
            Log.d(APInAct.f1202f, arrayList2.toString());
            C3277a c3277aM2745o = C1652b.m2745o();
            String strM2421h = AbstractC1387m.m2421h(new byte[]{40, -81, 49, -23, -10, 34, 121, -92, 40, -81, 49, -9, -18, 34, 122, -119, 15, -117, 34, -12, -6, 4}, new byte[]{91, -37, 80, -101, -126, 125, 48, -54});
            C1652b.m2734a();
            if (!c3277aM2745o.loadBoolean(strM2421h, C1652b.m2738g().mo3015c())) {
                aPInAct.m1383u(arrayList2);
            } else {
                new Handler(Looper.getMainLooper()).post(new RunnableC1332b(aPInAct, i10));
                C1652b.m2734a().m2755j().m1634ip(arrayList2);
            }
        } catch (Exception unused) {
            C3326d.m5242a().m5243b().m5239a(aPInAct.getResources().getString(R.string.install_error_copy));
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x042a A[LOOP:3: B:90:0x02a8->B:111:0x042a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:162:0x061d A[Catch: Exception -> 0x0661, TryCatch #2 {Exception -> 0x0661, blocks: (B:160:0x060e, B:162:0x061d, B:163:0x0620, B:165:0x0644, B:167:0x064e), top: B:231:0x060e }] */
    /* JADX WARN: Code duplicated, block: B:165:0x0644 A[Catch: Exception -> 0x0661, TryCatch #2 {Exception -> 0x0661, blocks: (B:160:0x060e, B:162:0x061d, B:163:0x0620, B:165:0x0644, B:167:0x064e), top: B:231:0x060e }] */
    /* JADX WARN: Code duplicated, block: B:241:0x0661 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x0446 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    private final void m28b() throws Throwable {
        C1764m c1764m;
        Location location;
        C1764m c1764m2;
        int i10;
        Throwable th;
        Location location2;
        C1764m c1764m3;
        ArrayList arrayList;
        int i11;
        boolean z9;
        int i12;
        Deque deque;
        double d;
        ArrayList arrayList2;
        C1761j c1761j;
        AsyncTaskC1364h1 asyncTaskC1364h1;
        Location location3;
        LocServ locServ = (LocServ) this.f2c;
        Location location4 = (Location) this.f3d;
        C0566h c0566h = LocServ.f1268h;
        int i13 = 0;
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{80, -120, -26, 28, -100, -77, -120, 72, 113, -100, -62, 26, -116, -104, -76, 76, 119, -116, -22, 23, -97, -126, -72, 110, 83, -85}, new byte[]{3, -8, -125, 121, -8, -15, -25, 41}), false)) {
            C3326d.m5242a().m5245d().f9728a.postValue(Integer.valueOf((int) (location4.getSpeed() * 3.6f)));
        }
        locServ.f1279f = System.currentTimeMillis();
        WeatherService.f2878g = location4;
        Location location5 = WeatherService.f2882k;
        Throwable th2 = null;
        if (location5 == null) {
            WeatherService.f2882k = location4;
        } else if (AbstractC0000a.m2b(location5.getLatitude(), WeatherService.f2882k.getLongitude(), location4.getLatitude(), location4.getLongitude()) > 15000.0d) {
            if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{110, -88, -21, -51, -10, -24, -125, 57, 124, ByteCompanionObject.MIN_VALUE, -61, -44, -3, -24, -77, 50, 115, -80, -46, -37}, new byte[]{29, -33, -76, -67, -103, -113, -20, 93}), false) && !WeatherService.m2204b().equals(EnumC2471f.f6806f.name()) && (location3 = WeatherService.f2878g) != null) {
                WeatherService.m2206d(location3.getLatitude(), location3.getLongitude(), null);
            }
            WeatherService.f2882k = location4;
        }
        if (!LocServ.f1274n.booleanValue() || (c1764m = locServ.f1277d) == null) {
            return;
        }
        float f8 = locServ.f1278e;
        C1758g c1758g = c1764m.f4619e;
        c1758g.f4589g.post(new RunnableC1757f(c1758g, f8, i13));
        try {
            C1652b.m2734a();
            C2028a c2028aM2746p = C1652b.m2746p();
            if (c2028aM2746p != null) {
                switch (c2028aM2746p.f5539a) {
                    case 0:
                        InterfaceC3321h interfaceC3321h = SpeedBoardService.f1612i;
                        if (interfaceC3321h != null) {
                            interfaceC3321h.mo1538e(f8);
                        }
                        InterfaceC3321h interfaceC3321h2 = SpeedBoardService.f1613j;
                        if (interfaceC3321h2 != null) {
                            interfaceC3321h2.mo1538e(f8);
                        }
                        break;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        break;
                    case 5:
                        InterfaceC3321h interfaceC3321h3 = SpeedBoardService.f1612i;
                        if (interfaceC3321h3 != null) {
                            interfaceC3321h3.mo1538e(f8);
                        }
                        InterfaceC3321h interfaceC3321h4 = SpeedBoardService.f1613j;
                        if (interfaceC3321h4 != null) {
                            interfaceC3321h4.mo1538e(f8);
                        }
                        break;
                    default:
                        InterfaceC3321h interfaceC3321h5 = SpeedBoardService.f1612i;
                        if (interfaceC3321h5 != null) {
                            interfaceC3321h5.mo1538e(f8);
                        }
                        InterfaceC3321h interfaceC3321h6 = SpeedBoardService.f1613j;
                        if (interfaceC3321h6 != null) {
                            interfaceC3321h6.mo1538e(f8);
                        }
                        break;
                }
            }
        } catch (Exception unused) {
        }
        if (location4.getAccuracy() < 1000.0f) {
            c1764m.f4620f.getClass();
            location4.getSpeed();
            ArrayList arrayList3 = c1764m.f4620f.f4603b;
            if (arrayList3.size() >= 4) {
                arrayList3.remove(0);
            }
            arrayList3.add(location4);
            double degrees = 0.0d;
            if (arrayList3.size() > 1) {
                if (arrayList3 == null || arrayList3.size() < 2) {
                    C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{29, 44, 10, -8, 60, 7, -117, 92, 77, 104, 106, -110, 108, 89, 44, 93, 120, 105, 88, -109, 93, -88, 123, 48, 29, 8, 10, -4, 60, 8, 123, Base64.padSymbol, 29, 10, 10, -8, Base64.padSymbol, Base64.padSymbol, 123, 48, 29, 0, 11, -52, -51, 89, 41, 92, 77, 104, 111, -109, 92, 89, 40, 93, 120, 105, 88, -110, 108, 89, 36, -83, 29, 2, 10, -13, Base64.padSymbol, 50, -117, 93, 113, 104, 98, -109, 80, 88, 19, 93, 113, 105, 89, -109, 81, -88, 123, 57, 29, 10, 10, -10, -51, 89, 41, 93, 115, 105, 93, -109, 87, 88, 19, -93}, new byte[]{-51, -72, -38, 67, -19, -120, -85, -115}));
                    return;
                }
                int i14 = 0;
                double dSin = 0.0d;
                while (i14 < arrayList3.size() - 1) {
                    Location location6 = (Location) arrayList3.get(i14);
                    i14++;
                    Location location7 = (Location) arrayList3.get(i14);
                    double radians = Math.toRadians(location6.getLatitude());
                    double radians2 = Math.toRadians(location6.getLongitude());
                    double radians3 = Math.toRadians(location7.getLatitude());
                    double radians4 = Math.toRadians(location7.getLongitude()) - radians2;
                    double dCos = Math.cos(radians3) * Math.sin(radians4);
                    dSin = ((Math.sin(radians3) * Math.cos(radians)) - (Math.cos(radians4) * (Math.cos(radians3) * Math.sin(radians)))) + dSin;
                    degrees += dCos;
                }
                degrees = (Math.toDegrees(Math.atan2(degrees, dSin)) + 360.0d) % 360.0d;
            }
            c1764m.f4618d = degrees;
            final long jLoadLong = C1652b.m2745o().loadLong(AbstractC1387m.m2421h(new byte[]{-2, 12, 114, 112, 94, 66, -42, 80, -50, 8, 71, 99, 106, 86, -45, 67, -2, 47}, new byte[]{-70, 109, 6, 17, 11, 50, -78, 49}), 0L);
            final long time = new Date().getTime() - 604800000;
            if (C1761j.f4605f.booleanValue()) {
                c1764m.f4624j.execute(new Runnable() { // from class: i7.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        long j10 = jLoadLong - time;
                        StringBuilder sb = new StringBuilder();
                        sb.append(j10 / 86400000);
                        sb.append(AbstractC1387m.m2421h(new byte[]{63, -95, -32, 109, 10}, new byte[]{31, 113, 84, 67, 42, -106, ByteCompanionObject.MIN_VALUE, -116}));
                        sb.append((j10 / 3600000) % 24);
                        sb.append(AbstractC1387m.m2421h(new byte[]{126, 31, 97, 21, 38}, new byte[]{94, -50, -26, 59, 6, 91, -86, 85}));
                        sb.append((j10 / 60000) % 60);
                        String strM2075i = AbstractC1178q.m2075i(new byte[]{45, 68, 57, -30, -92, -17, -64, -2}, new byte[]{13, -108, -123, 50, 28, 63, 125, -48}, sb);
                        C1770s c1770sM5244c = C3326d.m5242a().m5244c();
                        c1770sM5244c.f4639b.postValue(AbstractC1387m.m2421h(new byte[]{-65, 10, -29, 43, 3, -7, -54, 90, -65, 47, -30, 20, 3, -6, -53, 102, 79, 68, -122, 122, 108, 91, -54, 84, -65, 37, -30, 23, 2, -59, -54, 88, -65, 47, -30, 31, 2, -58, -54, 82, -66, 27, 18, 122, 99, -85, -86, 58, -40, 69, -71, -112, -14}, new byte[]{111, -108, 50, -86, -46, 123, 26, -22}).concat(strM2075i));
                    }
                });
            }
            if (C1764m.m2889a().booleanValue() && jLoadLong <= time && (asyncTaskC1364h1 = c1764m.f4622h) != null && asyncTaskC1364h1.getStatus() != AsyncTask.Status.RUNNING) {
                c1764m.f4622h = new AsyncTaskC1364h1(c1764m);
                if (C1764m.m2889a().booleanValue()) {
                    c1764m.f4622h.execute(location4);
                }
            }
            if (C1764m.m2889a().booleanValue()) {
                C1761j c1761j2 = c1764m.f4621g;
                double d10 = c1764m.f4616b;
                ArrayList arrayList4 = C1761j.f4607h;
                if (C1761j.f4606g == null) {
                    c1761j2.getClass();
                    C1761j.f4606g = location4;
                }
                SQLiteDatabase readableDatabase = c1761j2.getReadableDatabase();
                ArrayList arrayList5 = new ArrayList();
                if (AbstractC0000a.m2b(location4.getLatitude(), location4.getLongitude(), C1761j.f4606g.getLatitude(), C1761j.f4606g.getLongitude()) > c1761j2.f4610d || arrayList4.size() == 0) {
                    double latitude = location4.getLatitude();
                    double longitude = location4.getLongitude();
                    Cursor cursorRawQuery = readableDatabase.rawQuery(AbstractC1387m.m2421h(new byte[]{-26, 96, 104, -111, 98, 11, -76, 117, -107, 99, 118, -101, 108, ByteCompanionObject.MAX_VALUE, -64, 45, -44, 67, 66, -67, 66, 27, -11, 43, -44}, new byte[]{-75, 37, 36, -44, 33, 95, -108, 95}), null);
                    if (cursorRawQuery.moveToFirst()) {
                        while (true) {
                            byte[] bArr = new byte[1];
                            bArr[i13] = 16;
                            double d11 = cursorRawQuery.getDouble(cursorRawQuery.getColumnIndex(AbstractC1387m.m2421h(bArr, new byte[]{73, 67, 103, 0, -61, 106, 52, -60})));
                            byte[] bArr2 = new byte[1];
                            bArr2[i13] = -78;
                            double d12 = cursorRawQuery.getDouble(cursorRawQuery.getColumnIndex(AbstractC1387m.m2421h(bArr2, new byte[]{-22, -8, 62, -75, -57, -74, -5, 7})));
                            double dM2b = AbstractC0000a.m2b(latitude, longitude, d11, d12);
                            i10 = i13;
                            d = d10;
                            th = th2;
                            ArrayList arrayList6 = arrayList5;
                            if (dM2b <= c1761j2.f4609c) {
                                int i15 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(AbstractC1387m.m2421h(new byte[]{-58, 114, Base64.padSymbol}, new byte[]{-113, 54, 101, -71, 93, -64, -64, 31})));
                                int i16 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(AbstractC1387m.m2421h(new byte[]{68, -28, -24, 22}, new byte[]{16, -67, -72, 83, -16, -41, -10, -57})));
                                int i17 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(AbstractC1387m.m2421h(new byte[]{16, 56, 2, -7, -116}, new byte[]{67, 104, 71, -68, -56, 77, 76, 94})));
                                c1761j = c1761j2;
                                int i18 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(AbstractC1387m.m2421h(new byte[]{-26, 115, 92, -97, 77, -27, 33}, new byte[]{-94, 58, 14, -53, 20, -75, 100, 68})));
                                int i19 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(AbstractC1387m.m2421h(new byte[]{-65, -93, 35, -8, -118, 37, -71, -37, -75}, new byte[]{-5, -22, 113, -67, -55, 113, -16, -108})));
                                location = location4;
                                int i20 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(AbstractC1387m.m2421h(new byte[]{-108, -51, 15, 38, 71, -109, 49, -71}, new byte[]{-48, -124, 92, 114, 6, -35, 114, -4})));
                                c1764m2 = c1764m;
                                int i21 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(AbstractC1387m.m2421h(new byte[]{-49, 38, 89, -39, -51}, new byte[]{-114, 104, 30, -107, -120, -70, -39, -124})));
                                C1775x c1775x = new C1775x();
                                c1775x.f4660a = i15;
                                c1775x.f4661b = d11;
                                c1775x.f4662c = d12;
                                c1775x.f4663d = i16;
                                c1775x.f4664e = i17;
                                c1775x.f4665f = i18;
                                c1775x.f4666g = i19;
                                c1775x.f4667h = i20;
                                c1775x.f4668i = i21;
                                if ((((C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{14, 13, -49, 40, 66, 76, -123, -41, 24, 30, -63, 47, 73, 75}, new byte[]{93, 93, -118, 109, 6, 19, -58, -97}), true) && i16 == 1) || (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-26, -12, -58, Base64.padSymbol, -108, -34, 63, -125, -32, -18, -63, 42, -99, -44, 51, -119, -5, -23}, new byte[]{-76, -79, -126, 98, -40, -105, 120, -53}), true) && i16 == 3) || (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{9, -79, 84, 114, 47, 109, -35, 75, 24, -70, 79, 116, 52, 124, -52, 73, 27, -69, 72}, new byte[]{89, -12, 16, 55, 124, 57, -113, 2}), true) && i16 == 11)) ? Boolean.TRUE : Boolean.FALSE).booleanValue()) {
                                    arrayList2 = arrayList6;
                                    arrayList2.add(c1775x);
                                }
                                if (!cursorRawQuery.moveToNext()) {
                                    arrayList5 = arrayList2;
                                    d10 = d;
                                    i13 = i10;
                                    th2 = th;
                                    c1761j2 = c1761j;
                                    location4 = location;
                                    c1764m = c1764m2;
                                }
                            } else {
                                c1761j = c1761j2;
                                location = location4;
                                c1764m2 = c1764m;
                            }
                            arrayList2 = arrayList6;
                            if (!cursorRawQuery.moveToNext()) {
                                arrayList5 = arrayList2;
                                d10 = d;
                                i13 = i10;
                                th2 = th;
                                c1761j2 = c1761j;
                                location4 = location;
                                c1764m = c1764m2;
                            }
                        }
                    } else {
                        location = location4;
                        c1764m2 = c1764m;
                        i10 = 0;
                        th = null;
                        d = d10;
                        arrayList2 = arrayList5;
                    }
                    cursorRawQuery.close();
                    arrayList4.addAll(arrayList2);
                    C1761j.f4606g = location;
                } else {
                    location = location4;
                    c1764m2 = c1764m;
                    i10 = 0;
                    th = null;
                    d = d10;
                    arrayList2 = arrayList5;
                }
                arrayList2.clear();
                int size = arrayList4.size();
                int i22 = i10;
                while (i22 < size) {
                    Object obj = arrayList4.get(i22);
                    i22++;
                    C1775x c1775x2 = (C1775x) obj;
                    if (AbstractC0000a.m2b(location.getLatitude(), location.getLongitude(), c1775x2.f4661b, c1775x2.f4662c) <= d) {
                        arrayList2.add(c1775x2);
                    }
                }
                C1764m.f4614k = arrayList2;
                String str = new SimpleDateFormat(AbstractC1387m.m2421h(new byte[]{17, 69, -81, 32, -64, 13, 64, -67}, new byte[]{89, 13, -107, 77, -83, 55, 51, -50}), Locale.getDefault()).format(new Date());
                C1770s c1770sM5244c = C3326d.m5242a().m5244c();
                StringBuilder sb = new StringBuilder();
                sb.append(AbstractC1387m.m2421h(new byte[]{-16, -88, -81, -48, 32, -27, 73, -78, -15, -68, -81, -42, 32, -29, 72, -113, -16, -127, 95}, new byte[]{32, 63, ByteCompanionObject.MAX_VALUE, 96, -16, 86, -104, 50}));
                sb.append(C1764m.f4614k.size());
                c1770sM5244c.f4641d.postValue(AbstractC1178q.m2078l(new byte[]{-120, 24, 97, -22, 122, 74, 123, -38, 29, 24, 101, -21, 73, 75, 79, -38, 26, -24}, new byte[]{-88, -56, -33, 58, -53, -101, -15, 10}, sb, str));
            } else {
                location = location4;
                c1764m2 = c1764m;
                i10 = 0;
                th = null;
            }
            if (location.getSpeed() > 1.0f) {
                C1770s c1770sM5244c2 = C3326d.m5242a().m5244c();
                c1764m3 = c1764m2;
                float f10 = (float) c1764m3.f4618d;
                ArrayList arrayList7 = C1764m.f4614k;
                double d13 = c1764m3.f4616b;
                C1765n c1765n = new C1765n();
                location2 = location;
                c1765n.f4625a = location2;
                c1765n.f4626b = f10;
                c1765n.f4627c = arrayList7;
                c1765n.f4628d = d13;
                c1770sM5244c2.f4642e.postValue(c1765n);
            } else {
                location2 = location;
                c1764m3 = c1764m2;
            }
            ArrayList arrayList8 = C1764m.f4614k;
            int size2 = arrayList8.size();
            int i23 = i10;
            while (i23 < size2) {
                int i24 = i23 + 1;
                C1775x c1775x3 = (C1775x) arrayList8.get(i23);
                C1760i c1760i = c1764m3.f4620f;
                double d14 = c1764m3.f4618d;
                c1760i.getClass();
                double latitude2 = location2.getLatitude();
                double longitude2 = location2.getLongitude();
                double d15 = c1775x3.f4661b;
                double d16 = c1775x3.f4662c;
                int speed = (int) (location2.getSpeed() * 3.6f);
                try {
                    if (speed < 30) {
                        arrayList = arrayList8;
                        i11 = size2;
                    } else {
                        double d17 = c1775x3.f4666g;
                        int i25 = c1775x3.f4665f;
                        arrayList = arrayList8;
                        i11 = size2;
                        double d18 = c1775x3.f4668i;
                        double d19 = ((double) (speed < 90 ? 200 : FTPReply.FILE_STATUS_OK)) + ((double) c1775x3.f4667h);
                        float[] fArr = new float[1];
                        Location.distanceBetween(latitude2, longitude2, d15, d16, fArr);
                        if (fArr[i10] <= d19) {
                            if (i25 == 0) {
                                i12 = 1;
                            } else {
                                if (C1760i.m2882a(C1760i.m2883c(d15, d16, latitude2, longitude2), d17) <= d18 / 2.0d) {
                                    double dM2882a = C1760i.m2882a(d14, C1760i.m2883c(latitude2, longitude2, d15, d16));
                                    int i26 = dM2882a <= 30.0d ? 1 : i10;
                                    i12 = i26;
                                    if (i25 != 1) {
                                        if (i25 == 2 && (i26 != 0 || C1760i.m2882a(dM2882a, 180.0d) <= 30.0d)) {
                                            z9 = 1;
                                        }
                                    }
                                    AbstractC0000a.m2b(location2.getLatitude(), location2.getLongitude(), c1775x3.f4661b, c1775x3.f4662c);
                                    deque = (Deque) c1764m3.f4617c.getOrDefault(Integer.valueOf(c1775x3.f4660a), new ArrayDeque());
                                    deque.addLast(Boolean.valueOf(z9));
                                    if (deque.size() > 10) {
                                        deque.removeFirst();
                                    }
                                    c1764m3.f4617c.put(Integer.valueOf(c1775x3.f4660a), deque);
                                    if (deque.stream().filter(new C1762k(i10)).count() < 4 && C1764m.m2889a().booleanValue()) {
                                        C1752a c1752a = new C1752a();
                                        c1752a.f4568b = Double.MAX_VALUE;
                                        c1752a.f4567a = c1775x3;
                                        c1764m3.f4619e.m2876b(c1752a);
                                    }
                                    i23 = i24;
                                    arrayList8 = arrayList;
                                    size2 = i11;
                                    i10 = 0;
                                }
                                z9 = i10;
                                AbstractC0000a.m2b(location2.getLatitude(), location2.getLongitude(), c1775x3.f4661b, c1775x3.f4662c);
                                deque = (Deque) c1764m3.f4617c.getOrDefault(Integer.valueOf(c1775x3.f4660a), new ArrayDeque());
                                deque.addLast(Boolean.valueOf(z9));
                                if (deque.size() > 10) {
                                    deque.removeFirst();
                                }
                                c1764m3.f4617c.put(Integer.valueOf(c1775x3.f4660a), deque);
                                if (deque.stream().filter(new C1762k(i10)).count() < 4) {
                                }
                                i23 = i24;
                                arrayList8 = arrayList;
                                size2 = i11;
                                i10 = 0;
                            }
                        }
                        z9 = i12;
                        AbstractC0000a.m2b(location2.getLatitude(), location2.getLongitude(), c1775x3.f4661b, c1775x3.f4662c);
                        deque = (Deque) c1764m3.f4617c.getOrDefault(Integer.valueOf(c1775x3.f4660a), new ArrayDeque());
                        deque.addLast(Boolean.valueOf(z9));
                        if (deque.size() > 10) {
                            deque.removeFirst();
                        }
                        c1764m3.f4617c.put(Integer.valueOf(c1775x3.f4660a), deque);
                        if (deque.stream().filter(new C1762k(i10)).count() < 4) {
                        }
                        i23 = i24;
                        arrayList8 = arrayList;
                        size2 = i11;
                        i10 = 0;
                    }
                    deque.addLast(Boolean.valueOf(z9));
                    if (deque.size() > 10) {
                        deque.removeFirst();
                    }
                    c1764m3.f4617c.put(Integer.valueOf(c1775x3.f4660a), deque);
                    if (deque.stream().filter(new C1762k(i10)).count() < 4) {
                    }
                } catch (Exception unused2) {
                }
                i12 = i10;
                z9 = i12;
                AbstractC0000a.m2b(location2.getLatitude(), location2.getLongitude(), c1775x3.f4661b, c1775x3.f4662c);
                deque = (Deque) c1764m3.f4617c.getOrDefault(Integer.valueOf(c1775x3.f4660a), new ArrayDeque());
                i23 = i24;
                arrayList8 = arrayList;
                size2 = i11;
                i10 = 0;
            }
            if (MainActivity.m1426w() && c1764m3.f4623i.booleanValue()) {
                throw th;
            }
            if (MainActivity.m1425v(c1764m3.f4615a) && c1764m3.f4623i.booleanValue()) {
                throw th;
            }
            final C1758g c1758g2 = c1764m3.f4619e;
            ArrayList arrayList9 = c1764m3.f4620f.f4603b;
            c1758g2.getClass();
            Location location8 = (Location) arrayList9.get(arrayList9.size() - 1);
            final double latitude3 = location8.getLatitude();
            final double longitude3 = location8.getLongitude();
            double speed2 = location8.getSpeed();
            c1758g2.f4596n = System.currentTimeMillis();
            synchronized (c1758g2.f4587e) {
                try {
                    if (c1758g2.f4588f.isEmpty() && C1758g.m2874a().booleanValue()) {
                        if (c1758g2.f4594l) {
                            c1758g2.m2877c();
                            c1758g2.f4594l = false;
                        }
                        c1758g2.m2880g();
                        if (MainActivity.m1426w() && c1758g2.f4591i.booleanValue()) {
                            throw th;
                        }
                        if (MainActivity.m1425v(c1758g2.f4586d) && c1758g2.f4591i.booleanValue()) {
                            throw th;
                        }
                        return;
                    }
                    c1758g2.f4594l = true;
                    LinkedList linkedList = c1758g2.f4588f;
                    ArrayList arrayList10 = new ArrayList(linkedList);
                    arrayList10.sort(Comparator.comparingDouble(new ToDoubleFunction() { // from class: i7.b
                        @Override // java.util.function.ToDoubleFunction
                        public final double applyAsDouble(Object obj2) {
                            c1758g2.getClass();
                            C1775x c1775x4 = ((C1752a) obj2).f4567a;
                            float[] fArr2 = new float[1];
                            Location.distanceBetween(latitude3, longitude3, c1775x4.f4661b, c1775x4.f4662c, fArr2);
                            return fArr2[0];
                        }
                    }));
                    linkedList.clear();
                    linkedList.addAll(arrayList10);
                    C1752a c1752a2 = (C1752a) c1758g2.f4588f.peek();
                    if (c1752a2 != null && C1758g.m2874a().booleanValue()) {
                        C1775x c1775x4 = c1752a2.f4567a;
                        final double dM2b2 = AbstractC0000a.m2b(latitude3, longitude3, c1775x4.f4661b, c1775x4.f4662c);
                        if (C1758g.m2875f(c1752a2, dM2b2, speed2, arrayList9)) {
                            c1758g2.f4588f.poll();
                        } else {
                            double d20 = c1752a2.f4568b;
                            if (d20 < Double.MAX_VALUE && dM2b2 != d20) {
                                final C1775x c1775x5 = c1752a2.f4567a;
                                c1758g2.f4589g.post(new Runnable() { // from class: i7.d
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        C1758g c1758g3 = c1758g2;
                                        LocServ locServ2 = c1758g3.f4586d;
                                        C1774w c1774w = c1758g3.f4593k;
                                        if (c1774w != null) {
                                            c1774w.setVisibility(8);
                                        }
                                        CameraInfoView cameraInfoView = c1758g3.f4592j;
                                        C1775x c1775x6 = c1775x5;
                                        double d21 = dM2b2;
                                        if (cameraInfoView != null) {
                                            cameraInfoView.setSpeedLimit(c1775x6.f4664e);
                                            c1758g3.f4592j.setTypeCamera(c1775x6.m2895a());
                                            c1758g3.f4592j.setDistance(((int) d21) + locServ2.getString(R.string.m));
                                            c1758g3.f4592j.setCameraImageResource(c1775x6.f4663d);
                                            c1758g3.f4592j.setVisibility(0);
                                        }
                                        C1770s c1770sM5244c3 = C3326d.m5242a().m5244c();
                                        StringBuilder sb2 = new StringBuilder();
                                        String strM2895a = c1775x6.m2895a();
                                        int i27 = c1775x6.f4664e;
                                        sb2.append(strM2895a);
                                        sb2.append(AbstractC1387m.m2421h(new byte[]{-72, 77}, new byte[]{-126, 109, -10, 63, 88, 96, 104, -34}));
                                        sb2.append(locServ2.getString(R.string.ogranichenie));
                                        AbstractC1178q.m2086t(new byte[]{-42, -120}, new byte[]{-20, -88, 98, -105, 59, -4, -93, -126}, sb2, i27);
                                        sb2.append(locServ2.getString(R.string.kmch));
                                        sb2.append(" ");
                                        sb2.append(locServ2.getString(R.string.rast));
                                        sb2.append(AbstractC1387m.m2421h(new byte[]{115, 87}, new byte[]{73, 119, 7, -97, ByteCompanionObject.MAX_VALUE, -70, 126, 108}));
                                        int i28 = (int) d21;
                                        sb2.append(i28);
                                        c1770sM5244c3.f4638a.postValue(sb2.toString());
                                        HUDMassageObj hUDMassageObj = new HUDMassageObj();
                                        hUDMassageObj.AradarOn = Boolean.TRUE;
                                        hUDMassageObj.hudSenderType = HUDMassageObj.HudSenderType.ARAD;
                                        hUDMassageObj.aradarSenderType = HUDMassageObj.AradarSenderType.GENARADAR;
                                        hUDMassageObj.v_mTurnType = 14;
                                        hUDMassageObj.v_mTurnDis = i27 * 1000;
                                        hUDMassageObj.v_mRemainDis = i28;
                                        hUDMassageObj.v_mNextRoad = i27 + locServ2.getString(R.string.kmch);
                                        hUDMassageObj.setspeedlimit(i27);
                                        C1652b.m2734a();
                                        C1652b.m2740i().m2369e(hUDMassageObj);
                                        if (c1758g3.f4583a) {
                                            c1758g3.f4589g.post(new RunnableC1756e(c1758g3, 3));
                                        }
                                    }
                                });
                            }
                            c1752a2.f4568b = dM2b2;
                        }
                    }
                    if (c1758g2.f4588f.isEmpty()) {
                        c1758g2.m2877c();
                        c1758g2.m2880g();
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    private final void m29c() {
        C1428u1 c1428u1 = (C1428u1) this.f2c;
        ObjectAnimator objectAnimator = (ObjectAnimator) this.f3d;
        if (c1428u1.f3438j == objectAnimator) {
            objectAnimator.start();
        }
    }

    /* JADX INFO: renamed from: d */
    private final void m30d() {
        Bitmap bitmap;
        C1440x1 c1440x1 = (C1440x1) this.f2c;
        MediaMetadata mediaMetadata = (MediaMetadata) this.f3d;
        if (mediaMetadata != null) {
            bitmap = mediaMetadata.getBitmap(AbstractC1387m.m2421h(new byte[]{103, 76, -23, -69, 126, -89, -87, 117, 107, 71, -23, -96, 112, -32, -96, 62, 114, 67, -23, -88, 101, -81, -29, 26, 74, 96, -40, -124, 78, -113, -97, 15}, new byte[]{6, 34, -115, -55, 17, -50, -51, 91}));
            if (bitmap == null) {
                bitmap = mediaMetadata.getBitmap(AbstractC1387m.m2421h(new byte[]{24, 19, -75, -93, -41, -17, 88, 26, 20, 24, -75, -72, -39, -88, 81, 81, 13, 28, -75, -80, -52, -25, 18, 117, 43, 41}, new byte[]{121, 125, -47, -47, -72, -122, 60, 52}));
            }
            if (bitmap == null) {
                bitmap = mediaMetadata.getBitmap(AbstractC1387m.m2421h(new byte[]{57, 109, 111, 56, -103, 94, -104, -52, 53, 102, 111, 35, -105, 25, -111, -121, 44, 98, 111, 43, -126, 86, -46, -90, 17, 80, 91, 6, -73, 110, -93, -85, 27, 76, 69}, new byte[]{88, 3, 11, 74, -10, 55, -4, -30}));
            }
        } else {
            bitmap = null;
        }
        if (bitmap != null) {
            c1440x1.f3476e = bitmap;
        }
    }

    /* JADX INFO: renamed from: e */
    private final void m31e() {
        C1440x1 c1440x1 = (C1440x1) this.f2c;
        MediaController mediaController = (MediaController) this.f3d;
        if (c1440x1.f3486o) {
            c1440x1.f3486o = false;
            try {
                mediaController.unregisterCallback(c1440x1);
            } catch (Exception unused) {
            }
            C1440x1.m2488d(null);
            c1440x1.f3486o = true;
        }
    }

    /* JADX INFO: renamed from: f */
    private final void m32f() {
        Boolean boolValueOf;
        Bitmap bitmap;
        String str;
        String str2;
        C1440x1 c1440x1 = (C1440x1) this.f2c;
        PlaybackState playbackState = (PlaybackState) this.f3d;
        ScheduledExecutorServiceC1430v scheduledExecutorServiceC1430v = c1440x1.f3483l;
        C1652b.m2734a();
        if (playbackState != null) {
            int state = playbackState.getState();
            if (state == 2) {
                c1440x1.f3472a = EnumC2472g.f6810c;
            } else if (state == 3) {
                c1440x1.f3472a = EnumC2472g.f6809b;
                c1440x1.f3477f = Long.valueOf(playbackState.getPosition());
                int i10 = 1;
                if (c1440x1.f3479h.isMusicActive()) {
                    StringBuilder sb = new StringBuilder();
                    C3277a c3277aM2745o = C1652b.m2745o();
                    byte[] bArr = AbstractC1387m.f3322j;
                    String[] strArr = AbstractC1406p3.f3368a;
                    String str3 = "";
                    AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                    AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                    String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                    C3277a c3277aM2745o2 = C1652b.m2745o();
                    byte[] bArr2 = AbstractC1387m.f3318f;
                    if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
                        C1652b.m2734a();
                        boolValueOf = Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-123}, new byte[]{-75, -62, 91, -46, -10, -83, -3, -3}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
                    } else {
                        boolValueOf = Boolean.FALSE;
                    }
                    if (boolValueOf.booleanValue()) {
                        try {
                            MediaController mediaControllerM2489a = c1440x1.m2489a();
                            if (mediaControllerM2489a != null) {
                                MediaMetadata metadata = mediaControllerM2489a.getMetadata();
                                if (metadata != null) {
                                    String[] strArrSplit = String.valueOf(metadata.getDescription()).split(AbstractC1387m.m2421h(new byte[]{-120, 71}, new byte[]{-92, 103, -106, 69, -103, -125, 106, -41}));
                                    str = "";
                                    str2 = str;
                                    for (int i11 = 0; i11 < strArrSplit.length - 1; i11++) {
                                        if (i11 == 0 && !AbstractC1387m.m2421h(new byte[]{-84, -59, 97, -85}, new byte[]{-62, -80, 13, -57, 116, -125, 94, 7}).equals(strArrSplit[0])) {
                                            str3 = strArrSplit[0];
                                        }
                                        if (i11 == 1 && !AbstractC1387m.m2421h(new byte[]{80, 77, 14, 73}, new byte[]{62, 56, 98, 37, 87, -88, -42, -98}).equals(strArrSplit[1])) {
                                            str = strArrSplit[1];
                                        }
                                        if (i11 == 2 && !AbstractC1387m.m2421h(new byte[]{-15, -14, 67, -67}, new byte[]{-97, -121, 47, -47, 79, -69, -57, -115}).equals(strArrSplit[2])) {
                                            str2 = strArrSplit[2];
                                        }
                                    }
                                    bitmap = metadata.getBitmap(AbstractC1387m.m2421h(new byte[]{-50, -62, 34, -61, 49, -32, -65, 107, -62, -55, 34, -40, 63, -89, -74, 32, -37, -51, 34, -48, 42, -24, -11, 4, -29, -18, 19, -4, 1, -56, -119, 17}, new byte[]{-81, -84, 70, -79, 94, -119, -37, 69}));
                                    if (bitmap == null) {
                                        bitmap = metadata.getBitmap(AbstractC1387m.m2421h(new byte[]{83, 114, -9, -120, 4, -36, -41, -123, 95, 121, -9, -109, 10, -101, -34, -50, 70, 125, -9, -101, 31, -44, -99, -22, 96, 72}, new byte[]{50, 28, -109, -6, 107, -75, -77, -85}));
                                    }
                                    if (bitmap == null) {
                                        bitmap = metadata.getBitmap(AbstractC1387m.m2421h(new byte[]{-118, 83, ByteCompanionObject.MAX_VALUE, 30, 76, -15, 60, 44, -122, 88, ByteCompanionObject.MAX_VALUE, 5, 66, -74, 53, 103, -97, 92, ByteCompanionObject.MAX_VALUE, 13, 87, -7, 118, 70, -94, 110, 75, 32, 98, -63, 7, 75, -88, 114, 85}, new byte[]{-21, Base64.padSymbol, 27, 108, 35, -104, 88, 2}));
                                    }
                                    c1440x1.f3478g = Long.valueOf(metadata.getLong(AbstractC1387m.m2421h(new byte[]{-71, 10, -19, -118, 17, 118, 35, 50, -75, 1, -19, -111, 31, 49, 42, 121, -84, 5, -19, -103, 10, 126, 105, 88, -115, 54, -56, -84, 55, 80, 9}, new byte[]{-40, 100, -119, -8, 126, 31, 71, 28})));
                                } else {
                                    bitmap = null;
                                    str = "";
                                    str2 = str;
                                }
                                c1440x1.f3473b = str3;
                                c1440x1.f3474c = str;
                                c1440x1.f3475d = str2;
                                c1440x1.f3476e = bitmap;
                                C1440x1.m2487b(str3, str, str2, bitmap);
                                C3326d.m5242a().m5245d().f9733f.postValue(new C3129a(c1440x1.f3472a, c1440x1.f3473b, c1440x1.f3474c, c1440x1.f3475d, c1440x1.f3476e, c1440x1.f3477f, c1440x1.f3478g));
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
                final int iMax = (int) Math.max(-2147483648L, Math.min(2147483647L, c1440x1.f3477f.longValue()));
                final int iMax2 = (int) Math.max(-2147483648L, Math.min(2147483647L, c1440x1.f3478g.longValue()));
                scheduledExecutorServiceC1430v.execute(new Runnable() { // from class: e0.w1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C1652b.m2734a();
                        C1652b.m2734a();
                        C1652b.m2744n().setMusicPlayTime(iMax, iMax2);
                    }
                });
                scheduledExecutorServiceC1430v.execute(new RunnableC1431v0(i10));
            }
        }
        C3326d.m5242a().m5245d().f9733f.postValue(new C3129a(c1440x1.f3472a, c1440x1.f3473b, c1440x1.f3474c, c1440x1.f3475d, c1440x1.f3476e, c1440x1.f3477f, c1440x1.f3478g));
    }

    /* JADX INFO: renamed from: g */
    private final void m33g() {
        List list = (List) this.f2c;
        String str = (String) this.f3d;
        MyA11yService myA11yService = MyA11yService.f1453c;
        MyA11yService.m1477c((AccessibilityNodeInfo) list.get(0), str.concat(AbstractC1387m.m2421h(new byte[]{-104, 126, -65, 70, 120, 69, -23, -74, -45}, new byte[]{-72, 23, -37, 25, 27, 41, ByteCompanionObject.MIN_VALUE, -43})));
    }

    /* JADX INFO: renamed from: h */
    private final void m34h() {
        Runnable runnable = (Runnable) this.f2c;
        String str = (String) this.f3d;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.f1463c;
        runnable.run();
        MyCarReceiver.m1487d(str.concat(AbstractC1387m.m2421h(new byte[]{-8, 74, 89, -9, 6, -23}, new byte[]{-89, 30, 16, -70, 67, -69, -75, -17})), Boolean.FALSE);
        C1652b.m2751w(str.concat(AbstractC1387m.m2421h(new byte[]{-56, 39, 99, -25, -67, -62, 4, -52, -47}, new byte[]{-105, 83, 10, -118, -40, -99, 75, -118})), ColorText.RED);
    }

    /* JADX WARN: Code duplicated, block: B:99:0x0429  */
    /* JADX INFO: renamed from: i */
    private final void m35i() {
        int i10;
        char c;
        String str;
        String strReplace;
        NLService nLService = (NLService) this.f2c;
        StatusBarNotification statusBarNotification = (StatusBarNotification) this.f3d;
        ScheduledExecutorService scheduledExecutorService = NLService.f1482e;
        if (MainActivity.m1426w() || MainActivity.m1425v(nLService.f1483b) || MainActivity.m1425v(nLService.f1483b)) {
            throw null;
        }
        String packageName = statusBarNotification.getPackageName();
        Bundle bundle = statusBarNotification.getNotification().extras;
        C1343d0.m2389d(nLService);
        if (packageName.equals(AbstractC1387m.m2421h(new byte[]{-52, -49, 82, -85, -94, -94, 8, 78, -58, -108, 11, -73, -94, -72, 4, 78, -52, -54, 16, -89, -92, -91, 2}, new byte[]{-66, -70, 124, -46, -61, -52, 108, 43})) && NLService.m1504a().booleanValue()) {
            C1343d0.m2389d(nLService);
            if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{10, 107, 80, -56, -91, -90, -12, -63, 24, 67, 120, -47, -82, -90, -60, -54, 23, 115, 105, -34}, new byte[]{121, 28, 15, -72, -54, -63, -101, -91}), false) && C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -63, 55, ByteCompanionObject.MIN_VALUE, 105, -53, 13, 115, 62, -34, 57, -127, 99, -49, 32, 91, 39, -43, 57, -79, 119, -36, 16}, new byte[]{78, -79, 94, -18, 7, -82, ByteCompanionObject.MAX_VALUE, 44}), EnumC2471f.values()[0].name()).equals(EnumC2471f.f6806f.name())) {
                Context context = nLService.f1483b;
                C1386l3 c1386l3 = new C1386l3();
                c1386l3.f3310a = context;
                c1386l3.f3311b = packageName;
                try {
                    String[] strArrSplit = c1386l3.m2413a(statusBarNotification.getNotification(), AbstractC1387m.m2421h(new byte[]{43, 11, 111, 100, -62, 24, -24, -87, 49, 13, 116, 99, -5, 6, -30, -84, 34, 1, 111, 82, -56, 30, -24, -87, 49, 13, 116, 99}, new byte[]{69, 100, 27, 13, -92, 113, -117, -56})).split(AbstractC1387m.m2421h(new byte[]{35}, new byte[]{15, -105, 5, -18, 49, -48, 98, -71}));
                    str = strArrSplit.length > 1 ? strArrSplit[1] : strArrSplit[0];
                    try {
                        strReplace = c1386l3.m2413a(statusBarNotification.getNotification(), AbstractC1387m.m2421h(new byte[]{65, 16, 116, -123, 46, Base64.padSymbol, 40, 77, 91, 22, 111, -126, 23, 35, 34, 72, 72, 26, 116, -77, 60, 49, 38, 92, 74, 13, 97, -104, Base64.padSymbol, 38, 46}, new byte[]{47, ByteCompanionObject.MAX_VALUE, 0, -20, 72, 84, 75, 44})).replace(AbstractC1387m.m2421h(new byte[]{18, -10}, new byte[]{-48, 70, 114, 10, 103, -88, 46, -125}), "");
                    } catch (Exception unused) {
                        strReplace = "";
                    }
                } catch (Exception unused2) {
                    str = "";
                }
                WeatherService.m2208g(new C2052b(str, strReplace, "", -1));
            }
        }
        C1343d0.m2389d(nLService);
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{114, 96, -96, -98, 24, -122, 104}, new byte[]{1, 20, -46, -5, 116, -19, 9, -26}), true);
        boolean zLoadBoolean2 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{126, -10, -87, 126, -83, 19, 22, -114, 108, -18, -73}, new byte[]{13, -126, -37, 27, -63, 120, 119, -47}), false);
        boolean zLoadBoolean3 = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-55, 10, 83, 42, -74, 4, -102, 74, -41, 31, 79, 16, -73, 29, -113, 103}, new byte[]{-70, 126, 33, 117, -62, 107, -22, 21}), true);
        if (packageName.equals(AbstractC1387m.m2421h(new byte[]{-123, 75, 107, -15, -124, -67, 100, -93, -115, 10, 85, -85, -97, -82, 103, -92, -121, 99, 86, -116}, new byte[]{-26, 36, 6, -33, -19, -53, 11, -49})) && zLoadBoolean && NLService.m1504a().booleanValue()) {
            String string = bundle.getString(AbstractC1387m.m2421h(new byte[]{76, -98, -80, -105, 56, -22, 45, -21, 89, -103, -96, -119, 50}, new byte[]{45, -16, -44, -27, 87, -125, 73, -59}));
            Integer num = -1;
            if (zLoadBoolean2) {
                C1343d0.m2389d(nLService);
                if (string.contains(AbstractC1387m.m2421h(new byte[]{115, -6, -71, -94, -38, 0, 29, -83, 115, -64, -71, -102, -38, 48}, new byte[]{-93, 91, 105, 0, 10, -96, -51, 56})) || string.contains(AbstractC1387m.m2421h(new byte[]{28, -97, -12, -83, 15, -63, -78, -11, 28, -107}, new byte[]{-52, 3, 36, 14, -33, 90, 98, 90})) || string.contains(AbstractC1387m.m2421h(new byte[]{119, 76, 115, 94, 121, -67, 78, 8, 119, 118, 115, 94, 121, -69, 78, 6}, new byte[]{-89, -42, -93, -64, -87, 32, -98, -86})) || string.contains(AbstractC1387m.m2421h(new byte[]{33, -111, 66, 52, -103, 44, 96, -66, 33, -81, 66, 58}, new byte[]{-15, 14, -110, -86, 73, -73, -80, 32})) || string.contains(AbstractC1387m.m2421h(new byte[]{-76, -110, -110, 73, -26, -8, 53, 74, -76, -88, -110, 73}, new byte[]{100, 8, 66, -39, 54, 100, -27, -33})) || string.contains(AbstractC1387m.m2421h(new byte[]{-68, 95, 84, 34, -114, 16, -53, -91, -68, 92, 84, 34}, new byte[]{108, -56, -124, -78, 94, -79, 27, 53})) || string.contains(AbstractC1387m.m2421h(new byte[]{1, ByteCompanionObject.MIN_VALUE, -35, 122, -77, 38, 113, 14, -15, -49, -103, 52, -4, 87, 0}, new byte[]{-47, 31, 13, -28, 99, -121, -95, -84})) || string.contains(AbstractC1387m.m2421h(new byte[]{-64, 44, 12, 96, 62, 0, 1, 109, -64, 45, 12, 89, 62, 10}, new byte[]{16, -113, -36, -57, -18, -112, -47, -52})) || string.contains(AbstractC1387m.m2421h(new byte[]{23, 103, 83, -24, -112, -73, 26, -95, -25, 22, 24, -102, -40, -7, 87}, new byte[]{-57, -58, -125, 74, 64, 41, -54, 62}))) {
                    num = 14;
                } else if (string.contains(AbstractC1387m.m2421h(new byte[]{95, 21, -52, 67, -26, -20, -33, -42, 95, 31, -52, 65, -26, -40}, new byte[]{-113, -118, 28, -42, 54, 76, 15, 67})) || string.contains(AbstractC1387m.m2421h(new byte[]{122, 5, 82, 41, -15, -106, -65, -85, 122, 0, 82, 28, -15, -73, -65, -97, 122, 56}, new byte[]{-86, -102, -126, -68, 33, 54, 111, 62})) || string.contains(AbstractC1387m.m2421h(new byte[]{-100, -59, 16, 93, 20, 62, -122, -23, -100, -54, 16, 85, -22}, new byte[]{76, 88, -64, -56, -60, -98, 86, 119})) || string.contains(AbstractC1387m.m2421h(new byte[]{-78, -60, -73, -110, -21, 112, 116, 111, -78, -2, -73, -103, -21, 68}, new byte[]{98, 91, 103, 7, 59, -48, -92, -6})) || string.contains(AbstractC1387m.m2421h(new byte[]{119, -77, 120, -104, 122, -90, 81, -124, 119, -116, 120, -104, 122, -106}, new byte[]{-89, 44, -88, 6, -86, 52, -127, 26})) || string.contains(AbstractC1387m.m2421h(new byte[]{118, 117, -64, 112, 16, -33, 39, -25, 118, 66, -64, 117, 16, -18}, new byte[]{-90, -41, 16, -18, -64, 66, -9, 122})) || string.contains(AbstractC1387m.m2421h(new byte[]{-90, 117, -47, -4, 119, -83, 43, -6, -90, 118, -47, -3}, new byte[]{118, -21, 1, 99, -89, Base64.padSymbol, -5, 91})) || string.contains(AbstractC1387m.m2421h(new byte[]{64, -115, -92, 110, 108, 85, -72, 110, 15, -64, -41, 46, 33, 36, 12, 110, 50}, new byte[]{-112, 16, 116, -2, -68, -12, -106, -66})) || string.contains(AbstractC1387m.m2421h(new byte[]{-39, 80, 43, 46, -32, 97, 124, -41, -98, 30, 107, 95, -81, 19, -14}, new byte[]{9, -50, -5, -113, 48, -61, 82, 7})) || string.contains(AbstractC1387m.m2421h(new byte[]{-56, 121, 92, 14, -23, 63, 60, 40, -56, 123, 92, 11}, new byte[]{24, -26, -116, -107, 57, -81, -20, -118})) || string.contains(AbstractC1387m.m2421h(new byte[]{25, -115, -105, 3, 23, -49, 88, -9, 83, -49, -39, 70, 90, -66, -44, 9}, new byte[]{-55, 31, 71, -106, -57, 110, 118, 39})) || string.contains(AbstractC1387m.m2421h(new byte[]{42, -94, 34, 11, 45, -56, -12, -65, 42, -98, -46, 69, 96, 123, -12, -75, -44}, new byte[]{-6, 56, -14, -107, -3, 85, 36, 42}))) {
                    num = 16;
                } else if (string.contains(AbstractC1387m.m2421h(new byte[]{-35, -46, -69, 79, 97, 32, 45, 36, -35, -34}, new byte[]{13, 118, 107, -41, -79, -67, -3, -68}))) {
                    num = 14;
                }
            } else if (string.contains(AbstractC1387m.m2421h(new byte[]{-106, -85, 2, -118, 34, ByteCompanionObject.MIN_VALUE, 122, -78, -106, -111, 2, -78, 34, -80}, new byte[]{70, 10, -46, 40, -14, 32, -86, 39})) || string.contains(AbstractC1387m.m2421h(new byte[]{-77, -90, 99, 85, -114, 68, 82, 102, -77, -86}, new byte[]{99, 2, -77, -51, 94, -39, -126, -2})) || string.contains(AbstractC1387m.m2421h(new byte[]{66, -85, -1, -28, -74, 119, 83, -10, 66, -111, -1, -28, -74, 113, 83, -8}, new byte[]{-110, 49, 47, 122, 102, -22, -125, 84})) || string.contains(AbstractC1387m.m2421h(new byte[]{13, -89, -72, 53, -125, -45, -110, 20, 13, -103, -72, 59}, new byte[]{-35, 56, 104, -85, 83, 72, 66, -118})) || string.contains(AbstractC1387m.m2421h(new byte[]{86, 56, -4, 79, 17, 10, 49, 58, 86, 2, -4, 79}, new byte[]{-122, -94, 44, -33, -63, -106, -31, -81})) || string.contains(AbstractC1387m.m2421h(new byte[]{-103, 108, -71, -52, 66, 118, -62, -124, -103, 111, -71, -52}, new byte[]{73, -5, 105, 92, -110, -41, 18, 20})) || string.contains(AbstractC1387m.m2421h(new byte[]{-100, 117, -91, -104, -77, -75, 17, -72, 108, 58, -31, -42, -4, -60, 96}, new byte[]{76, -22, 117, 6, 99, 20, -63, 26})) || string.contains(AbstractC1387m.m2421h(new byte[]{-27, -70, -37, 86, -7, 64, 111, -67, -27, -69, -37, 111, -7, 74}, new byte[]{53, 25, 11, -15, 41, -48, -65, 28})) || string.contains(AbstractC1387m.m2421h(new byte[]{-38, -68, 108, -56, 36, 83, 103, 113, 42, -51, 39, -70, 108, 29, 42}, new byte[]{10, 29, -68, 106, -12, -51, -73, -18}))) {
                num = 14;
            }
            int iIntValue = num.intValue();
            if (iIntValue > 0) {
                nLService.f1484c = packageName;
                String[] strArrSplit2 = string.split(" ");
                String[] strArrSplit3 = new String[0];
                int iIntValue2 = 0;
                for (int i11 = 0; i11 < strArrSplit2.length; i11++) {
                    if (strArrSplit2[i11].contains(AbstractC1387m.m2421h(new byte[]{-40, -108, -53, -93}, new byte[]{8, 46, 27, 31, -39, -58, -108, 31}))) {
                        i10 = 2;
                    } else {
                        i10 = 2;
                        if (strArrSplit2[i11].contains(AbstractC1387m.m2421h(new byte[]{-96, -127}, new byte[]{-53, -20, -97, 100, 115, -92, 62, -15}))) {
                        }
                    }
                    byte[] bArr = new byte[i10];
                    // fill-array-data instruction
                    bArr[0] = -104;
                    bArr[1] = -57;
                    if (strArrSplit2[i11].contains(AbstractC1387m.m2421h(bArr, new byte[]{72, 125, 112, Base64.padSymbol, 5, -22, -103, -102}))) {
                        byte[] bArr2 = new byte[i10];
                        // fill-array-data instruction
                        bArr2[0] = -45;
                        bArr2[1] = 18;
                        strArrSplit3 = strArrSplit2[i11].split(AbstractC1387m.m2421h(bArr2, new byte[]{3, -88, -43, 124, -109, -34, 79, -90}));
                        c = 0;
                    } else {
                        c = 0;
                        if (strArrSplit2[i11].contains(AbstractC1387m.m2421h(new byte[]{-122}, new byte[]{-19, 107, 85, -27, 17, -63, 79, -89}))) {
                            strArrSplit3 = strArrSplit2[i11].split(AbstractC1387m.m2421h(new byte[]{-8}, new byte[]{-109, -12, -68, -77, 81, -18, 0, 104}));
                        }
                    }
                    iIntValue2 = Integer.valueOf(strArrSplit3[c]).intValue() * 1000;
                }
                if (zLoadBoolean3) {
                    String str2 = C1396n3.f3343d;
                }
                C1343d0.m2389d(nLService);
                HUDMassageObj hUDMassageObj = new HUDMassageObj();
                hUDMassageObj.AradarOn = Boolean.TRUE;
                hUDMassageObj.hudSenderType = HUDMassageObj.HudSenderType.ARAD;
                hUDMassageObj.aradarSenderType = HUDMassageObj.AradarSenderType.STRELKA;
                hUDMassageObj.v_mTurnType = iIntValue;
                try {
                    hUDMassageObj.setspeedlimit(iIntValue2 / 1000);
                } catch (Exception unused3) {
                }
                hUDMassageObj.v_mTurnDis = iIntValue2;
                hUDMassageObj.v_mNextRoad = string;
                try {
                    C1652b.m2734a();
                    C1652b.m2740i().m2369e(hUDMassageObj);
                } catch (Exception unused4) {
                }
                AbstractC1434w.m2482c(-1, nLService.f1485d).schedule(new RunnableC1446z(hUDMassageObj, 1), 2000L, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: renamed from: j */
    private final void m36j() {
        NLService nLService = (NLService) this.f2c;
        String str = (String) this.f3d;
        if (str.equals(nLService.f1484c)) {
            nLService.f1484c = null;
            String str2 = C1396n3.f3343d;
            HUDMassageObj hUDMassageObj = new HUDMassageObj();
            hUDMassageObj.AradarOn = Boolean.FALSE;
            hUDMassageObj.hudSenderType = HUDMassageObj.HudSenderType.ARAD;
            hUDMassageObj.aradarSenderType = HUDMassageObj.AradarSenderType.STRELKA;
            hUDMassageObj.v_mTurnType = -1;
            hUDMassageObj.v_mTurnDis = 0;
            hUDMassageObj.v_mNextRoad = " ";
            try {
                C1652b.m2734a();
                C1652b.m2740i().m2369e(hUDMassageObj);
            } catch (Exception unused) {
            }
        }
        if (!str.equals(AbstractC1387m.m2421h(new byte[]{-56, -95, 122, -34, -41, 63, -113, -18, -62, -6, 45, -58, -40, 53, -114, -13, -41, -75, 36, -44}, new byte[]{-70, -44, 84, -89, -74, 81, -21, -117}))) {
            str.equals(AbstractC1387m.m2421h(new byte[]{-71, -68, -95, 63, 91, 24, -6, -29, -77, -25, -10, 39, 84, 18, -5, -2, -91, -88, -7, 47}, new byte[]{-53, -55, -113, 70, 58, 118, -98, -122}));
        }
        try {
            C1652b.m2734a();
            C1652b.m2741k().getClass();
            if (str.equals(null)) {
                C1652b.m2734a();
                C1652b.m2741k().getClass();
                C1652b.m2734a();
                C1652b.m2741k().getClass();
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: renamed from: k */
    private final void m37k() {
        Boolean boolValueOf;
        Notik notik = (Notik) this.f2c;
        MessageData messageData = (MessageData) this.f3d;
        C0872m c0872m = notik.f1490c;
        LinearLayout linearLayout = (LinearLayout) c0872m.f602d;
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        boolean zM2089w = AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g);
        int i10 = 1;
        int i11 = 0;
        if (zM2089w) {
            boolValueOf = Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{23}, new byte[]{39, -81, 69, 10, 121, 75, -122, 79}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            C1652b.m2734a();
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, C1652b.m2738g().mo3013b().mo1151m(), 552, -3);
            layoutParams.gravity = 49;
            layoutParams.y = 50;
            C1652b.m2734a();
            C1652b.m2738g().mo3013b().mo1144f(linearLayout, layoutParams);
        }
        Notik notik2 = (Notik) c0872m.f601c;
        C1603e c1603e = new C1603e(notik2);
        c1603e.f4028h = c1603e.animate();
        View.inflate(notik2, R.layout.message_view, c1603e);
        c1603e.f4022b = (TextView) c1603e.findViewById(R.id.messageText);
        c1603e.f4023c = (TextView) c1603e.findViewById(R.id.titleText);
        c1603e.f4024d = (ImageView) c1603e.findViewById(R.id.appIco);
        c1603e.f4026f = (LinearLayout) c1603e.findViewById(R.id.LinearLayout_send_messadge);
        c1603e.f4025e = (Button) c1603e.findViewById(R.id.otvetit_button);
        TextView textView = c1603e.f4022b;
        if (textView != null && textView.getContext() != null) {
            textView.setMaxWidth((int) (0.8f * textView.getContext().getResources().getDisplayMetrics().widthPixels));
        }
        c1603e.setMessageBubbleViewListener(c0872m);
        c1603e.f4027g = messageData;
        Bitmap iconBitmap = messageData.getIconBitmap();
        ImageView imageView = c1603e.f4024d;
        if (iconBitmap != null) {
            imageView.setImageBitmap(iconBitmap);
        } else {
            imageView.setImageResource(R.drawable.icon_voice_message_6376305);
        }
        c1603e.f4023c.setText(messageData.getSender());
        c1603e.f4022b.setText(messageData.getMessage());
        if (messageData.gethasReply()) {
            c1603e.f4026f.setVisibility(0);
            c1603e.f4025e.setVisibility(0);
            c1603e.f4025e.setOnClickListener(new ViewOnClickListenerC0701a(6, c1603e, messageData));
        }
        c1603e.setOnClickListener(new ViewOnClickListenerC0701a(5, c0872m, c1603e));
        c1603e.setVisibility(4);
        linearLayout.addView(c1603e);
        c1603e.post(new RunnableC1556j(i10, c1603e));
        ((Handler) c0872m.f604f).postDelayed(new RunnableC1600b(c0872m, c1603e, i11), 10000L);
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Parcel parcel;
        JSONArray jSONArrayM972v;
        JSONArray jSONArray;
        String strM2421h;
        JSONArray jSONArray2;
        String absolutePath;
        int i10 = 0;
        switch (this.f1b) {
            case 0:
                try {
                    ((WindowManager) this.f2c).removeViewImmediate((View) this.f3d);
                    return;
                } catch (Exception unused) {
                    return;
                }
            case 1:
                ((ViewTransition) this.f2c).lambda$applyTransition$0((View[]) this.f3d);
                return;
            case 2:
                ((ResourcesCompat.FontCallback) this.f2c).lambda$callbackSuccessAsync$0((Typeface) this.f3d);
                return;
            case 3:
                DispatchQueue.dispatchAndEnqueue$lambda$2$lambda$1((DispatchQueue) this.f2c, (Runnable) this.f3d);
                return;
            case 4:
                ExtensionEmbeddingBackend.SplitListenerWrapper.m6081accept$lambda1((ExtensionEmbeddingBackend.SplitListenerWrapper) this.f2c, (ArrayList) this.f3d);
                return;
            case 5:
                SidecarWindowBackend.WindowLayoutChangeCallbackWrapper.m6082accept$lambda0((SidecarWindowBackend.WindowLayoutChangeCallbackWrapper) this.f2c, (WindowLayoutInfo) this.f3d);
                return;
            case 6:
                C0865f c0865f = (C0865f) this.f2c;
                IBinder iBinder = (IBinder) this.f3d;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(C0865f.f550v);
                    if (iBinder.transact(1, parcelObtain, parcelObtain2, 0)) {
                        parcelObtain2.readException();
                        byte[] bArrCreateByteArray = parcelObtain2.createByteArray();
                        long j10 = parcelObtain2.readLong();
                        if (bArrCreateByteArray != null && bArrCreateByteArray.length != 0) {
                            if (j10 != c0865f.f561i) {
                                c0865f.f560h = bArrCreateByteArray;
                                c0865f.f561i = j10;
                                long j11 = c0865f.f563k + 1;
                                c0865f.f563k = j11;
                                parcel = parcelObtain;
                                if (j11 % 10 == 0) {
                                    try {
                                        try {
                                            Log.i(AbstractC1387m.m2421h(new byte[]{51, -25, -54, 19, 118, -61, 15, 3, 27, -4, -62}, new byte[]{126, -114, -92, 122, 59, -94, ByteCompanionObject.MAX_VALUE, 83}), AbstractC1387m.m2421h(new byte[]{-101, -48, -115, -21, -23, 59, -102, -100, -117, -40, -114, -22, -79}, new byte[]{-7, -71, -29, -113, -116, 73, -70, -6}) + j11 + AbstractC1387m.m2421h(new byte[]{50, -7, -9, 114, 44, 123, -86}, new byte[]{18, -104, -112, 23, 97, 8, -105, -17}) + Math.max(0L, SystemClock.elapsedRealtime() - j10) + AbstractC1387m.m2421h(new byte[]{105, 42, -66, -93, 21, -5, 1}, new byte[]{73, 72, -57, -41, 112, -120, 60, 43}) + bArrCreateByteArray.length);
                                        } catch (Throwable th) {
                                            th = th;
                                            parcelObtain2.recycle();
                                            parcel.recycle();
                                            c0865f.f556d.set(false);
                                            throw th;
                                        }
                                    } catch (Exception e) {
                                        e = e;
                                        Log.w(C0865f.f547s, AbstractC1387m.m2421h(new byte[]{10, -97, 40, -81, 27, -114, -66, 55, 48, -47, 59, -88, 22, -113, -66, 46, 54, -97, 32, -32, 26, -118, -18, 99, 57, -125, 40, -96, 18}, new byte[]{95, -15, 73, -51, 119, -21, -98, 67}), e);
                                        break;
                                    }
                                }
                                Iterator it = c0865f.f557e.iterator();
                                while (it.hasNext()) {
                                    try {
                                        ((C0877r) ((InterfaceC0864e) it.next())).m993k(bArrCreateByteArray, j10);
                                    } catch (RuntimeException e6) {
                                        Log.w(C0865f.f547s, AbstractC1387m.m2421h(new byte[]{-28, -9, 58, 1, 126, 27, 22, 54, -119, -14, Base64.padSymbol, 27, 39, 19, 25, 35, -37, -66, 38, 13, 57, 19, 20, 50, -52, -6, 116, 14, 33, 23, 26, 35}, new byte[]{-87, -98, 84, 104, 83, 118, 119, 70}), e6);
                                    }
                                    break;
                                }
                            }
                            Log.w(C0865f.f547s, AbstractC1387m.m2421h(new byte[]{10, -97, 40, -81, 27, -114, -66, 55, 48, -47, 59, -88, 22, -113, -66, 46, 54, -97, 32, -32, 26, -118, -18, 99, 57, -125, 40, -96, 18}, new byte[]{95, -15, 73, -51, 119, -21, -98, 67}), e);
                            break;
                        } else {
                            parcel = parcelObtain;
                        }
                        parcelObtain2.recycle();
                        parcel.recycle();
                        c0865f.f556d.set(false);
                        return;
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Exception e10) {
                    e = e10;
                    parcel = parcelObtain;
                } catch (Throwable th2) {
                    th = th2;
                    parcel = parcelObtain;
                    parcelObtain2.recycle();
                    parcel.recycle();
                    c0865f.f556d.set(false);
                    throw th;
                }
                c0865f.f556d.set(false);
                return;
            case 7:
                C0871l c0871l = (C0871l) this.f2c;
                String str = (String) this.f3d;
                Set set = c0871l.f599e;
                try {
                    jSONArrayM972v = c0871l.m972v();
                    try {
                        c0871l.m967K(str, AbstractC1387m.m2421h(new byte[]{-84, -118, -127, 62, 99, -29, -95}, new byte[]{-51, -23, -11, 87, 12, -115, -46, -92}), jSONArrayM972v);
                        jSONArray = jSONArrayM972v;
                    } catch (Exception e11) {
                        e = e11;
                        jSONArray = jSONArrayM972v;
                        c0871l.m968L(str, AbstractC1387m.m2421h(new byte[]{59, 107, 9, -90, -86, -125, 45}, new byte[]{90, 8, 125, -49, -59, -19, 94, -40}), new JSONArray(), false, true, e.getMessage());
                    }
                } catch (Exception e12) {
                    e = e12;
                    jSONArrayM972v = null;
                }
                try {
                    c0871l.m967K(str, AbstractC1387m.m2421h(new byte[]{-105, 25, 44, -29}, new byte[]{-10, 105, 92, -112, -115, -84, -22, -106}), C0871l.m934A(false));
                    break;
                } catch (Exception e13) {
                    c0871l.m968L(str, AbstractC1387m.m2421h(new byte[]{16, -76, 62, 9}, new byte[]{113, -60, 78, 122, 104, 89, -62, 19}), new JSONArray(), false, true, e13.getMessage());
                }
                try {
                    c0871l.m967K(str, AbstractC1387m.m2421h(new byte[]{29, 74, -26, -76, 108, 76}, new byte[]{110, 58, -118, -35, 24, 63, 15, -97}), c0871l.m973x());
                    break;
                } catch (Exception e14) {
                    c0871l.m968L(str, AbstractC1387m.m2421h(new byte[]{-83, 20, 101, 18, 37, 122}, new byte[]{-34, 100, 9, 123, 81, 9, 14, -101}), new JSONArray(), false, true, e14.getMessage());
                }
                if (jSONArray != null) {
                    try {
                        c0871l.m967K(str, AbstractC1387m.m2421h(new byte[]{-66, -25, -82, -8, 77, 102, 71, 70, -80, -22, -87}, new byte[]{-33, -124, -38, -111, 34, 8, 14, 37}), C0871l.m963w(jSONArray));
                    } catch (Exception e15) {
                        c0871l.m968L(str, AbstractC1387m.m2421h(new byte[]{-90, -19, -53, 68, 124, -56, -98, 71, -88, -32, -52}, new byte[]{-57, -114, -65, 45, 19, -90, -41, 36}), new JSONArray(), false, true, e15.getMessage());
                    }
                    break;
                }
                try {
                    c0871l.m967K(str, AbstractC1387m.m2421h(new byte[]{-119, -41, 19, 81, -16, -72, -18, -56}, new byte[]{-24, -89, 99, 24, -109, -41, ByteCompanionObject.MIN_VALUE, -69}), C0871l.m934A(true));
                    strM2421h = AbstractC1387m.m2421h(new byte[]{-109, -14, -44, -106}, new byte[]{-9, -99, -70, -13, -24, -15, 65, 1});
                    jSONArray2 = new JSONArray();
                } catch (Exception e16) {
                    c0871l.m968L(str, AbstractC1387m.m2421h(new byte[]{114, -37, 80, -31, 112, -36, -127, 100}, new byte[]{19, -85, 32, -88, 19, -77, -17, 23}), new JSONArray(), false, true, e16.getMessage());
                    strM2421h = AbstractC1387m.m2421h(new byte[]{-55, -89, 66, 16}, new byte[]{-83, -56, 44, 117, -80, -96, 28, -107});
                    jSONArray2 = new JSONArray();
                } finally {
                    c0871l.m968L(str, AbstractC1387m.m2421h(new byte[]{11, 11, -97, 77}, new byte[]{111, 100, -15, 40, -106, 29, -35, 15}), new JSONArray(), false, true, null);
                    set.remove(str);
                }
                c0871l.m968L(str, strM2421h, jSONArray2, false, true, null);
                return;
            case 8:
                C0877r c0877r = (C0877r) this.f2c;
                C3129a c3129a = (C3129a) this.f3d;
                c0877r.getClass();
                Bitmap bitmap = c3129a.f8951e;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-27, -52, -49, 24, 120, 123, 66, 87}, new byte[]{-75, -96, -82, 97, 43, 15, 35, 35}), c3129a.f8947a.name());
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-101, -64, 111, 39, -43, 95, -45, 37}, new byte[]{-56, -81, 1, 64, -101, 62, -66, 64}), c3129a.f8948b);
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{73, 3, 57, -70, -11, 13, -70, -107, 105, 24}, new byte[]{26, 108, 87, -35, -76, ByteCompanionObject.MAX_VALUE, -50, -4}), c3129a.f8949c);
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-9, 24, -90, -62, 16, 39, 33, -77, -55}, new byte[]{-92, 119, -56, -91, 81, 75, 67, -58}), c3129a.f8950d);
                    if (bitmap != null) {
                        int generationId = bitmap.getGenerationId();
                        if (!c0877r.f640r || generationId != c0877r.f639q) {
                            String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-38, -83, 34, -75, -100, 120, 99, 111, -28, -110, 37, -79, -87, 97, 115, ByteCompanionObject.MAX_VALUE}, new byte[]{-119, -62, 76, -46, -35, 20, 1, 26});
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            bitmap.compress(Bitmap.CompressFormat.PNG, 30, byteArrayOutputStream);
                            jSONObject.put(strM2421h2, android.util.Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0));
                            c0877r.f639q = generationId;
                            c0877r.f640r = true;
                        }
                    } else if (c0877r.f640r) {
                        jSONObject.put(AbstractC1387m.m2421h(new byte[]{44, 93, -62, 119, -47, -117, 50, -103, 18, 98, -59, 115, -28, -110, 34, -119}, new byte[]{ByteCompanionObject.MAX_VALUE, 50, -84, 16, -112, -25, 80, -20}), "");
                        c0877r.f639q = Integer.MIN_VALUE;
                        c0877r.f640r = false;
                    }
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{87, -38, 6, 50, 40}, new byte[]{3, -88, 118, 93, 91, -127, 5, -31}), c3129a.f8952f);
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{48, 1, -51, 11, -75}, new byte[]{100, 115, -87, 126, -57, ByteCompanionObject.MAX_VALUE, 63, 122}), c3129a.f8953g);
                    c0877r.mo988e(AbstractC1387m.m2421h(new byte[]{-14, -117, -66, 70, 20, -54, -8, 15, -16}, new byte[]{-97, -2, -51, 47, 119, -125, -106, 105}), jSONObject.toString());
                    return;
                } catch (Exception unused2) {
                    return;
                }
            case 9:
                C0877r c0877r2 = (C0877r) this.f2c;
                String str2 = (String) this.f3d;
                try {
                    WebView webView = c0877r2.f625c;
                    if (webView != null) {
                        webView.evaluateJavascript(str2, null);
                        return;
                    }
                    return;
                } catch (Exception unused3) {
                    return;
                }
            case 10:
                C3105c c3105c = (C3105c) this.f2c;
                C0905a c0905a = (C0905a) this.f3d;
                C3757m c3757m = c0905a.f700a;
                C0914j c0914j = (C0914j) c3105c.f8867c;
                CaptureActivity captureActivity = c0914j.f740a;
                if (c0914j.f743d) {
                    C0926v c0926v = c0905a.f701b;
                    C0923s c0923s = c0926v.f779a;
                    int i11 = c0926v.f781c;
                    Rect rect = new Rect(0, 0, c0923s.f773a, c0923s.f774b);
                    YuvImage yuvImage = new YuvImage(c0923s.f775c, c0926v.f780b, c0923s.f773a, c0923s.f774b, null);
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    yuvImage.compressToJpeg(rect, 90, byteArrayOutputStream2);
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = 2;
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
                    if (i11 != 0) {
                        Matrix matrix = new Matrix();
                        matrix.postRotate(i11);
                        bitmapDecodeByteArray = Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), matrix, false);
                    }
                    try {
                        File fileCreateTempFile = File.createTempFile("barcodeimage", ".jpg", captureActivity.getCacheDir());
                        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                        bitmapDecodeByteArray.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                        fileOutputStream.close();
                        absolutePath = fileCreateTempFile.getAbsolutePath();
                    } catch (IOException e17) {
                        Log.w("j", "Unable to create temporary file and store bitmap! " + e17);
                        absolutePath = null;
                    }
                    break;
                } else {
                    absolutePath = null;
                }
                Intent intent = new Intent("com.google.zxing.client.android.SCAN");
                intent.addFlags(524288);
                intent.putExtra("SCAN_RESULT", c3757m.f11198a);
                intent.putExtra("SCAN_RESULT_FORMAT", c3757m.f11201d.toString());
                byte[] bArr = c3757m.f11199b;
                if (bArr != null && bArr.length > 0) {
                    intent.putExtra("SCAN_RESULT_BYTES", bArr);
                }
                Map map = c3757m.f11202e;
                if (map != null) {
                    EnumC3758n enumC3758n = EnumC3758n.f11209h;
                    if (map.containsKey(enumC3758n)) {
                        intent.putExtra("SCAN_RESULT_UPC_EAN_EXTENSION", map.get(enumC3758n).toString());
                    }
                    Number number = (Number) map.get(EnumC3758n.f11203b);
                    if (number != null) {
                        intent.putExtra("SCAN_RESULT_ORIENTATION", number.intValue());
                    }
                    String str3 = (String) map.get(EnumC3758n.f11205d);
                    if (str3 != null) {
                        intent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", str3);
                    }
                    Iterable iterable = (Iterable) map.get(EnumC3758n.f11204c);
                    if (iterable != null) {
                        Iterator it2 = iterable.iterator();
                        while (it2.hasNext()) {
                            intent.putExtra("SCAN_RESULT_BYTE_SEGMENTS_" + i10, (byte[]) it2.next());
                            i10++;
                        }
                    }
                }
                if (absolutePath != null) {
                    intent.putExtra("SCAN_RESULT_IMAGE_PATH", absolutePath);
                }
                captureActivity.setResult(-1, intent);
                c0914j.m1050a();
                return;
            case 11:
                FragmentStrictMode.handlePolicyViolation$lambda$0((FragmentStrictMode.Policy) this.f2c, (Violation) this.f3d);
                return;
            case 12:
                FragmentStrictMode.handlePolicyViolation$lambda$1((String) this.f2c, (Violation) this.f3d);
                return;
            case 13:
                m27a();
                return;
            case 14:
                APInAct aPInAct = (APInAct) this.f2c;
                String str4 = (String) this.f3d;
                TextView textView = aPInAct.f1204b;
                if (textView != null) {
                    textView.setText(str4);
                    return;
                }
                return;
            case 15:
                m28b();
                return;
            case 16:
                ((MainActivity) this.f2c).f1343X0.setColorFilter((ColorMatrixColorFilter) this.f3d);
                return;
            case 17:
                AsyncTaskC1379k1 asyncTaskC1379k1 = (AsyncTaskC1379k1) this.f2c;
                AlertDialog alertDialog = (AlertDialog) this.f3d;
                MainActivity mainActivity = asyncTaskC1379k1.f3291b;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed() || !alertDialog.isShowing()) {
                    return;
                }
                alertDialog.dismiss();
                return;
            case 18:
                ModernMainActivity modernMainActivity = (ModernMainActivity) this.f2c;
                FlexboxLayout flexboxLayout = (FlexboxLayout) this.f3d;
                String str5 = ModernMainActivity.f1436B1;
                modernMainActivity.m1470Z(flexboxLayout);
                return;
            case 19:
                C1428u1 c1428u1 = (C1428u1) this.f2c;
                View view = (View) this.f3d;
                c1428u1.f3435g = Boolean.FALSE;
                c1428u1.f3439k = view.getAlpha();
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, AbstractC1387m.m2421h(new byte[]{-33, 103, 112, -33, 76}, new byte[]{-66, 11, 0, -73, 45, -114, -92, -79}), 0.0f, c1428u1.f3439k, 0.0f);
                c1428u1.f3438j = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(1500);
                c1428u1.f3438j.setRepeatCount(-1);
                c1428u1.f3438j.setRepeatMode(2);
                c1428u1.f3445q.post(new RunnableC0003a(20, c1428u1, c1428u1.f3438j));
                return;
            case 20:
                m29c();
                return;
            case 21:
                m30d();
                return;
            case 22:
                m31e();
                return;
            case 23:
                m32f();
                return;
            case 24:
                m33g();
                return;
            case 25:
                m34h();
                return;
            case 26:
                m35i();
                return;
            case 27:
                m36j();
                return;
            case 28:
                m37k();
                return;
            default:
                ((C1360g2) this.f2c).f3239b.setText((String) this.f3d);
                return;
        }
    }

    public /* synthetic */ RunnableC0003a(int i10, Object obj, Object obj2) {
        this.f1b = i10;
        this.f2c = obj;
        this.f3d = obj2;
    }
}
