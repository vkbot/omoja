package com.example.navistart;

import ai.onnxruntime.AbstractC0074a;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.content.ContextCompat;
import androidx.profileinstaller.RunnableC0707c;
import com.example.navistart.MainActivity;
import com.example.navistart.MyA11yService;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.boot;
import com.example.navistart.cores.BezFunEnum;
import com.example.navistart.cores.CarCmdProxy;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.HFunEnum;
import com.example.navistart.home.WebLauncherActivity;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONObject;
import p002a1.RunnableC0003a;
import p005a4.RunnableC0014g;
import p016b1.C0872m;
import p016b1.RunnableC0873n;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.AbstractC1438x;
import p047e0.C1390m2;
import p047e0.C1440x1;
import p047e0.EnumC1335b2;
import p047e0.RunnableC1330a2;
import p047e0.RunnableC1431v0;
import p047e0.RunnableC1432v1;
import p078h0.C1652b;
import p088i0.EnumC1737a;
import p109k0.AbstractC2025a;
import p206u0.C3277a;
import p217v1.C3324b;
import p217v1.C3326d;
import p250y5.AbstractC3656k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MyCarReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: c */
    public static final ScheduledThreadPoolExecutor f1463c = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{24, 20, -26, -103, 53, -92, 122, -85, 48, 4, -45, -99, 53}, new byte[]{85, 109, -91, -8, 71, -10, 31, -56}));

    /* JADX INFO: renamed from: d */
    public static final Object f1464d;

    /* JADX INFO: renamed from: e */
    public static final ArrayList f1465e;

    /* JADX INFO: renamed from: f */
    public static long f1466f;

    /* JADX INFO: renamed from: g */
    public static int f1467g;

    /* JADX INFO: renamed from: h */
    public static C1390m2 f1468h;

    /* JADX INFO: renamed from: i */
    public static boolean f1469i;

    /* JADX INFO: renamed from: j */
    public static boolean f1470j;

    /* JADX INFO: renamed from: k */
    public static int f1471k;

    /* JADX INFO: renamed from: l */
    public static boolean f1472l;

    /* JADX INFO: renamed from: m */
    public static boolean f1473m;

    /* JADX INFO: renamed from: n */
    public static Boolean f1474n;

    /* JADX INFO: renamed from: o */
    public static int f1475o;

    /* JADX INFO: renamed from: p */
    public static int f1476p;

    /* JADX INFO: renamed from: q */
    public static int f1477q;

    /* JADX INFO: renamed from: r */
    public static ScheduledFuture f1478r;

    /* JADX INFO: renamed from: s */
    public static ScheduledFuture f1479s;

    /* JADX INFO: renamed from: a */
    public final ConcurrentHashMap f1480a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b */
    public Context f1481b;

    static {
        AbstractC1434w.m2481b(10L, AbstractC1387m.m2421h(new byte[]{115, 117, 100, 107, 45, 52, -16, -36, 91, 101, 81, 111, 45, 52, -32, -47}, new byte[]{62, 12, 39, 10, 95, 102, -107, -65}));
        f1464d = new Object();
        f1465e = new ArrayList();
        f1466f = 0L;
        f1467g = 2;
        f1469i = false;
        f1470j = false;
        f1471k = 0;
        f1472l = false;
        f1473m = true;
        f1474n = Boolean.FALSE;
        f1475o = 0;
        f1476p = 0;
    }

    /* JADX INFO: renamed from: b */
    public static void m1485b(Context context) {
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-124, -23, 87, 8, 97, 121, 91}, new byte[]{-58, -123, 34, 87, 23, 22, 63, 9}), false)) {
            for (int i10 = 1; i10 < 4; i10++) {
                if (C1652b.m2745o().loadString(AbstractC1178q.m2076j(new byte[]{23, -51, 76, 23, -16, 63, 37, -74, -123, 19, -55, -10, 110, -54, -72, 75, -124, 3, -55, -3, 110, -59, -71, ByteCompanionObject.MAX_VALUE, 117}, new byte[]{85, -127, 25, 72, -66, 126, 104, -13}, new StringBuilder(), i10), context.getString(R.string.blu_vod_not_set)).equals(AbstractC1387m.f3314b) && f1475o != i10 && m1486c(AbstractC1387m.m2421h(new byte[]{-17, -127, 57, 37, -120, -59, -92, -67, -63, -112, 36, 62}, new byte[]{-82, -12, 77, 74, -37, -96, -48, -21})).booleanValue()) {
                    AbstractC3656k.m5875u(context, new Intent(context, (Class<?>) AutoVibVodActivity.class).addFlags(268435456).putExtra(AbstractC1387m.m2421h(new byte[]{-73, 106, 23, -37, -114, 97, 94, -7, -78, 96, 7}, new byte[]{-63, 5, 115, -78, -6, 4, 50, -90}), i10), null);
                    m1487d(AbstractC1387m.m2421h(new byte[]{70, 13, 124, -6, 1, -51, -91, -1, 104, 28, 97, -31}, new byte[]{7, 120, 8, -107, 82, -88, -47, -87}), Boolean.FALSE);
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static Boolean m1486c(String str) {
        return Boolean.valueOf(C1652b.m2745o().loadBoolean(str.concat(AbstractC1387m.m2421h(new byte[]{-67, 107, -99, -57, 121, 115, -61, 45, -99}, new byte[]{-14, 5, -46, -95, 31, 50, -74, 89})), true));
    }

    /* JADX INFO: renamed from: d */
    public static void m1487d(String str, Boolean bool) {
        C1652b.m2745o().saveBoolean(str.concat(AbstractC1387m.m2421h(new byte[]{-36, 107, 60, 51, -38, 56, -59, 73, -4}, new byte[]{-109, 5, 115, 85, -68, 121, -80, Base64.padSymbol})), bool.booleanValue());
    }

    /* JADX INFO: renamed from: e */
    public static void m1488e() {
        HFunEnum hFunEnum;
        boolean zBooleanValue = m1486c(AbstractC1387m.m2421h(new byte[]{-27, -36, 84, -40, -39, 40, 1, 81}, new byte[]{-106, -85, 11, -85, -83, 71, 109, 58})).booleanValue();
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{76, 59, 41, -76, -26, 79, -43, 6, 94, 63, 24, -71, -16, 65}, new byte[]{63, 76, 118, -42, -125, 53, -70, 118}), false);
        if (zBooleanValue) {
            if (zLoadBoolean) {
                if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{50, 9, -56, 104, -80, 17, 22, -51}, new byte[]{65, 126, -105, 27, -60, 126, 122, -90}), false)) {
                    m1489f(BezFunEnum.ID_CAR_AEB);
                }
                if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{90, 67, 91, 18, 95, 101, 94, -106}, new byte[]{41, 52, 4, 97, 43, 10, 50, -3}), false)) {
                    m1489f(BezFunEnum.ID_CAR_FCW_SENSITIVITY);
                }
                for (BezFunEnum bezFunEnum : BezFunEnum.values()) {
                    if (C1652b.m2745o().loadBoolean(bezFunEnum.name(), false)) {
                        m1489f(bezFunEnum);
                    }
                }
            }
            boolean zEquals = AbstractC1387m.m2421h(new byte[]{120, 121, -55, 43, -80, -9, -95, -120, 120, 117}, new byte[]{Base64.padSymbol, 33, -123, 106, -2, -93, -24, -48}).equals(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-67, 79, 17, 24, 29, 9, 46, 64, -110, 107}, new byte[]{-2, 14, 67, 72, 111, 102, 72, 41}), ""));
            if (zEquals) {
                AbstractC1438x.m2483a();
            } else {
                int iLoadInt = C1652b.m2745o().loadInt(zEquals ? AbstractC1387m.m2421h(new byte[]{-24, 124, -3, 98, 62, -35, -22, -21, -46, 96, -29, 106, 38, -52, -36, -2, -30, 96, -12, 92, 35, -52, -17, -10, -18, 112, -8, 108, 62}, new byte[]{-115, 4, -111, 3, 80, -87, -125, -109}) : AbstractC1387m.m2421h(new byte[]{-92, -123, 35, -27, -94, 60, 3, 18, -92, -110, 21, -32, -94, 15, 11, 30, -76, -98, 37, -3}, new byte[]{-64, -9, 74, -109, -57, 99, 110, 125}), 0);
                if (iLoadInt >= 1) {
                    if (iLoadInt <= (zEquals ? 4 : 3)) {
                        int i10 = iLoadInt - 1;
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(AbstractC1387m.m2421h(new byte[]{124, 77, -46}, new byte[]{31, 32, -74, 93, -108, 53, -55, -74}), AbstractC1387m.m2421h(new byte[]{-15, -102, -117, 56, -26, -24, Base64.padSymbol, Base64.padSymbol, -25, -96, -110, 8, -26, -1}, new byte[]{-126, -1, -1, 103, -126, -102, 84, 75}));
                            jSONObject.put(AbstractC1387m.m2421h(new byte[]{62, 87, 120, -13, 57}, new byte[]{72, 54, 20, -122, 92, 10, 107, 5}), i10);
                            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-24, 49, -116, 77, 71, -15, -127, 106, -10, 59, -100, 108, 21, -75, -41}, new byte[]{-69, 84, -8, 9, 53, -104, -9, 15}) + i10, ColorText.RED);
                            C1652b.m2734a();
                            C1652b.m2736d().m1618c(jSONObject);
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
            int iLoadInt2 = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{30, 90, -5, -66, -91, 17, 112, -108, 27, 76, -5, -81, -107, 19, 64, ByteCompanionObject.MIN_VALUE, 17}, new byte[]{116, 59, -98, -35, -54, 126, 47, -28}), 0);
            if (iLoadInt2 == 1 || iLoadInt2 == 2) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(AbstractC1387m.m2421h(new byte[]{122, 53, -100}, new byte[]{25, 88, -8, -105, -75, 49, -90, 20}), AbstractC1387m.m2421h(new byte[]{-116, 64, 82, 126, -46, -116, -66, -12, -115, 122, 75, 78, -58, -122}, new byte[]{-1, 37, 38, 33, -94, -29, -55, -111}));
                    jSONObject2.put(AbstractC1387m.m2421h(new byte[]{96, -65, 7, 88, -1}, new byte[]{22, -34, 107, 45, -102, -52, -15, -116}), iLoadInt2);
                    C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{64, 26, 118, 70, 99, 67, -39, 120, 94, 16, 102, 115, 44, 25, -100}, new byte[]{19, ByteCompanionObject.MAX_VALUE, 2, 22, 12, 52, -68, 10}) + iLoadInt2, ColorText.RED);
                    C1652b.m2734a();
                    C1652b.m2736d().m1618c(jSONObject2);
                } catch (Throwable unused2) {
                }
            }
            String strM2421h = AbstractC1387m.m2421h(new byte[]{-126, -97, -84, 24, -2, -74, -14, -10, -122, -101, -69, 28, -24, -122, -33, -10, -117, -121, -86, 23, -12, -122, -63, -10, -98, -101, -91}, new byte[]{-24, -2, -55, 123, -111, -39, -83, -109});
            int iLoadInt3 = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-109, 24, -117, 24, 66, 121, -113, 113, -105, 28, -100, 28, 84, 73, -94, 113, -102, 0, -115, 23, 72, 73, -68, 113, -113, 28, -126}, new byte[]{-7, 121, -18, 123, 45, 22, -48, 20}), 0);
            HFunEnum hFunEnum2 = null;
            if (iLoadInt3 == 1) {
                hFunEnum = HFunEnum.ID_ENERGY_RECYCLE_LOW;
            } else if (iLoadInt3 != 2) {
                hFunEnum = iLoadInt3 != 3 ? null : HFunEnum.ID_ENERGY_RECYCLE_HIGH;
            } else {
                hFunEnum = HFunEnum.ID_ENERGY_RECYCLE_MEDIUM;
            }
            m1490g(strM2421h, hFunEnum);
            String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-103, -103, -62, -88, -36, -42, 96, -110, -110, -116, -45, -82, -63, -64, 96, ByteCompanionObject.MIN_VALUE, -127, -105, -45, -82, -48, -51, 86, -97, -99, -89, -54, -92, -41, -36}, new byte[]{-13, -8, -89, -53, -77, -71, 63, -16});
            int iLoadInt4 = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{3, -51, 16, 40, 67, 14, -127, -82, 8, -40, 1, 46, 94, 24, -127, -68, 27, -61, 1, 46, 79, 21, -73, -93, 7, -13, 24, 36, 72, 4}, new byte[]{105, -84, 117, 75, 44, 97, -34, -52}), 0);
            if (iLoadInt4 == 1) {
                hFunEnum2 = HFunEnum.ID_SOC_MANAGER_INITIAL;
            } else if (iLoadInt4 == 2) {
                hFunEnum2 = HFunEnum.ID_SOC_MANAGER_SMART;
            } else if (iLoadInt4 == 4) {
                hFunEnum2 = HFunEnum.ID_SOC_MANAGER_FORCED;
            }
            m1490g(strM2421h2, hFunEnum2);
            m1491h(HFunEnum.ID_VCU_DISCHARGE_SWITCH);
            m1491h(HFunEnum.ID_VCU_ELECTRONIC_LOCKING_UNLOCKS);
            m1487d(AbstractC1387m.m2421h(new byte[]{16, -34, 121, 7, 0, -47, 4, -110}, new byte[]{99, -87, 38, 116, 116, -66, 104, -7}), Boolean.FALSE);
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m1489f(BezFunEnum bezFunEnum) {
        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{75, -109, -21, -108, 30, 20, -100, -48, 36}, new byte[]{4, -11, -115, -42, 123, 110, -68, -3}) + bezFunEnum + AbstractC1387m.m2421h(new byte[]{-73, 78, -77}, new byte[]{-105, 99, -109, -93, 18, -121, 26, ByteCompanionObject.MIN_VALUE}) + false, ColorText.RED);
        C1652b.m2734a();
        C1652b.m2736d().bezoff(bezFunEnum, false);
    }

    /* JADX INFO: renamed from: g */
    public static void m1490g(String str, HFunEnum hFunEnum) {
        if (hFunEnum == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{-116, -22, 26, -110, 115, -59, -5}, new byte[]{-61, -116, 124, -38, 83, -24, -37, -5}, sb, str);
        sb.append(AbstractC1387m.m2421h(new byte[]{-87, -95, -39}, new byte[]{-119, -116, -7, -116, 49, 89, 121, -15}));
        sb.append(hFunEnum);
        C1652b.m2751w(sb.toString(), ColorText.RED);
        C1652b.m2734a();
        C1652b.m2736d().hybrid(hFunEnum, true);
    }

    /* JADX INFO: renamed from: h */
    public static void m1491h(HFunEnum hFunEnum) {
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(hFunEnum.name(), false);
        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{15, 111, -77, 11, -48, -5, 4}, new byte[]{64, 9, -43, 67, -16, -42, 36, 109}) + hFunEnum + AbstractC1387m.m2421h(new byte[]{-110, 58, 122}, new byte[]{-78, 23, 90, -122, 12, -94, 89, -67}) + zLoadBoolean, ColorText.RED);
        C1652b.m2734a();
        C1652b.m2736d().hybrid(hFunEnum, zLoadBoolean);
    }

    /* JADX INFO: renamed from: j */
    public static void m1492j() {
        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-11, 15, 54, -58, 43, 53, 34, -25, -56, 31, 43, -41, 58, 24, -127, 25, -26, 31, 49, -52, 0, 37, -68}, new byte[]{-89, 106, 69, -93, 95, 106, -14, 70}));
        String strM2421h = AbstractC1387m.m2421h(new byte[]{19, 29, 93, 47, 26, -47, 45, -73, 8, 16, 84, 41, 9, -36, 33, -74, 27, 13, 93, 58, 30, -51, 38, -70, 22, 24, 86, 37, 20, -51}, new byte[]{90, 89, 2, 108, 91, -125, 114, -13});
        Boolean bool = Boolean.TRUE;
        m1487d(strM2421h, bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-2, 16, -41, 29, 95, -99, 114, -46, -8, 4, -63, 18, 81, -101, 114, -62, -14, 21, -36, 1, 72, -118, 99, -59, -2, 24, -55, 10, 87, ByteCompanionObject.MIN_VALUE, 99}, new byte[]{-73, 84, -120, 94, 30, -49, 45, -111}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-46, 82, -6, 47, 65, -102, -50, -1, -55, 95, -13, 41, 82, -105, -62, -2, -38, 66, -6, 36, 69, -119, -59}, new byte[]{-101, 22, -91, 108, 0, -56, -111, -69}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-8, 94, -44, 6, 3, -38, -20, -19, -2, 74, -62, 9, 13, -36, -20, -3, -12, 91, -33, 26, 10, -51, -14, -6}, new byte[]{-79, 26, -117, 69, 66, -120, -77, -82}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{120, -76, -38, 72, 22, 68, -13, -91, 112, -94, -38, 77, 16, 93, -13, -81, 98, -92}, new byte[]{49, -16, -123, 9, 85, 27, -95, -32}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-77, 33, 54, 17, 64, -109, -35, 116, -75, 43, Base64.padSymbol, 15, 68, ByteCompanionObject.MIN_VALUE, -38, 117, -87, 58, 33, 21, 66, -104}, new byte[]{-6, 101, 105, 80, 3, -52, -101, 38}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{39, 38, 24, 66, -107, -8, -91, 96, 58, 39, 2, 83, -117, -3, -78, 118, 43, 46, 24, 73, -111, -21, -82}, new byte[]{110, 98, 71, 1, -44, -86, -6, 51}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{96, 19, -90, -66, 80, -114, -39, 21, 124, 25, -86, -75, 80, -104, -61}, new byte[]{41, 87, -7, -3, 17, -36, -122, 70}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{35, 26, 106, -102, 126, 59, -35, 3, 13, 11, 119, -127}, new byte[]{98, 111, 30, -11, 45, 94, -87, 85}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-45, 13, 95, 5, 42, -61, 95, -75, -56, 0, 86, 3, 57, -50, 83, -76, -37, 29, 95, 16, 46, -33, 84, -72, -42, 8, 84, 15, 36, -33, 95, -91, -45, 4, 69, 20}, new byte[]{-102, 73, 0, 70, 107, -111, 0, -15}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-6, 79, -54, 7, 64, -11, -56, 21, -4, 91, -36, 8, 78, -13, -56, 5, -10, 74, -63, 27, 87, -30, -39, 2, -6, 71, -44, 16, 72, -24, -39, 9, -25, 66, -40, 1, 83}, new byte[]{-77, 11, -107, 68, 1, -89, -105, 86}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-68, 105, -73, -4, -34, 83, 65, 50, -89, 100, -66, -6, -51, 94, 77, 51, -76, 121, -73, -9, -38, 64, 74, 41, -95, 100, -91, -6, -51}, new byte[]{-11, 45, -24, -65, -97, 1, 30, 118}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-124, 40, 54, -69, 121, 93, -43, -17, -126, 60, 32, -76, 119, 91, -43, -1, -120, 45, Base64.padSymbol, -89, 112, 74, -53, -8, -110, 56, 32, -75, 125, 93}, new byte[]{-51, 108, 105, -8, 56, 15, -118, -84}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-104, 67, 114, -96, -111, -126, 93, -53, -123, 66, 104, -79, -113, -121, 74, -35, -108, 75, 114, -85, -107, -111, 86, -57, -123, 78, 96, -90, -126}, new byte[]{-47, 7, 45, -29, -48, -48, 2, -104}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-102, -45, 63, 73, 2, 75, -63, -99, -110, -59, 63, 76, 4, 82, -63, -105, ByteCompanionObject.MIN_VALUE, -61, 63, 92, 8, 89, -42, -118}, new byte[]{-45, -105, 96, 8, 65, 20, -109, -40}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{107, 25, -97, 81, -94, -101, 96, 36, 109, 19, -108, 79, -90, -120, 103, 37, 113, 2, -120, 85, -96, -112, 121, 34, 107, 16, -123, 66}, new byte[]{34, 93, -64, 16, -31, -60, 38, 118}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{91, -104, 115, 117, 4, 5, -106, -86}, new byte[]{40, -17, 44, 6, 112, 106, -6, -63}), bool);
        m1487d(AbstractC1387m.m2421h(new byte[]{-87, -125, 32, -31, 83, 0, -45, -17, -123, -104, 22, -1, 74, 17, -23, -22, -74, -107, 13, -1, 124, 10, -48, -19}, new byte[]{-38, -12, ByteCompanionObject.MAX_VALUE, -110, 35, 101, -74, -117}), bool);
    }

    /* JADX INFO: renamed from: k */
    public static Boolean m1493k() {
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
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{79}, new byte[]{ByteCompanionObject.MAX_VALUE, 125, 56, -75, -47, -65, 60, -122}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: n */
    public static void m1494n() {
        f1471k = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-90, 76, -14, -30, -49, 107, 30, 41, -97, 72, -20, -6}, new byte[]{-21, 45, -127, -118, -112, 5, ByteCompanionObject.MAX_VALUE, 91}), 0);
        C1652b.m2734a().m2757u();
        C3324b c3324b = (C3324b) C3326d.m5242a().f9736a.get(C3324b.class);
        c3324b.f9727b.postValue(C1652b.m2734a().m2754e());
    }

    /* JADX INFO: renamed from: q */
    public static void m1495q(Context context, boolean z9) {
        ArrayList arrayList = Notik.f1486l;
        context.getApplicationContext().stopService(new Intent(context.getApplicationContext(), (Class<?>) Notik.class));
        ScheduledFuture scheduledFuture = f1479s;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            f1479s.cancel(true);
        }
        Notik.f1488n = z9;
        if (z9) {
            f1479s = f1463c.schedule(new RunnableC0707c(context, 2), 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: renamed from: r */
    public static void m1496r(Context context, boolean z9) {
        boolean z10 = ServiceC1080Si.f1588d;
        Context applicationContext = context.getApplicationContext();
        applicationContext.stopService(new Intent(applicationContext, (Class<?>) ServiceC1080Si.class));
        ScheduledFuture scheduledFuture = f1478r;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            f1478r.cancel(true);
        }
        ServiceC1080Si.f1588d = z9;
        if (z9) {
            f1478r = f1463c.schedule(new RunnableC0707c(context, 3), 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1497a() {
        int i10 = f1467g;
        if (i10 < 0) {
            if (!MyA11yService.m1479f()) {
                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-14, 101, 68, -7, -3, -17, -7, 99, -60, 98, 86, -30, -21, -57, -10, 105, -43, 104, 96, -27, -24, -52, -10, 101}, new byte[]{-95, 17, 37, -117, -119, -82, -102, 0}));
                C1652b c1652bM2734a = C1652b.m2734a();
                synchronized (C1652b.f4207p) {
                    try {
                        if (c1652bM2734a.f4214b == null) {
                            Log.d(C1652b.f4194c, AbstractC1387m.m2421h(new byte[]{-9, -3, -69, -87, 76, -55, -79, -16, -8, -10, -83, -98, 76, -55}, new byte[]{-103, -104, -52, -7, 41, -69, -36, -67}));
                            c1652bM2734a.f4214b = new C0872m(C1652b.m2739h());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                C0872m c0872m = c1652bM2734a.f4214b;
                Context context = (Context) c0872m.f601c;
                int iCheckCallingOrSelfPermission = context.checkCallingOrSelfPermission(AbstractC1387m.m2421h(new byte[]{-61, 18, -53, -27, 125, 11, -78, -127, -46, 25, -35, -6, 123, 17, -91, -58, -51, 18, -127, -64, 64, 43, -126, -22, -3, 47, -22, -44, 71, 48, -109, -16, -15, 57, -5, -61, 91, 44, -111, -4}, new byte[]{-94, 124, -81, -105, 18, 98, -42, -81}));
                context.getPackageManager();
                if (iCheckCallingOrSelfPermission == 0 && !MyA11yService.m1479f()) {
                    C0872m.m976j((ContentResolver) c0872m.f604f, (String) c0872m.f602d);
                }
            }
            f1467g = 2;
        } else {
            f1467g = i10 - 1;
        }
        if (MyA11yService.m1479f()) {
            f1463c.schedule(new RunnableC0014g(15, this), 500L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m1498i() {
        m1496r(this.f1481b, true);
        C1652b.m2734a();
        C1440x1 c1440x1M2741k = C1652b.m2741k();
        c1440x1M2741k.f3485n.post(new RunnableC1432v1(c1440x1M2741k, 2));
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{44, -90, 21, -86, -29, -24, -36, 27, 0, -95, 56, -74, -56, -18, -37}, new byte[]{95, -47, 74, -39, -105, -119, -82, 111}), false) && m1493k().booleanValue()) {
            C1652b.m2734a();
            C1652b.m2735c().StartProGu(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{84, 109, 43, -105, -99, -99, -102, 80, 123, 88, 9, -105, -113, -104, -121, 81, 74, 78, 15, -87, -100, -103, -84, 89, 96}, new byte[]{21, Base64.padSymbol, 123, -56, -18, -19, -13, 62}), null));
        }
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{25, 49, -83, ByteCompanionObject.MIN_VALUE, -56, -92, 60, -103, 25, 50, -109, -109, -55, -113, 49, -86, 11, 37, -103}, new byte[]{106, 70, -14, -31, -67, -48, 83, -58}), false) && m1493k().booleanValue()) {
            AbstractC3656k.m5875u(this.f1481b, new Intent(this.f1481b, (Class<?>) BlackActivity.class).addFlags(268435456), null);
        }
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-26, 53, -90, 120, 75, -5, 53, 108, -26, 54, -104, 107, 74, -48, 45, 86, -9, 29, -107, 120, 75, -31, 57, 91, -16, 48}, new byte[]{-107, 66, -7, 25, 62, -113, 90, 51}), false) && m1493k().booleanValue()) {
            AbstractC3656k.m5875u(this.f1481b, new Intent(this.f1481b, (Class<?>) WebLauncherActivity.class).addFlags(872415232), null);
        }
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{9, -115, 23, 90, 31, -127, -86, -54, 10, -118, 23, 69, 5, -99, -112}, new byte[]{122, -6, 72, 40, 106, -17, -11, -85}), false) && m1493k().booleanValue()) {
            C1652b.m2734a();
            C1652b.m2737f().m2988a(AbstractC1387m.m2421h(new byte[]{-109, -40, 26, -72, 31, -120, 50, -123, -116, -62, 6, -126, 33, -117, 39, -82, -107, -60, 26, ByteCompanionObject.MIN_VALUE, 13}, new byte[]{-31, -83, 116, -25, 126, -8, 66, -38}));
        }
    }

    /* JADX INFO: renamed from: l */
    public final void m1499l() {
        if (!f1470j) {
            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{13, -91, 12, -35, 5, -54, -53, -23, 108, 0, -20, 98, -8, 116, 83, 20, -1, 0, -56, 99, -56, 116, 94, 20, -9, 1, -12, -110, -102, 25, 59, 113, 108, 0, -49, 98, -6, 116, 84, 21, -49, 1, -15, 98, -1, 116, 86}, new byte[]{76, -48, 120, -78, 74, -92, -21, -60}));
            return;
        }
        m1488e();
        long jLoadInt = ((long) C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{108, 106, -117, 111, 36, -97, -113, -43, 65, 92, -87, 100, 63, -79, -123, -46, 103, 80, -91, 88, 37, -69, -83}, new byte[]{56, 3, -26, 10, 96, -2, -29, -76}) + f1475o, 0)) * 60000;
        long jLoadLong = C1652b.m2745o().loadLong(AbstractC1387m.m2421h(new byte[]{-102, -103, -44, -71, -20, -123, 0, -40, -104, -120, -59, -75, -19, -108, 16, -59, -124, -114, -55, -67, -26, -103, 0, -49, -98, -106, -63, -87}, new byte[]{-37, -38, ByteCompanionObject.MIN_VALUE, -16, -93, -53, 95, -117}), 0L) - C1652b.m2745o().loadLong(AbstractC1387m.m2421h(new byte[]{5, 86, 21, -7, -21, -83, 115, 20, 7, 71, 4, -11, -22, -68, 99, 1, 2, 74, 21, -7, -23, -90, 126, 24, 0, 80, 13, -15, -3}, new byte[]{68, 21, 65, -80, -92, -29, 44, 71}), 0L);
        if (jLoadInt == 0 || jLoadInt < jLoadLong) {
            String strM2421h = AbstractC1387m.m2421h(new byte[]{115, 49, 83, 24, -64, -27, -84, 89, 104, 60, 90, 30, -45, -24, -96, 88, 123, 33, 83, 13, -60, -7, -89, 84, 118, 52, 88, 18, -50, -7}, new byte[]{58, 117, 12, 91, -127, -73, -13, 29});
            EnumC1335b2 enumC1335b2 = EnumC1335b2.f3186c;
            m1503s(enumC1335b2, strM2421h, new RunnableC1330a2(strM2421h, 1), new RunnableC1431v0(12));
            String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-99, 110, -74, 45, 89, 0, 62, 63, -101, 122, -96, 34, 87, 6, 62, 47, -111, 107, -67, 49, 78, 23, 47, 40, -99, 102, -88, 58, 81, 29, 47}, new byte[]{-44, 42, -23, 110, 24, 82, 97, 124});
            m1503s(enumC1335b2, strM2421h2, new RunnableC1330a2(strM2421h2, 2), new RunnableC1431v0(13));
            String strM2421h3 = AbstractC1387m.m2421h(new byte[]{52, -14, 9, -44, -55, -53, 75, 105, 47, -1, 0, -46, -38, -58, 71, 104, 60, -30, 9, -33, -51, -40, 64}, new byte[]{125, -74, 86, -105, -120, -103, 20, 45});
            EnumC1335b2 enumC1335b3 = EnumC1335b2.f3185b;
            m1503s(enumC1335b3, strM2421h3, new RunnableC1330a2(strM2421h3, 3), new RunnableC1431v0(2));
            String strM2421h4 = AbstractC1387m.m2421h(new byte[]{100, 87, 103, -36, -63, -99, -71, 117, 98, 67, 113, -45, -49, -101, -71, 101, 104, 82, 108, -64, -56, -118, -89, 98}, new byte[]{45, 19, 56, -97, ByteCompanionObject.MIN_VALUE, -49, -26, 54});
            m1503s(enumC1335b3, strM2421h4, new RunnableC1330a2(strM2421h4, 0), new RunnableC1431v0(3));
            m1503s(enumC1335b3, AbstractC1387m.m2421h(new byte[]{124, -4, 6, 109, 97, 116, -62, 111, 97, -3, 28, 124, ByteCompanionObject.MAX_VALUE, 113, -43, 121, 112, -12, 6, 102, 101, 103, -55}, new byte[]{53, -72, 89, 46, 32, 38, -99, 60}), new RunnableC1431v0(4), new RunnableC1431v0(5));
            m1503s(enumC1335b3, AbstractC1387m.m2421h(new byte[]{103, 31, 46, -109, 5, 9, 84, -45, 111, 9, 46, -106, 3, 16, 84, -39, 125, 15}, new byte[]{46, 91, 113, -46, 70, 86, 6, -106}), new RunnableC1431v0(8), new RunnableC1431v0(9));
            m1503s(enumC1335b3, AbstractC1387m.m2421h(new byte[]{-109, -60, -123, -109, -92, -4, -102, 125, -107, -50, -114, -115, -96, -17, -99, 124, -119, -33, -110, -105, -90, -9}, new byte[]{-38, ByteCompanionObject.MIN_VALUE, -38, -46, -25, -93, -36, 47}), new RunnableC1431v0(10), new RunnableC1431v0(11));
        } else {
            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{47, -76, 35, -3, 77, 119, 5, 49, 78, 17, -54, 66, -73, 57, -11, -93, -65, 65, -121, 44, -45, -111, -11, -89, -66, ByteCompanionObject.MAX_VALUE, 119, 66, -74, -55, -101, -51, -17, 16, -43, 66, -78, -56, -89, -52, -48, 16, -48, 66, -65, -55, -101, 60, -66, 115, -122, 18, -46, -84, -11, -96, -66, 116, -121, 47, -46, -95, 5, -51, -17, -31, -121, 45, -45, -103, -11, -87, -66, 117, -122, 25, -46, -83, -12, -97, -65, 72, -121, 39, -46, -96, 5, -52, -47, 17, -23, 66, -73, -55, -110, -52, -38, 17, -19, 66, -70, 57}, new byte[]{110, -63, 87, -110, 2, 25, 37, 28}) + (jLoadLong / 60000.0d) + AbstractC1387m.m2421h(new byte[]{-126, -89, -79, 121, -74, 122}, new byte[]{82, 27, 97, -63, 102, -57, 12, 2}));
        }
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{24, 52, -11, -125, -81, 77, -84, -113, 4, 62, -7, -120, -81, 91, -74}, new byte[]{81, 112, -86, -64, -18, 31, -13, -36}) + f1475o, false) && m1486c(AbstractC1387m.m2421h(new byte[]{-63, 101, -25, -64, 37, 111, -115, -29, -35, 111, -21, -53, 37, 121, -105}, new byte[]{-120, 33, -72, -125, 100, Base64.padSymbol, -46, -80})).booleanValue() && f1469i) {
            C1652b.m2734a();
            C1652b.m2736d().sunupdown(Boolean.TRUE);
            m1487d(AbstractC1387m.m2421h(new byte[]{-127, 46, 16, -60, 9, 0, -125, 14, -99, 36, 28, -49, 9, 22, -103}, new byte[]{-56, 106, 79, -121, 72, 82, -36, 93}), Boolean.FALSE);
            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{89, 50, -26, -21, -45, 85, 89, -124, 69, 56, -22, -32, -45, 67, 67, -120, 95, 38, -4, -26}, new byte[]{16, 118, -71, -88, -110, 7, 6, -41}), ColorText.RED);
        }
    }

    /* JADX INFO: renamed from: m */
    public final EnumC1737a m1500m() {
        C1390m2 c1390m2 = f1468h;
        if (c1390m2 == null) {
            f1468h = new C1390m2(this.f1481b);
            return null;
        }
        SharedPreferences sharedPreferences = c1390m2.f3330a;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String str = C1390m2.f3329b;
        if (sharedPreferences.getLong(str, -1L) <= jElapsedRealtime) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putLong(str, jElapsedRealtime);
            editorEdit.apply();
            return null;
        }
        SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
        editorEdit2.putLong(str, jElapsedRealtime);
        editorEdit2.apply();
        m1492j();
        C1652b.m2734a();
        EnumC1737a enumC1737aMo2695c = C1652b.m2742l().mo2695c();
        EnumC1737a enumC1737a = EnumC1737a.f4525c;
        if (enumC1737aMo2695c.equals(enumC1737a)) {
            m1498i();
            boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{116, 124, -47, -58}, new byte[]{22, 19, -66, -78, -84, 30, -37, 54}), false);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = f1463c;
            if (zLoadBoolean) {
                scheduledThreadPoolExecutor.schedule(new RunnableC1431v0(6, this), 10000L, timeUnit);
            }
            if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{34, -45, 7, -93, -52, -27, 121, 2, 60, -12, 8, -77, -51, -9, ByteCompanionObject.MAX_VALUE, 25}, new byte[]{81, -92, 88, -32, -71, -106, 13, 109}), false)) {
                scheduledThreadPoolExecutor.schedule(new RunnableC1431v0(7, this), 10000L, timeUnit);
            }
        }
        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{113, 73, 60, -90, 117, 56, 15, 38, 112, 83, 44, -68, 116}, new byte[]{35, 12, 126, -23, 58, 108, 80, 105}));
        return enumC1737a;
    }

    public native boolean m3643p(String str, boolean z9);

    /* JADX INFO: renamed from: o */
    public final void m1501o() {
        C1652b.m2734a();
        C1652b.m2742l().mo2693a(new Intent(EnumC1737a.f4527e.name()));
        if (m1486c(AbstractC1387m.m2421h(new byte[]{-20, 18, 14, 117, 106, -94, 94, -4, -64, 9, 56, 107, 115, -77, 100, -7, -13, 4, 35, 107, 69, -88, 93, -2}, new byte[]{-97, 101, 81, 6, 26, -57, 59, -104})).booleanValue() && C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-48, -89, -59, -95, 18, 85, -43, 37, -4, -68, -13, -65, 11, 68, -17, 32, -49, -79, -24, -65, Base64.padSymbol, 95, -42, 39}, new byte[]{-93, -48, -102, -46, 98, 48, -80, 65}), false)) {
            C1652b.m2734a();
            C1652b.m2736d().offSpeedLimitAlarm();
            m1487d(AbstractC1387m.m2421h(new byte[]{33, 44, 90, -43, -25, -3, -73, 106, 13, 55, 108, -53, -2, -20, -115, 111, 62, 58, 119, -53, -56, -9, -76, 104}, new byte[]{82, 91, 5, -90, -105, -104, -46, 14}), Boolean.FALSE);
            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-95, 51, 71, -30, 47, 84, 56, -57, -65, 42, 86, -40, 42, 103, 53, -36, -65, 28, 77, -31, 45}, new byte[]{-46, 67, 34, -121, 75, 11, 84, -82}), ColorText.RED);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, Intent intent) {
        final Context applicationContext = context.getApplicationContext();
        final Intent intent2 = new Intent(intent);
        final String action = intent2.getAction();
        if (action != null && action.equals(AbstractC1387m.m2421h(new byte[]{-12, -35, 8, -98, 8, 3, -8, -16, -9, -33, 25, -119, 19, 5, -13, -86, -3, -99, 8, -119, 17, 3, -1, -69, -69, -46, 15, -104, 14, 5, -14, -16, -44, -16, 32, -77, 36, 37, -46, -112, -48, -16, 56, -87, 35}, new byte[]{-107, -77, 108, -20, 103, 106, -100, -34}))) {
            m1496r(context, true);
            m1495q(context, true);
        }
        boolean z9 = false;
        if (!m1493k().booleanValue()) {
            String action2 = intent2.getAction();
            if (action2 == null || AbstractC1387m.m2421h(new byte[]{62, 98, 8, 82, 9, 70, -33, 112, 54, 98, 24, 69, 8, 91, -107, 63, 60, 120, 5, 79, 8, 1, -17, 23, 18, 73, 51, 116, 47, 108, -16}, new byte[]{95, 12, 108, 32, 102, 47, -69, 94}).equals(action2)) {
                return;
            }
            synchronized (f1464d) {
                try {
                    ArrayList arrayList = f1465e;
                    if (arrayList.size() >= 20) {
                        arrayList.remove(0);
                    }
                    arrayList.add(new Intent(intent2));
                } catch (Throwable th) {
                    throw th;
                }
            }
            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-102, 101, 26, 56, 84, -101, 12, 88, -92, 116, 17, 50, 73, -90, 10, 103, -81, 32, 89, 124}, new byte[]{-54, 0, 116, 92, Base64.padSymbol, -11, 107, 17}).concat(action2), ColorText.RED);
            return;
        }
        synchronized (f1464d) {
            try {
                ArrayList arrayList2 = f1465e;
                if (!arrayList2.isEmpty()) {
                    ArrayList arrayList3 = new ArrayList(arrayList2);
                    arrayList2.clear();
                    C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{32, 55, -94, -8, -117, 2, -29, 42, 30, 38, -87, -14, -106, 62, -15, 13, 80, ByteCompanionObject.MAX_VALUE, -20}, new byte[]{112, 82, -52, -100, -30, 108, -124, 99}) + arrayList3.size(), ColorText.RED);
                    int size = arrayList3.size();
                    int i10 = 0;
                    int i11 = 0;
                    while (i11 < size) {
                        Object obj = arrayList3.get(i11);
                        i11++;
                        Intent intent3 = (Intent) obj;
                        if (!AbstractC1387m.m2421h(new byte[]{-15, -67, 5, 100, -44, -16, -40, 82, -7, -67, 21, 115, -43, -19, -110, 29, -13, -89, 8, 121, -43, -73, -24, 53, -35, -106, 62, 66, -14, -38, -9}, new byte[]{-112, -45, 97, 22, -69, -103, -68, 124}).equals(intent3.getAction())) {
                            f1463c.schedule(new RunnableC0873n(this, applicationContext, intent3, 3), ((long) i10) * 250, TimeUnit.MILLISECONDS);
                            i10++;
                        }
                        z9 = z9;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        boolean z10 = z9;
        if (action.equals(AbstractC1387m.m2421h(new byte[]{37, -52, 72, 10, -59, 106, 122, -57, 45, -52, 88, 29, -60, 119, 48, -120, 39, -42, 69, 23, -60, 45, 77, -86, 22, -25, 105, 54, -11, 76, 88, -81}, new byte[]{68, -94, 44, 120, -86, 3, 30, -23})) && m1493k().booleanValue()) {
            Log.e(AbstractC1387m.m2421h(new byte[]{-19, 84, 64, 32, -113, -101, -67, 119, -59, 68, 117, 36, -113}, new byte[]{-96, 45, 3, 65, -3, -55, -40, 20}), AbstractC1387m.m2421h(new byte[]{-109, -71, -37, -104, -101, 94, 112, 102, -103, -120, -56, -66, -84, 114, 86, 94, -93, -124, -54, -81, -67, 126, 87, 79, -77, -111, -49}, new byte[]{-4, -41, -119, -3, -8, 59, 25, 16}));
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - C1652b.m2745o().loadLong(AbstractC1387m.m2421h(new byte[]{45, 43, ByteCompanionObject.MAX_VALUE, -58, 60, -3, -9, -73, 47, 58, 110, -54, Base64.padSymbol, -20, -25, -86, 51, 60, 98, -62, 54, -31, -9, -96, 41, 36, 106, -42}, new byte[]{108, 104, 43, -113, 115, -77, -88, -28}), jCurrentTimeMillis) > 10000) {
                C1652b.m2745o().saveLong(AbstractC1387m.m2421h(new byte[]{-110, 19, 42, -32, 71, 16, -25, -106, -112, 2, 59, -20, 70, 1, -9, -125, -107, 15, 42, -32, 69, 27, -22, -102, -105, 21, 50, -24, 81}, new byte[]{-45, 80, 126, -87, 8, 94, -72, -59}), jCurrentTimeMillis);
            } else {
                C1652b.m2745o().saveLong(AbstractC1387m.m2421h(new byte[]{43, 29, -48, 121, -75, 38, -89, -12, 41, 12, -63, 117, -76, 55, -73, -23, 53, 10, -51, 125, -65, 58, -89, -29, 47, 18, -59, 105}, new byte[]{106, 94, -124, 48, -6, 104, -8, -89}), f1466f);
            }
            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-70, 125, 117, -22, -111, 90, -102, -25, -80, 76, 102, -52, -90, 118, -68, -33, -118, 64, 100, -35, -73, 122, -67, -50, -102, 85, 97}, new byte[]{-43, 19, 39, -113, -14, 63, -13, -111}));
            f1472l = z10;
            m1492j();
            f1470j = z10;
            m1496r(context, z10);
            m1495q(context, z10);
        }
        f1463c.execute(new Runnable() { // from class: e0.z1
            @Override // java.lang.Runnable
            public final void run() {
                int i12;
                MyCarReceiver myCarReceiver = this.f3512b;
                myCarReceiver.f1481b = applicationContext;
                EnumC1737a enumC1737aM1500m = myCarReceiver.m1500m();
                String strM2421h = AbstractC1387m.m2421h(new byte[]{30, 56, -102, 27, 24}, new byte[]{110, 87, -19, 126, 106, 90, -80, 43});
                Context context2 = context;
                if (((PowerManager) context2.getSystemService(strM2421h)).isInteractive()) {
                    if (!MyCarReceiver.f1474n.booleanValue()) {
                        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{3, 10, 101, 85, -41, 90, -80, 104, Base64.padSymbol, 4, 117, 85, -41, 90, -86, 104, 56, 0, 77, 101, -43}, new byte[]{83, 101, 18, 48, -91, 5, -3, 9}));
                        MyCarReceiver.f1474n = Boolean.TRUE;
                    }
                } else if (MyCarReceiver.f1474n.booleanValue()) {
                    C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-7, 34, -119, -103, -95, -14, 29, 55, -57, 44, -103, -103, -95, -14, 7, 55, -62, 40, -95, -77, -75, -53}, new byte[]{-87, 77, -2, -4, -45, -83, 80, 86}));
                    MyCarReceiver.f1474n = Boolean.FALSE;
                }
                AbstractC1387m.m2416c();
                if (MyCarReceiver.f1476p == 0) {
                    MyCarReceiver.f1476p = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{4, -127, 69, 59, -98, -88, 41, 0, 17, -110, 75}, new byte[]{112, -28, 46, 77, -15, -52, 118, 115}), 1);
                }
                C1343d0.m2389d(context2);
                if (MainActivity.m1426w() || MainActivity.m1425v(context2)) {
                    throw null;
                }
                if (MyCarReceiver.m1493k().booleanValue()) {
                    String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-67, 103, -61, 18, 6, -46, Base64.padSymbol, 115, -75, 103, -45, 5, 7, -49, 119, 60, -65, 125, -50, 15, 7, -107, 13, 20, -111, 76, -8, 52, 32, -8, 18}, new byte[]{-36, 9, -89, 96, 105, -69, 89, 93});
                    String str = action;
                    if (str.equals(strM2421h2)) {
                        MyCarReceiver.m1494n();
                        MyCarReceiver.f1469i = C1652b.m2734a().m2754e().f3360b;
                        Boolean bool = C1652b.m2734a().m2754e().f3361c;
                        if (!MyCarReceiver.f1470j && bool.booleanValue()) {
                            myCarReceiver.m1502p();
                            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-27, 2, 105, 41, -79, 106, 35, 7, -8, 25, 120, 51, -66, 110, 62, 0, -14, 8, 116, 34, -79, 125, 50, 17, -8, 25}, new byte[]{-73, 87, 39, 118, -16, 41, 119, 78}));
                        }
                        if (MyCarReceiver.f1470j && !bool.booleanValue()) {
                            ConcurrentHashMap concurrentHashMap = myCarReceiver.f1480a;
                            Iterator it = concurrentHashMap.values().iterator();
                            while (it.hasNext()) {
                                ((ScheduledFuture) it.next()).cancel(true);
                            }
                            concurrentHashMap.clear();
                            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{13, -47, -77, -74, 57, 118, 21, 103, 16, -54, -94, -84, 54, 114, 8, 96, 26, -37, -82, -67, 57, 97, 4, 113, 16, -62, -69}, new byte[]{95, -124, -3, -23, 120, 53, 65, 46}));
                        }
                        MyCarReceiver.f1470j = bool.booleanValue();
                        MyCarReceiver.f1471k = C1652b.m2734a().m2754e().f3362d;
                        MyCarReceiver.f1477q = C1652b.m2734a().m2754e().f3364f;
                        MyCarReceiver.f1475o = C1652b.m2734a().m2754e().f3363e;
                        C1343d0.m2389d(context2);
                        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{36, -119, -35, 99, 91, -119, 23, 16, 36, -94, -35, 110, 91, -122, 23, 28, -44, -59, -113, 3, 63, -39, 122, 67, 65, -60, -78, 3, 63, -40, 70, 67, 68, -59, -113, 2, 9, -40, 70, 67, 68, 46, 45}, new byte[]{-12, 20, 13, -45, -118, 9, -58, -109}) + C1652b.m2734a().m2754e().f3362d + AbstractC1387m.m2421h(new byte[]{70, -35, -49, 44, 28, -32, -112, 117, -49, -36, -28, 44, 17, -32, -109, -124, -100, -65, -67, 66, 121, -124, -6, 28, -99, -113, -67, 73, 121, -117, -5, 40, 118, 45}, new byte[]{76, 13, 109, -4, -87, 48, 42, -92}) + MyCarReceiver.f1475o + AbstractC1387m.m2421h(new byte[]{-121, 93, -18, -107, 67, -6, 106, 87, 62, 93, -54, -108, 115, -6, 103, 87, 54, 92, -10, 101, 33, -99, 2, 55, 93, 50, -85, -58, 32, -93, 2, 50, 93, 48, 64, 101}, new byte[]{-115, -115, 122, 69, -15, 42, -46, -121}) + C1652b.m2734a().m2754e().f3361c + AbstractC1387m.m2421h(new byte[]{-12, 74, 124, -12, 124, 125, -98, 76, 126, 74, 99, -11, 71, 124, -94, 76, 114, -70, 13, -108, 22, 31, -15, 31, 46, 36, 13, -104, 22, 19, -16, 44, 46, 34, 13, -97, 23, 34, 26, -67}, new byte[]{-2, -102, -35, 36, -58, -83, 32, -99}) + C1652b.m2734a().m2754e().f3364f + "\n");
                        Set<Thread> setKeySet = Thread.getAllStackTraces().keySet();
                        int iM2480a = AbstractC1434w.m2480a();
                        int i13 = (((int) Runtime.getRuntime().totalMemory()) / 1024) / 1024;
                        StringBuilder sb = new StringBuilder();
                        AbstractC1178q.m2086t(new byte[]{54, -60, -48, -23, 33, 109, 56, -2}, new byte[]{123, -95, -67, -122, 83, 20, 2, -34}, sb, i13);
                        sb.append(AbstractC1387m.m2421h(new byte[]{-115, 70, -66, 26, -62, 62, -76, 77, -74, 97, -78, 110, -21, 47, -91, 69, -92, 119, -88, 26}, new byte[]{-64, 4, -110, 58, -125, 93, -64, 36}));
                        sb.append(Thread.activeCount());
                        sb.append(AbstractC1387m.m2421h(new byte[]{-114, 51, 41, -7, 69, -3, 99, -55, -42, 123, 15, -13, 80, -8, 124, -45, -126}, new byte[]{-94, 19, 125, -106, 49, -100, 15, -23}));
                        sb.append(setKeySet.size());
                        C1652b.m2751w(AbstractC1178q.m2076j(new byte[]{-118, 16, 95, -52, 115, -115, -97, 51, -11, 89, 116, -36, 44, -40}, new byte[]{-90, 48, 14, -71, 22, -8, -6, 19}, sb, iM2480a), (iM2480a < 50 || i13 < 50) ? ColorText.GREEN : ColorText.RED);
                        ((C3324b) C3326d.m5242a().f9736a.get(C3324b.class)).f9726a.postValue(Boolean.valueOf(MyA11yService.m1479f()));
                        C1343d0.m2389d(context2);
                        int i14 = MyCarReceiver.f1476p;
                        int i15 = MyCarReceiver.f1475o;
                        if (i14 == i15) {
                            myCarReceiver.m1499l();
                        } else if (i15 != 0) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvent(1, 1);
                            C1652b.m2734a();
                            C1652b.m2736d().carsetheat(1, 1);
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvent(1, 2);
                            C1652b.m2734a();
                            C1652b.m2736d().carsetheat(1, 2);
                            C1343d0.m2389d(context2);
                            C1652b.m2734a();
                            CarCmdProxy carCmdProxyM2736d = C1652b.m2736d();
                            Boolean bool2 = Boolean.FALSE;
                            carCmdProxyM2736d.rulheatonoff(bool2);
                            C1652b.m2734a();
                            C1652b.m2736d().lobheatonoff(bool2);
                            C1652b.m2734a();
                            C1652b.m2736d().zadheatonoff(bool2);
                            MyCarReceiver.m1492j();
                            MyCarReceiver.f1476p = MyCarReceiver.f1475o;
                            C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{-9, 47, 64, -120, -70, -59, 7, 9, -30, 60, 78}, new byte[]{-125, 74, 43, -2, -43, -95, 88, 122}), MyCarReceiver.f1475o);
                        }
                        MyCarReceiver.m1485b(context2);
                        C1343d0.m2389d(context2);
                        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-83, 54, ByteCompanionObject.MAX_VALUE, 9, -90, -80, -3, -126, -78, 57, 94, 18, -126, -96, -19}, new byte[]{-3, 87, 13, 98, -25, -59, -119, -19}), false) && (i12 = MyCarReceiver.f1477q) > 0 && i12 < C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-108, -125, -92, 26, -102, -96, 74, 93, -95, -121, -78, 39, -76, -94, 108, 72}, new byte[]{-60, -30, -42, 113, -43, -50, 25, 45}), 0)) {
                            C1652b.m2734a();
                            C1652b.m2736d().parkonoff(Boolean.TRUE);
                        }
                        myCarReceiver.m3643p(boot.m1612c(context2), true);
                    }
                    if (str.equals(AbstractC1387m.m2421h(new byte[]{97, 66, -64, 65, 80, -117, -80, -25, 105, 66, -48, 86, 81, -106, -6, -88, 99, 88, -51, 92, 81, -52, -127, -102, 69, 126, -5, 99, 109, -89, -121, -116, 78, 120}, new byte[]{0, 44, -92, 51, 63, -30, -44, -55}))) {
                        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-32, -63, -91, 96, 24, -63, -60, -103, -22, -16, -74, 70, 47, -19, -30, -95, -48, -6, -92, 64, 41, -5, -3, -67, -54, -4, -78, 75, 47, -124}, new byte[]{-113, -81, -9, 5, 123, -92, -83, -17}));
                    }
                    if (str.equals(AbstractC1387m.m2421h(new byte[]{96, -57, 88, 55, -64, 48, -50, 79, 104, -57, 72, 32, -63, 45, -124, 0, 98, -35, 85, 42, -63, 119, -7, 34, 83, -20, 121, 11, -16, 22, -28}, new byte[]{1, -87, 60, 69, -81, 89, -86, 97})) && MyCarReceiver.m1493k().booleanValue()) {
                        Log.e(AbstractC1387m.m2421h(new byte[]{-63, -68, -125, 36, -58, 15, -94, -74, -23, -84, -74, 32, -58}, new byte[]{-116, -59, -64, 69, -76, 93, -57, -43}), AbstractC1387m.m2421h(new byte[]{4, 73, -5, 96, -103, -29, -119, 69, 14, 120, -24, 70, -82, -49, -81, 125, 52, 116, -22, 87, -65, -61, -82, 108, 36, 105}, new byte[]{107, 39, -87, 5, -6, -122, -32, 51}));
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        MyCarReceiver.f1466f = C1652b.m2745o().loadLong(AbstractC1387m.m2421h(new byte[]{-28, 97, 95, -24, 65, -68, 115, -99, -26, 112, 78, -28, 64, -83, 99, ByteCompanionObject.MIN_VALUE, -6, 118, 66, -20, 75, -96, 115, -118, -32, 110, 74, -8}, new byte[]{-91, 34, 11, -95, 14, -14, 44, -50}), jCurrentTimeMillis2);
                        C1652b.m2745o().saveLong(AbstractC1387m.m2421h(new byte[]{46, 68, 98, 30, 41, 10, 89, -127, 44, 85, 115, 18, 40, 27, 73, -100, 48, 83, ByteCompanionObject.MAX_VALUE, 26, 35, 22, 89, -106, 42, 75, 119, 14}, new byte[]{111, 7, 54, 87, 102, 68, 6, -46}), jCurrentTimeMillis2);
                        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{35, -63, 78, -106, -53, -51, 36, -77, 41, -16, 93, -80, -4, -31, 2, -117, 19, -4, 95, -95, -19, -19, 3, -102, 3, -31}, new byte[]{76, -81, 28, -13, -88, -88, 77, -59}));
                        MyCarReceiver.f1472l = true;
                        C1652b.m2734a().m2757u();
                        ((C3324b) C3326d.m5242a().f9736a.get(C3324b.class)).f9727b.postValue(C1652b.m2734a().m2754e());
                        C1343d0.m2389d(context2);
                        MyCarReceiver.m1494n();
                        MyCarReceiver.f1475o = C1652b.m2734a().m2754e().f3363e;
                        C1652b.m2734a();
                        if (C1652b.m2742l().mo2695c().equals(EnumC1737a.f4524b)) {
                            myCarReceiver.m1498i();
                        }
                        MyCarReceiver.m1495q(context2, true);
                    }
                    if (str.equals(AbstractC1387m.m2421h(new byte[]{-123, 119, 126, -104, -127, -36, -23, -43, -122, 117, 111, -113, -102, -38, -30, -113, -116, 55, 126, -113, -104, -36, -18, -98, -54, 120, 121, -98, -121, -38, -29, -43, -91, 90, 86, -75, -83, -6, -61, -75, -95, 90, 78, -81, -86}, new byte[]{-28, 25, 26, -22, -18, -75, -115, -5})) && MyCarReceiver.m1493k().booleanValue()) {
                        BluetoothDevice bluetoothDevice = (BluetoothDevice) intent2.getParcelableExtra(AbstractC1387m.m2421h(new byte[]{-5, -9, 35, 44, -15, -60, -43, -97, -8, -11, 50, 59, -22, -62, -34, -59, -14, -73, 35, 59, -24, -60, -46, -44, -76, -4, 63, 42, -20, -52, -97, -11, -33, -49, 14, 29, -37}, new byte[]{-102, -103, 71, 94, -98, -83, -79, -79}));
                        if (bluetoothDevice != null && (ContextCompat.checkSelfPermission(context2, AbstractC1387m.m2421h(new byte[]{-82, -11, 75, 38, 87, 94, 122, -40, -65, -2, 93, 57, 81, 68, 109, -97, -96, -11, 1, 22, 116, 98, 91, -94, ByteCompanionObject.MIN_VALUE, -44, 123, 28, 103, 116, 81, -72, -127, -34, 108, 0}, new byte[]{-49, -101, 47, 84, 56, 55, 30, -10})) == 0 || Build.VERSION.SDK_INT < 31)) {
                            AbstractC1387m.f3313a = Boolean.TRUE;
                            AbstractC1387m.f3314b = bluetoothDevice.getName();
                        }
                        MyCarReceiver.f1475o = C1652b.m2734a().m2754e().f3363e;
                        MyCarReceiver.m1485b(context2);
                        C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{93, 99, -95, -52, 59, -56, -18, -3, 119, 80, -105, -26, 1, -23, -60, -54, 75, 74, -112, -119, 98, -121}, new byte[]{31, 15, -44, -87, 79, -89, -127, -119}) + AbstractC1387m.f3314b);
                    }
                    C1343d0.m2389d(context2);
                }
                boolean z11 = MyCarReceiver.f1470j;
                if (z11 && MyCarReceiver.f1472l && MyCarReceiver.f1473m) {
                    MyCarReceiver.f1473m = false;
                    myCarReceiver.m1501o();
                    C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{49, -88, -118, -9, 40, -69, 27, 117, 55, -76, -120, -5, 40, -95, 11, 104, 43, -76, -104, -16}, new byte[]{116, -26, -51, -66, 102, -2, 68, 38}), ColorText.RED);
                } else if (!z11 && !MyCarReceiver.f1472l && !MyCarReceiver.f1473m) {
                    MyCarReceiver.f1473m = true;
                }
                try {
                    C1652b.m2734a();
                    C1652b.m2738g().mo3012a(context2, enumC1737aM1500m);
                } catch (Exception unused) {
                }
                if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-51, 52, -77, -38, 103, -122, -110, 73, -43, 28, -125, -46, 81, -126, -121, 70}, new byte[]{-66, 67, -20, -68, 14, -19, -31, 32}), false)) {
                    AbstractC2025a.m3119a(context2, false);
                }
                myCarReceiver.m1497a();
            }
        });
    }

    /* JADX INFO: renamed from: p */
    public final void m1502p() {
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{46, 66, -74, -84, -39, -60, -8, 35, 40, 72, -120, -71, -13, -60, -8, 35, 33, 88, -99, -94, -13, -61, -29, 29, 50, 89, -74, -88, -62, -41, -2, 18, 37}, new byte[]{64, 45, -23, -51, -84, -80, -105, 124}), true)) {
            C1652b.m2745o().saveLong(AbstractC1387m.m2421h(new byte[]{-81, 36, 88, 70, 37, 93, 22, 44, -83, 53, 73, 74, 36, 76, 6, 49, -79, 51, 69, 66, 47, 65, 22, 59, -85, 43, 77, 86}, new byte[]{-18, 103, 12, 15, 106, 19, 73, ByteCompanionObject.MAX_VALUE}), System.currentTimeMillis());
        }
        C1652b.m2734a();
        if (C1652b.m2742l().mo2695c().equals(EnumC1737a.f4526d)) {
            m1498i();
        }
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{3, -97, 79, -92, -59, -110, -113, 32, 47, -101, 100, -72, -63, -84, -110, 50, 22}, new byte[]{112, -24, 16, -41, -79, -13, -3, 84}), false)) {
            C1652b.m2734a();
            C1652b.m2736d().offStartStop();
            C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{79, -53, -46, 87, 65, -48, 23, -24, 83, -49, -52, 74, 83, -55}, new byte[]{28, -97, -109, 5, 21, -113, 68, -68}), ColorText.RED);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x018c  */
    /* JADX WARN: Code duplicated, block: B:32:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:35:0x021f  */
    /* JADX WARN: Code duplicated, block: B:37:0x026f  */
    /* JADX WARN: Code duplicated, block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: s */
    public final void m1503s(EnumC1335b2 enumC1335b2, String str, Runnable runnable, Runnable runnable2) {
        boolean z9;
        boolean z10;
        boolean z11;
        int iLoadInt;
        C3277a c3277aM2745o = C1652b.m2745o();
        StringBuilder sbM170u = AbstractC0074a.m170u(str);
        sbM170u.append(AbstractC1387m.m2421h(new byte[]{-6, -17, -73, 17, -73}, new byte[]{-91, -69, -14, 92, -25, -10, -12, -43}));
        sbM170u.append(f1475o);
        int iLoadInt2 = c3277aM2745o.loadInt(sbM170u.toString(), 40);
        long jCurrentTimeMillis = System.currentTimeMillis() - 864000000;
        long jLoadInt = ((long) C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-89, 103, -73, -115, 111, -80, -52, 58, -118, 70, -65, -119, 95, -114, -49, 47, -84, 109, -69, -102, 88, -91, -63, 41, -121}, new byte[]{-13, 14, -38, -24, 43, -47, -96, 91}) + f1475o, 0)) * 60000;
        long jCurrentTimeMillis2 = System.currentTimeMillis() - C1652b.m2745o().loadLong(AbstractC1387m.m2421h(new byte[]{-119, -47, -101, 90, 44, -81, 95, 43, -117, -64, -118, 86, 45, -66, 79, 54, -105, -58, -122, 94, 38, -77, 95, 60, -115, -34, -114, 74}, new byte[]{-56, -110, -49, 19, 99, -31, 0, 120}), jCurrentTimeMillis);
        int iOrdinal = enumC1335b2.ordinal();
        boolean z12 = iOrdinal == 0 ? f1471k < iLoadInt2 : !(iOrdinal != 1 || f1471k <= iLoadInt2);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        StringBuilder sbM170u2 = AbstractC0074a.m170u(str);
        sbM170u2.append(f1475o);
        boolean zLoadBoolean = c3277aM2745o2.loadBoolean(sbM170u2.toString(), false);
        boolean zBooleanValue = m1486c(str).booleanValue();
        boolean zBooleanValue2 = m1486c(str.concat(AbstractC1387m.m2421h(new byte[]{84, 40, -80, -4, 37, 37}, new byte[]{11, 124, -7, -79, 96, 119, 38, -2}))).booleanValue();
        StringBuilder sbM170u3 = AbstractC0074a.m170u(str);
        AbstractC1178q.m2086t(new byte[]{45, -28}, new byte[]{23, -60, -9, 54, 58, -126, 5, 44}, sbM170u3, iLoadInt2);
        sbM170u3.append(AbstractC1387m.m2421h(new byte[]{-107, 24, 120, 68, -99, 50, 3, 78, -108, 24}, new byte[]{-71, 56, 55, 42, -46, 84, 101, 110}));
        sbM170u3.append(zLoadBoolean);
        sbM170u3.append(AbstractC1387m.m2421h(new byte[]{-106, 103, 22, -47, 11, 40, 49, -28, -49, 38, 21, -105, 64, 69}, new byte[]{-70, 71, 121, -73, 109, 101, 80, -118}));
        sbM170u3.append(zBooleanValue);
        sbM170u3.append(AbstractC1387m.m2421h(new byte[]{48, 26, 50, 82, -43, -123, -117, -14, 121, 26, 112, 20}, new byte[]{28, 58, 93, 52, -77, -47, -30, -97}));
        sbM170u3.append(zBooleanValue2);
        C1652b.m2750v(sbM170u3.toString());
        if (zLoadBoolean && zBooleanValue && zBooleanValue2) {
            if (!z12) {
                z9 = true;
                if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{81, -98, -67, 2, -25, -124, -28, -77, 124, -65, -75, 6, -41, -70, -20, -77, 113, -108, -72, 14, -56, -117, -23, -96, 112, -112, -113, 40, -19}, new byte[]{5, -9, -48, 103, -93, -27, -120, -46}) + f1475o, true)) {
                    z10 = false;
                }
                StringBuilder sbM170u4 = AbstractC0074a.m170u(str);
                sbM170u4.append(AbstractC1387m.m2421h(new byte[]{77, -89, 111, 101, 41, -52, -100, 109, 22, -13, 78, 114, 33, -100, -102, 119, 18, -28, 80, 32, 105, -100}, new byte[]{119, -121, 59, 0, 68, -68, -7, 31}));
                sbM170u4.append(z10);
                C1652b.m2750v(sbM170u4.toString());
                if (z10) {
                    if (System.currentTimeMillis() - C1652b.m2745o().loadLong(str.concat(AbstractC1387m.m2421h(new byte[]{40, -108, -55, 89, -90, -68, -88, -55, 50, -116, -63, 77}, new byte[]{119, -64, ByteCompanionObject.MIN_VALUE, 20, -29, -18, -9, -115})), jCurrentTimeMillis) > 0 || (jLoadInt != 0 && jCurrentTimeMillis2 >= jLoadInt)) {
                        z11 = false;
                    } else {
                        z11 = z9;
                    }
                    StringBuilder sbM170u5 = AbstractC0074a.m170u(str);
                    sbM170u5.append(AbstractC1387m.m2421h(new byte[]{-117, 94, 26, -54, -112, -14, Base64.padSymbol, -52, -46, 22, 43, -64, -106, -73, 98, -52}, new byte[]{-79, 126, 78, -93, -3, -105, 79, -20}));
                    sbM170u5.append(z11);
                    sbM170u5.append(AbstractC1387m.m2421h(new byte[]{-23, 66, 53, 66, 22, -25, -121, 9}, new byte[]{-59, 98, 70, 39, 98, -57, -86, 41}));
                    sbM170u5.append(jLoadInt / 60000);
                    sbM170u5.append(AbstractC1387m.m2421h(new byte[]{69, 57, -123, -46, -57, 0, 88, -96, 4, 36, -97, -39, -113, 0, 16, -20}, new byte[]{101, 84, -20, -68, -21, 32, Base64.padSymbol, -52}));
                    sbM170u5.append(jCurrentTimeMillis2 / 60000);
                    sbM170u5.append(AbstractC1387m.m2421h(new byte[]{-124, 96, 39, -56}, new byte[]{-92, 13, 78, -90, 32, 80, 70, 96}));
                    C1652b.m2750v(sbM170u5.toString());
                    if (z11) {
                        runnable.run();
                        m1487d(str, Boolean.FALSE);
                        C1652b.m2745o().saveLong(str.concat(AbstractC1387m.m2421h(new byte[]{35, -17, 82, 46, -104, -101, 78, -62, 57, -9, 90, 58}, new byte[]{124, -69, 27, 99, -35, -55, 17, -122})), System.currentTimeMillis());
                        C3277a c3277aM2745o3 = C1652b.m2745o();
                        StringBuilder sbM170u6 = AbstractC0074a.m170u(str);
                        sbM170u6.append(AbstractC1387m.m2421h(new byte[]{-75, 12, 71, 121, 20, -120, 115, -83, -122, 25, 87, 75, 62, -111, 81}, new byte[]{-22, 120, 46, 20, 113, -41, 23, -56}));
                        sbM170u6.append(f1475o);
                        iLoadInt = c3277aM2745o3.loadInt(sbM170u6.toString(), 0);
                        if (iLoadInt > 0) {
                            RunnableC0003a runnableC0003a = new RunnableC0003a(25, runnable2, str);
                            long j10 = ((long) iLoadInt) * 60000;
                            String string = UUID.randomUUID().toString();
                            this.f1480a.put(string, f1463c.schedule(new RunnableC0873n(this, runnableC0003a, string), j10, TimeUnit.MILLISECONDS));
                        }
                        C1652b.m2751w(str.concat(AbstractC1387m.m2421h(new byte[]{-79, 10, 24}, new byte[]{-18, 69, 86, -78, 123, 1, -69, 77})), ColorText.RED);
                    }
                }
            }
            z9 = true;
            z10 = z9;
            StringBuilder sbM170u7 = AbstractC0074a.m170u(str);
            sbM170u7.append(AbstractC1387m.m2421h(new byte[]{77, -89, 111, 101, 41, -52, -100, 109, 22, -13, 78, 114, 33, -100, -102, 119, 18, -28, 80, 32, 105, -100}, new byte[]{119, -121, 59, 0, 68, -68, -7, 31}));
            sbM170u7.append(z10);
            C1652b.m2750v(sbM170u7.toString());
            if (z10) {
                if (System.currentTimeMillis() - C1652b.m2745o().loadLong(str.concat(AbstractC1387m.m2421h(new byte[]{40, -108, -55, 89, -90, -68, -88, -55, 50, -116, -63, 77}, new byte[]{119, -64, ByteCompanionObject.MIN_VALUE, 20, -29, -18, -9, -115})), jCurrentTimeMillis) > 0) {
                    z11 = false;
                } else {
                    z11 = false;
                }
                StringBuilder sbM170u8 = AbstractC0074a.m170u(str);
                sbM170u8.append(AbstractC1387m.m2421h(new byte[]{-117, 94, 26, -54, -112, -14, Base64.padSymbol, -52, -46, 22, 43, -64, -106, -73, 98, -52}, new byte[]{-79, 126, 78, -93, -3, -105, 79, -20}));
                sbM170u8.append(z11);
                sbM170u8.append(AbstractC1387m.m2421h(new byte[]{-23, 66, 53, 66, 22, -25, -121, 9}, new byte[]{-59, 98, 70, 39, 98, -57, -86, 41}));
                sbM170u8.append(jLoadInt / 60000);
                sbM170u8.append(AbstractC1387m.m2421h(new byte[]{69, 57, -123, -46, -57, 0, 88, -96, 4, 36, -97, -39, -113, 0, 16, -20}, new byte[]{101, 84, -20, -68, -21, 32, Base64.padSymbol, -52}));
                sbM170u8.append(jCurrentTimeMillis2 / 60000);
                sbM170u8.append(AbstractC1387m.m2421h(new byte[]{-124, 96, 39, -56}, new byte[]{-92, 13, 78, -90, 32, 80, 70, 96}));
                C1652b.m2750v(sbM170u8.toString());
                if (z11) {
                    runnable.run();
                    m1487d(str, Boolean.FALSE);
                    C1652b.m2745o().saveLong(str.concat(AbstractC1387m.m2421h(new byte[]{35, -17, 82, 46, -104, -101, 78, -62, 57, -9, 90, 58}, new byte[]{124, -69, 27, 99, -35, -55, 17, -122})), System.currentTimeMillis());
                    C3277a c3277aM2745o4 = C1652b.m2745o();
                    StringBuilder sbM170u9 = AbstractC0074a.m170u(str);
                    sbM170u9.append(AbstractC1387m.m2421h(new byte[]{-75, 12, 71, 121, 20, -120, 115, -83, -122, 25, 87, 75, 62, -111, 81}, new byte[]{-22, 120, 46, 20, 113, -41, 23, -56}));
                    sbM170u9.append(f1475o);
                    iLoadInt = c3277aM2745o4.loadInt(sbM170u9.toString(), 0);
                    if (iLoadInt > 0) {
                        RunnableC0003a runnableC0003a2 = new RunnableC0003a(25, runnable2, str);
                        long j11 = ((long) iLoadInt) * 60000;
                        String string2 = UUID.randomUUID().toString();
                        this.f1480a.put(string2, f1463c.schedule(new RunnableC0873n(this, runnableC0003a2, string2), j11, TimeUnit.MILLISECONDS));
                    }
                    C1652b.m2751w(str.concat(AbstractC1387m.m2421h(new byte[]{-79, 10, 24}, new byte[]{-18, 69, 86, -78, 123, 1, -69, 77})), ColorText.RED);
                }
            }
        }
    }
}
