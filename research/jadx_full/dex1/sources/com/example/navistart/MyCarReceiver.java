package com.example.navistart;

import a4.g;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.os.SystemClock;
import android.util.Log;
import androidx.profileinstaller.c;
import b1.n;
import com.example.navistart.cores.BezFunEnum;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.HFunEnum;
import com.example.navistart.home.WebLauncherActivity;
import com.google.protobuf.q;
import e0.a2;
import e0.b2;
import e0.m;
import e0.m2;
import e0.p3;
import e0.v0;
import e0.v1;
import e0.w;
import e0.x;
import e0.x1;
import e0.z1;
import h0.b;
import java.util.ArrayList;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
import u0.a;
import v1.d;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MyCarReceiver extends BroadcastReceiver {
    public static final ScheduledThreadPoolExecutor c = w.c(-1, m.h(new byte[]{24, 20, -26, -103, 53, -92, 122, -85, 48, 4, -45, -99, 53}, new byte[]{85, 109, -91, -8, 71, -10, 31, -56}));
    public static final Object d;
    public static final ArrayList e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static long f777f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f778g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static m2 f779h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f780i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static boolean f781j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f782k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static boolean f783l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static boolean f784m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Boolean f785n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f786o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f787p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f788q;
    public static ScheduledFuture r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static ScheduledFuture f789s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f790a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f791b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        w.b(10L, m.h(new byte[]{115, 117, 100, 107, 45, 52, -16, -36, 91, 101, 81, 111, 45, 52, -32, -47}, new byte[]{62, 12, 39, 10, 95, 102, -107, -65}));
        d = new Object();
        e = new ArrayList();
        f777f = 0L;
        f778g = 2;
        f780i = false;
        f781j = false;
        f782k = 0;
        f783l = false;
        f784m = true;
        f785n = Boolean.FALSE;
        f786o = 0;
        f787p = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Context context) {
        if (b.o().loadBoolean(m.h(new byte[]{-124, -23, 87, 8, 97, 121, 91}, new byte[]{-58, -123, 34, 87, 23, 22, 63, 9}), false)) {
            for (int i9 = 1; i9 < 4; i9++) {
                if (b.o().loadString(q.j(new byte[]{23, -51, 76, 23, -16, 63, 37, -74, -123, 19, -55, -10, 110, -54, -72, 75, -124, 3, -55, -3, 110, -59, -71, ByteCompanionObject.MAX_VALUE, 117}, new byte[]{85, -127, 25, 72, -66, 126, 104, -13}, new StringBuilder(), i9), context.getString(2131951850)).equals(m.f1891b) && f786o != i9 && c(m.h(new byte[]{-17, -127, 57, 37, -120, -59, -92, -67, -63, -112, 36, 62}, new byte[]{-82, -12, 77, 74, -37, -96, -48, -21})).booleanValue()) {
                    k.u(context, new Intent(context, (Class<?>) AutoVibVodActivity.class).addFlags(268435456).putExtra(m.h(new byte[]{-73, 106, 23, -37, -114, 97, 94, -7, -78, 96, 7}, new byte[]{-63, 5, 115, -78, -6, 4, 50, -90}), i9), null);
                    d(m.h(new byte[]{70, 13, 124, -6, 1, -51, -91, -1, 104, 28, 97, -31}, new byte[]{7, 120, 8, -107, 82, -88, -47, -87}), Boolean.FALSE);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean c(String str) {
        return Boolean.valueOf(b.o().loadBoolean(str.concat(m.h(new byte[]{-67, 107, -99, -57, 121, 115, -61, 45, -99}, new byte[]{-14, 5, -46, -95, 31, 50, -74, 89})), true));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(String str, Boolean bool) {
        b.o().saveBoolean(str.concat(m.h(new byte[]{-36, 107, 60, 51, -38, 56, -59, 73, -4}, new byte[]{-109, 5, 115, 85, -68, 121, -80, Base64.padSymbol})), bool.booleanValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e() {
        HFunEnum hFunEnum;
        boolean zBooleanValue = c(m.h(new byte[]{-27, -36, 84, -40, -39, 40, 1, 81}, new byte[]{-106, -85, 11, -85, -83, 71, 109, 58})).booleanValue();
        boolean zLoadBoolean = b.o().loadBoolean(m.h(new byte[]{76, 59, 41, -76, -26, 79, -43, 6, 94, 63, 24, -71, -16, 65}, new byte[]{63, 76, 118, -42, -125, 53, -70, 118}), false);
        if (zBooleanValue) {
            if (zLoadBoolean) {
                if (b.o().loadBoolean(m.h(new byte[]{50, 9, -56, 104, -80, 17, 22, -51}, new byte[]{65, 126, -105, 27, -60, 126, 122, -90}), false)) {
                    f(BezFunEnum.ID_CAR_AEB);
                }
                if (b.o().loadBoolean(m.h(new byte[]{90, 67, 91, 18, 95, 101, 94, -106}, new byte[]{41, 52, 4, 97, 43, 10, 50, -3}), false)) {
                    f(BezFunEnum.ID_CAR_FCW_SENSITIVITY);
                }
                for (BezFunEnum bezFunEnum : BezFunEnum.values()) {
                    if (b.o().loadBoolean(bezFunEnum.name(), false)) {
                        f(bezFunEnum);
                    }
                }
            }
            boolean zEquals = m.h(new byte[]{120, 121, -55, 43, -80, -9, -95, -120, 120, 117}, new byte[]{Base64.padSymbol, 33, -123, 106, -2, -93, -24, -48}).equals(b.o().loadString(m.h(new byte[]{-67, 79, 17, 24, 29, 9, 46, 64, -110, 107}, new byte[]{-2, 14, 67, 72, 111, 102, 72, 41}), ""));
            if (zEquals) {
                x.a();
            } else {
                int iLoadInt = b.o().loadInt(zEquals ? m.h(new byte[]{-24, 124, -3, 98, 62, -35, -22, -21, -46, 96, -29, 106, 38, -52, -36, -2, -30, 96, -12, 92, 35, -52, -17, -10, -18, 112, -8, 108, 62}, new byte[]{-115, 4, -111, 3, 80, -87, -125, -109}) : m.h(new byte[]{-92, -123, 35, -27, -94, 60, 3, 18, -92, -110, 21, -32, -94, 15, 11, 30, -76, -98, 37, -3}, new byte[]{-64, -9, 74, -109, -57, 99, 110, 125}), 0);
                if (iLoadInt >= 1) {
                    if (iLoadInt <= (zEquals ? 4 : 3)) {
                        int i9 = iLoadInt - 1;
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(m.h(new byte[]{124, 77, -46}, new byte[]{31, 32, -74, 93, -108, 53, -55, -74}), m.h(new byte[]{-15, -102, -117, 56, -26, -24, Base64.padSymbol, Base64.padSymbol, -25, -96, -110, 8, -26, -1}, new byte[]{-126, -1, -1, 103, -126, -102, 84, 75}));
                            jSONObject.put(m.h(new byte[]{62, 87, 120, -13, 57}, new byte[]{72, 54, 20, -122, 92, 10, 107, 5}), i9);
                            b.w(m.h(new byte[]{-24, 49, -116, 77, 71, -15, -127, 106, -10, 59, -100, 108, 21, -75, -41}, new byte[]{-69, 84, -8, 9, 53, -104, -9, 15}) + i9, ColorText.RED);
                            b.a();
                            b.d().c(jSONObject);
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
            int iLoadInt2 = b.o().loadInt(m.h(new byte[]{30, 90, -5, -66, -91, 17, 112, -108, 27, 76, -5, -81, -107, 19, 64, ByteCompanionObject.MIN_VALUE, 17}, new byte[]{116, 59, -98, -35, -54, 126, 47, -28}), 0);
            if (iLoadInt2 == 1 || iLoadInt2 == 2) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(m.h(new byte[]{122, 53, -100}, new byte[]{25, 88, -8, -105, -75, 49, -90, 20}), m.h(new byte[]{-116, 64, 82, 126, -46, -116, -66, -12, -115, 122, 75, 78, -58, -122}, new byte[]{-1, 37, 38, 33, -94, -29, -55, -111}));
                    jSONObject2.put(m.h(new byte[]{96, -65, 7, 88, -1}, new byte[]{22, -34, 107, 45, -102, -52, -15, -116}), iLoadInt2);
                    b.w(m.h(new byte[]{64, 26, 118, 70, 99, 67, -39, 120, 94, 16, 102, 115, 44, 25, -100}, new byte[]{19, ByteCompanionObject.MAX_VALUE, 2, 22, 12, 52, -68, 10}) + iLoadInt2, ColorText.RED);
                    b.a();
                    b.d().c(jSONObject2);
                } catch (Throwable unused2) {
                }
            }
            String strH = m.h(new byte[]{-126, -97, -84, 24, -2, -74, -14, -10, -122, -101, -69, 28, -24, -122, -33, -10, -117, -121, -86, 23, -12, -122, -63, -10, -98, -101, -91}, new byte[]{-24, -2, -55, 123, -111, -39, -83, -109});
            int iLoadInt3 = b.o().loadInt(m.h(new byte[]{-109, 24, -117, 24, 66, 121, -113, 113, -105, 28, -100, 28, 84, 73, -94, 113, -102, 0, -115, 23, 72, 73, -68, 113, -113, 28, -126}, new byte[]{-7, 121, -18, 123, 45, 22, -48, 20}), 0);
            HFunEnum hFunEnum2 = null;
            if (iLoadInt3 == 1) {
                hFunEnum = HFunEnum.ID_ENERGY_RECYCLE_LOW;
            } else if (iLoadInt3 != 2) {
                hFunEnum = iLoadInt3 != 3 ? null : HFunEnum.ID_ENERGY_RECYCLE_HIGH;
            } else {
                hFunEnum = HFunEnum.ID_ENERGY_RECYCLE_MEDIUM;
            }
            g(strH, hFunEnum);
            String strH2 = m.h(new byte[]{-103, -103, -62, -88, -36, -42, 96, -110, -110, -116, -45, -82, -63, -64, 96, ByteCompanionObject.MIN_VALUE, -127, -105, -45, -82, -48, -51, 86, -97, -99, -89, -54, -92, -41, -36}, new byte[]{-13, -8, -89, -53, -77, -71, 63, -16});
            int iLoadInt4 = b.o().loadInt(m.h(new byte[]{3, -51, 16, 40, 67, 14, -127, -82, 8, -40, 1, 46, 94, 24, -127, -68, 27, -61, 1, 46, 79, 21, -73, -93, 7, -13, 24, 36, 72, 4}, new byte[]{105, -84, 117, 75, 44, 97, -34, -52}), 0);
            if (iLoadInt4 == 1) {
                hFunEnum2 = HFunEnum.ID_SOC_MANAGER_INITIAL;
            } else if (iLoadInt4 == 2) {
                hFunEnum2 = HFunEnum.ID_SOC_MANAGER_SMART;
            } else if (iLoadInt4 == 4) {
                hFunEnum2 = HFunEnum.ID_SOC_MANAGER_FORCED;
            }
            g(strH2, hFunEnum2);
            h(HFunEnum.ID_VCU_DISCHARGE_SWITCH);
            h(HFunEnum.ID_VCU_ELECTRONIC_LOCKING_UNLOCKS);
            d(m.h(new byte[]{16, -34, 121, 7, 0, -47, 4, -110}, new byte[]{99, -87, 38, 116, 116, -66, 104, -7}), Boolean.FALSE);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(BezFunEnum bezFunEnum) {
        b.w(m.h(new byte[]{75, -109, -21, -108, 30, 20, -100, -48, 36}, new byte[]{4, -11, -115, -42, 123, 110, -68, -3}) + bezFunEnum + m.h(new byte[]{-73, 78, -77}, new byte[]{-105, 99, -109, -93, 18, -121, 26, ByteCompanionObject.MIN_VALUE}) + false, ColorText.RED);
        b.a();
        b.d().bezoff(bezFunEnum, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(String str, HFunEnum hFunEnum) {
        if (hFunEnum == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        q.u(new byte[]{-116, -22, 26, -110, 115, -59, -5}, new byte[]{-61, -116, 124, -38, 83, -24, -37, -5}, sb, str);
        sb.append(m.h(new byte[]{-87, -95, -39}, new byte[]{-119, -116, -7, -116, 49, 89, 121, -15}));
        sb.append(hFunEnum);
        b.w(sb.toString(), ColorText.RED);
        b.a();
        b.d().hybrid(hFunEnum, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void h(HFunEnum hFunEnum) {
        boolean zLoadBoolean = b.o().loadBoolean(hFunEnum.name(), false);
        b.w(m.h(new byte[]{15, 111, -77, 11, -48, -5, 4}, new byte[]{64, 9, -43, 67, -16, -42, 36, 109}) + hFunEnum + m.h(new byte[]{-110, 58, 122}, new byte[]{-78, 23, 90, -122, 12, -94, 89, -67}) + zLoadBoolean, ColorText.RED);
        b.a();
        b.d().hybrid(hFunEnum, zLoadBoolean);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void j() {
        b.v(m.h(new byte[]{-11, 15, 54, -58, 43, 53, 34, -25, -56, 31, 43, -41, 58, 24, -127, 25, -26, 31, 49, -52, 0, 37, -68}, new byte[]{-89, 106, 69, -93, 95, 106, -14, 70}));
        String strH = m.h(new byte[]{19, 29, 93, 47, 26, -47, 45, -73, 8, 16, 84, 41, 9, -36, 33, -74, 27, 13, 93, 58, 30, -51, 38, -70, 22, 24, 86, 37, 20, -51}, new byte[]{90, 89, 2, 108, 91, -125, 114, -13});
        Boolean bool = Boolean.TRUE;
        d(strH, bool);
        d(m.h(new byte[]{-2, 16, -41, 29, 95, -99, 114, -46, -8, 4, -63, 18, 81, -101, 114, -62, -14, 21, -36, 1, 72, -118, 99, -59, -2, 24, -55, 10, 87, ByteCompanionObject.MIN_VALUE, 99}, new byte[]{-73, 84, -120, 94, 30, -49, 45, -111}), bool);
        d(m.h(new byte[]{-46, 82, -6, 47, 65, -102, -50, -1, -55, 95, -13, 41, 82, -105, -62, -2, -38, 66, -6, 36, 69, -119, -59}, new byte[]{-101, 22, -91, 108, 0, -56, -111, -69}), bool);
        d(m.h(new byte[]{-8, 94, -44, 6, 3, -38, -20, -19, -2, 74, -62, 9, 13, -36, -20, -3, -12, 91, -33, 26, 10, -51, -14, -6}, new byte[]{-79, 26, -117, 69, 66, -120, -77, -82}), bool);
        d(m.h(new byte[]{120, -76, -38, 72, 22, 68, -13, -91, 112, -94, -38, 77, 16, 93, -13, -81, 98, -92}, new byte[]{49, -16, -123, 9, 85, 27, -95, -32}), bool);
        d(m.h(new byte[]{-77, 33, 54, 17, 64, -109, -35, 116, -75, 43, Base64.padSymbol, 15, 68, ByteCompanionObject.MIN_VALUE, -38, 117, -87, 58, 33, 21, 66, -104}, new byte[]{-6, 101, 105, 80, 3, -52, -101, 38}), bool);
        d(m.h(new byte[]{39, 38, 24, 66, -107, -8, -91, 96, 58, 39, 2, 83, -117, -3, -78, 118, 43, 46, 24, 73, -111, -21, -82}, new byte[]{110, 98, 71, 1, -44, -86, -6, 51}), bool);
        d(m.h(new byte[]{96, 19, -90, -66, 80, -114, -39, 21, 124, 25, -86, -75, 80, -104, -61}, new byte[]{41, 87, -7, -3, 17, -36, -122, 70}), bool);
        d(m.h(new byte[]{35, 26, 106, -102, 126, 59, -35, 3, 13, 11, 119, -127}, new byte[]{98, 111, 30, -11, 45, 94, -87, 85}), bool);
        d(m.h(new byte[]{-45, 13, 95, 5, 42, -61, 95, -75, -56, 0, 86, 3, 57, -50, 83, -76, -37, 29, 95, 16, 46, -33, 84, -72, -42, 8, 84, 15, 36, -33, 95, -91, -45, 4, 69, 20}, new byte[]{-102, 73, 0, 70, 107, -111, 0, -15}), bool);
        d(m.h(new byte[]{-6, 79, -54, 7, 64, -11, -56, 21, -4, 91, -36, 8, 78, -13, -56, 5, -10, 74, -63, 27, 87, -30, -39, 2, -6, 71, -44, 16, 72, -24, -39, 9, -25, 66, -40, 1, 83}, new byte[]{-77, 11, -107, 68, 1, -89, -105, 86}), bool);
        d(m.h(new byte[]{-68, 105, -73, -4, -34, 83, 65, 50, -89, 100, -66, -6, -51, 94, 77, 51, -76, 121, -73, -9, -38, 64, 74, 41, -95, 100, -91, -6, -51}, new byte[]{-11, 45, -24, -65, -97, 1, 30, 118}), bool);
        d(m.h(new byte[]{-124, 40, 54, -69, 121, 93, -43, -17, -126, 60, 32, -76, 119, 91, -43, -1, -120, 45, Base64.padSymbol, -89, 112, 74, -53, -8, -110, 56, 32, -75, 125, 93}, new byte[]{-51, 108, 105, -8, 56, 15, -118, -84}), bool);
        d(m.h(new byte[]{-104, 67, 114, -96, -111, -126, 93, -53, -123, 66, 104, -79, -113, -121, 74, -35, -108, 75, 114, -85, -107, -111, 86, -57, -123, 78, 96, -90, -126}, new byte[]{-47, 7, 45, -29, -48, -48, 2, -104}), bool);
        d(m.h(new byte[]{-102, -45, 63, 73, 2, 75, -63, -99, -110, -59, 63, 76, 4, 82, -63, -105, ByteCompanionObject.MIN_VALUE, -61, 63, 92, 8, 89, -42, -118}, new byte[]{-45, -105, 96, 8, 65, 20, -109, -40}), bool);
        d(m.h(new byte[]{107, 25, -97, 81, -94, -101, 96, 36, 109, 19, -108, 79, -90, -120, 103, 37, 113, 2, -120, 85, -96, -112, 121, 34, 107, 16, -123, 66}, new byte[]{34, 93, -64, 16, -31, -60, 38, 118}), bool);
        d(m.h(new byte[]{91, -104, 115, 117, 4, 5, -106, -86}, new byte[]{40, -17, 44, 6, 112, 106, -6, -63}), bool);
        d(m.h(new byte[]{-87, -125, 32, -31, 83, 0, -45, -17, -123, -104, 22, -1, 74, 17, -23, -22, -74, -107, 13, -1, 124, 10, -48, -19}, new byte[]{-38, -12, ByteCompanionObject.MAX_VALUE, -110, 35, 101, -74, -117}), bool);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean k() {
        StringBuilder sb = new StringBuilder();
        a aVarO = b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        a aVarO2 = b.o();
        byte[] bArr2 = m.f1892f;
        if (q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{79}, new byte[]{ByteCompanionObject.MAX_VALUE, 125, 56, -75, -47, -65, 60, -122}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void n() {
        f782k = b.o().loadInt(m.h(new byte[]{-90, 76, -14, -30, -49, 107, 30, 41, -97, 72, -20, -6}, new byte[]{-21, 45, -127, -118, -112, 5, ByteCompanionObject.MAX_VALUE, 91}), 0);
        b.a().u();
        v1.b bVar = (v1.b) d.a().f5516a.get(v1.b.class);
        bVar.f5510b.postValue(b.a().e());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void q(Context context, boolean z8) {
        ArrayList arrayList = Notik.f793l;
        context.getApplicationContext().stopService(new Intent(context.getApplicationContext(), (Class<?>) Notik.class));
        ScheduledFuture scheduledFuture = f789s;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            f789s.cancel(true);
        }
        Notik.f795n = z8;
        if (z8) {
            f789s = c.schedule(new c(context, 2), 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void r(Context context, boolean z8) {
        boolean z9 = Si.d;
        Context applicationContext = context.getApplicationContext();
        applicationContext.stopService(new Intent(applicationContext, (Class<?>) Si.class));
        ScheduledFuture scheduledFuture = r;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            r.cancel(true);
        }
        Si.d = z8;
        if (z8) {
            r = c.schedule(new c(context, 3), 1000L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        int i9 = f778g;
        if (i9 < 0) {
            if (!MyA11yService.f()) {
                b.v(m.h(new byte[]{-14, 101, 68, -7, -3, -17, -7, 99, -60, 98, 86, -30, -21, -57, -10, 105, -43, 104, 96, -27, -24, -52, -10, 101}, new byte[]{-95, 17, 37, -117, -119, -82, -102, 0}));
                b bVarA = b.a();
                synchronized (b.f2430p) {
                    try {
                        if (bVarA.f2435b == null) {
                            Log.d(b.c, m.h(new byte[]{-9, -3, -69, -87, 76, -55, -79, -16, -8, -10, -83, -98, 76, -55}, new byte[]{-103, -104, -52, -7, 41, -69, -36, -67}));
                            bVarA.f2435b = new b1.m(b.h());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                b1.m mVar = bVarA.f2435b;
                Context context = (Context) mVar.c;
                int iCheckCallingOrSelfPermission = context.checkCallingOrSelfPermission(m.h(new byte[]{-61, 18, -53, -27, 125, 11, -78, -127, -46, 25, -35, -6, 123, 17, -91, -58, -51, 18, -127, -64, 64, 43, -126, -22, -3, 47, -22, -44, 71, 48, -109, -16, -15, 57, -5, -61, 91, 44, -111, -4}, new byte[]{-94, 124, -81, -105, 18, 98, -42, -81}));
                context.getPackageManager();
                if (iCheckCallingOrSelfPermission == 0 && !MyA11yService.f()) {
                    b1.m.j((ContentResolver) mVar.f270f, (String) mVar.d);
                }
            }
            f778g = 2;
        } else {
            f778g = i9 - 1;
        }
        if (MyA11yService.f()) {
            c.schedule(new g(15, this), 500L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i() {
        r(this.f791b, true);
        b.a();
        x1 x1VarK = b.k();
        x1VarK.f2000n.post(new v1(x1VarK, 2));
        if (b.o().loadBoolean(m.h(new byte[]{44, -90, 21, -86, -29, -24, -36, 27, 0, -95, 56, -74, -56, -18, -37}, new byte[]{95, -47, 74, -39, -105, -119, -82, 111}), false) && k().booleanValue()) {
            b.a();
            b.c().StartProGu(b.o().loadString(m.h(new byte[]{84, 109, 43, -105, -99, -99, -102, 80, 123, 88, 9, -105, -113, -104, -121, 81, 74, 78, 15, -87, -100, -103, -84, 89, 96}, new byte[]{21, Base64.padSymbol, 123, -56, -18, -19, -13, 62}), null));
        }
        if (b.o().loadBoolean(m.h(new byte[]{25, 49, -83, ByteCompanionObject.MIN_VALUE, -56, -92, 60, -103, 25, 50, -109, -109, -55, -113, 49, -86, 11, 37, -103}, new byte[]{106, 70, -14, -31, -67, -48, 83, -58}), false) && k().booleanValue()) {
            k.u(this.f791b, new Intent(this.f791b, (Class<?>) BlackActivity.class).addFlags(268435456), null);
        }
        if (b.o().loadBoolean(m.h(new byte[]{-26, 53, -90, 120, 75, -5, 53, 108, -26, 54, -104, 107, 74, -48, 45, 86, -9, 29, -107, 120, 75, -31, 57, 91, -16, 48}, new byte[]{-107, 66, -7, 25, 62, -113, 90, 51}), false) && k().booleanValue()) {
            k.u(this.f791b, new Intent(this.f791b, (Class<?>) WebLauncherActivity.class).addFlags(872415232), null);
        }
        if (b.o().loadBoolean(m.h(new byte[]{9, -115, 23, 90, 31, -127, -86, -54, 10, -118, 23, 69, 5, -99, -112}, new byte[]{122, -6, 72, 40, 106, -17, -11, -85}), false) && k().booleanValue()) {
            b.a();
            b.f().a(m.h(new byte[]{-109, -40, 26, -72, 31, -120, 50, -123, -116, -62, 6, -126, 33, -117, 39, -82, -107, -60, 26, ByteCompanionObject.MIN_VALUE, 13}, new byte[]{-31, -83, 116, -25, 126, -8, 66, -38}));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l() {
        if (!f781j) {
            b.v(m.h(new byte[]{13, -91, 12, -35, 5, -54, -53, -23, 108, 0, -20, 98, -8, 116, 83, 20, -1, 0, -56, 99, -56, 116, 94, 20, -9, 1, -12, -110, -102, 25, 59, 113, 108, 0, -49, 98, -6, 116, 84, 21, -49, 1, -15, 98, -1, 116, 86}, new byte[]{76, -48, 120, -78, 74, -92, -21, -60}));
            return;
        }
        e();
        long jLoadInt = ((long) b.o().loadInt(m.h(new byte[]{108, 106, -117, 111, 36, -97, -113, -43, 65, 92, -87, 100, 63, -79, -123, -46, 103, 80, -91, 88, 37, -69, -83}, new byte[]{56, 3, -26, 10, 96, -2, -29, -76}) + f786o, 0)) * 60000;
        long jLoadLong = b.o().loadLong(m.h(new byte[]{-102, -103, -44, -71, -20, -123, 0, -40, -104, -120, -59, -75, -19, -108, 16, -59, -124, -114, -55, -67, -26, -103, 0, -49, -98, -106, -63, -87}, new byte[]{-37, -38, ByteCompanionObject.MIN_VALUE, -16, -93, -53, 95, -117}), 0L) - b.o().loadLong(m.h(new byte[]{5, 86, 21, -7, -21, -83, 115, 20, 7, 71, 4, -11, -22, -68, 99, 1, 2, 74, 21, -7, -23, -90, 126, 24, 0, 80, 13, -15, -3}, new byte[]{68, 21, 65, -80, -92, -29, 44, 71}), 0L);
        if (jLoadInt == 0 || jLoadInt < jLoadLong) {
            String strH = m.h(new byte[]{115, 49, 83, 24, -64, -27, -84, 89, 104, 60, 90, 30, -45, -24, -96, 88, 123, 33, 83, 13, -60, -7, -89, 84, 118, 52, 88, 18, -50, -7}, new byte[]{58, 117, 12, 91, -127, -73, -13, 29});
            b2 b2Var = b2.c;
            s(b2Var, strH, new a2(strH, 1), new v0(12));
            String strH2 = m.h(new byte[]{-99, 110, -74, 45, 89, 0, 62, 63, -101, 122, -96, 34, 87, 6, 62, 47, -111, 107, -67, 49, 78, 23, 47, 40, -99, 102, -88, 58, 81, 29, 47}, new byte[]{-44, 42, -23, 110, 24, 82, 97, 124});
            s(b2Var, strH2, new a2(strH2, 2), new v0(13));
            String strH3 = m.h(new byte[]{52, -14, 9, -44, -55, -53, 75, 105, 47, -1, 0, -46, -38, -58, 71, 104, 60, -30, 9, -33, -51, -40, 64}, new byte[]{125, -74, 86, -105, -120, -103, 20, 45});
            b2 b2Var2 = b2.f1813b;
            s(b2Var2, strH3, new a2(strH3, 3), new v0(2));
            String strH4 = m.h(new byte[]{100, 87, 103, -36, -63, -99, -71, 117, 98, 67, 113, -45, -49, -101, -71, 101, 104, 82, 108, -64, -56, -118, -89, 98}, new byte[]{45, 19, 56, -97, ByteCompanionObject.MIN_VALUE, -49, -26, 54});
            s(b2Var2, strH4, new a2(strH4, 0), new v0(3));
            s(b2Var2, m.h(new byte[]{124, -4, 6, 109, 97, 116, -62, 111, 97, -3, 28, 124, ByteCompanionObject.MAX_VALUE, 113, -43, 121, 112, -12, 6, 102, 101, 103, -55}, new byte[]{53, -72, 89, 46, 32, 38, -99, 60}), new v0(4), new v0(5));
            s(b2Var2, m.h(new byte[]{103, 31, 46, -109, 5, 9, 84, -45, 111, 9, 46, -106, 3, 16, 84, -39, 125, 15}, new byte[]{46, 91, 113, -46, 70, 86, 6, -106}), new v0(8), new v0(9));
            s(b2Var2, m.h(new byte[]{-109, -60, -123, -109, -92, -4, -102, 125, -107, -50, -114, -115, -96, -17, -99, 124, -119, -33, -110, -105, -90, -9}, new byte[]{-38, ByteCompanionObject.MIN_VALUE, -38, -46, -25, -93, -36, 47}), new v0(10), new v0(11));
        } else {
            b.v(m.h(new byte[]{47, -76, 35, -3, 77, 119, 5, 49, 78, 17, -54, 66, -73, 57, -11, -93, -65, 65, -121, 44, -45, -111, -11, -89, -66, ByteCompanionObject.MAX_VALUE, 119, 66, -74, -55, -101, -51, -17, 16, -43, 66, -78, -56, -89, -52, -48, 16, -48, 66, -65, -55, -101, 60, -66, 115, -122, 18, -46, -84, -11, -96, -66, 116, -121, 47, -46, -95, 5, -51, -17, -31, -121, 45, -45, -103, -11, -87, -66, 117, -122, 25, -46, -83, -12, -97, -65, 72, -121, 39, -46, -96, 5, -52, -47, 17, -23, 66, -73, -55, -110, -52, -38, 17, -19, 66, -70, 57}, new byte[]{110, -63, 87, -110, 2, 25, 37, 28}) + (jLoadLong / 60000.0d) + m.h(new byte[]{-126, -89, -79, 121, -74, 122}, new byte[]{82, 27, 97, -63, 102, -57, 12, 2}));
        }
        if (b.o().loadBoolean(m.h(new byte[]{24, 52, -11, -125, -81, 77, -84, -113, 4, 62, -7, -120, -81, 91, -74}, new byte[]{81, 112, -86, -64, -18, 31, -13, -36}) + f786o, false) && c(m.h(new byte[]{-63, 101, -25, -64, 37, 111, -115, -29, -35, 111, -21, -53, 37, 121, -105}, new byte[]{-120, 33, -72, -125, 100, Base64.padSymbol, -46, -80})).booleanValue() && f780i) {
            b.a();
            b.d().sunupdown(Boolean.TRUE);
            d(m.h(new byte[]{-127, 46, 16, -60, 9, 0, -125, 14, -99, 36, 28, -49, 9, 22, -103}, new byte[]{-56, 106, 79, -121, 72, 82, -36, 93}), Boolean.FALSE);
            b.w(m.h(new byte[]{89, 50, -26, -21, -45, 85, 89, -124, 69, 56, -22, -32, -45, 67, 67, -120, 95, 38, -4, -26}, new byte[]{16, 118, -71, -88, -110, 7, 6, -41}), ColorText.RED);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final i0.a m() {
        m2 m2Var = f779h;
        if (m2Var == null) {
            f779h = new m2(this.f791b);
            return null;
        }
        SharedPreferences sharedPreferences = m2Var.f1901a;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String str = m2.f1900b;
        if (sharedPreferences.getLong(str, -1L) <= jElapsedRealtime) {
            SharedPreferences$Editor sharedPreferences$EditorEdit = sharedPreferences.edit();
            sharedPreferences$EditorEdit.putLong(str, jElapsedRealtime);
            sharedPreferences$EditorEdit.apply();
            return null;
        }
        SharedPreferences$Editor sharedPreferences$EditorEdit2 = sharedPreferences.edit();
        sharedPreferences$EditorEdit2.putLong(str, jElapsedRealtime);
        sharedPreferences$EditorEdit2.apply();
        j();
        b.a();
        i0.a aVarC = b.l().c();
        i0.a aVar = i0.a.c;
        if (aVarC.equals(aVar)) {
            i();
            boolean zLoadBoolean = b.o().loadBoolean(m.h(new byte[]{116, 124, -47, -58}, new byte[]{22, 19, -66, -78, -84, 30, -37, 54}), false);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = c;
            if (zLoadBoolean) {
                scheduledThreadPoolExecutor.schedule(new v0(6, this), 10000L, timeUnit);
            }
            if (b.o().loadBoolean(m.h(new byte[]{34, -45, 7, -93, -52, -27, 121, 2, 60, -12, 8, -77, -51, -9, ByteCompanionObject.MAX_VALUE, 25}, new byte[]{81, -92, 88, -32, -71, -106, 13, 109}), false)) {
                scheduledThreadPoolExecutor.schedule(new v0(7, this), 10000L, timeUnit);
            }
        }
        b.v(m.h(new byte[]{113, 73, 60, -90, 117, 56, 15, 38, 112, 83, 44, -68, 116}, new byte[]{35, 12, 126, -23, 58, 108, 80, 105}));
        return aVar;
    }

    public native boolean m3643p(String str, boolean z8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o() {
        b.a();
        b.l().a(new Intent(i0.a.e.name()));
        if (c(m.h(new byte[]{-20, 18, 14, 117, 106, -94, 94, -4, -64, 9, 56, 107, 115, -77, 100, -7, -13, 4, 35, 107, 69, -88, 93, -2}, new byte[]{-97, 101, 81, 6, 26, -57, 59, -104})).booleanValue() && b.o().loadBoolean(m.h(new byte[]{-48, -89, -59, -95, 18, 85, -43, 37, -4, -68, -13, -65, 11, 68, -17, 32, -49, -79, -24, -65, Base64.padSymbol, 95, -42, 39}, new byte[]{-93, -48, -102, -46, 98, 48, -80, 65}), false)) {
            b.a();
            b.d().offSpeedLimitAlarm();
            d(m.h(new byte[]{33, 44, 90, -43, -25, -3, -73, 106, 13, 55, 108, -53, -2, -20, -115, 111, 62, 58, 119, -53, -56, -9, -76, 104}, new byte[]{82, 91, 5, -90, -105, -104, -46, 14}), Boolean.FALSE);
            b.w(m.h(new byte[]{-95, 51, 71, -30, 47, 84, 56, -57, -65, 42, 86, -40, 42, 103, 53, -36, -65, 28, 77, -31, 45}, new byte[]{-46, 67, 34, -121, 75, 11, 84, -82}), ColorText.RED);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Context applicationContext = context.getApplicationContext();
        Intent intent2 = new Intent(intent);
        String action = intent2.getAction();
        if (action != null && action.equals(m.h(new byte[]{-12, -35, 8, -98, 8, 3, -8, -16, -9, -33, 25, -119, 19, 5, -13, -86, -3, -99, 8, -119, 17, 3, -1, -69, -69, -46, 15, -104, 14, 5, -14, -16, -44, -16, 32, -77, 36, 37, -46, -112, -48, -16, 56, -87, 35}, new byte[]{-107, -77, 108, -20, 103, 106, -100, -34}))) {
            r(context, true);
            q(context, true);
        }
        boolean z8 = false;
        if (!k().booleanValue()) {
            String action2 = intent2.getAction();
            if (action2 == null || m.h(new byte[]{62, 98, 8, 82, 9, 70, -33, 112, 54, 98, 24, 69, 8, 91, -107, 63, 60, 120, 5, 79, 8, 1, -17, 23, 18, 73, 51, 116, 47, 108, -16}, new byte[]{95, 12, 108, 32, 102, 47, -69, 94}).equals(action2)) {
                return;
            }
            synchronized (d) {
                try {
                    ArrayList arrayList = e;
                    if (arrayList.size() >= 20) {
                        arrayList.remove(0);
                    }
                    arrayList.add(new Intent(intent2));
                } catch (Throwable th) {
                    throw th;
                }
            }
            b.w(m.h(new byte[]{-102, 101, 26, 56, 84, -101, 12, 88, -92, 116, 17, 50, 73, -90, 10, 103, -81, 32, 89, 124}, new byte[]{-54, 0, 116, 92, Base64.padSymbol, -11, 107, 17}).concat(action2), ColorText.RED);
            return;
        }
        synchronized (d) {
            try {
                ArrayList arrayList2 = e;
                if (!arrayList2.isEmpty()) {
                    ArrayList arrayList3 = new ArrayList(arrayList2);
                    arrayList2.clear();
                    b.w(m.h(new byte[]{32, 55, -94, -8, -117, 2, -29, 42, 30, 38, -87, -14, -106, 62, -15, 13, 80, ByteCompanionObject.MAX_VALUE, -20}, new byte[]{112, 82, -52, -100, -30, 108, -124, 99}) + arrayList3.size(), ColorText.RED);
                    int size = arrayList3.size();
                    int i9 = 0;
                    int i10 = 0;
                    while (i10 < size) {
                        Object obj = arrayList3.get(i10);
                        i10++;
                        Intent intent3 = (Intent) obj;
                        if (!m.h(new byte[]{-15, -67, 5, 100, -44, -16, -40, 82, -7, -67, 21, 115, -43, -19, -110, 29, -13, -89, 8, 121, -43, -73, -24, 53, -35, -106, 62, 66, -14, -38, -9}, new byte[]{-112, -45, 97, 22, -69, -103, -68, 124}).equals(intent3.getAction())) {
                            c.schedule(new n(this, applicationContext, intent3, 3), ((long) i9) * 250, TimeUnit.MILLISECONDS);
                            i9++;
                        }
                        z8 = z8;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        boolean z9 = z8;
        if (action.equals(m.h(new byte[]{37, -52, 72, 10, -59, 106, 122, -57, 45, -52, 88, 29, -60, 119, 48, -120, 39, -42, 69, 23, -60, 45, 77, -86, 22, -25, 105, 54, -11, 76, 88, -81}, new byte[]{68, -94, 44, 120, -86, 3, 30, -23})) && k().booleanValue()) {
            Log.e(m.h(new byte[]{-19, 84, 64, 32, -113, -101, -67, 119, -59, 68, 117, 36, -113}, new byte[]{-96, 45, 3, 65, -3, -55, -40, 20}), m.h(new byte[]{-109, -71, -37, -104, -101, 94, 112, 102, -103, -120, -56, -66, -84, 114, 86, 94, -93, -124, -54, -81, -67, 126, 87, 79, -77, -111, -49}, new byte[]{-4, -41, -119, -3, -8, 59, 25, 16}));
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - b.o().loadLong(m.h(new byte[]{45, 43, ByteCompanionObject.MAX_VALUE, -58, 60, -3, -9, -73, 47, 58, 110, -54, Base64.padSymbol, -20, -25, -86, 51, 60, 98, -62, 54, -31, -9, -96, 41, 36, 106, -42}, new byte[]{108, 104, 43, -113, 115, -77, -88, -28}), jCurrentTimeMillis) > 10000) {
                b.o().saveLong(m.h(new byte[]{-110, 19, 42, -32, 71, 16, -25, -106, -112, 2, 59, -20, 70, 1, -9, -125, -107, 15, 42, -32, 69, 27, -22, -102, -105, 21, 50, -24, 81}, new byte[]{-45, 80, 126, -87, 8, 94, -72, -59}), jCurrentTimeMillis);
            } else {
                b.o().saveLong(m.h(new byte[]{43, 29, -48, 121, -75, 38, -89, -12, 41, 12, -63, 117, -76, 55, -73, -23, 53, 10, -51, 125, -65, 58, -89, -29, 47, 18, -59, 105}, new byte[]{106, 94, -124, 48, -6, 104, -8, -89}), f777f);
            }
            b.v(m.h(new byte[]{-70, 125, 117, -22, -111, 90, -102, -25, -80, 76, 102, -52, -90, 118, -68, -33, -118, 64, 100, -35, -73, 122, -67, -50, -102, 85, 97}, new byte[]{-43, 19, 39, -113, -14, 63, -13, -111}));
            f783l = z9;
            j();
            f781j = z9;
            r(context, z9);
            q(context, z9);
        }
        c.execute(new z1(this, applicationContext, context, action, intent2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void p() {
        if (b.o().loadBoolean(m.h(new byte[]{46, 66, -74, -84, -39, -60, -8, 35, 40, 72, -120, -71, -13, -60, -8, 35, 33, 88, -99, -94, -13, -61, -29, 29, 50, 89, -74, -88, -62, -41, -2, 18, 37}, new byte[]{64, 45, -23, -51, -84, -80, -105, 124}), true)) {
            b.o().saveLong(m.h(new byte[]{-81, 36, 88, 70, 37, 93, 22, 44, -83, 53, 73, 74, 36, 76, 6, 49, -79, 51, 69, 66, 47, 65, 22, 59, -85, 43, 77, 86}, new byte[]{-18, 103, 12, 15, 106, 19, 73, ByteCompanionObject.MAX_VALUE}), System.currentTimeMillis());
        }
        b.a();
        if (b.l().c().equals(i0.a.d)) {
            i();
        }
        if (b.o().loadBoolean(m.h(new byte[]{3, -97, 79, -92, -59, -110, -113, 32, 47, -101, 100, -72, -63, -84, -110, 50, 22}, new byte[]{112, -24, 16, -41, -79, -13, -3, 84}), false)) {
            b.a();
            b.d().offStartStop();
            b.w(m.h(new byte[]{79, -53, -46, 87, 65, -48, 23, -24, 83, -49, -52, 74, 83, -55}, new byte[]{28, -97, -109, 5, 21, -113, 68, -68}), ColorText.RED);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:25:0x018c  */
    /* JADX WARN: Code duplicated, block: B:32:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:35:0x021f  */
    /* JADX WARN: Code duplicated, block: B:37:0x026f  */
    /* JADX WARN: Code duplicated, block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    public final void s(b2 b2Var, String str, Runnable runnable, Runnable runnable2) {
        boolean z8;
        boolean z9;
        boolean z10;
        int iLoadInt;
        a aVarO = b.o();
        StringBuilder sbU = ai.onnxruntime.a.u(str);
        sbU.append(m.h(new byte[]{-6, -17, -73, 17, -73}, new byte[]{-91, -69, -14, 92, -25, -10, -12, -43}));
        sbU.append(f786o);
        int iLoadInt2 = aVarO.loadInt(sbU.toString(), 40);
        long jCurrentTimeMillis = System.currentTimeMillis() - 864000000;
        long jLoadInt = ((long) b.o().loadInt(m.h(new byte[]{-89, 103, -73, -115, 111, -80, -52, 58, -118, 70, -65, -119, 95, -114, -49, 47, -84, 109, -69, -102, 88, -91, -63, 41, -121}, new byte[]{-13, 14, -38, -24, 43, -47, -96, 91}) + f786o, 0)) * 60000;
        long jCurrentTimeMillis2 = System.currentTimeMillis() - b.o().loadLong(m.h(new byte[]{-119, -47, -101, 90, 44, -81, 95, 43, -117, -64, -118, 86, 45, -66, 79, 54, -105, -58, -122, 94, 38, -77, 95, 60, -115, -34, -114, 74}, new byte[]{-56, -110, -49, 19, 99, -31, 0, 120}), jCurrentTimeMillis);
        int iOrdinal = b2Var.ordinal();
        boolean z11 = iOrdinal == 0 ? f782k < iLoadInt2 : !(iOrdinal != 1 || f782k <= iLoadInt2);
        a aVarO2 = b.o();
        StringBuilder sbU2 = ai.onnxruntime.a.u(str);
        sbU2.append(f786o);
        boolean zLoadBoolean = aVarO2.loadBoolean(sbU2.toString(), false);
        boolean zBooleanValue = c(str).booleanValue();
        boolean zBooleanValue2 = c(str.concat(m.h(new byte[]{84, 40, -80, -4, 37, 37}, new byte[]{11, 124, -7, -79, 96, 119, 38, -2}))).booleanValue();
        StringBuilder sbU3 = ai.onnxruntime.a.u(str);
        q.t(new byte[]{45, -28}, new byte[]{23, -60, -9, 54, 58, -126, 5, 44}, sbU3, iLoadInt2);
        sbU3.append(m.h(new byte[]{-107, 24, 120, 68, -99, 50, 3, 78, -108, 24}, new byte[]{-71, 56, 55, 42, -46, 84, 101, 110}));
        sbU3.append(zLoadBoolean);
        sbU3.append(m.h(new byte[]{-106, 103, 22, -47, 11, 40, 49, -28, -49, 38, 21, -105, 64, 69}, new byte[]{-70, 71, 121, -73, 109, 101, 80, -118}));
        sbU3.append(zBooleanValue);
        sbU3.append(m.h(new byte[]{48, 26, 50, 82, -43, -123, -117, -14, 121, 26, 112, 20}, new byte[]{28, 58, 93, 52, -77, -47, -30, -97}));
        sbU3.append(zBooleanValue2);
        b.v(sbU3.toString());
        if (zLoadBoolean && zBooleanValue && zBooleanValue2) {
            if (!z11) {
                z8 = true;
                if (b.o().loadBoolean(m.h(new byte[]{81, -98, -67, 2, -25, -124, -28, -77, 124, -65, -75, 6, -41, -70, -20, -77, 113, -108, -72, 14, -56, -117, -23, -96, 112, -112, -113, 40, -19}, new byte[]{5, -9, -48, 103, -93, -27, -120, -46}) + f786o, true)) {
                    z9 = false;
                }
                StringBuilder sbU4 = ai.onnxruntime.a.u(str);
                sbU4.append(m.h(new byte[]{77, -89, 111, 101, 41, -52, -100, 109, 22, -13, 78, 114, 33, -100, -102, 119, 18, -28, 80, 32, 105, -100}, new byte[]{119, -121, 59, 0, 68, -68, -7, 31}));
                sbU4.append(z9);
                b.v(sbU4.toString());
                if (z9) {
                    if (System.currentTimeMillis() - b.o().loadLong(str.concat(m.h(new byte[]{40, -108, -55, 89, -90, -68, -88, -55, 50, -116, -63, 77}, new byte[]{119, -64, ByteCompanionObject.MIN_VALUE, 20, -29, -18, -9, -115})), jCurrentTimeMillis) > 0 || (jLoadInt != 0 && jCurrentTimeMillis2 >= jLoadInt)) {
                        z10 = false;
                    } else {
                        z10 = z8;
                    }
                    StringBuilder sbU5 = ai.onnxruntime.a.u(str);
                    sbU5.append(m.h(new byte[]{-117, 94, 26, -54, -112, -14, Base64.padSymbol, -52, -46, 22, 43, -64, -106, -73, 98, -52}, new byte[]{-79, 126, 78, -93, -3, -105, 79, -20}));
                    sbU5.append(z10);
                    sbU5.append(m.h(new byte[]{-23, 66, 53, 66, 22, -25, -121, 9}, new byte[]{-59, 98, 70, 39, 98, -57, -86, 41}));
                    sbU5.append(jLoadInt / 60000);
                    sbU5.append(m.h(new byte[]{69, 57, -123, -46, -57, 0, 88, -96, 4, 36, -97, -39, -113, 0, 16, -20}, new byte[]{101, 84, -20, -68, -21, 32, Base64.padSymbol, -52}));
                    sbU5.append(jCurrentTimeMillis2 / 60000);
                    sbU5.append(m.h(new byte[]{-124, 96, 39, -56}, new byte[]{-92, 13, 78, -90, 32, 80, 70, 96}));
                    b.v(sbU5.toString());
                    if (z10) {
                        runnable.run();
                        d(str, Boolean.FALSE);
                        b.o().saveLong(str.concat(m.h(new byte[]{35, -17, 82, 46, -104, -101, 78, -62, 57, -9, 90, 58}, new byte[]{124, -69, 27, 99, -35, -55, 17, -122})), System.currentTimeMillis());
                        a aVarO3 = b.o();
                        StringBuilder sbU6 = ai.onnxruntime.a.u(str);
                        sbU6.append(m.h(new byte[]{-75, 12, 71, 121, 20, -120, 115, -83, -122, 25, 87, 75, 62, -111, 81}, new byte[]{-22, 120, 46, 20, 113, -41, 23, -56}));
                        sbU6.append(f786o);
                        iLoadInt = aVarO3.loadInt(sbU6.toString(), 0);
                        if (iLoadInt > 0) {
                            a1.a aVar = new a1.a(25, runnable2, str);
                            long j9 = ((long) iLoadInt) * 60000;
                            String string = UUID.randomUUID().toString();
                            this.f790a.put(string, c.schedule(new n(this, aVar, string), j9, TimeUnit.MILLISECONDS));
                        }
                        b.w(str.concat(m.h(new byte[]{-79, 10, 24}, new byte[]{-18, 69, 86, -78, 123, 1, -69, 77})), ColorText.RED);
                    }
                }
            }
            z8 = true;
            z9 = z8;
            StringBuilder sbU7 = ai.onnxruntime.a.u(str);
            sbU7.append(m.h(new byte[]{77, -89, 111, 101, 41, -52, -100, 109, 22, -13, 78, 114, 33, -100, -102, 119, 18, -28, 80, 32, 105, -100}, new byte[]{119, -121, 59, 0, 68, -68, -7, 31}));
            sbU7.append(z9);
            b.v(sbU7.toString());
            if (z9) {
                if (System.currentTimeMillis() - b.o().loadLong(str.concat(m.h(new byte[]{40, -108, -55, 89, -90, -68, -88, -55, 50, -116, -63, 77}, new byte[]{119, -64, ByteCompanionObject.MIN_VALUE, 20, -29, -18, -9, -115})), jCurrentTimeMillis) > 0) {
                    z10 = false;
                } else {
                    z10 = false;
                }
                StringBuilder sbU8 = ai.onnxruntime.a.u(str);
                sbU8.append(m.h(new byte[]{-117, 94, 26, -54, -112, -14, Base64.padSymbol, -52, -46, 22, 43, -64, -106, -73, 98, -52}, new byte[]{-79, 126, 78, -93, -3, -105, 79, -20}));
                sbU8.append(z10);
                sbU8.append(m.h(new byte[]{-23, 66, 53, 66, 22, -25, -121, 9}, new byte[]{-59, 98, 70, 39, 98, -57, -86, 41}));
                sbU8.append(jLoadInt / 60000);
                sbU8.append(m.h(new byte[]{69, 57, -123, -46, -57, 0, 88, -96, 4, 36, -97, -39, -113, 0, 16, -20}, new byte[]{101, 84, -20, -68, -21, 32, Base64.padSymbol, -52}));
                sbU8.append(jCurrentTimeMillis2 / 60000);
                sbU8.append(m.h(new byte[]{-124, 96, 39, -56}, new byte[]{-92, 13, 78, -90, 32, 80, 70, 96}));
                b.v(sbU8.toString());
                if (z10) {
                    runnable.run();
                    d(str, Boolean.FALSE);
                    b.o().saveLong(str.concat(m.h(new byte[]{35, -17, 82, 46, -104, -101, 78, -62, 57, -9, 90, 58}, new byte[]{124, -69, 27, 99, -35, -55, 17, -122})), System.currentTimeMillis());
                    a aVarO4 = b.o();
                    StringBuilder sbU9 = ai.onnxruntime.a.u(str);
                    sbU9.append(m.h(new byte[]{-75, 12, 71, 121, 20, -120, 115, -83, -122, 25, 87, 75, 62, -111, 81}, new byte[]{-22, 120, 46, 20, 113, -41, 23, -56}));
                    sbU9.append(f786o);
                    iLoadInt = aVarO4.loadInt(sbU9.toString(), 0);
                    if (iLoadInt > 0) {
                        a1.a aVar2 = new a1.a(25, runnable2, str);
                        long j10 = ((long) iLoadInt) * 60000;
                        String string2 = UUID.randomUUID().toString();
                        this.f790a.put(string2, c.schedule(new n(this, aVar2, string2), j10, TimeUnit.MILLISECONDS));
                    }
                    b.w(str.concat(m.h(new byte[]{-79, 10, 24}, new byte[]{-18, 69, 86, -78, 123, 1, -69, 77})), ColorText.RED);
                }
            }
        }
    }
}
