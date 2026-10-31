package a1;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Bitmap$CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory$Options;
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
import android.os.AsyncTask$Status;
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
import android.view.WindowManager$LayoutParams;
import android.view.accessibility.AccessibilityNodeInfo;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.core.content.res.ResourcesCompat$FontCallback;
import androidx.fragment.app.h;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.FragmentStrictMode$Policy;
import androidx.fragment.app.strictmode.Violation;
import androidx.lifecycle.DispatchQueue;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import androidx.window.embedding.ExtensionEmbeddingBackend$SplitListenerWrapper;
import androidx.window.layout.SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;
import androidx.window.layout.WindowLayoutInfo;
import b1.r;
import com.example.navistart.APInAct;
import com.example.navistart.LocServ;
import com.example.navistart.MainActivity;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.MyA11yService;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.NLService;
import com.example.navistart.Notik;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.cores.HUDMassageObj$AradarSenderType;
import com.example.navistart.cores.HUDMassageObj$HudSenderType;
import com.google.android.flexbox.FlexboxLayout;
import com.google.protobuf.q;
import com.journeyapps.barcodescanner.CaptureActivity;
import com.woha.pogoda.WeatherService;
import e0.d0;
import e0.g2;
import e0.h1;
import e0.k1;
import e0.l3;
import e0.m;
import e0.n3;
import e0.p3;
import e0.u1;
import e0.v;
import e0.v0;
import e0.w;
import e0.w1;
import e0.x1;
import e0.z;
import g0.e;
import h0.b;
import i7.g;
import i7.j;
import i7.k;
import i7.l;
import i7.n;
import i7.s;
import i7.x;
import j1.i;
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
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import n0.f;
import org.json.JSONArray;
import org.json.JSONObject;
import r5.c;
import ru.transfer.MessageData;
import v1.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(MyA11yService myA11yService, List list, String str) {
        this.f4b = 24;
        this.c = list;
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void a() {
        APInAct aPInAct = (APInAct) this.c;
        ArrayList arrayList = (ArrayList) this.d;
        String str = APInAct.f628f;
        d.a().b().a(aPInAct.getResources().getString(2131952041));
        d.a().b().f5508b.postValue(Boolean.FALSE);
        if (arrayList == null || (arrayList.isEmpty() && !aPInAct.s().booleanValue())) {
            d.a().b().a(aPInAct.getResources().getString(2131952038));
            return;
        }
        try {
            if (!aPInAct.s().booleanValue()) {
                d.a().b().a(aPInAct.getResources().getString(2131952038));
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                arrayList2.add(aPInAct.t((Uri) obj));
            }
            Log.d(APInAct.f628f, arrayList2.toString());
            u0.a aVarO = b.o();
            String strH = m.h(new byte[]{40, -81, 49, -23, -10, 34, 121, -92, 40, -81, 49, -9, -18, 34, 122, -119, 15, -117, 34, -12, -6, 4}, new byte[]{91, -37, 80, -101, -126, 125, 48, -54});
            b.a();
            if (!aVarO.loadBoolean(strH, b.g().c())) {
                aPInAct.u(arrayList2);
            } else {
                new Handler(Looper.getMainLooper()).post(new e0.b(aPInAct, 0));
                b.a().j().ip(arrayList2);
            }
        } catch (Exception unused) {
            d.a().b().a(aPInAct.getResources().getString(2131952037));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r8v12, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r8v16, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r8v19, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r8v48, resolved type: boolean */
    /* JADX WARN: Code duplicated, block: B:111:0x042a A[LOOP:3: B:90:0x02a8->B:111:0x042a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:162:0x061d A[Catch: Exception -> 0x0661, TryCatch #2 {Exception -> 0x0661, blocks: (B:160:0x060e, B:162:0x061d, B:163:0x0620, B:165:0x0644, B:167:0x064e), top: B:231:0x060e }] */
    /* JADX WARN: Code duplicated, block: B:165:0x0644 A[Catch: Exception -> 0x0661, TryCatch #2 {Exception -> 0x0661, blocks: (B:160:0x060e, B:162:0x061d, B:163:0x0620, B:165:0x0644, B:167:0x064e), top: B:231:0x060e }] */
    /* JADX WARN: Code duplicated, block: B:241:0x0661 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x0446 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private final void b() throws Throwable {
        i7.m mVar;
        Location location;
        i7.m mVar2;
        int i9;
        Throwable th;
        Location location2;
        i7.m mVar3;
        ArrayList arrayList;
        int i10;
        boolean z8;
        int i11;
        Deque deque;
        double d;
        ArrayList arrayList2;
        j jVar;
        h1 h1Var;
        Location location3;
        LocServ locServ = (LocServ) this.c;
        Location location4 = (Location) this.d;
        h hVar = LocServ.f674h;
        int i12 = 0;
        if (b.o().loadBoolean(m.h(new byte[]{80, -120, -26, 28, -100, -77, -120, 72, 113, -100, -62, 26, -116, -104, -76, 76, 119, -116, -22, 23, -97, -126, -72, 110, 83, -85}, new byte[]{3, -8, -125, 121, -8, -15, -25, 41}), false)) {
            d.a().d().f5511a.postValue(Integer.valueOf((int) (location4.getSpeed() * 3.6f)));
        }
        locServ.f682f = System.currentTimeMillis();
        WeatherService.f1625g = location4;
        Location location5 = WeatherService.f1629k;
        Throwable th2 = null;
        if (location5 == null) {
            WeatherService.f1629k = location4;
        } else if (a.a.b(location5.getLatitude(), WeatherService.f1629k.getLongitude(), location4.getLatitude(), location4.getLongitude()) > 15000.0d) {
            if (b.o().loadBoolean(m.h(new byte[]{110, -88, -21, -51, -10, -24, -125, 57, 124, ByteCompanionObject.MIN_VALUE, -61, -44, -3, -24, -77, 50, 115, -80, -46, -37}, new byte[]{29, -33, -76, -67, -103, -113, -20, 93}), false) && !WeatherService.b().equals(f.f3844f.name()) && (location3 = WeatherService.f1625g) != null) {
                WeatherService.d(location3.getLatitude(), location3.getLongitude(), null);
            }
            WeatherService.f1629k = location4;
        }
        if (!LocServ.f680n.booleanValue() || (mVar = locServ.d) == null) {
            return;
        }
        float f8 = locServ.e;
        g gVar = mVar.e;
        gVar.f2679g.post(new i7.f(gVar, f8, 0));
        try {
            b.a();
            k1.a aVarP = b.p();
            if (aVarP != null) {
                switch (aVarP.f3156a) {
                    case 0:
                        v0.h hVar2 = SpeedBoardService.f826i;
                        if (hVar2 != null) {
                            hVar2.e(f8);
                        }
                        v0.h hVar3 = SpeedBoardService.f827j;
                        if (hVar3 != null) {
                            hVar3.e(f8);
                        }
                        break;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        break;
                    case 5:
                        v0.h hVar4 = SpeedBoardService.f826i;
                        if (hVar4 != null) {
                            hVar4.e(f8);
                        }
                        v0.h hVar5 = SpeedBoardService.f827j;
                        if (hVar5 != null) {
                            hVar5.e(f8);
                        }
                        break;
                    default:
                        v0.h hVar6 = SpeedBoardService.f826i;
                        if (hVar6 != null) {
                            hVar6.e(f8);
                        }
                        v0.h hVar7 = SpeedBoardService.f827j;
                        if (hVar7 != null) {
                            hVar7.e(f8);
                        }
                        break;
                }
            }
        } catch (Exception unused) {
        }
        if (location4.getAccuracy() < 1000.0f) {
            mVar.f2700f.getClass();
            location4.getSpeed();
            ArrayList arrayList3 = mVar.f2700f.f2690b;
            if (arrayList3.size() >= 4) {
                arrayList3.remove(0);
            }
            arrayList3.add(location4);
            double degrees = 0.0d;
            if (arrayList3.size() > 1) {
                if (arrayList3 == null || arrayList3.size() < 2) {
                    i.k(m.h(new byte[]{29, 44, 10, -8, 60, 7, -117, 92, 77, 104, 106, -110, 108, 89, 44, 93, 120, 105, 88, -109, 93, -88, 123, 48, 29, 8, 10, -4, 60, 8, 123, Base64.padSymbol, 29, 10, 10, -8, Base64.padSymbol, Base64.padSymbol, 123, 48, 29, 0, 11, -52, -51, 89, 41, 92, 77, 104, 111, -109, 92, 89, 40, 93, 120, 105, 88, -110, 108, 89, 36, -83, 29, 2, 10, -13, Base64.padSymbol, 50, -117, 93, 113, 104, 98, -109, 80, 88, 19, 93, 113, 105, 89, -109, 81, -88, 123, 57, 29, 10, 10, -10, -51, 89, 41, 93, 115, 105, 93, -109, 87, 88, 19, -93}, new byte[]{-51, -72, -38, 67, -19, -120, -85, -115}));
                    return;
                }
                int i13 = 0;
                double dSin = 0.0d;
                while (i13 < arrayList3.size() - 1) {
                    Location location6 = (Location) arrayList3.get(i13);
                    i13++;
                    Location location7 = (Location) arrayList3.get(i13);
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
            mVar.d = degrees;
            long jLoadLong = b.o().loadLong(m.h(new byte[]{-2, 12, 114, 112, 94, 66, -42, 80, -50, 8, 71, 99, 106, 86, -45, 67, -2, 47}, new byte[]{-70, 109, 6, 17, 11, 50, -78, 49}), 0L);
            long time = new Date().getTime() - 604800000;
            if (j.f2691f.booleanValue()) {
                mVar.f2704j.execute(new l(jLoadLong, time));
            }
            if (i7.m.a().booleanValue() && jLoadLong <= time && (h1Var = mVar.f2702h) != null && h1Var.getStatus() != AsyncTask$Status.RUNNING) {
                mVar.f2702h = new h1(mVar);
                if (i7.m.a().booleanValue()) {
                    mVar.f2702h.execute(location4);
                }
            }
            if (i7.m.a().booleanValue()) {
                j jVar2 = mVar.f2701g;
                double d9 = mVar.f2699b;
                ArrayList arrayList4 = j.f2693h;
                if (j.f2692g == null) {
                    jVar2.getClass();
                    j.f2692g = location4;
                }
                SQLiteDatabase readableDatabase = jVar2.getReadableDatabase();
                ArrayList arrayList5 = new ArrayList();
                if (a.a.b(location4.getLatitude(), location4.getLongitude(), j.f2692g.getLatitude(), j.f2692g.getLongitude()) > jVar2.d || arrayList4.size() == 0) {
                    double latitude = location4.getLatitude();
                    double longitude = location4.getLongitude();
                    Cursor cursorRawQuery = readableDatabase.rawQuery(m.h(new byte[]{-26, 96, 104, -111, 98, 11, -76, 117, -107, 99, 118, -101, 108, ByteCompanionObject.MAX_VALUE, -64, 45, -44, 67, 66, -67, 66, 27, -11, 43, -44}, new byte[]{-75, 37, 36, -44, 33, 95, -108, 95}), null);
                    if (cursorRawQuery.moveToFirst()) {
                        while (true) {
                            byte[] bArr = new byte[1];
                            bArr[i12] = 16;
                            double d10 = cursorRawQuery.getDouble(cursorRawQuery.getColumnIndex(m.h(bArr, new byte[]{73, 67, 103, 0, -61, 106, 52, -60})));
                            byte[] bArr2 = new byte[1];
                            bArr2[i12] = -78;
                            double d11 = cursorRawQuery.getDouble(cursorRawQuery.getColumnIndex(m.h(bArr2, new byte[]{-22, -8, 62, -75, -57, -74, -5, 7})));
                            double dB = a.a.b(latitude, longitude, d10, d11);
                            i9 = i12;
                            d = d9;
                            th = th2;
                            ArrayList arrayList6 = arrayList5;
                            if (dB <= jVar2.c) {
                                int i14 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.h(new byte[]{-58, 114, Base64.padSymbol}, new byte[]{-113, 54, 101, -71, 93, -64, -64, 31})));
                                int i15 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.h(new byte[]{68, -28, -24, 22}, new byte[]{16, -67, -72, 83, -16, -41, -10, -57})));
                                int i16 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.h(new byte[]{16, 56, 2, -7, -116}, new byte[]{67, 104, 71, -68, -56, 77, 76, 94})));
                                jVar = jVar2;
                                int i17 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.h(new byte[]{-26, 115, 92, -97, 77, -27, 33}, new byte[]{-94, 58, 14, -53, 20, -75, 100, 68})));
                                int i18 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.h(new byte[]{-65, -93, 35, -8, -118, 37, -71, -37, -75}, new byte[]{-5, -22, 113, -67, -55, 113, -16, -108})));
                                location = location4;
                                int i19 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.h(new byte[]{-108, -51, 15, 38, 71, -109, 49, -71}, new byte[]{-48, -124, 92, 114, 6, -35, 114, -4})));
                                mVar2 = mVar;
                                int i20 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(m.h(new byte[]{-49, 38, 89, -39, -51}, new byte[]{-114, 104, 30, -107, -120, -70, -39, -124})));
                                x xVar = new x();
                                xVar.f2724a = i14;
                                xVar.f2725b = d10;
                                xVar.c = d11;
                                xVar.d = i15;
                                xVar.e = i16;
                                xVar.f2726f = i17;
                                xVar.f2727g = i18;
                                xVar.f2728h = i19;
                                xVar.f2729i = i20;
                                if ((((b.o().loadBoolean(m.h(new byte[]{14, 13, -49, 40, 66, 76, -123, -41, 24, 30, -63, 47, 73, 75}, new byte[]{93, 93, -118, 109, 6, 19, -58, -97}), true) && i15 == 1) || (b.o().loadBoolean(m.h(new byte[]{-26, -12, -58, Base64.padSymbol, -108, -34, 63, -125, -32, -18, -63, 42, -99, -44, 51, -119, -5, -23}, new byte[]{-76, -79, -126, 98, -40, -105, 120, -53}), true) && i15 == 3) || (b.o().loadBoolean(m.h(new byte[]{9, -79, 84, 114, 47, 109, -35, 75, 24, -70, 79, 116, 52, 124, -52, 73, 27, -69, 72}, new byte[]{89, -12, 16, 55, 124, 57, -113, 2}), true) && i15 == 11)) ? Boolean.TRUE : Boolean.FALSE).booleanValue()) {
                                    arrayList2 = arrayList6;
                                    arrayList2.add(xVar);
                                }
                                if (!cursorRawQuery.moveToNext()) {
                                    arrayList5 = arrayList2;
                                    d9 = d;
                                    i12 = i9;
                                    th2 = th;
                                    jVar2 = jVar;
                                    location4 = location;
                                    mVar = mVar2;
                                }
                            } else {
                                jVar = jVar2;
                                location = location4;
                                mVar2 = mVar;
                            }
                            arrayList2 = arrayList6;
                            if (!cursorRawQuery.moveToNext()) {
                                arrayList5 = arrayList2;
                                d9 = d;
                                i12 = i9;
                                th2 = th;
                                jVar2 = jVar;
                                location4 = location;
                                mVar = mVar2;
                            }
                        }
                    } else {
                        location = location4;
                        mVar2 = mVar;
                        i9 = 0;
                        th = null;
                        d = d9;
                        arrayList2 = arrayList5;
                    }
                    cursorRawQuery.close();
                    arrayList4.addAll(arrayList2);
                    j.f2692g = location;
                } else {
                    location = location4;
                    mVar2 = mVar;
                    i9 = 0;
                    th = null;
                    d = d9;
                    arrayList2 = arrayList5;
                }
                arrayList2.clear();
                int size = arrayList4.size();
                int i21 = i9;
                while (i21 < size) {
                    Object obj = arrayList4.get(i21);
                    i21++;
                    x xVar2 = (x) obj;
                    if (a.a.b(location.getLatitude(), location.getLongitude(), xVar2.f2725b, xVar2.c) <= d) {
                        arrayList2.add(xVar2);
                    }
                }
                i7.m.f2697k = arrayList2;
                String str = new SimpleDateFormat(m.h(new byte[]{17, 69, -81, 32, -64, 13, 64, -67}, new byte[]{89, 13, -107, 77, -83, 55, 51, -50}), Locale.getDefault()).format(new Date());
                s sVarC = d.a().c();
                StringBuilder sb = new StringBuilder();
                sb.append(m.h(new byte[]{-16, -88, -81, -48, 32, -27, 73, -78, -15, -68, -81, -42, 32, -29, 72, -113, -16, -127, 95}, new byte[]{32, 63, ByteCompanionObject.MAX_VALUE, 96, -16, 86, -104, 50}));
                sb.append(i7.m.f2697k.size());
                sVarC.d.postValue(q.l(new byte[]{-120, 24, 97, -22, 122, 74, 123, -38, 29, 24, 101, -21, 73, 75, 79, -38, 26, -24}, new byte[]{-88, -56, -33, 58, -53, -101, -15, 10}, sb, str));
            } else {
                location = location4;
                mVar2 = mVar;
                i9 = 0;
                th = null;
            }
            if (location.getSpeed() > 1.0f) {
                s sVarC2 = d.a().c();
                mVar3 = mVar2;
                float f9 = (float) mVar3.d;
                ArrayList arrayList7 = i7.m.f2697k;
                double d12 = mVar3.f2699b;
                n nVar = new n();
                location2 = location;
                nVar.f2705a = location2;
                nVar.f2706b = f9;
                nVar.c = arrayList7;
                nVar.d = d12;
                sVarC2.e.postValue(nVar);
            } else {
                location2 = location;
                mVar3 = mVar2;
            }
            ArrayList arrayList8 = i7.m.f2697k;
            int size2 = arrayList8.size();
            int i22 = i9;
            while (i22 < size2) {
                int i23 = i22 + 1;
                x xVar3 = (x) arrayList8.get(i22);
                i7.i iVar = mVar3.f2700f;
                double d13 = mVar3.d;
                iVar.getClass();
                double latitude2 = location2.getLatitude();
                double longitude2 = location2.getLongitude();
                double d14 = xVar3.f2725b;
                double d15 = xVar3.c;
                int speed = (int) (location2.getSpeed() * 3.6f);
                try {
                    if (speed < 30) {
                        arrayList = arrayList8;
                        i10 = size2;
                    } else {
                        double d16 = xVar3.f2727g;
                        int i24 = xVar3.f2726f;
                        arrayList = arrayList8;
                        i10 = size2;
                        double d17 = xVar3.f2729i;
                        double d18 = ((double) (speed < 90 ? ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION : 150)) + ((double) xVar3.f2728h);
                        float[] fArr = new float[1];
                        Location.distanceBetween(latitude2, longitude2, d14, d15, fArr);
                        if (fArr[i9] <= d18) {
                            if (i24 == 0) {
                                i11 = 1;
                            } else {
                                if (i7.i.a(i7.i.c(d14, d15, latitude2, longitude2), d16) <= d17 / 2.0d) {
                                    double dA = i7.i.a(d13, i7.i.c(latitude2, longitude2, d14, d15));
                                    int i25 = dA <= 30.0d ? 1 : i9;
                                    i11 = i25;
                                    if (i24 != 1) {
                                        if (i24 == 2 && (i25 != 0 || i7.i.a(dA, 180.0d) <= 30.0d)) {
                                            z8 = 1;
                                        }
                                    }
                                    a.a.b(location2.getLatitude(), location2.getLongitude(), xVar3.f2725b, xVar3.c);
                                    deque = (Deque) mVar3.c.getOrDefault(Integer.valueOf(xVar3.f2724a), new ArrayDeque());
                                    deque.addLast(Boolean.valueOf(z8));
                                    if (deque.size() > 10) {
                                        deque.removeFirst();
                                    }
                                    mVar3.c.put(Integer.valueOf(xVar3.f2724a), deque);
                                    if (deque.stream().filter(new k(i9)).count() < 4 && i7.m.a().booleanValue()) {
                                        i7.a aVar = new i7.a();
                                        aVar.f2667b = Double.MAX_VALUE;
                                        aVar.f2666a = xVar3;
                                        mVar3.e.b(aVar);
                                    }
                                    i22 = i23;
                                    arrayList8 = arrayList;
                                    size2 = i10;
                                    i9 = 0;
                                }
                                z8 = i9;
                                a.a.b(location2.getLatitude(), location2.getLongitude(), xVar3.f2725b, xVar3.c);
                                deque = (Deque) mVar3.c.getOrDefault(Integer.valueOf(xVar3.f2724a), new ArrayDeque());
                                deque.addLast(Boolean.valueOf(z8));
                                if (deque.size() > 10) {
                                    deque.removeFirst();
                                }
                                mVar3.c.put(Integer.valueOf(xVar3.f2724a), deque);
                                if (deque.stream().filter(new k(i9)).count() < 4) {
                                }
                                i22 = i23;
                                arrayList8 = arrayList;
                                size2 = i10;
                                i9 = 0;
                            }
                        }
                        z8 = i11;
                        a.a.b(location2.getLatitude(), location2.getLongitude(), xVar3.f2725b, xVar3.c);
                        deque = (Deque) mVar3.c.getOrDefault(Integer.valueOf(xVar3.f2724a), new ArrayDeque());
                        deque.addLast(Boolean.valueOf(z8));
                        if (deque.size() > 10) {
                            deque.removeFirst();
                        }
                        mVar3.c.put(Integer.valueOf(xVar3.f2724a), deque);
                        if (deque.stream().filter(new k(i9)).count() < 4) {
                        }
                        i22 = i23;
                        arrayList8 = arrayList;
                        size2 = i10;
                        i9 = 0;
                    }
                    deque.addLast(Boolean.valueOf(z8));
                    if (deque.size() > 10) {
                        deque.removeFirst();
                    }
                    mVar3.c.put(Integer.valueOf(xVar3.f2724a), deque);
                    if (deque.stream().filter(new k(i9)).count() < 4) {
                    }
                } catch (Exception unused2) {
                }
                i11 = i9;
                z8 = i11;
                a.a.b(location2.getLatitude(), location2.getLongitude(), xVar3.f2725b, xVar3.c);
                deque = (Deque) mVar3.c.getOrDefault(Integer.valueOf(xVar3.f2724a), new ArrayDeque());
                i22 = i23;
                arrayList8 = arrayList;
                size2 = i10;
                i9 = 0;
            }
            if (MainActivity.w() && mVar3.f2703i.booleanValue()) {
                throw th;
            }
            if (MainActivity.v(mVar3.f2698a) && mVar3.f2703i.booleanValue()) {
                throw th;
            }
            g gVar2 = mVar3.e;
            ArrayList arrayList9 = mVar3.f2700f.f2690b;
            gVar2.getClass();
            Location location8 = (Location) arrayList9.get(arrayList9.size() - 1);
            double latitude3 = location8.getLatitude();
            double longitude3 = location8.getLongitude();
            double speed2 = location8.getSpeed();
            gVar2.f2686n = System.currentTimeMillis();
            synchronized (gVar2.e) {
                try {
                    if (gVar2.f2678f.isEmpty() && g.a().booleanValue()) {
                        if (gVar2.f2684l) {
                            gVar2.c();
                            gVar2.f2684l = false;
                        }
                        gVar2.g();
                        if (MainActivity.w() && gVar2.f2681i.booleanValue()) {
                            throw th;
                        }
                        if (MainActivity.v(gVar2.d) && gVar2.f2681i.booleanValue()) {
                            throw th;
                        }
                        return;
                    }
                    gVar2.f2684l = true;
                    LinkedList linkedList = gVar2.f2678f;
                    ArrayList arrayList10 = new ArrayList(linkedList);
                    arrayList10.sort(Comparator.comparingDouble(new i7.b(gVar2, latitude3, longitude3)));
                    linkedList.clear();
                    linkedList.addAll(arrayList10);
                    i7.a aVar2 = (i7.a) gVar2.f2678f.peek();
                    if (aVar2 != null && g.a().booleanValue()) {
                        x xVar4 = aVar2.f2666a;
                        double dB2 = a.a.b(latitude3, longitude3, xVar4.f2725b, xVar4.c);
                        if (g.f(aVar2, dB2, speed2, arrayList9)) {
                            gVar2.f2678f.poll();
                        } else {
                            double d19 = aVar2.f2667b;
                            if (d19 < Double.MAX_VALUE && dB2 != d19) {
                                gVar2.f2679g.post(new i7.d(gVar2, aVar2.f2666a, dB2));
                            }
                            aVar2.f2667b = dB2;
                        }
                    }
                    if (gVar2.f2678f.isEmpty()) {
                        gVar2.c();
                        gVar2.g();
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void c() {
        u1 u1Var = (u1) this.c;
        ObjectAnimator objectAnimator = (ObjectAnimator) this.d;
        if (u1Var.f1966j == objectAnimator) {
            objectAnimator.start();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void d() {
        Bitmap bitmap;
        x1 x1Var = (x1) this.c;
        MediaMetadata mediaMetadata = (MediaMetadata) this.d;
        if (mediaMetadata != null) {
            bitmap = mediaMetadata.getBitmap(m.h(new byte[]{103, 76, -23, -69, 126, -89, -87, 117, 107, 71, -23, -96, 112, -32, -96, 62, 114, 67, -23, -88, 101, -81, -29, 26, 74, 96, -40, -124, 78, -113, -97, 15}, new byte[]{6, 34, -115, -55, 17, -50, -51, 91}));
            if (bitmap == null) {
                bitmap = mediaMetadata.getBitmap(m.h(new byte[]{24, 19, -75, -93, -41, -17, 88, 26, 20, 24, -75, -72, -39, -88, 81, 81, 13, 28, -75, -80, -52, -25, 18, 117, 43, 41}, new byte[]{121, 125, -47, -47, -72, -122, 60, 52}));
            }
            if (bitmap == null) {
                bitmap = mediaMetadata.getBitmap(m.h(new byte[]{57, 109, 111, 56, -103, 94, -104, -52, 53, 102, 111, 35, -105, 25, -111, -121, 44, 98, 111, 43, -126, 86, -46, -90, 17, 80, 91, 6, -73, 110, -93, -85, 27, 76, 69}, new byte[]{88, 3, 11, 74, -10, 55, -4, -30}));
            }
        } else {
            bitmap = null;
        }
        if (bitmap != null) {
            x1Var.e = bitmap;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void e() {
        x1 x1Var = (x1) this.c;
        MediaController mediaController = (MediaController) this.d;
        if (x1Var.f2001o) {
            x1Var.f2001o = false;
            try {
                mediaController.unregisterCallback(x1Var);
            } catch (Exception unused) {
            }
            x1.d(null);
            x1Var.f2001o = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void f() {
        Boolean boolValueOf;
        Bitmap bitmap;
        String str;
        String str2;
        x1 x1Var = (x1) this.c;
        PlaybackState playbackState = (PlaybackState) this.d;
        v vVar = x1Var.f1998l;
        b.a();
        if (playbackState != null) {
            int state = playbackState.getState();
            if (state == 2) {
                x1Var.f1990a = n0.g.c;
            } else if (state == 3) {
                x1Var.f1990a = n0.g.f3847b;
                x1Var.f1992f = Long.valueOf(playbackState.getPosition());
                if (x1Var.f1994h.isMusicActive()) {
                    StringBuilder sb = new StringBuilder();
                    u0.a aVarO = b.o();
                    byte[] bArr = m.f1896j;
                    String[] strArr = p3.f1924a;
                    String str3 = "";
                    q.s(bArr, aVarO, "", sb);
                    q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                    String strG = q.g(sb, x1.f1989q);
                    u0.a aVarO2 = b.o();
                    byte[] bArr2 = m.f1892f;
                    if (q.w(bArr2, aVarO2, "", strG)) {
                        b.a();
                        boolValueOf = Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{-123}, new byte[]{-75, -62, 91, -46, -10, -83, -3, -3}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0))));
                    } else {
                        boolValueOf = Boolean.FALSE;
                    }
                    if (boolValueOf.booleanValue()) {
                        try {
                            MediaController mediaControllerA = x1Var.a();
                            if (mediaControllerA != null) {
                                MediaMetadata metadata = mediaControllerA.getMetadata();
                                if (metadata != null) {
                                    String[] strArrSplit = String.valueOf(metadata.getDescription()).split(m.h(new byte[]{-120, 71}, new byte[]{-92, 103, -106, 69, -103, -125, 106, -41}));
                                    str = "";
                                    str2 = str;
                                    for (int i9 = 0; i9 < strArrSplit.length - 1; i9++) {
                                        if (i9 == 0 && !m.h(new byte[]{-84, -59, 97, -85}, new byte[]{-62, -80, 13, -57, 116, -125, 94, 7}).equals(strArrSplit[0])) {
                                            str3 = strArrSplit[0];
                                        }
                                        if (i9 == 1 && !m.h(new byte[]{80, 77, 14, 73}, new byte[]{62, 56, 98, 37, 87, -88, -42, -98}).equals(strArrSplit[1])) {
                                            str = strArrSplit[1];
                                        }
                                        if (i9 == 2 && !m.h(new byte[]{-15, -14, 67, -67}, new byte[]{-97, -121, 47, -47, 79, -69, -57, -115}).equals(strArrSplit[2])) {
                                            str2 = strArrSplit[2];
                                        }
                                    }
                                    bitmap = metadata.getBitmap(m.h(new byte[]{-50, -62, 34, -61, 49, -32, -65, 107, -62, -55, 34, -40, 63, -89, -74, 32, -37, -51, 34, -48, 42, -24, -11, 4, -29, -18, 19, -4, 1, -56, -119, 17}, new byte[]{-81, -84, 70, -79, 94, -119, -37, 69}));
                                    if (bitmap == null) {
                                        bitmap = metadata.getBitmap(m.h(new byte[]{83, 114, -9, -120, 4, -36, -41, -123, 95, 121, -9, -109, 10, -101, -34, -50, 70, 125, -9, -101, 31, -44, -99, -22, 96, 72}, new byte[]{50, 28, -109, -6, 107, -75, -77, -85}));
                                    }
                                    if (bitmap == null) {
                                        bitmap = metadata.getBitmap(m.h(new byte[]{-118, 83, ByteCompanionObject.MAX_VALUE, 30, 76, -15, 60, 44, -122, 88, ByteCompanionObject.MAX_VALUE, 5, 66, -74, 53, 103, -97, 92, ByteCompanionObject.MAX_VALUE, 13, 87, -7, 118, 70, -94, 110, 75, 32, 98, -63, 7, 75, -88, 114, 85}, new byte[]{-21, Base64.padSymbol, 27, 108, 35, -104, 88, 2}));
                                    }
                                    x1Var.f1993g = Long.valueOf(metadata.getLong(m.h(new byte[]{-71, 10, -19, -118, 17, 118, 35, 50, -75, 1, -19, -111, 31, 49, 42, 121, -84, 5, -19, -103, 10, 126, 105, 88, -115, 54, -56, -84, 55, 80, 9}, new byte[]{-40, 100, -119, -8, 126, 31, 71, 28})));
                                } else {
                                    bitmap = null;
                                    str = "";
                                    str2 = str;
                                }
                                x1Var.f1991b = str3;
                                x1Var.c = str;
                                x1Var.d = str2;
                                x1Var.e = bitmap;
                                x1.b(str3, str, str2, bitmap);
                                d.a().d().f5513f.postValue(new s0.a(x1Var.f1990a, x1Var.f1991b, x1Var.c, x1Var.d, x1Var.e, x1Var.f1992f, x1Var.f1993g));
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
                vVar.execute(new w1((int) Math.max(-2147483648L, Math.min(2147483647L, x1Var.f1992f.longValue())), (int) Math.max(-2147483648L, Math.min(2147483647L, x1Var.f1993g.longValue()))));
                vVar.execute(new v0(1));
            }
        }
        d.a().d().f5513f.postValue(new s0.a(x1Var.f1990a, x1Var.f1991b, x1Var.c, x1Var.d, x1Var.e, x1Var.f1992f, x1Var.f1993g));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void g() {
        List list = (List) this.c;
        String str = (String) this.d;
        MyA11yService myA11yService = MyA11yService.c;
        MyA11yService.c((AccessibilityNodeInfo) list.get(0), str.concat(m.h(new byte[]{-104, 126, -65, 70, 120, 69, -23, -74, -45}, new byte[]{-72, 23, -37, 25, 27, 41, ByteCompanionObject.MIN_VALUE, -43})));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void h() {
        Runnable runnable = (Runnable) this.c;
        String str = (String) this.d;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.c;
        runnable.run();
        MyCarReceiver.d(str.concat(m.h(new byte[]{-8, 74, 89, -9, 6, -23}, new byte[]{-89, 30, 16, -70, 67, -69, -75, -17})), Boolean.FALSE);
        b.w(str.concat(m.h(new byte[]{-56, 39, 99, -25, -67, -62, 4, -52, -47}, new byte[]{-105, 83, 10, -118, -40, -99, 75, -118})), ColorText.RED);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:99:0x0429  */
    private final void i() {
        int i9;
        char c;
        String str;
        String strReplace;
        NLService nLService = (NLService) this.c;
        StatusBarNotification statusBarNotification = (StatusBarNotification) this.d;
        ScheduledExecutorService scheduledExecutorService = NLService.e;
        if (MainActivity.w() || MainActivity.v(nLService.f792b) || MainActivity.v(nLService.f792b)) {
            throw null;
        }
        String packageName = statusBarNotification.getPackageName();
        Bundle bundle = statusBarNotification.getNotification().extras;
        d0.d(nLService);
        if (packageName.equals(m.h(new byte[]{-52, -49, 82, -85, -94, -94, 8, 78, -58, -108, 11, -73, -94, -72, 4, 78, -52, -54, 16, -89, -92, -91, 2}, new byte[]{-66, -70, 124, -46, -61, -52, 108, 43})) && NLService.a().booleanValue()) {
            d0.d(nLService);
            if (b.o().loadBoolean(m.h(new byte[]{10, 107, 80, -56, -91, -90, -12, -63, 24, 67, 120, -47, -82, -90, -60, -54, 23, 115, 105, -34}, new byte[]{121, 28, 15, -72, -54, -63, -101, -91}), false) && b.o().loadString(m.h(new byte[]{Base64.padSymbol, -63, 55, ByteCompanionObject.MIN_VALUE, 105, -53, 13, 115, 62, -34, 57, -127, 99, -49, 32, 91, 39, -43, 57, -79, 119, -36, 16}, new byte[]{78, -79, 94, -18, 7, -82, ByteCompanionObject.MAX_VALUE, 44}), f.values()[0].name()).equals(f.f3844f.name())) {
                Context context = nLService.f792b;
                l3 l3Var = new l3();
                l3Var.f1888a = context;
                l3Var.f1889b = packageName;
                try {
                    String[] strArrSplit = l3Var.a(statusBarNotification.getNotification(), m.h(new byte[]{43, 11, 111, 100, -62, 24, -24, -87, 49, 13, 116, 99, -5, 6, -30, -84, 34, 1, 111, 82, -56, 30, -24, -87, 49, 13, 116, 99}, new byte[]{69, 100, 27, 13, -92, 113, -117, -56})).split(m.h(new byte[]{35}, new byte[]{15, -105, 5, -18, 49, -48, 98, -71}));
                    str = strArrSplit.length > 1 ? strArrSplit[1] : strArrSplit[0];
                    try {
                        strReplace = l3Var.a(statusBarNotification.getNotification(), m.h(new byte[]{65, 16, 116, -123, 46, Base64.padSymbol, 40, 77, 91, 22, 111, -126, 23, 35, 34, 72, 72, 26, 116, -77, 60, 49, 38, 92, 74, 13, 97, -104, Base64.padSymbol, 38, 46}, new byte[]{47, ByteCompanionObject.MAX_VALUE, 0, -20, 72, 84, 75, 44})).replace(m.h(new byte[]{18, -10}, new byte[]{-48, 70, 114, 10, 103, -88, 46, -125}), "");
                    } catch (Exception unused) {
                        strReplace = "";
                    }
                } catch (Exception unused2) {
                    str = "";
                }
                WeatherService.g(new k7.b(str, strReplace, "", -1));
            }
        }
        d0.d(nLService);
        boolean zLoadBoolean = b.o().loadBoolean(m.h(new byte[]{114, 96, -96, -98, 24, -122, 104}, new byte[]{1, 20, -46, -5, 116, -19, 9, -26}), true);
        boolean zLoadBoolean2 = b.o().loadBoolean(m.h(new byte[]{126, -10, -87, 126, -83, 19, 22, -114, 108, -18, -73}, new byte[]{13, -126, -37, 27, -63, 120, 119, -47}), false);
        boolean zLoadBoolean3 = b.o().loadBoolean(m.h(new byte[]{-55, 10, 83, 42, -74, 4, -102, 74, -41, 31, 79, 16, -73, 29, -113, 103}, new byte[]{-70, 126, 33, 117, -62, 107, -22, 21}), true);
        if (packageName.equals(m.h(new byte[]{-123, 75, 107, -15, -124, -67, 100, -93, -115, 10, 85, -85, -97, -82, 103, -92, -121, 99, 86, -116}, new byte[]{-26, 36, 6, -33, -19, -53, 11, -49})) && zLoadBoolean && NLService.a().booleanValue()) {
            String string = bundle.getString(m.h(new byte[]{76, -98, -80, -105, 56, -22, 45, -21, 89, -103, -96, -119, 50}, new byte[]{45, -16, -44, -27, 87, -125, 73, -59}));
            Integer num = -1;
            if (zLoadBoolean2) {
                d0.d(nLService);
                if (string.contains(m.h(new byte[]{115, -6, -71, -94, -38, 0, 29, -83, 115, -64, -71, -102, -38, 48}, new byte[]{-93, 91, 105, 0, 10, -96, -51, 56})) || string.contains(m.h(new byte[]{28, -97, -12, -83, 15, -63, -78, -11, 28, -107}, new byte[]{-52, 3, 36, 14, -33, 90, 98, 90})) || string.contains(m.h(new byte[]{119, 76, 115, 94, 121, -67, 78, 8, 119, 118, 115, 94, 121, -69, 78, 6}, new byte[]{-89, -42, -93, -64, -87, 32, -98, -86})) || string.contains(m.h(new byte[]{33, -111, 66, 52, -103, 44, 96, -66, 33, -81, 66, 58}, new byte[]{-15, 14, -110, -86, 73, -73, -80, 32})) || string.contains(m.h(new byte[]{-76, -110, -110, 73, -26, -8, 53, 74, -76, -88, -110, 73}, new byte[]{100, 8, 66, -39, 54, 100, -27, -33})) || string.contains(m.h(new byte[]{-68, 95, 84, 34, -114, 16, -53, -91, -68, 92, 84, 34}, new byte[]{108, -56, -124, -78, 94, -79, 27, 53})) || string.contains(m.h(new byte[]{1, ByteCompanionObject.MIN_VALUE, -35, 122, -77, 38, 113, 14, -15, -49, -103, 52, -4, 87, 0}, new byte[]{-47, 31, 13, -28, 99, -121, -95, -84})) || string.contains(m.h(new byte[]{-64, 44, 12, 96, 62, 0, 1, 109, -64, 45, 12, 89, 62, 10}, new byte[]{16, -113, -36, -57, -18, -112, -47, -52})) || string.contains(m.h(new byte[]{23, 103, 83, -24, -112, -73, 26, -95, -25, 22, 24, -102, -40, -7, 87}, new byte[]{-57, -58, -125, 74, 64, 41, -54, 62}))) {
                    num = 14;
                } else if (string.contains(m.h(new byte[]{95, 21, -52, 67, -26, -20, -33, -42, 95, 31, -52, 65, -26, -40}, new byte[]{-113, -118, 28, -42, 54, 76, 15, 67})) || string.contains(m.h(new byte[]{122, 5, 82, 41, -15, -106, -65, -85, 122, 0, 82, 28, -15, -73, -65, -97, 122, 56}, new byte[]{-86, -102, -126, -68, 33, 54, 111, 62})) || string.contains(m.h(new byte[]{-100, -59, 16, 93, 20, 62, -122, -23, -100, -54, 16, 85, -22}, new byte[]{76, 88, -64, -56, -60, -98, 86, 119})) || string.contains(m.h(new byte[]{-78, -60, -73, -110, -21, 112, 116, 111, -78, -2, -73, -103, -21, 68}, new byte[]{98, 91, 103, 7, 59, -48, -92, -6})) || string.contains(m.h(new byte[]{119, -77, 120, -104, 122, -90, 81, -124, 119, -116, 120, -104, 122, -106}, new byte[]{-89, 44, -88, 6, -86, 52, -127, 26})) || string.contains(m.h(new byte[]{118, 117, -64, 112, 16, -33, 39, -25, 118, 66, -64, 117, 16, -18}, new byte[]{-90, -41, 16, -18, -64, 66, -9, 122})) || string.contains(m.h(new byte[]{-90, 117, -47, -4, 119, -83, 43, -6, -90, 118, -47, -3}, new byte[]{118, -21, 1, 99, -89, Base64.padSymbol, -5, 91})) || string.contains(m.h(new byte[]{64, -115, -92, 110, 108, 85, -72, 110, 15, -64, -41, 46, 33, 36, 12, 110, 50}, new byte[]{-112, 16, 116, -2, -68, -12, -106, -66})) || string.contains(m.h(new byte[]{-39, 80, 43, 46, -32, 97, 124, -41, -98, 30, 107, 95, -81, 19, -14}, new byte[]{9, -50, -5, -113, 48, -61, 82, 7})) || string.contains(m.h(new byte[]{-56, 121, 92, 14, -23, 63, 60, 40, -56, 123, 92, 11}, new byte[]{24, -26, -116, -107, 57, -81, -20, -118})) || string.contains(m.h(new byte[]{25, -115, -105, 3, 23, -49, 88, -9, 83, -49, -39, 70, 90, -66, -44, 9}, new byte[]{-55, 31, 71, -106, -57, 110, 118, 39})) || string.contains(m.h(new byte[]{42, -94, 34, 11, 45, -56, -12, -65, 42, -98, -46, 69, 96, 123, -12, -75, -44}, new byte[]{-6, 56, -14, -107, -3, 85, 36, 42}))) {
                    num = 16;
                } else if (string.contains(m.h(new byte[]{-35, -46, -69, 79, 97, 32, 45, 36, -35, -34}, new byte[]{13, 118, 107, -41, -79, -67, -3, -68}))) {
                    num = 14;
                }
            } else if (string.contains(m.h(new byte[]{-106, -85, 2, -118, 34, ByteCompanionObject.MIN_VALUE, 122, -78, -106, -111, 2, -78, 34, -80}, new byte[]{70, 10, -46, 40, -14, 32, -86, 39})) || string.contains(m.h(new byte[]{-77, -90, 99, 85, -114, 68, 82, 102, -77, -86}, new byte[]{99, 2, -77, -51, 94, -39, -126, -2})) || string.contains(m.h(new byte[]{66, -85, -1, -28, -74, 119, 83, -10, 66, -111, -1, -28, -74, 113, 83, -8}, new byte[]{-110, 49, 47, 122, 102, -22, -125, 84})) || string.contains(m.h(new byte[]{13, -89, -72, 53, -125, -45, -110, 20, 13, -103, -72, 59}, new byte[]{-35, 56, 104, -85, 83, 72, 66, -118})) || string.contains(m.h(new byte[]{86, 56, -4, 79, 17, 10, 49, 58, 86, 2, -4, 79}, new byte[]{-122, -94, 44, -33, -63, -106, -31, -81})) || string.contains(m.h(new byte[]{-103, 108, -71, -52, 66, 118, -62, -124, -103, 111, -71, -52}, new byte[]{73, -5, 105, 92, -110, -41, 18, 20})) || string.contains(m.h(new byte[]{-100, 117, -91, -104, -77, -75, 17, -72, 108, 58, -31, -42, -4, -60, 96}, new byte[]{76, -22, 117, 6, 99, 20, -63, 26})) || string.contains(m.h(new byte[]{-27, -70, -37, 86, -7, 64, 111, -67, -27, -69, -37, 111, -7, 74}, new byte[]{53, 25, 11, -15, 41, -48, -65, 28})) || string.contains(m.h(new byte[]{-38, -68, 108, -56, 36, 83, 103, 113, 42, -51, 39, -70, 108, 29, 42}, new byte[]{10, 29, -68, 106, -12, -51, -73, -18}))) {
                num = 14;
            }
            int iIntValue = num.intValue();
            if (iIntValue > 0) {
                nLService.c = packageName;
                String[] strArrSplit2 = string.split(" ");
                String[] strArrSplit3 = new String[0];
                int iIntValue2 = 0;
                for (int i10 = 0; i10 < strArrSplit2.length; i10++) {
                    if (strArrSplit2[i10].contains(m.h(new byte[]{-40, -108, -53, -93}, new byte[]{8, 46, 27, 31, -39, -58, -108, 31}))) {
                        i9 = 2;
                    } else {
                        i9 = 2;
                        if (strArrSplit2[i10].contains(m.h(new byte[]{-96, -127}, new byte[]{-53, -20, -97, 100, 115, -92, 62, -15}))) {
                        }
                    }
                    byte[] bArr = new byte[i9];
                    // fill-array-data instruction
                    bArr[0] = -104;
                    bArr[1] = -57;
                    if (strArrSplit2[i10].contains(m.h(bArr, new byte[]{72, 125, 112, Base64.padSymbol, 5, -22, -103, -102}))) {
                        byte[] bArr2 = new byte[i9];
                        // fill-array-data instruction
                        bArr2[0] = -45;
                        bArr2[1] = 18;
                        strArrSplit3 = strArrSplit2[i10].split(m.h(bArr2, new byte[]{3, -88, -43, 124, -109, -34, 79, -90}));
                        c = 0;
                    } else {
                        c = 0;
                        if (strArrSplit2[i10].contains(m.h(new byte[]{-122}, new byte[]{-19, 107, 85, -27, 17, -63, 79, -89}))) {
                            strArrSplit3 = strArrSplit2[i10].split(m.h(new byte[]{-8}, new byte[]{-109, -12, -68, -77, 81, -18, 0, 104}));
                        }
                    }
                    iIntValue2 = Integer.valueOf(strArrSplit3[c]).intValue() * 1000;
                }
                if (zLoadBoolean3) {
                    String str2 = n3.d;
                }
                d0.d(nLService);
                HUDMassageObj hUDMassageObj = new HUDMassageObj();
                hUDMassageObj.AradarOn = Boolean.TRUE;
                hUDMassageObj.hudSenderType = HUDMassageObj$HudSenderType.ARAD;
                hUDMassageObj.aradarSenderType = HUDMassageObj$AradarSenderType.STRELKA;
                hUDMassageObj.v_mTurnType = iIntValue;
                try {
                    hUDMassageObj.setspeedlimit(iIntValue2 / 1000);
                } catch (Exception unused3) {
                }
                hUDMassageObj.v_mTurnDis = iIntValue2;
                hUDMassageObj.v_mNextRoad = string;
                try {
                    b.a();
                    b.i().e(hUDMassageObj);
                } catch (Exception unused4) {
                }
                w.c(-1, nLService.d).schedule(new z(hUDMassageObj, 1), 2000L, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void j() {
        NLService nLService = (NLService) this.c;
        String str = (String) this.d;
        if (str.equals(nLService.c)) {
            nLService.c = null;
            String str2 = n3.d;
            HUDMassageObj hUDMassageObj = new HUDMassageObj();
            hUDMassageObj.AradarOn = Boolean.FALSE;
            hUDMassageObj.hudSenderType = HUDMassageObj$HudSenderType.ARAD;
            hUDMassageObj.aradarSenderType = HUDMassageObj$AradarSenderType.STRELKA;
            hUDMassageObj.v_mTurnType = -1;
            hUDMassageObj.v_mTurnDis = 0;
            hUDMassageObj.v_mNextRoad = " ";
            try {
                b.a();
                b.i().e(hUDMassageObj);
            } catch (Exception unused) {
            }
        }
        if (!str.equals(m.h(new byte[]{-56, -95, 122, -34, -41, 63, -113, -18, -62, -6, 45, -58, -40, 53, -114, -13, -41, -75, 36, -44}, new byte[]{-70, -44, 84, -89, -74, 81, -21, -117}))) {
            str.equals(m.h(new byte[]{-71, -68, -95, 63, 91, 24, -6, -29, -77, -25, -10, 39, 84, 18, -5, -2, -91, -88, -7, 47}, new byte[]{-53, -55, -113, 70, 58, 118, -98, -122}));
        }
        try {
            b.a();
            b.k().getClass();
            if (str.equals(null)) {
                b.a();
                b.k().getClass();
                b.a();
                b.k().getClass();
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void k() {
        Boolean boolValueOf;
        Notik notik = (Notik) this.c;
        MessageData messageData = (MessageData) this.d;
        b1.m mVar = notik.c;
        LinearLayout linearLayout = (LinearLayout) mVar.d;
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        u0.a aVarO2 = b.o();
        byte[] bArr2 = m.f1892f;
        if (q.w(bArr2, aVarO2, "", strG)) {
            boolValueOf = Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{23}, new byte[]{39, -81, 69, 10, 121, 75, -122, 79}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            b.a();
            WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(-2, -2, b.g().b().m(), 552, -3);
            windowManager$LayoutParams.gravity = 49;
            windowManager$LayoutParams.y = 50;
            b.a();
            b.g().b().f(linearLayout, windowManager$LayoutParams);
        }
        Notik notik2 = (Notik) mVar.c;
        e eVar = new e(notik2);
        eVar.f2337h = eVar.animate();
        View.inflate(notik2, 2131493042, eVar);
        eVar.f2334b = (TextView) eVar.findViewById(2131297000);
        eVar.c = (TextView) eVar.findViewById(2131297657);
        eVar.d = (ImageView) eVar.findViewById(2131296450);
        eVar.f2335f = (LinearLayout) eVar.findViewById(2131296316);
        eVar.e = (Button) eVar.findViewById(2131297176);
        TextView textView = eVar.f2334b;
        if (textView != null && textView.getContext() != null) {
            textView.setMaxWidth((int) (0.8f * textView.getContext().getResources().getDisplayMetrics().widthPixels));
        }
        eVar.setMessageBubbleViewListener(mVar);
        eVar.f2336g = messageData;
        Bitmap iconBitmap = messageData.getIconBitmap();
        ImageView imageView = eVar.d;
        if (iconBitmap != null) {
            imageView.setImageBitmap(iconBitmap);
        } else {
            imageView.setImageResource(2131165523);
        }
        eVar.c.setText(messageData.getSender());
        eVar.f2334b.setText(messageData.getMessage());
        if (messageData.gethasReply()) {
            eVar.f2335f.setVisibility(0);
            eVar.e.setVisibility(0);
            eVar.e.setOnClickListener(new androidx.navigation.ui.a(6, eVar, messageData));
        }
        eVar.setOnClickListener(new androidx.navigation.ui.a(5, mVar, eVar));
        eVar.setVisibility(4);
        linearLayout.addView(eVar);
        eVar.post(new f5.j(1, eVar));
        ((Handler) mVar.f270f).postDelayed(new g0.b(mVar, eVar, 0), 10000L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Parcel parcel;
        JSONArray jSONArrayV;
        JSONArray jSONArray;
        String strH;
        JSONArray jSONArray2;
        String absolutePath;
        int i9 = 0;
        switch (this.f4b) {
            case 0:
                try {
                    ((WindowManager) this.c).removeViewImmediate((View) this.d);
                    return;
                } catch (Exception unused) {
                    return;
                }
            case 1:
                ViewTransition.a((ViewTransition) this.c, (View[]) this.d);
                return;
            case 2:
                ResourcesCompat$FontCallback.a((ResourcesCompat$FontCallback) this.c, (Typeface) this.d);
                return;
            case 3:
                DispatchQueue.a((DispatchQueue) this.c, (Runnable) this.d);
                return;
            case 4:
                ExtensionEmbeddingBackend$SplitListenerWrapper.a((ExtensionEmbeddingBackend$SplitListenerWrapper) this.c, (ArrayList) this.d);
                return;
            case 5:
                SidecarWindowBackend$WindowLayoutChangeCallbackWrapper.a((SidecarWindowBackend$WindowLayoutChangeCallbackWrapper) this.c, (WindowLayoutInfo) this.d);
                return;
            case 6:
                b1.f fVar = (b1.f) this.c;
                IBinder iBinder = (IBinder) this.d;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b1.f.f236v);
                    if (iBinder.transact(1, parcelObtain, parcelObtain2, 0)) {
                        parcelObtain2.readException();
                        byte[] bArrCreateByteArray = parcelObtain2.createByteArray();
                        long j9 = parcelObtain2.readLong();
                        if (bArrCreateByteArray != null && bArrCreateByteArray.length != 0) {
                            if (j9 != fVar.f243i) {
                                fVar.f242h = bArrCreateByteArray;
                                fVar.f243i = j9;
                                long j10 = fVar.f245k + 1;
                                fVar.f245k = j10;
                                parcel = parcelObtain;
                                if (j10 % 10 == 0) {
                                    try {
                                        try {
                                            Log.i(m.h(new byte[]{51, -25, -54, 19, 118, -61, 15, 3, 27, -4, -62}, new byte[]{126, -114, -92, 122, 59, -94, ByteCompanionObject.MAX_VALUE, 83}), m.h(new byte[]{-101, -48, -115, -21, -23, 59, -102, -100, -117, -40, -114, -22, -79}, new byte[]{-7, -71, -29, -113, -116, 73, -70, -6}) + j10 + m.h(new byte[]{50, -7, -9, 114, 44, 123, -86}, new byte[]{18, -104, -112, 23, 97, 8, -105, -17}) + Math.max(0L, SystemClock.elapsedRealtime() - j9) + m.h(new byte[]{105, 42, -66, -93, 21, -5, 1}, new byte[]{73, 72, -57, -41, 112, -120, 60, 43}) + bArrCreateByteArray.length);
                                        } catch (Exception e) {
                                            e = e;
                                            Log.w(b1.f.f234s, m.h(new byte[]{10, -97, 40, -81, 27, -114, -66, 55, 48, -47, 59, -88, 22, -113, -66, 46, 54, -97, 32, -32, 26, -118, -18, 99, 57, -125, 40, -96, 18}, new byte[]{95, -15, 73, -51, 119, -21, -98, 67}), e);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        parcelObtain2.recycle();
                                        parcel.recycle();
                                        fVar.d.set(false);
                                        throw th;
                                    }
                                }
                                Iterator it = fVar.e.iterator();
                                while (it.hasNext()) {
                                    try {
                                        ((r) ((b1.e) it.next())).k(bArrCreateByteArray, j9);
                                    } catch (RuntimeException e6) {
                                        Log.w(b1.f.f234s, m.h(new byte[]{-28, -9, 58, 1, 126, 27, 22, 54, -119, -14, Base64.padSymbol, 27, 39, 19, 25, 35, -37, -66, 38, 13, 57, 19, 20, 50, -52, -6, 116, 14, 33, 23, 26, 35}, new byte[]{-87, -98, 84, 104, 83, 118, 119, 70}), e6);
                                    }
                                    break;
                                }
                            }
                            Log.w(b1.f.f234s, m.h(new byte[]{10, -97, 40, -81, 27, -114, -66, 55, 48, -47, 59, -88, 22, -113, -66, 46, 54, -97, 32, -32, 26, -118, -18, 99, 57, -125, 40, -96, 18}, new byte[]{95, -15, 73, -51, 119, -21, -98, 67}), e);
                            break;
                        } else {
                            parcel = parcelObtain;
                        }
                        parcelObtain2.recycle();
                        parcel.recycle();
                        fVar.d.set(false);
                        return;
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Exception e9) {
                    e = e9;
                    parcel = parcelObtain;
                } catch (Throwable th2) {
                    th = th2;
                    parcel = parcelObtain;
                    parcelObtain2.recycle();
                    parcel.recycle();
                    fVar.d.set(false);
                    throw th;
                }
                fVar.d.set(false);
                return;
            case 7:
                b1.l lVar = (b1.l) this.c;
                String str = (String) this.d;
                Set set = lVar.e;
                try {
                    jSONArrayV = lVar.v();
                    try {
                        lVar.K(str, m.h(new byte[]{-84, -118, -127, 62, 99, -29, -95}, new byte[]{-51, -23, -11, 87, 12, -115, -46, -92}), jSONArrayV);
                        jSONArray = jSONArrayV;
                    } catch (Exception e10) {
                        e = e10;
                        jSONArray = jSONArrayV;
                        lVar.L(str, m.h(new byte[]{59, 107, 9, -90, -86, -125, 45}, new byte[]{90, 8, 125, -49, -59, -19, 94, -40}), new JSONArray(), false, true, e.getMessage());
                    }
                } catch (Exception e11) {
                    e = e11;
                    jSONArrayV = null;
                }
                try {
                    lVar.K(str, m.h(new byte[]{-105, 25, 44, -29}, new byte[]{-10, 105, 92, -112, -115, -84, -22, -106}), b1.l.A(false));
                    break;
                } catch (Exception e12) {
                    lVar.L(str, m.h(new byte[]{16, -76, 62, 9}, new byte[]{113, -60, 78, 122, 104, 89, -62, 19}), new JSONArray(), false, true, e12.getMessage());
                }
                try {
                    lVar.K(str, m.h(new byte[]{29, 74, -26, -76, 108, 76}, new byte[]{110, 58, -118, -35, 24, 63, 15, -97}), lVar.x());
                    break;
                } catch (Exception e13) {
                    lVar.L(str, m.h(new byte[]{-83, 20, 101, 18, 37, 122}, new byte[]{-34, 100, 9, 123, 81, 9, 14, -101}), new JSONArray(), false, true, e13.getMessage());
                }
                if (jSONArray != null) {
                    try {
                        lVar.K(str, m.h(new byte[]{-66, -25, -82, -8, 77, 102, 71, 70, -80, -22, -87}, new byte[]{-33, -124, -38, -111, 34, 8, 14, 37}), b1.l.w(jSONArray));
                    } catch (Exception e14) {
                        lVar.L(str, m.h(new byte[]{-90, -19, -53, 68, 124, -56, -98, 71, -88, -32, -52}, new byte[]{-57, -114, -65, 45, 19, -90, -41, 36}), new JSONArray(), false, true, e14.getMessage());
                    }
                    break;
                }
                try {
                    lVar.K(str, m.h(new byte[]{-119, -41, 19, 81, -16, -72, -18, -56}, new byte[]{-24, -89, 99, 24, -109, -41, ByteCompanionObject.MIN_VALUE, -69}), b1.l.A(true));
                    strH = m.h(new byte[]{-109, -14, -44, -106}, new byte[]{-9, -99, -70, -13, -24, -15, 65, 1});
                    jSONArray2 = new JSONArray();
                } catch (Exception e15) {
                    lVar.L(str, m.h(new byte[]{114, -37, 80, -31, 112, -36, -127, 100}, new byte[]{19, -85, 32, -88, 19, -77, -17, 23}), new JSONArray(), false, true, e15.getMessage());
                    strH = m.h(new byte[]{-55, -89, 66, 16}, new byte[]{-83, -56, 44, 117, -80, -96, 28, -107});
                    jSONArray2 = new JSONArray();
                } finally {
                    lVar.L(str, m.h(new byte[]{11, 11, -97, 77}, new byte[]{111, 100, -15, 40, -106, 29, -35, 15}), new JSONArray(), false, true, null);
                    set.remove(str);
                }
                lVar.L(str, strH, jSONArray2, false, true, null);
                return;
            case 8:
                r rVar = (r) this.c;
                s0.a aVar = (s0.a) this.d;
                rVar.getClass();
                Bitmap bitmap = aVar.e;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(m.h(new byte[]{-27, -52, -49, 24, 120, 123, 66, 87}, new byte[]{-75, -96, -82, 97, 43, 15, 35, 35}), aVar.f5041a.name());
                    jSONObject.put(m.h(new byte[]{-101, -64, 111, 39, -43, 95, -45, 37}, new byte[]{-56, -81, 1, 64, -101, 62, -66, 64}), aVar.f5042b);
                    jSONObject.put(m.h(new byte[]{73, 3, 57, -70, -11, 13, -70, -107, 105, 24}, new byte[]{26, 108, 87, -35, -76, ByteCompanionObject.MAX_VALUE, -50, -4}), aVar.c);
                    jSONObject.put(m.h(new byte[]{-9, 24, -90, -62, 16, 39, 33, -77, -55}, new byte[]{-92, 119, -56, -91, 81, 75, 67, -58}), aVar.d);
                    if (bitmap != null) {
                        int generationId = bitmap.getGenerationId();
                        if (!rVar.r || generationId != rVar.f292q) {
                            String strH2 = m.h(new byte[]{-38, -83, 34, -75, -100, 120, 99, 111, -28, -110, 37, -79, -87, 97, 115, ByteCompanionObject.MAX_VALUE}, new byte[]{-119, -62, 76, -46, -35, 20, 1, 26});
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            bitmap.compress(Bitmap$CompressFormat.PNG, 30, byteArrayOutputStream);
                            jSONObject.put(strH2, android.util.Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0));
                            rVar.f292q = generationId;
                            rVar.r = true;
                        }
                    } else if (rVar.r) {
                        jSONObject.put(m.h(new byte[]{44, 93, -62, 119, -47, -117, 50, -103, 18, 98, -59, 115, -28, -110, 34, -119}, new byte[]{ByteCompanionObject.MAX_VALUE, 50, -84, 16, -112, -25, 80, -20}), "");
                        rVar.f292q = Integer.MIN_VALUE;
                        rVar.r = false;
                    }
                    jSONObject.put(m.h(new byte[]{87, -38, 6, 50, 40}, new byte[]{3, -88, 118, 93, 91, -127, 5, -31}), aVar.f5043f);
                    jSONObject.put(m.h(new byte[]{48, 1, -51, 11, -75}, new byte[]{100, 115, -87, 126, -57, ByteCompanionObject.MAX_VALUE, 63, 122}), aVar.f5044g);
                    rVar.e(m.h(new byte[]{-14, -117, -66, 70, 20, -54, -8, 15, -16}, new byte[]{-97, -2, -51, 47, 119, -125, -106, 105}), jSONObject.toString());
                    return;
                } catch (Exception unused2) {
                    return;
                }
            case 9:
                r rVar2 = (r) this.c;
                String str2 = (String) this.d;
                try {
                    WebView webView = rVar2.c;
                    if (webView != null) {
                        webView.evaluateJavascript(str2, null);
                        return;
                    }
                    return;
                } catch (Exception unused3) {
                    return;
                }
            case 10:
                c cVar = (c) this.c;
                b7.a aVar2 = (b7.a) this.d;
                z5.m mVar = aVar2.f332a;
                b7.j jVar = (b7.j) cVar.c;
                CaptureActivity captureActivity = jVar.f363a;
                if (jVar.d) {
                    b7.v vVar = aVar2.f333b;
                    b7.s sVar = vVar.f390a;
                    int i10 = vVar.c;
                    Rect rect = new Rect(0, 0, sVar.f386a, sVar.f387b);
                    YuvImage yuvImage = new YuvImage(sVar.c, vVar.f391b, sVar.f386a, sVar.f387b, null);
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    yuvImage.compressToJpeg(rect, 90, byteArrayOutputStream2);
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
                    bitmapFactory$Options.inSampleSize = 2;
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, bitmapFactory$Options);
                    if (i10 != 0) {
                        Matrix matrix = new Matrix();
                        matrix.postRotate(i10);
                        bitmapDecodeByteArray = Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), matrix, false);
                    }
                    try {
                        File fileCreateTempFile = File.createTempFile("barcodeimage", ".jpg", captureActivity.getCacheDir());
                        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                        bitmapDecodeByteArray.compress(Bitmap$CompressFormat.JPEG, 100, fileOutputStream);
                        fileOutputStream.close();
                        absolutePath = fileCreateTempFile.getAbsolutePath();
                    } catch (IOException e16) {
                        Log.w("j", "Unable to create temporary file and store bitmap! " + e16);
                        absolutePath = null;
                    }
                    break;
                } else {
                    absolutePath = null;
                }
                Intent intent = new Intent("com.google.zxing.client.android.SCAN");
                intent.addFlags(524288);
                intent.putExtra("SCAN_RESULT", mVar.f6329a);
                intent.putExtra("SCAN_RESULT_FORMAT", mVar.d.toString());
                byte[] bArr = mVar.f6330b;
                if (bArr != null && bArr.length > 0) {
                    intent.putExtra("SCAN_RESULT_BYTES", bArr);
                }
                Map map = mVar.e;
                if (map != null) {
                    z5.n nVar = z5.n.f6334h;
                    if (map.containsKey(nVar)) {
                        intent.putExtra("SCAN_RESULT_UPC_EAN_EXTENSION", map.get(nVar).toString());
                    }
                    Number number = (Number) map.get(z5.n.f6331b);
                    if (number != null) {
                        intent.putExtra("SCAN_RESULT_ORIENTATION", number.intValue());
                    }
                    String str3 = (String) map.get(z5.n.d);
                    if (str3 != null) {
                        intent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", str3);
                    }
                    Iterable iterable = (Iterable) map.get(z5.n.c);
                    if (iterable != null) {
                        Iterator it2 = iterable.iterator();
                        while (it2.hasNext()) {
                            intent.putExtra("SCAN_RESULT_BYTE_SEGMENTS_" + i9, (byte[]) it2.next());
                            i9++;
                        }
                    }
                }
                if (absolutePath != null) {
                    intent.putExtra("SCAN_RESULT_IMAGE_PATH", absolutePath);
                }
                captureActivity.setResult(-1, intent);
                jVar.a();
                return;
            case 11:
                FragmentStrictMode.b((FragmentStrictMode$Policy) this.c, (Violation) this.d);
                return;
            case 12:
                FragmentStrictMode.a((String) this.c, (Violation) this.d);
                return;
            case 13:
                a();
                return;
            case 14:
                APInAct aPInAct = (APInAct) this.c;
                String str4 = (String) this.d;
                TextView textView = aPInAct.f630b;
                if (textView != null) {
                    textView.setText(str4);
                    return;
                }
                return;
            case 15:
                b();
                return;
            case 16:
                ((MainActivity) this.c).X0.setColorFilter((ColorMatrixColorFilter) this.d);
                return;
            case 17:
                k1 k1Var = (k1) this.c;
                AlertDialog alertDialog = (AlertDialog) this.d;
                MainActivity mainActivity = k1Var.f1876b;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed() || !alertDialog.isShowing()) {
                    return;
                }
                alertDialog.dismiss();
                return;
            case 18:
                ModernMainActivity modernMainActivity = (ModernMainActivity) this.c;
                FlexboxLayout flexboxLayout = (FlexboxLayout) this.d;
                String str5 = ModernMainActivity.B1;
                modernMainActivity.Z(flexboxLayout);
                return;
            case 19:
                u1 u1Var = (u1) this.c;
                View view = (View) this.d;
                u1Var.f1963g = Boolean.FALSE;
                u1Var.f1967k = view.getAlpha();
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, m.h(new byte[]{-33, 103, 112, -33, 76}, new byte[]{-66, 11, 0, -73, 45, -114, -92, -79}), 0.0f, u1Var.f1967k, 0.0f);
                u1Var.f1966j = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(1500);
                u1Var.f1966j.setRepeatCount(-1);
                u1Var.f1966j.setRepeatMode(2);
                u1Var.f1973q.post(new a(20, u1Var, u1Var.f1966j));
                return;
            case 20:
                c();
                return;
            case 21:
                d();
                return;
            case 22:
                e();
                return;
            case 23:
                f();
                return;
            case 24:
                g();
                return;
            case 25:
                h();
                return;
            case 26:
                i();
                return;
            case 27:
                j();
                return;
            case 28:
                k();
                return;
            default:
                ((g2) this.c).f1843b.setText((String) this.d);
                return;
        }
    }

    public /* synthetic */ a(int i9, Object obj, Object obj2) {
        this.f4b = i9;
        this.c = obj;
        this.d = obj2;
    }
}
