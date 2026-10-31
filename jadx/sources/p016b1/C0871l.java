package p016b1;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.os.Environment;
import android.os.SystemClock;
import android.util.Log;
import android.webkit.JavascriptInterface;
import androidx.constraintlayout.core.state.C0275a;
import androidx.fragment.app.C0566h;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.cores.CarCmdProxy;
import com.google.protobuf.AbstractC1178q;
import com.woha.pogoda.WeatherService;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p002a1.RunnableC0003a;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1440x1;
import p050e3.C1461d;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1917c;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p115k7.C2052b;
import p142n0.EnumC2469d;
import p155o4.AbstractC2587b;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: b1.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0871l {

    /* JADX INFO: renamed from: f */
    public static final String f590f = AbstractC1387m.m2421h(new byte[]{-72, -45, -33, -105, -82, -11, -103, ByteCompanionObject.MIN_VALUE}, new byte[]{-17, -74, -67, -35, -35, -76, -23, -23});

    /* JADX INFO: renamed from: g */
    public static final ScheduledThreadPoolExecutor f591g = AbstractC1434w.m2482c(1, AbstractC1387m.m2421h(new byte[]{96, -68, 5, 97, 76, -127, -71, 36, 70, -84, 2, 81, 89}, new byte[]{55, -39, 103, 34, 45, -13, -21, 65}));

    /* JADX INFO: renamed from: h */
    public static final ScheduledThreadPoolExecutor f592h = AbstractC1434w.m2482c(1, AbstractC1387m.m2421h(new byte[]{-13, 87, 98, 60, -31, -29, -33, 88, -52, 87, 114, 51, -31, -30, -48, 87, -53, 85}, new byte[]{-92, 50, 0, 112, ByteCompanionObject.MIN_VALUE, -106, -79, 59}));

    /* JADX INFO: renamed from: i */
    public static final AtomicLong f593i = new AtomicLong();

    /* JADX INFO: renamed from: j */
    public static final AtomicBoolean f594j = new AtomicBoolean();

    /* JADX INFO: renamed from: a */
    public final String f595a;

    /* JADX INFO: renamed from: b */
    public final C1917c f596b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC0878s f597c;

    /* JADX INFO: renamed from: d */
    public final Set f598d = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: renamed from: e */
    public final Set f599e = Collections.newSetFromMap(new ConcurrentHashMap());

    public C0871l(String str, C1917c c1917c, InterfaceC0878s interfaceC0878s) {
        this.f595a = str;
        this.f596b = c1917c;
        this.f597c = interfaceC0878s;
    }

    /* JADX INFO: renamed from: A */
    public static JSONArray m934A(boolean z9) throws JSONException {
        PackageManager packageManager = C1652b.m2739h().getPackageManager();
        Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-88, 82, -115, -78, 27, 22, 81, 20, -96, 82, -99, -91, 26, 11, 27, 91, -86, 72, ByteCompanionObject.MIN_VALUE, -81, 26, 81, 120, 123, ByteCompanionObject.MIN_VALUE, 114}, new byte[]{-55, 60, -23, -64, 116, ByteCompanionObject.MAX_VALUE, 53, 58}));
        intent.addCategory(AbstractC1387m.m2421h(new byte[]{3, -119, -32, -18, -78, -31, -12, 47, 11, -119, -16, -7, -77, -4, -66, 98, 3, -109, -31, -5, -78, -6, -23, 47, 46, -90, -47, -46, -98, -64, -43, 83}, new byte[]{98, -25, -124, -100, -35, -120, -112, 1}));
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        JSONArray jSONArray = new JSONArray();
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            if ((resolveInfo.activityInfo.applicationInfo.flags & 1) == 0) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{-126, -71, 23, 110}, new byte[]{-20, -40, 122, 11, 66, 115, -58, 84}), resolveInfo.loadLabel(packageManager).toString());
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -26, -81, 59, 17, -124, -49}, new byte[]{15, -121, -52, 80, 112, -29, -86, -48}), resolveInfo.activityInfo.packageName);
                if (z9) {
                    try {
                        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-33, 71, -29, -49}, new byte[]{-74, 36, -116, -95, 91, 119, 68, 105}), AbstractC2587b.m4051r(resolveInfo.loadIcon(packageManager)));
                    } catch (Exception unused) {
                    }
                }
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }

    /* JADX INFO: renamed from: B */
    public static String m935B(Object obj, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-127, -111, 76, -15}, new byte[]{-17, -16, 33, -108, -63, -96, 7, -42}), str);
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-122, 9, -1, -70, ByteCompanionObject.MAX_VALUE}, new byte[]{-16, 104, -109, -49, 26, -82, 111, 15}), obj);
        return jSONObject.toString();
    }

    /* JADX INFO: renamed from: C */
    public static String m936C(CarCmdProxy carCmdProxy) {
        return m937D(carCmdProxy).toString();
    }

    /* JADX INFO: renamed from: D */
    public static JSONObject m937D(CarCmdProxy carCmdProxy) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{13, ByteCompanionObject.MAX_VALUE, 102, -89}, new byte[]{99, 30, 11, -62, -63, 13, 110, -36}), AbstractC1387m.m2421h(new byte[]{53, -64, -15, -32, 66, -121, -64}, new byte[]{67, -91, -103, -119, 33, -21, -91, -19}));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-52, 110, -103, 12, -76}, new byte[]{-65, 30, -4, 105, -48, -52, -106, -113}), carCmdProxy.getSpeed());
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{3, -90, ByteCompanionObject.MIN_VALUE}, new byte[]{113, -42, -19, 51, -99, 68, -14, 60}), carCmdProxy.getRPM());
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{40, -88, 94, 68, -28, 51}, new byte[]{77, -58, 57, 45, -118, 86, 9, -58}), m942I(carCmdProxy.getstatengin()));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{116, -61, -45, 50, -35, -68, -83}, new byte[]{27, -74, -89, 102, -72, -47, -35, 45}), carCmdProxy.getouttemp());
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-104, -36, 20, -119, -18, -105, -42, 124, -107, -47, 20, -100, -20, ByteCompanionObject.MIN_VALUE}, new byte[]{-6, -67, 96, -3, -117, -27, -81, 42}), carCmdProxy.akbvolt());
        String strM2421h = AbstractC1387m.m2421h(new byte[]{67, 113, -66, -82, -18, 110, -41, -7, 64, 106, -81}, new byte[]{37, 4, -37, -62, -66, 11, -91, -102});
        JSONObject jSONObjectM941H = m941H(carCmdProxy, AbstractC1387m.m2421h(new byte[]{-114, 85, 51, -11, -9, -2, 115, 64, -74, 64, 34, -40, -14, -18, 120, 88}, new byte[]{-23, 48, 71, -86, -111, -117, 22, 44}));
        if (jSONObjectM941H.has(AbstractC1387m.m2421h(new byte[]{-60, -8, -50, -85, -91}, new byte[]{-78, -103, -94, -34, -64, 79, -69, 109}))) {
            jSONObject.put(strM2421h, jSONObjectM941H.opt(AbstractC1387m.m2421h(new byte[]{96, -32, 37, 10, 106}, new byte[]{22, -127, 73, ByteCompanionObject.MAX_VALUE, 15, Base64.padSymbol, 21, -13})));
            if (jSONObjectM941H.has(AbstractC1387m.m2421h(new byte[]{-37, -94, 115}, new byte[]{-87, -61, 4, 7, 64, -12, -46, 22}))) {
                jSONObject.put(strM2421h.concat(AbstractC1387m.m2421h(new byte[]{-15, 72, -108}, new byte[]{-93, 41, -29, 2, 97, -38, -107, -124})), jSONObjectM941H.opt(AbstractC1387m.m2421h(new byte[]{-40, -93, -121}, new byte[]{-86, -62, -16, -87, -91, -38, -12, 3})));
            }
        }
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-1, 118, -33}, new byte[]{-119, 25, -69, -28, 125, -43, -126, 83}), carCmdProxy.getvod());
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{71, -57, 24}, new byte[]{52, -78, 118, 17, 60, -40, 124, -116}), carCmdProxy.getsun());
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-54, -110, -109, 21}, new byte[]{-70, -13, -31, 126, 76, 29, ByteCompanionObject.MIN_VALUE, -110}), m942I(carCmdProxy.getParkOnOff()));
        return jSONObject;
    }

    /* JADX INFO: renamed from: E */
    public static String m938E(CarCmdProxy carCmdProxy) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{83, 59, 27, 2}, new byte[]{Base64.padSymbol, 90, 118, 103, 68, -125, 84, -89}), AbstractC1387m.m2421h(new byte[]{-27, 42, -65, 72, -80, 116, -50}, new byte[]{-110, 67, -37, 47, -43, 0, -67, 94}));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{27, -32, -37, -118}, new byte[]{115, -123, -70, -2, -43, 120, -105, 106}), m959r(carCmdProxy));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{47, -2, -7, -78, 40}, new byte[]{92, -101, -104, -58, 91, -37, -32, -4}), m965z(carCmdProxy));
        return jSONObject.toString();
    }

    /* JADX INFO: renamed from: F */
    public static boolean m939F(String str) {
        if (str == null || str.trim().isEmpty()) {
            return true;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return m946b(jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-100, 7, 44, -52, -116}, new byte[]{-7, 117, 94, -93, -2, 73, -122, 26}), "")) || jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-54, 78, -35, -83, 27}, new byte[]{-68, 47, -79, -40, 126, -64, 41, 51}), 0) == -10000 || jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-24, -2, 10}, new byte[]{-102, -97, 125, 102, 72, 19, 17, -5}), 0) == -10000 || jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{41, 84, 66, -10, -124, 99, 38, 91, 32}, new byte[]{69, 49, 36, -126, -46, 2, 74, 46}), 0) == -10000 || jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{115, -51, -61, -26, 118, -124, -97, 109, 116, -63}, new byte[]{1, -92, -92, -114, 2, -46, -2, 1}), 0) == -10000 || m947c(jSONObject.optJSONArray(AbstractC1387m.m2421h(new byte[]{107, 95, 75, 26, 77, -110, -24, -8, 106}, new byte[]{25, 62, 60, 76, 44, -2, -99, -99}))) || m947c(jSONObject.optJSONArray(AbstractC1387m.m2421h(new byte[]{121, 71, 83, 5, 77, -16, 69, 110, 116, 78, 64, 20, 108}, new byte[]{21, 34, 53, 113, 31, -111, 50, 56}))) || m947c(jSONObject.optJSONArray(AbstractC1387m.m2421h(new byte[]{74, 67, 48, -36, -57, -120, 125, -42, 110, 75, 59, -63, -42, -87}, new byte[]{56, 42, 87, -76, -77, -38, 28, -95})));
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: renamed from: G */
    public static CarCmdProxy m940G() throws JSONException {
        C1652b.m2734a();
        CarCmdProxy carCmdProxyM2736d = C1652b.m2736d();
        if (carCmdProxyM2736d != null) {
            return carCmdProxyM2736d;
        }
        throw new JSONException(AbstractC1387m.m2421h(new byte[]{33, -9, 36, -95, -93, -101, 114, -99, 50, -28, 57, -122, -71, -87, 120, -73, 46, -6}, new byte[]{66, -106, 86, -2, -64, -10, 22, -62}));
    }

    /* JADX INFO: renamed from: H */
    public static JSONObject m941H(CarCmdProxy carCmdProxy, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{33, -45, 35}, new byte[]{66, -66, 71, 94, -17, 120, 4, -106}), str);
        JSONObject jSONObjectM1618c = carCmdProxy.m1618c(jSONObject);
        return jSONObjectM1618c == null ? new JSONObject() : jSONObjectM1618c;
    }

    /* JADX INFO: renamed from: I */
    public static boolean m942I(Boolean bool) {
        return bool != null && bool.booleanValue();
    }

    /* JADX INFO: renamed from: M */
    public static boolean m943M(String str) {
        return (str == null || str.trim().isEmpty() || str.length() > 128) ? false : true;
    }

    /* JADX INFO: renamed from: N */
    public static String m944N(C2052b c2052b) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (c2052b == null) {
                return jSONObject.toString();
            }
            String strM2421h = AbstractC1387m.m2421h(new byte[]{124, -92, -73, -107}, new byte[]{31, -51, -61, -20, -93, -25, 77, -23});
            String str = c2052b.f5605a;
            String str2 = "";
            if (str == null) {
                str = "";
            }
            jSONObject.put(strM2421h, str);
            String strM2421h2 = AbstractC1387m.m2421h(new byte[]{60, -68, -117, 30}, new byte[]{72, -39, -26, 110, 103, -36, -48, 100});
            String str3 = c2052b.f5606b;
            if (str3 == null) {
                str3 = "";
            }
            jSONObject.put(strM2421h2, str3);
            String strM2421h3 = AbstractC1387m.m2421h(new byte[]{45, Base64.padSymbol, 100, -7, ByteCompanionObject.MIN_VALUE, 83, -49, -77, 32}, new byte[]{78, 82, 10, -99, -23, 39, -90, -36});
            String str4 = c2052b.f5607c;
            if (str4 != null) {
                str2 = str4;
            }
            jSONObject.put(strM2421h3, str2);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-20, 89, 92, 79}, new byte[]{-123, 58, 51, 33, 96, 94, 4, 32}), c2052b.f5608d);
            return jSONObject.toString();
        } catch (Exception e) {
            return m948e(e.getMessage());
        }
    }

    /* JADX INFO: renamed from: a */
    public static Boolean m945a() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (!AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.FALSE;
        }
        C1652b.m2734a();
        return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{9}, new byte[]{57, 78, 44, 52, -14, 9, -13, -120}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
    }

    /* JADX INFO: renamed from: b */
    public static boolean m946b(String str) {
        if (str == null) {
            return false;
        }
        return str.contains(AbstractC1387m.m2421h(new byte[]{10, -59, 65, 73, -108, 58, -75, -33, 45, -44, 101, 85, -72, Base64.padSymbol, -81, -50, 39, -49, 78}, new byte[]{78, -96, 32, 45, -37, 88, -33, -70})) || str.contains(AbstractC1387m.m2421h(new byte[]{57, 37, 85, 37, 26, 126, -47, 95, 24, 45, 113, 57, 42, 98, -46, 95, 20, 47, 90}, new byte[]{125, 64, 52, 65, 73, 7, -94, 43})) || str.contains(AbstractC1387m.m2421h(new byte[]{52, 85, 96, -110, -23, -15, 30, -19, 5, 85, 125, -119, -12, -5, 53}, new byte[]{102, 48, 13, -3, -99, -108, 91, -107})) || str.contains(AbstractC1387m.m2421h(new byte[]{-70, 26, 38, 77, 39, 102, -45, -118, -82, 26, 33, 82, 35, 97, -40, -105, -77, 21}, new byte[]{-4, 91, 111, 1, 98, 34, -116, -34})) || str.contains(AbstractC1387m.m2421h(new byte[]{74, -99, -76, -59, 42, 20, 26, 34, 119, ByteCompanionObject.MIN_VALUE, -69, -117, 63, 20, 16, 58, 123, -117}, new byte[]{30, -17, -43, -85, 89, 117, 121, 86})) || str.contains(AbstractC1387m.m2421h(new byte[]{-81, 100, 70, 55, 43, -29, -25, 77, -68, 119, 91, 16, 49, -47, -19, 103, -96, 105}, new byte[]{-52, 5, 52, 104, 72, -114, -125, 18}));
    }

    /* JADX INFO: renamed from: c */
    public static boolean m947c(JSONArray jSONArray) {
        if (jSONArray == null) {
            return false;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            if (jSONArray.optInt(i10, 0) == -10000) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: e */
    public static String m948e(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            String strM2421h = AbstractC1387m.m2421h(new byte[]{-36, 54, -104, 45, -87}, new byte[]{-71, 68, -22, 66, -37, -100, 71, -54});
            if (str == null) {
                str = "";
            }
            jSONObject.put(strM2421h, str);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return AbstractC1387m.m2421h(new byte[]{20, 104, -50, -76, 69, 53, -41, -108, 85, 104, -63, -75, 88, 52, -6, -45, 29, 56, -60, -76, 21, 39}, new byte[]{111, 74, -85, -58, 55, 90, -91, -74});
        }
    }

    /* JADX INFO: renamed from: f */
    public static String m949f(String str) {
        if (str == null || str.trim().isEmpty()) {
            str = AbstractC1387m.m2421h(new byte[]{32, -48}, new byte[]{91, -83, -53, 24, 96, 102, -120, 99});
        }
        JSONObject jSONObjectM1618c = m940G().m1618c(new JSONObject(str));
        return jSONObjectM1618c == null ? AbstractC1387m.m2421h(new byte[]{-61, -65}, new byte[]{-72, -62, 25, 26, -49, 79, -24, 96}) : jSONObjectM1618c.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x032c, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{116, 64, 56}, new byte[]{7, 53, 86, 96, -68, -35, 65, -21})) != false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0342, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{4, 88, -119}, new byte[]{118, 40, -28, 55, -36, kotlin.p118io.encoding.Base64.padSymbol, 31, -125})) != false) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0358, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-28, -57, 58}, new byte[]{-121, -90, 72, -23, 5, 93, -90, -25})) != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x036e, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{18, -31, -71}, new byte[]{115, -115, -43, 48, 62, -21, -101, 72})) != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0384, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-64, -37, 43, 69, -52, -89, -6, 33}, new byte[]{-93, -70, 89, 22, -72, -58, -114, 68})) != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x039a, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{34, 113, -19, -62, -81, 31, 4, -80, 36, 96}, new byte[]{69, 20, -103, -82, -64, 125, 108, -43})) != false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x03be, code lost:
    
        return m935B(java.lang.Boolean.valueOf(m942I(m940G().getlobheat())), p047e0.AbstractC1387m.m2421h(new byte[]{-33, 78, 114, -3, -39, -56, -106}, new byte[]{-77, 33, 16, -75, -68, -87, -30, 5}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x03d1, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{2, -54, -118, 115, 33, -84, kotlin.jvm.internal.ByteCompanionObject.MAX_VALUE}, new byte[]{96, -85, -2, 7, 68, -34, 6, 20})) != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x03e7, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-76, -53, -62, -58, 64, -91, 97, -109, -90, -54}, new byte[]{-46, -71, -83, -88, 52, -10, 4, -14})) != false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x03fd, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{10, -54, -37, 26, 123, 83, 1, 38, 12}, new byte[]{105, -85, -87, 69, 8, 39, 96, 82})) != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0407, code lost:
    
        return m952k(m940G());
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-106, -123, -26, -61, 83, -38, 65, -48, -109, -107, -19, -37}, new byte[]{-16, -16, -125, -81, 12, -86, 36, -94})) != false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x041a, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{111, 0, 7, 39, -40, -49, -12}, new byte[]{21, 97, 99, 111, -67, -82, kotlin.jvm.internal.ByteCompanionObject.MIN_VALUE, -64})) != false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0430, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-49, -43, 19, -50, 52, 0, 88, 39, -63, -60}, new byte[]{-84, -76, 113, -89, 90, 95, 44, 66})) != false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0446, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-87, -5, 121, -19, 110, 107, -47, -106, -81, -19}, new byte[]{-37, -98, 24, -97, 49, 24, -76, -9})) != false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x045b, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-93, -21, 109, -20, -86, -77, -102, -26, -94}, new byte[]{-47, -114, 12, -98, -7, -42, -5, -110})) != false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0465, code lost:
    
        return m961t(m940G());
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0478, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-39, -92, 85, 125, -36, 123, 25, -79, -44, -87, 85, 104, -34, 108}, new byte[]{-69, -59, 33, 9, -71, 9, 96, -25})) != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x048d, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-99, 35, -53, -100, -32, -18, -6, -61}, new byte[]{-17, 70, -86, -18, -88, -117, -101, -73})) != false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x04a3, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-51, 75, 104, 70, -105, -108, -9, -45, -37, 86, 105}, new byte[]{-70, 34, 12, 33, -14, -32, -92, -89})) != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x04ad, code lost:
    
        return m938E(m940G());
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x04c0, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-107, -118, 119, -25, 3, 3, -43}, new byte[]{-12, -31, 21, -111, 108, 111, -95, -123})) != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x04e0, code lost:
    
        return m935B(java.lang.Float.valueOf(m940G().akbvolt()), p047e0.AbstractC1387m.m2421h(new byte[]{42, -123, -94, -37, -109, 105, 122, 46, 39, -120, -94, -50, -111, 126}, new byte[]{72, -28, -42, -81, -10, 27, 3, 120}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x04f3, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{125, -121, -126, 21, 81, -108, 97}, new byte[]{18, -14, -10, 65, 52, -7, 17, 123})) != false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006e, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{48, 102, -52, 7, -23, -52, 62, 37, 52, 124, -50}, new byte[]{85, 8, -85, 110, -121, -87, 109, 81})) != false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0509, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-45, 85, -90, -93, 119, 80, -60, -100, -43, 68}, new byte[]{-76, 48, -46, -39, 22, 52, -84, -7})) != false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x052d, code lost:
    
        return m935B(java.lang.Boolean.valueOf(m942I(m940G().getzadheat())), p047e0.AbstractC1387m.m2421h(new byte[]{106, -112, -78, -30, -77, 9, -18}, new byte[]{16, -15, -42, -86, -42, 104, -102, -126}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0540, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-121, -62, 59, 53, 42, 117}, new byte[]{-32, -89, 79, 67, 69, 17, 40, -97})) != false) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0560, code lost:
    
        return m935B(java.lang.Integer.valueOf(m940G().getvod()), p047e0.AbstractC1387m.m2421h(new byte[]{73, -119, 40}, new byte[]{63, -26, 76, -46, 110, 119, -58, 70}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0573, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{113, 104, 57, 33, -20, 122}, new byte[]{22, 13, 77, 82, -103, 20, -89, 85})) != false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0593, code lost:
    
        return m935B(java.lang.Boolean.valueOf(m940G().getsun()), p047e0.AbstractC1387m.m2421h(new byte[]{7, -28, 1}, new byte[]{116, -111, 111, -51, -118, 20, -123, 50}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x05a6, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-55, 56, 76, 4, -36, 94}, new byte[]{-82, 93, 56, 86, -116, 19, -108, -91})) != false) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x05c6, code lost:
    
        return m935B(java.lang.Integer.valueOf(m940G().getRPM()), p047e0.AbstractC1387m.m2421h(new byte[]{17, -111, -1}, new byte[]{99, -31, -110, -110, -117, 38, -54, 15}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x05d9, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{97, 116, -10, -116, -23, 112}, new byte[]{4, 26, -111, -27, -121, 21, -120, 79})) != false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x05fd, code lost:
    
        return m935B(java.lang.Boolean.valueOf(m942I(m940G().getstatengin())), p047e0.AbstractC1387m.m2421h(new byte[]{-66, 19, 13, -60, -38, 67}, new byte[]{-37, 125, 106, -83, -76, 38, -117, 100}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0610, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-34, 116, -31, -93, 24, 4, -110, 72, -51}, new byte[]{-67, 21, -125, -54, 118, 80, -9, 37})) != false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x061a, code lost:
    
        return m953l(m940G());
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x062d, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{kotlin.jvm.internal.ByteCompanionObject.MIN_VALUE, -16, 83, kotlin.jvm.internal.ByteCompanionObject.MAX_VALUE, 34, -56, -96, -73, -121, -10, 79}, new byte[]{-26, -126, 60, 17, 86, -105, -45, -46})) != false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0637, code lost:
    
        return m956o(m940G());
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x064a, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-28, 39, 100, -68, -49, 115, -71, 98, -18, 50}, new byte[]{-125, 66, 16, -45, -70, 7, -51, 7})) != false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0084, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-63, -111, 31, 2, 25, 14, -90, -27, -61, -122, 8, 33, 2, 31}, new byte[]{-90, -12, 107, 68, 108, 107, -54, -75})) != false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x066a, code lost:
    
        return m935B(java.lang.Integer.valueOf(m940G().getouttemp()), p047e0.AbstractC1387m.m2421h(new byte[]{3, -107, 7, -63, -105, 51, -119}, new byte[]{108, -32, 115, -107, -14, 94, -7, -4}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x067d, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{89, -4, -36, 17, 124, 18, 108, -73, 91, -8, -64, 29}, new byte[]{47, -103, -76, 120, 31, 126, 9, -28})) != false) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0687, code lost:
    
        return m936C(m940G());
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x069a, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{109, -83, -56, -5, 115, 20, -57, -106, 110, -74, -39}, new byte[]{11, -40, -83, -105, 35, 113, -75, -11})) != false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x06c2, code lost:
    
        return m954m(m940G(), p047e0.AbstractC1387m.m2421h(new byte[]{90, -12, -17, -49, 30, 79, 95, -92, 89, -17, -2}, new byte[]{60, -127, -118, -93, 78, 42, 45, -57}), p047e0.AbstractC1387m.m2421h(new byte[]{-76, 4, 60, 107, -8, -113, 50, -121, -116, 17, 45, 70, -3, -97, 57, -97}, new byte[]{-45, 97, 72, 52, -98, -6, 87, -21}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x06d5, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{126, -114, 71, -49, -55, -40, 25, -19, 104}, new byte[]{14, -17, 53, -92, -122, -74, 86, -117})) != false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x06ea, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{105, -109, -58, -28, 107, 118, 14, 3, 96, -71, -44, -46}, new byte[]{14, -10, -78, -76, 10, 4, 101, 76})) != false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x070e, code lost:
    
        return m935B(java.lang.Boolean.valueOf(m942I(m940G().getParkOnOff())), p047e0.AbstractC1387m.m2421h(new byte[]{86, -104, 78, -99}, new byte[]{38, -7, 60, -10, 112, 16, -60, -73}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0721, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-23, 2, -109, -7, -5, 28, 59, 124, -46, 19, -105, -24}, new byte[]{-102, 118, -10, -100, -119, 117, 85, 27})) != false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0745, code lost:
    
        return m935B(java.lang.Boolean.valueOf(m942I(m940G().getrulheat())), p047e0.AbstractC1387m.m2421h(new byte[]{87, -112, 85, 64, 48, 99, 25}, new byte[]{37, -27, 57, 8, 85, 2, 109, 5}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009a, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-50, 51, 60, -18, -33, -29, 8}, new byte[]{-68, 70, 80, -90, -70, -126, 124, -97})) != false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b2, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{20, -26, -61, 20, 26, 91, 66, 32, 17, -9, -54, 9, 28}, new byte[]{98, -125, -85, 125, 121, 55, 39, kotlin.jvm.internal.ByteCompanionObject.MAX_VALUE})) != false) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c8, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-36, 86, 110, 120, 93, -85, 25, -88, -43}, new byte[]{-90, 55, 10, 39, 46, -50, 120, -36})) != false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00de, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{82, 94, -32, 76, -87, -52, 15, 5, 81, 86, -16, 78}, new byte[]{37, 55, -124, 43, -52, -72, 80, 118})) != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f4, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{97, -32, 67, -70, 36, 57, 112}, new byte[]{22, -119, 39, -35, 65, 77, 3, -79})) != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x010a, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-76, 106, -102, -114, -105, 72, 52, -105, -75, 117, -125}, new byte[]{-48, 24, -13, -8, -14, 58, 107, -29})) != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x011f, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{34, 116, -35, 40, 71, -107, -96, 43}, new byte[]{88, 21, -71, 123, 34, -12, -44, 88})) != false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0135, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{106, 57, -2, 87, -46, -67, -15, 46, 108, 40}, new byte[]{13, 92, -118, 37, -89, -47, -103, 75})) != false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x014b, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-58, -114, -109, 16, 52, -109, 115}, new byte[]{-91, -30, -6, 125, 85, -25, 22, 83})) != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0161, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-110, -123, -79, -104, -55, -108, -26}, new byte[]{-6, -32, -48, -20, -96, -6, -127, -63})) != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0177, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-36, -102, 54, -34, 93, 67, 7, -69, -43, -104}, new byte[]{-72, -24, 95, -88, 56, 49, 83, -34})) != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0198, code lost:
    
        return m935B(java.lang.Float.valueOf(m940G().getCabinTemp(1)), p047e0.AbstractC1387m.m2421h(new byte[]{118, -28, 38, 75, 36, 88, -109, -6, kotlin.jvm.internal.ByteCompanionObject.MAX_VALUE, -26}, new byte[]{18, -106, 79, kotlin.p118io.encoding.Base64.padSymbol, 65, 42, -57, -97}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01ab, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{107, 25, 115, -51, -21, 85, 107}, new byte[]{29, 124, 27, -92, -120, 57, 14, 112})) != false) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01c1, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{72, 125, 80, -93, -97, 67, -71}, new byte[]{36, 18, 50, -21, -6, 34, -51, 100})) != false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01d7, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{70, 121, -114, -50, 87, 121, 79, 82, 68, 71, -119, -40, 95, 103}, new byte[]{54, 24, -3, -67, 50, 23, 40, 55})) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01ed, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-74, 45, -77, -107, 13, -98, -58, 7, -65, 47, -82, -120}, new byte[]{-47, 72, -57, -26, 121, -1, -78, 98})) != false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0203, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{29, 124, 72, 6, -122}, new byte[]{110, 8, 41, 114, -29, -37, -50, -32})) != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002c, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{64, kotlin.p118io.encoding.Base64.padSymbol, 95, -31, 40, -65, 107, 99, 91, 48, 121, -32, 58, -93}, new byte[]{55, 84, 49, -123, 91, -41, 2, 6})) != false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0219, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{49, -67, kotlin.jvm.internal.ByteCompanionObject.MIN_VALUE, -36, -77}, new byte[]{66, -51, -27, -71, -41, -79, -64, -75})) != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0239, code lost:
    
        return m935B(java.lang.Integer.valueOf(m940G().getSpeed()), p047e0.AbstractC1387m.m2421h(new byte[]{-80, 16, 97, -41, -34}, new byte[]{-61, 96, 4, -78, -70, -38, -24, -32}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0269, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{46, -49, -107, 31, 21}, new byte[]{70, -86, -12, 107, 102, -71, 28, 83})) != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x027f, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{47, -86, -89, 60, -54, -24, 123, -65}, new byte[]{64, -33, -45, 99, -66, -115, 22, -49})) != false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0297, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-39, -72, 82, -26, -98, 41, 13, 115, -37, -115, 68, -8, -117}, new byte[]{-87, -39, 33, -107, -5, 71, 106, 22})) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02ba, code lost:
    
        return m935B(java.lang.Float.valueOf(m940G().getCabinTemp(2)), p047e0.AbstractC1387m.m2421h(new byte[]{84, 103, 24, 113, 5, -54, -110, -65, 86, 82, 14, 111, 16}, new byte[]{36, 6, 107, 2, 96, -92, -11, -38}));
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02cd, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-83, -13, kotlin.p118io.encoding.Base64.padSymbol, 74}, new byte[]{-35, -110, 79, 33, -87, -34, -21, -33})) != false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02e3, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{10, 115, -117, 77}, new byte[]{98, 22, -22, 57, -118, -50, -94, 108})) != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x02ed, code lost:
    
        return m958q(m940G());
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0300, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{2, 105, 2, 85}, new byte[]{100, 28, 103, 57, -50, 11, -80, 43})) != false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0316, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{-41, 1, -126}, new byte[]{-95, 110, -26, 15, -87, 120, -60, -45})) != false) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
    
        if (r12.equals(p047e0.AbstractC1387m.m2421h(new byte[]{34, 57, 45, 4, 26, 50, -119, -68}, new byte[]{69, 92, 89, 87, 106, 87, -20, -40})) != false) goto L71;
     */
    /* JADX INFO: renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m950g(java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 3426
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p016b1.C0871l.m950g(java.lang.String):java.lang.String");
    }

    /* JADX INFO: renamed from: h */
    public static String m951h(String str) {
        if (!m945a().booleanValue()) {
            return AbstractC1387m.m2421h(new byte[]{98, 90, 32, -117, -106, 109, -29, -18, 35, 90, 41, -112, -121, 103, -1, -65, 124, 39, 55, -100, -107, 119, -8, -66, 124, 28, 103, -124}, new byte[]{25, 120, 69, -7, -28, 2, -111, -52});
        }
        PackageManager packageManager = C1652b.m2739h().getPackageManager();
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return AbstractC1387m.m2421h(new byte[]{71, -60, 53, -46, -73, -85, -88, -14, 6, -60, 49, -48, -75, -101, -76, -65, 72, -71, 54, -49, -80, -86, -66, -14, 65}, new byte[]{60, -26, 80, -96, -59, -60, -38, -48});
        }
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(launchIntentForPackage, 0);
        if (resolveInfoResolveActivity == null) {
            return AbstractC1387m.m2421h(new byte[]{-57, -39, -57, 72, -12, -32, 19, 101, -122, -39, -61, 74, -10, -48, 15, 40, -56, -92, -60, 85, -13, -31, 5, 101, -63}, new byte[]{-68, -5, -94, 58, -122, -113, 97, 71});
        }
        C1919e c1919eM2999b = C1919e.m2999b(resolveInfoResolveActivity, packageManager);
        C1652b.m2734a();
        C1652b.m2737f().m2994j(c1919eM2999b, null);
        return AbstractC1387m.m2421h(new byte[]{-25, -5, 90, 41, -116, -110, 109, 55, -66, -29, 11, 50, -122, -60, 101}, new byte[]{-100, -39, 41, 93, -19, -26, 24, 68});
    }

    /* JADX INFO: renamed from: k */
    public static String m952k(CarCmdProxy carCmdProxy) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-8, 46, 1, 22}, new byte[]{-106, 79, 108, 115, -89, -114, 94, 115}), AbstractC1387m.m2421h(new byte[]{123, 3, -7}, new byte[]{26, 111, -107, -55, -89, 14, 53, -119}));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-18, -31, -3, 36, 37, -23, -72}, new byte[]{-104, -124, -107, 77, 70, -123, -35, -122}), m937D(carCmdProxy));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{108, 60, 119, -48}, new byte[]{4, 89, 22, -92, 104, 2, -118, 87}), m959r(carCmdProxy));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-3, 13, -64, -4, -13}, new byte[]{-114, 104, -95, -120, ByteCompanionObject.MIN_VALUE, -67, -55, -13}), m965z(carCmdProxy));
        return jSONObject.toString();
    }

    /* JADX INFO: renamed from: l */
    public static String m953l(CarCmdProxy carCmdProxy) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{38, -89, -108, -4}, new byte[]{72, -58, -7, -103, 90, 15, 70, -69}), AbstractC1387m.m2421h(new byte[]{28, -23, 74, -92, 7, 91, 27, 45, 15}, new byte[]{ByteCompanionObject.MAX_VALUE, -120, 40, -51, 105, 15, 126, 64}));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-27, 105, -18, 124, 53, -90, 36, 60, -20, 107}, new byte[]{-127, 27, -121, 10, 80, -44, 112, 89}), carCmdProxy.getCabinTemp(1));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-17, 99, -21, 117, -57, -52, 56, -73, -19, 86, -3, 107, -46}, new byte[]{-97, 2, -104, 6, -94, -94, 95, -46}), carCmdProxy.getCabinTemp(2));
        return jSONObject.toString();
    }

    /* JADX INFO: renamed from: m */
    public static String m954m(CarCmdProxy carCmdProxy, String str, String str2) throws JSONException {
        JSONObject jSONObjectM941H = m941H(carCmdProxy, str2);
        jSONObjectM941H.put(AbstractC1387m.m2421h(new byte[]{14, -47, 103, 119}, new byte[]{96, -80, 10, 18, -126, 99, 63, 20}), str);
        return jSONObjectM941H.toString();
    }

    /* JADX INFO: renamed from: n */
    public static JSONObject m955n(CarCmdProxy carCmdProxy, int i10) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-80, 62, -107, -94}, new byte[]{-61, 91, -12, -42, ByteCompanionObject.MIN_VALUE, -43, 85, -105}), i10);
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-64, -50, 121, 69}, new byte[]{-88, -85, 24, 49, 34, -64, 111, 113}), carCmdProxy.cargetheat(i10));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{10, 6, 23, -9}, new byte[]{124, 99, 121, -125, -87, -126, -105, -57}), carCmdProxy.cargetvent(i10));
        return jSONObject;
    }

    /* JADX INFO: renamed from: o */
    public static String m956o(CarCmdProxy carCmdProxy) {
        return m957p(carCmdProxy).toString();
    }

    /* JADX INFO: renamed from: p */
    public static JSONObject m957p(CarCmdProxy carCmdProxy) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-7, -6, 8, 99}, new byte[]{-105, -101, 101, 6, 120, -3, -118, 75}), AbstractC1387m.m2421h(new byte[]{-3, 78, -98, 44, -79, -122, 26, -52, -17, 79}, new byte[]{-101, 60, -15, 66, -59, -43, ByteCompanionObject.MAX_VALUE, -83}));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-69, -115, 29, -74, -43, -58, 110, -31, -87}, new byte[]{-35, -1, 114, -40, -95, -118, 11, -121}), m955n(carCmdProxy, 1));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-48, -83, 98, -125, 66, 6, 47, 55, -34, -85}, new byte[]{-74, -33, 13, -19, 54, 84, 70, 80}), m955n(carCmdProxy, 2));
        return jSONObject;
    }

    /* JADX INFO: renamed from: q */
    public static String m958q(CarCmdProxy carCmdProxy) {
        return m959r(carCmdProxy).toString();
    }

    /* JADX INFO: renamed from: r */
    public static JSONObject m959r(CarCmdProxy carCmdProxy) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{60, 43, 57, -122}, new byte[]{82, 74, 84, -29, 93, 71, 66, -25}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, 18, -85, -22}, new byte[]{-24, 119, -54, -98, 49, 46, -99, -66}));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{99, -67, 70, 29, -116, 115, -14}, new byte[]{17, -56, 42, 85, -23, 18, -122, -49}), m942I(carCmdProxy.getrulheat()));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-106, 44, -84, 9, 102, -33, 100}, new byte[]{-6, 67, -50, 65, 3, -66, 16, -2}), m942I(carCmdProxy.getlobheat()));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-121, -19, 106, -94, -72, 2, 79}, new byte[]{-3, -116, 14, -22, -35, 99, 59, -43}), m942I(carCmdProxy.getzadheat()));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-25, -107, 59, -61, Base64.padSymbol, 123, -22, -23, -18, -105}, new byte[]{-125, -25, 82, -75, 88, 9, -66, -116}), carCmdProxy.getCabinTemp(1));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{71, -44, 119, -7, -43, -102, -87, -104, 69, -31, 97, -25, -64}, new byte[]{55, -75, 4, -118, -80, -12, -50, -3}), carCmdProxy.getCabinTemp(2));
        return jSONObject;
    }

    /* JADX INFO: renamed from: s */
    public static JSONObject m960s(CarCmdProxy carCmdProxy, int i10) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{37, -12, -47, -20}, new byte[]{86, -111, -80, -104, 63, -31, 13, 102}), i10);
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-62, -109, -87, -33}, new byte[]{-86, -10, -56, -85, -31, Base64.padSymbol, -89, -126}), carCmdProxy.getcarZadSeatHeat(i10));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-118, -31, -24, -20}, new byte[]{-4, -124, -122, -104, 1, -63, 120, -37}), carCmdProxy.getcarZadSeatVent(i10));
        return jSONObject;
    }

    /* JADX INFO: renamed from: t */
    public static String m961t(CarCmdProxy carCmdProxy) {
        return m962u(carCmdProxy).toString();
    }

    /* JADX INFO: renamed from: u */
    public static JSONObject m962u(CarCmdProxy carCmdProxy) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-2, 38, -120, -92}, new byte[]{-112, 71, -27, -63, 91, 126, -40, 93}), AbstractC1387m.m2421h(new byte[]{98, 9, 93, 73, 94, -20, 37, 64, 99}, new byte[]{16, 108, 60, 59, 13, -119, 68, 52}));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-31, 65, -21, 97, 38, -54, -86, 77}, new byte[]{-109, 36, -118, 19, 106, -81, -52, 57}), m960s(carCmdProxy, 0));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-93, 73, -99, 55, -51, 20, -110, -117, -91}, new byte[]{-47, 44, -4, 69, -97, 125, -11, -29}), m960s(carCmdProxy, 1));
        return jSONObject;
    }

    /* JADX INFO: renamed from: w */
    public static JSONArray m963w(JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString(AbstractC1387m.m2421h(new byte[]{-3, 75, -39, 63, -13, 44, 101}, new byte[]{-81, 62, -73, 122, -99, 89, 8, 110}), "");
                if (!strOptString.isEmpty()) {
                    try {
                        String strM4052s = AbstractC2587b.m4052s(C1652b.m2739h(), strOptString);
                        if (strM4052s != null && !strM4052s.isEmpty()) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-12, 94, 96, 113, 18, 7, -104}, new byte[]{-90, 43, 14, 52, 124, 114, -11, 59}), strOptString);
                            jSONObject.put(AbstractC1387m.m2421h(new byte[]{100, -102, 81, 126, 82, -111, -3, -116, 95, -116}, new byte[]{54, -17, 63, 59, 60, -28, -112, -36}), strM4052s);
                            jSONArray2.put(jSONObject);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return jSONArray2;
    }

    /* JADX INFO: renamed from: y */
    public static String m964y(CarCmdProxy carCmdProxy) {
        return m965z(carCmdProxy).toString();
    }

    /* JADX INFO: renamed from: z */
    public static JSONObject m965z(CarCmdProxy carCmdProxy) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-14, -100, -57, -112}, new byte[]{-100, -3, -86, -11, -119, -48, 18, 99}), AbstractC1387m.m2421h(new byte[]{50, 116, -108, 40, -102}, new byte[]{65, 17, -11, 92, -23, -42, 83, -64}));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-112, 16, 98, 122, -34}, new byte[]{-10, 98, 13, 20, -86, 50, 57, 66}), m957p(carCmdProxy));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{104, -75, -43, 43}, new byte[]{26, -48, -76, 89, -72, -41, -38, -29}), m962u(carCmdProxy));
        return jSONObject;
    }

    /* JADX INFO: renamed from: J */
    public final void m966J(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-68, -112, 120, -88, -5, 33, -60, -25, -86}, new byte[]{-50, -11, 9, -35, -98, 82, -80, -82}), str);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{52, -3, 69, 66, -35, -115, 17, 113, 63, -24, 81}, new byte[]{70, -104, 52, 55, -72, -2, 101, 37}), str2);
            try {
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{99, 45, 55, -32, 77, -111, -122, 46}, new byte[]{17, 72, 68, -112, 34, -1, -11, 75}), new JSONObject(str3 == null ? AbstractC1387m.m2421h(new byte[]{54, -39}, new byte[]{77, -92, -70, 92, -101, -116, 75, 95}) : str3));
            } catch (JSONException unused) {
                String strM2421h = AbstractC1387m.m2421h(new byte[]{-117, 49, -46, -74, -83, 121, 65, 68}, new byte[]{-7, 84, -95, -58, -62, 23, 50, 33});
                if (str3 == null) {
                    str3 = "";
                }
                jSONObject.put(strM2421h, str3);
            }
            this.f597c.mo988e(AbstractC1387m.m2421h(new byte[]{-58, 93, 12, 45, 9, -65, -36, 91, -53, 79, 27}, new byte[]{-91, 60, 126, ByteCompanionObject.MAX_VALUE, 108, -52, -84, 52}), jSONObject.toString());
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: renamed from: K */
    public final void m967K(String str, String str2, JSONArray jSONArray) {
        int length = jSONArray.length();
        if (length == 0) {
            m968L(str, str2, new JSONArray(), false, true, null);
            return;
        }
        int i10 = 0;
        while (i10 < length) {
            JSONArray jSONArray2 = new JSONArray();
            int i11 = i10 + 8;
            int iMin = Math.min(length, i11);
            for (int i12 = i10; i12 < iMin; i12++) {
                jSONArray2.put(jSONArray.opt(i12));
            }
            m968L(str, str2, jSONArray2, i10 > 0, iMin >= length, null);
            i10 = i11;
        }
    }

    /* JADX INFO: renamed from: L */
    public final void m968L(String str, String str2, JSONArray jSONArray, boolean z9, boolean z10, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-47, 48, -35, 69, -15, -117, 36, -42, -57}, new byte[]{-93, 85, -84, 48, -108, -8, 80, -97}), str);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{62, -47, 55, -40, 111, 6, 87}, new byte[]{77, -76, 84, -84, 6, 105, 57, 66}), str2);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{12, -64, -39, -34, -91}, new byte[]{101, -76, -68, -77, -42, 34, -124, 55}), jSONArray);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-59, -123, -90, 88, 18, 13}, new byte[]{-92, -11, -42, Base64.padSymbol, 124, 105, 66, 3}), z9);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{79, 46, 77, -1, 54, -102, 125, -15}, new byte[]{44, 65, 32, -113, 90, -1, 9, -108}), z10);
            if (str3 != null && !str3.isEmpty()) {
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{66, -125, -55, -27, 87}, new byte[]{39, -15, -69, -118, 37, -116, 119, 69}), str3);
            }
            this.f597c.mo988e(AbstractC1387m.m2421h(new byte[]{57, 106, -25, 23, 43, -72, -30, -61, 22, 106, -26, 24, 36, -65, -32}, new byte[]{85, 11, -110, 121, 72, -48, -121, -79}), jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public String carCmd(String str, String str2) {
        return carCommand(str, str2);
    }

    @JavascriptInterface
    public String carCommand(String str, String str2) {
        try {
            return !this.f595a.equals(str) ? m948e(AbstractC1387m.m2421h(new byte[]{31, 83, -57, -103, 42, -25, 74, 47, 3, 71, -61, -120}, new byte[]{106, Base64.padSymbol, -90, -20, 94, -113, 37, 93})) : m949f(str2);
        } catch (Exception e) {
            return m948e(e.getMessage());
        }
    }

    /* JADX INFO: renamed from: d */
    public final boolean m969d(String str, String str2, InterfaceC0870k interfaceC0870k) {
        boolean z9;
        Set set = this.f598d;
        if (set.add(str)) {
            long j10 = f593i.get();
            AtomicBoolean atomicBoolean = f594j;
            if (j10 == 0) {
                z9 = false;
            } else {
                if (SystemClock.elapsedRealtime() < j10 || !atomicBoolean.compareAndSet(false, true)) {
                    set.remove(str);
                    return false;
                }
                z9 = true;
            }
            try {
                f591g.execute(new RunnableC0869j(this, interfaceC0870k, z9, str, str2));
                return true;
            } catch (RuntimeException unused) {
                set.remove(str);
                if (z9) {
                    atomicBoolean.set(false);
                }
            }
        }
        return false;
    }

    @JavascriptInterface
    public String getAppInfo(String str, String str2) {
        try {
            if (!this.f595a.equals(str)) {
                return AbstractC1387m.m2421h(new byte[]{-17, 49, -14, 80, -53, 119, 50, -113, -82, 49, -30, 76, -40, 109, 52, -59, -5, 97, -2, 88, -36, 124, 98, -48}, new byte[]{-108, 19, -105, 34, -71, 24, 64, -83});
            }
            PackageManager packageManager = C1652b.m2739h().getPackageManager();
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(packageManager.getLaunchIntentForPackage(str2), 0);
            if (resolveInfoResolveActivity == null) {
                return AbstractC1387m.m2421h(new byte[]{46, 104, -115, -80, 97, -64, -14, 101, 111, 104, -122, -83, 103, -16, -26, 40, 32, 36, -116, -32, 110}, new byte[]{85, 74, -24, -62, 19, -81, ByteCompanionObject.MIN_VALUE, 71});
            }
            String string = resolveInfoResolveActivity.loadLabel(packageManager).toString();
            Bitmap bitmapM4050q = AbstractC2587b.m4050q(resolveInfoResolveActivity.loadIcon(packageManager));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapM4050q.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return AbstractC1387m.m2421h(new byte[]{116, 76, -22, 75, 3, 83, -14, -25, 45}, new byte[]{15, 110, -124, 42, 110, 54, -48, -35}) + string + AbstractC1387m.m2421h(new byte[]{-52, -66, -56, -53, 91, -93, 52, 15, -44, -80}, new byte[]{-18, -110, -22, -94, 56, -52, 90, 45}) + android.util.Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2) + AbstractC1387m.m2421h(new byte[]{-78, 72}, new byte[]{-112, 53, -83, 122, -40, -23, 28, -120});
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{5, -80, -27, -27, 83, -14, 13, 45, 68, -80}, new byte[]{126, -110, ByteCompanionObject.MIN_VALUE, -105, 33, -99, ByteCompanionObject.MAX_VALUE, 15}));
            sb.append(e.getMessage());
            return AbstractC1178q.m2075i(new byte[]{9, -74}, new byte[]{43, -53, -73, -107, 102, -6, 34, -65}, sb);
        }
    }

    @JavascriptInterface
    public String getCarData(String str, String str2) {
        try {
            if (this.f595a.equals(str)) {
                return str2 == null ? m948e(AbstractC1387m.m2421h(new byte[]{115, 106, -34, 93, 17, -120, -53, -8, 123, 98}, new byte[]{22, 7, -82, 41, 104, -41, -91, -103})) : m950g(str2);
            }
            return m948e(AbstractC1387m.m2421h(new byte[]{0, 74, 10, 3, -16, 97, 42, 11, 28, 94, 14, 18}, new byte[]{117, 36, 107, 118, -124, 9, 69, 121}));
        } catch (Exception e) {
            return m948e(e.getMessage());
        }
    }

    @JavascriptInterface
    public String getFile(String str, String str2) {
        File[] fileArrListFiles;
        if (!this.f595a.equals(str)) {
            return "";
        }
        String strM2508g = null;
        try {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
            if (externalStoragePublicDirectory.exists() && (fileArrListFiles = externalStoragePublicDirectory.listFiles()) != null) {
                for (File file : fileArrListFiles) {
                    if (file.getName().equals(str2)) {
                        strM2508g = C1461d.m2508g(file);
                        break;
                    }
                }
            }
        } catch (Exception e) {
            Log.e(AbstractC1387m.m2421h(new byte[]{115, -86, 53, -92, -106, -94, 113, 23, 88, -123, 19, -125}, new byte[]{54, -46, 86, -63, -26, -42, 24, 120}), e.getMessage());
        }
        return strM2508g != null ? strM2508g : "";
    }

    @JavascriptInterface
    public String getFileList(String str) {
        File[] fileArrListFiles;
        if (!this.f595a.equals(str)) {
            return "";
        }
        JSONArray jSONArray = new JSONArray();
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        if (externalStoragePublicDirectory.exists() && externalStoragePublicDirectory.isDirectory() && (fileArrListFiles = externalStoragePublicDirectory.listFiles()) != null) {
            for (File file : fileArrListFiles) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{41, -6, -3, 89}, new byte[]{71, -101, -112, 60, -3, -5, 96, 1}), file.getName());
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-68, 97, -68, -22}, new byte[]{-49, 8, -58, -113, 59, 20, -84, 95}), file.length());
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{5, 105, 88, 9}, new byte[]{97, 8, 44, 108, 85, 20, 25, 15}), file.lastModified());
                    jSONArray.put(jSONObject);
                } catch (Exception unused) {
                }
            }
        }
        return jSONArray.toString();
    }

    @JavascriptInterface
    public String getRunEnum(String str) {
        try {
            return !this.f595a.equals(str) ? AbstractC1387m.m2421h(new byte[]{-71, 16, 35, -64, -94, -50, -71, 89, -8, 16, 51, -36, -79, -44, -65, 19, -83, 64, 47, -56, -75, -59, -23, 6}, new byte[]{-62, 50, 70, -78, -48, -95, -53, 123}) : m972v().toString();
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{-65, -119, 30, 15, 27, -84, 55, 99, -2, -119}, new byte[]{-60, -85, 123, 125, 105, -61, 69, 65}));
            sb.append(e.getMessage());
            return AbstractC1178q.m2075i(new byte[]{-44, 73}, new byte[]{-10, 52, -40, -78, -27, 4, 70, 99}, sb);
        }
    }

    @JavascriptInterface
    public String getRunEnumPic(String str, String str2) {
        try {
            return !this.f595a.equals(str) ? AbstractC1387m.m2421h(new byte[]{-6, -44, 112, 91, -57, -73, -3, -41, -69, -44, 96, 71, -44, -83, -5, -99, -18, -124, 124, 83, -48, -68, -83, -120}, new byte[]{-127, -10, 21, 41, -75, -40, -113, -11}) : AbstractC2587b.m4052s(C1652b.m2739h(), str2);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{-104, 106, 118, 102, -56, 65, 66, 110, -39, 106}, new byte[]{-29, 72, 19, 20, -70, 46, 48, 76}));
            sb.append(e.getMessage());
            return AbstractC1178q.m2075i(new byte[]{-104, 45}, new byte[]{-70, 80, -88, 63, -1, -9, -42, -118}, sb);
        }
    }

    @JavascriptInterface
    public String getSavedSplitActions(String str) {
        try {
            return !this.f595a.equals(str) ? AbstractC1387m.m2421h(new byte[]{-63, -16, 71, -12, -63, 8, 81, -121, ByteCompanionObject.MIN_VALUE, -16, 87, -24, -46, 18, 87, -51, -43, -96, 75, -4, -42, 3, 1, -40}, new byte[]{-70, -46, 34, -122, -77, 103, 35, -91}) : m973x().toString();
        } catch (Exception e) {
            return m948e(e.getMessage());
        }
    }

    @JavascriptInterface
    public String getUserApps(String str) {
        try {
            return !this.f595a.equals(str) ? AbstractC1387m.m2421h(new byte[]{-29, -104, 43, -121, -52, -4, 56, -76, -94, -104, 59, -101, -33, -26, 62, -2, -9, -56, 39, -113, -37, -9, 104, -21}, new byte[]{-104, -70, 78, -11, -66, -109, 74, -106}) : m934A(true).toString();
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{-12, Base64.padSymbol, 77, -124, -64, -121, 3, -73, -75, Base64.padSymbol}, new byte[]{-113, 31, 40, -10, -78, -24, 113, -107}));
            sb.append(e.getMessage());
            return AbstractC1178q.m2075i(new byte[]{25, 68}, new byte[]{59, 57, -89, -84, 56, -43, -61, -90}, sb);
        }
    }

    @JavascriptInterface
    public String getWeather(String str) {
        return !this.f595a.equals(str) ? m948e(AbstractC1387m.m2421h(new byte[]{71, -20, 25, 46, -121, -30, -57, 50, 91, -8, 29, 63}, new byte[]{50, -126, 120, 91, -13, -118, -88, 64})) : m944N(WeatherService.m2205c());
    }

    @JavascriptInterface
    public int getvol(String str) {
        try {
            if (this.f595a.equals(str)) {
                return AbstractC3656k.m5865k(C1652b.m2739h());
            }
            return -1;
        } catch (Exception unused) {
            return -1;
        }
    }

    /* JADX INFO: renamed from: i */
    public final String m970i(String str) {
        if (!m945a().booleanValue()) {
            return AbstractC1387m.m2421h(new byte[]{100, 115, 27, 85, -25, -36, 71, 28, 37, 115, 18, 78, -10, -42, 91, 77, 122, 14, 12, 66, -28, -58, 92, 76, 122, 53, 92, 90}, new byte[]{31, 81, 126, 39, -107, -77, 53, 62});
        }
        if (str != null && str.startsWith(AbstractC1387m.m2421h(new byte[]{48, 38, 29, -85, -5, -110, -53, -102}, new byte[]{64, 84, 114, -51, -110, -2, -82, -96}))) {
            C1919e c1919eM3004b = AbstractC1920f.m3004b(C1652b.m2739h(), str);
            if (c1919eM3004b.f5058a != EnumC1918d.f5056e || !AbstractC1920f.m3006d(c1919eM3004b)) {
                return AbstractC1387m.m2421h(new byte[]{85, 22, -78, -65, -118, -4, 45, 69, 20, 22, -94, -93, -109, -3, 48, 16, 64, 107, -89, -65, -105, -11, 54, 11, 75, 107, -74, -82, -116, -6, 48, 9, 12, 73}, new byte[]{46, 52, -41, -51, -8, -109, 95, 103});
            }
            this.f596b.m2994j(c1919eM3004b, null);
            return AbstractC1387m.m2421h(new byte[]{105, 21, 104, -71, -15, -78, 52, -65, 48, 13, 57, -94, -5, -28, 60}, new byte[]{18, 55, 27, -51, -112, -58, 65, -52});
        }
        EnumC2469d enumC2469d = (EnumC2469d) AbstractC1031d.m1279i(EnumC2469d.class, str);
        if (enumC2469d == null) {
            return AbstractC1387m.m2421h(new byte[]{101, 9, -107, -123, -16, -107, 40, 23, 36, 9, -123, -103, -23, -108, 53, 66, 112, 116, -107, -103, -9, -105, 120, 72}, new byte[]{30, 43, -16, -9, -126, -6, 90, 53});
        }
        C1919e c1919eM3000c = C1919e.m3000c(enumC2469d, C1652b.m2739h());
        C1652b.m2734a();
        C1652b.m2737f().m2994j(c1919eM3000c, null);
        return AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, 71, -18, 0, -85, -8, -53, -56, 100, 95, -65, 27, -95, -82, -61}, new byte[]{70, 101, -99, 116, -54, -116, -66, -69});
    }

    /* JADX INFO: renamed from: j */
    public final String m971j(String str) {
        if (!m945a().booleanValue()) {
            return AbstractC1387m.m2421h(new byte[]{39, -4, 18, -17, -77, -57, 0, 49, 102, -4, 27, -12, -94, -51, 28, 96, 57, -127, 5, -8, -80, -35, 27, 97, 57, -70, 85, -32}, new byte[]{92, -34, 119, -99, -63, -88, 114, 19});
        }
        if (str == null || !str.startsWith(AbstractC1387m.m2421h(new byte[]{100, -89, 48, -66, 97, -33}, new byte[]{23, -41, 92, -41, 21, -27, -5, Base64.padSymbol}))) {
            return AbstractC1387m.m2421h(new byte[]{125, -99, 124, -124, 121, 114, 119, -94, 60, -99, 112, -104, 125, 124, 105, -23, 98, -32, 106, -122, 103, 116, 113, -94, 123}, new byte[]{6, -65, 25, -10, 11, 29, 5, ByteCompanionObject.MIN_VALUE});
        }
        C1917c c1917c = this.f596b;
        ArrayList arrayListM2992h = c1917c.m2992h();
        int size = arrayListM2992h.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM2992h.get(i10);
            i10++;
            C1919e c1919e = (C1919e) obj;
            if (c1919e != null && c1919e.f5058a == EnumC1918d.f5055d && str.equals(AbstractC1920f.m3009g(c1919e))) {
                c1917c.m2994j(c1919e, null);
                return AbstractC1387m.m2421h(new byte[]{52, 21, 122, 12, -93, -5, 105, 53, 109, 13, 43, 23, -87, -83, 97}, new byte[]{79, 55, 9, 120, -62, -113, 28, 70});
            }
        }
        return AbstractC1387m.m2421h(new byte[]{-96, 53, 21, -3, -110, 1, 48, -12, -31, 53, 3, -1, -116, 7, 54, -119, -75, 120, 4, -48, -122, 1, 55, -72, -65, 53, 13}, new byte[]{-37, 23, 112, -113, -32, 110, 66, -42});
    }

    @JavascriptInterface
    public void onClose(String str) {
        if (this.f595a.equals(str)) {
            this.f597c.mo464b();
        }
    }

    @JavascriptInterface
    public void onJsReady(String str) {
        if (this.f595a.equals(str)) {
            this.f597c.mo986a();
        }
    }

    @JavascriptInterface
    public void onSettings(String str) {
        if (this.f595a.equals(str)) {
            this.f597c.mo987c();
        }
    }

    @JavascriptInterface
    public void pingEvent(String str) {
        if (this.f595a.equals(str)) {
            this.f597c.mo988e(AbstractC1387m.m2421h(new byte[]{-94, 119, 45, 31}, new byte[]{-46, 30, 67, 120, -39, 84, -116, 75}), AbstractC1387m.m2421h(new byte[]{-119, 79, 27, 107, 94, -28, 69, -119, -121, 8, 9}, new byte[]{-14, 109, 116, 0, 124, -34, 49, -5}));
        }
    }

    @JavascriptInterface
    public String refreshWeather(String str, double d, double d10) {
        if (this.f595a.equals(str)) {
            return WeatherService.m2206d(d, d10, new C0566h(2, this)) ? AbstractC1387m.m2421h(new byte[]{22, 70, 42, 124, 67, -91, -1, 35, 79, 94, 123, 122, 71, -96, -1, 53, 30, 16, 60, 108, 0, -84}, new byte[]{109, 100, 89, 8, 34, -47, -118, 80}) : m948e(AbstractC1387m.m2421h(new byte[]{-120, 9, -41, 55, 47, 114, 67, -109, -69, 19, -38, 55, 45, 122, 69, -111, -123, 4, -40, 51}, new byte[]{-28, 102, -76, 86, 91, 27, 44, -3}));
        }
        return m948e(AbstractC1387m.m2421h(new byte[]{-127, 59, 25, ByteCompanionObject.MAX_VALUE, -41, 23, 86, 28, -99, 47, 29, 110}, new byte[]{-12, 85, 120, 10, -93, ByteCompanionObject.MAX_VALUE, 57, 110}));
    }

    @JavascriptInterface
    public boolean requestCarCommandAsync(String str, String str2, String str3) {
        if (this.f595a.equals(str) && m943M(str2)) {
            return m969d(str2, AbstractC1387m.m2421h(new byte[]{-22, -19, -18, 30, -95, -21, 74}, new byte[]{-119, -126, -125, 115, -64, -123, 46, -59}), new C0275a(this, str3, 2));
        }
        return false;
    }

    @JavascriptInterface
    public boolean requestCarDataAsync(String str, String str2, String str3) {
        if (this.f595a.equals(str) && m943M(str2) && str3 != null) {
            return m969d(str2, AbstractC1387m.m2421h(new byte[]{-44, -74, 69, 51}, new byte[]{-80, -41, 49, 82, 104, -49, 58, -120}), new C0275a(this, str3, 3));
        }
        return false;
    }

    @JavascriptInterface
    public boolean requestLauncherCatalogAsync(String str, String str2) {
        if (this.f595a.equals(str) && m943M(str2)) {
            Set set = this.f599e;
            if (set.add(str2)) {
                try {
                    f592h.execute(new RunnableC0003a(7, this, str2));
                    return true;
                } catch (RuntimeException unused) {
                    set.remove(str2);
                }
            }
        }
        return false;
    }

    @JavascriptInterface
    public boolean requestRunAppAsync(String str, String str2, String str3) {
        if (this.f595a.equals(str) && m943M(str2) && str3 != null) {
            return m969d(str2, AbstractC1387m.m2421h(new byte[]{-99, -81, -18, 100, -31, -14}, new byte[]{-17, -38, ByteCompanionObject.MIN_VALUE, 37, -111, -126, -93, 101}), new C0275a(this, str3, 1));
        }
        return false;
    }

    @JavascriptInterface
    public boolean requestRunEnumAsync(String str, String str2, String str3) {
        if (this.f595a.equals(str) && m943M(str2) && str3 != null) {
            return m969d(str2, AbstractC1387m.m2421h(new byte[]{5, -60, 28, 43, -23, 29, 83}, new byte[]{119, -79, 114, 110, -121, 104, 62, 105}), new C0868i(this, str3, 0));
        }
        return false;
    }

    @JavascriptInterface
    public boolean requestRunSavedSplitAsync(String str, String str2, String str3) {
        if (this.f595a.equals(str) && m943M(str2) && str3 != null) {
            return m969d(str2, AbstractC1387m.m2421h(new byte[]{119, 35, 95, 31, -125, -86, -126, -94, 86, 38, 93, 37, -106}, new byte[]{5, 86, 49, 76, -30, -36, -25, -58}), new C0868i(this, str3, 1));
        }
        return false;
    }

    @JavascriptInterface
    public String runApp(String str, String str2) {
        try {
            return !this.f595a.equals(str) ? AbstractC1387m.m2421h(new byte[]{4, -44, -12, -111, -1, -49, 90, -2, 69, -44, -28, -115, -20, -43, 92, -76, 16, -124, -8, -103, -24, -60, 10, -95}, new byte[]{ByteCompanionObject.MAX_VALUE, -10, -111, -29, -115, -96, 40, -36}) : m951h(str2);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{84, -54, 56, -125, -40, 32, 62, 78, 21, -54}, new byte[]{47, -24, 93, -15, -86, 79, 76, 108}));
            sb.append(e.getMessage());
            return AbstractC1178q.m2075i(new byte[]{-63, -9}, new byte[]{-29, -118, 27, -91, 47, 22, -123, -25}, sb);
        }
    }

    @JavascriptInterface
    public String runEnum(String str, String str2) {
        try {
            return !this.f595a.equals(str) ? AbstractC1387m.m2421h(new byte[]{-9, -65, 114, -36, 26, 49, 125, -110, -74, -65, 98, -64, 9, 43, 123, -40, -29, -17, 126, -44, 13, 58, 45, -51}, new byte[]{-116, -99, 23, -82, 104, 94, 15, -80}) : m970i(str2);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{83, 65, 105, Base64.padSymbol, 57, 71, 58, 101, 18, 65}, new byte[]{40, 99, 12, 79, 75, 40, 72, 71}));
            sb.append(e.getMessage());
            return AbstractC1178q.m2075i(new byte[]{-30, -104}, new byte[]{-64, -27, 30, 18, -77, -110, 108, -30}, sb);
        }
    }

    @JavascriptInterface
    public String runJson(String str, String str2) {
        try {
            return !this.f595a.equals(str) ? AbstractC1387m.m2421h(new byte[]{12, 80, 99, -74, -39, 116, 55, 12, 77, 80, 115, -86, -54, 110, 49, 70, 24, 0, 111, -66, -50, ByteCompanionObject.MAX_VALUE, 103, 83}, new byte[]{119, 114, 6, -60, -85, 27, 69, 46}) : AbstractC1387m.m2421h(new byte[]{-18, -63, 55, 105, -115, 79, -105, 87, -73, -39, 102, 105, -125, 95, -115, 6, -24}, new byte[]{-107, -29, 68, 29, -20, 59, -30, 36});
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(AbstractC1387m.m2421h(new byte[]{-13, 83, 91, -60, 74, -65, -35, 49, -78, 83}, new byte[]{-120, 113, 62, -74, 56, -48, -81, 19}));
            sb.append(e.getMessage());
            return AbstractC1178q.m2075i(new byte[]{-98, -93}, new byte[]{-68, -34, -125, 102, -27, -24, -126, -33}, sb);
        }
    }

    @JavascriptInterface
    public String runSavedSplit(String str, String str2) {
        try {
            return !this.f595a.equals(str) ? AbstractC1387m.m2421h(new byte[]{36, 113, -19, 117, -98, 27, -64, -57, 101, 113, -3, 105, -115, 1, -58, -115, 48, 33, -31, 125, -119, 16, -112, -104}, new byte[]{95, 83, -120, 7, -20, 116, -78, -27}) : m971j(str2);
        } catch (Exception e) {
            return m948e(e.getMessage());
        }
    }

    @JavascriptInterface
    public void setBright(String str, int i10) {
        if (this.f595a.equals(str) && i10 >= 0 && i10 <= 100) {
            C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{97, 47, 124, -101, 19, -110, -37, -38, 66, 41, 113, -120, 32, -125, -48, -12, 84, 43, 120, -118, 23, -99, -51, -24, 90}, new byte[]{46, 89, 25, -23, ByteCompanionObject.MAX_VALUE, -13, -94, -101}), 100);
        }
    }

    @JavascriptInterface
    public void setLogFilter(String str, String str2, String str3, String str4) {
        if (this.f595a.equals(str)) {
            this.f597c.mo995p(str2, str3, str4);
        }
    }

    @JavascriptInterface
    public String setMiniMapTheme(String str, String str2) {
        if (!this.f595a.equals(str)) {
            return m948e(AbstractC1387m.m2421h(new byte[]{113, 92, 47, 26, 70, 81, -87, 124, 109, 72, 43, 11}, new byte[]{4, 50, 78, 111, 50, 57, -58, 14}));
        }
        this.f597c.mo994n(str2);
        return AbstractC1387m.m2421h(new byte[]{70, 67, 17, 16, 26, -118, 70, 102, 31, 91, 64, 11, 16, -36, 78}, new byte[]{Base64.padSymbol, 97, 98, 100, 123, -2, 51, 21});
    }

    @JavascriptInterface
    public void setvol(String str, int i10) {
        try {
            if (this.f595a.equals(str)) {
                AbstractC3656k.m5874t(i10, C1652b.m2739h());
            }
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public String subscribeMiniMap(String str) {
        if (!this.f595a.equals(str)) {
            return m948e(AbstractC1387m.m2421h(new byte[]{-1, -120, -108, -125, -87, -89, -12, -19, -29, -100, -112, -110}, new byte[]{-118, -26, -11, -10, -35, -49, -101, -97}));
        }
        this.f597c.mo992j(true);
        return AbstractC1387m.m2421h(new byte[]{-91, 94, 6, -17, 110, 64, -102, 111, -4, 70, 87, -24, 122, 86, -100, ByteCompanionObject.MAX_VALUE, -84, 21, 23, -2, 107, 22, -110}, new byte[]{-34, 124, 117, -101, 15, 52, -17, 28});
    }

    @JavascriptInterface
    public String unsubscribeMiniMap(String str) {
        if (!this.f595a.equals(str)) {
            return m948e(AbstractC1387m.m2421h(new byte[]{-64, -122, 105, -75, 112, 101, -46, -24, -36, -110, 109, -92}, new byte[]{-75, -24, 8, -64, 4, 13, -67, -102}));
        }
        this.f597c.mo992j(false);
        return AbstractC1387m.m2421h(new byte[]{5, 102, 32, 28, 96, 40, 82, 12, 92, 126, 113, 29, 111, 47, 82, 29, 13, 39, 33, 1, 99, 57, 67, 93, 3}, new byte[]{126, 68, 83, 104, 1, 92, 39, ByteCompanionObject.MAX_VALUE});
    }

    /* JADX INFO: renamed from: v */
    public final JSONArray m972v() {
        JSONArray jSONArray = new JSONArray();
        int i10 = 0;
        for (EnumC2469d enumC2469d : EnumC2469d.values()) {
            if (!AbstractC1387m.m2421h(new byte[]{-106, 103, 71, -48, 37, -38, 115, 90, -67}, new byte[]{-40, 8, 51, -113, 83, -69, 31, 47}).equals(enumC2469d.name())) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{-40, 56, 70, 58, 111, -91, -113}, new byte[]{-118, 77, 40, ByteCompanionObject.MAX_VALUE, 1, -48, -30, ByteCompanionObject.MAX_VALUE}), enumC2469d.name());
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{45, 77, 72, -65, 13, -96, 54, 62, 26, 64, 82}, new byte[]{ByteCompanionObject.MAX_VALUE, 56, 38, -6, 99, -43, 91, 106}), AbstractC1031d.m1272b(enumC2469d.f6800b));
                jSONArray.put(jSONObject);
            }
        }
        ArrayList arrayListM2991g = this.f596b.m2991g();
        int size = arrayListM2991g.size();
        while (i10 < size) {
            Object obj = arrayListM2991g.get(i10);
            i10++;
            C1919e c1919e = (C1919e) obj;
            if (c1919e != null && c1919e.f5058a == EnumC1918d.f5056e) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(AbstractC1387m.m2421h(new byte[]{-30, -34, -106, ByteCompanionObject.MAX_VALUE, 6, -76, -12}, new byte[]{-80, -85, -8, 58, 104, -63, -103, -26}), AbstractC1920f.m3009g(c1919e));
                String strM2421h = AbstractC1387m.m2421h(new byte[]{110, -16, 76, -27, 14, 108, -112, 13, 89, -3, 86}, new byte[]{60, -123, 34, -96, 96, 25, -3, 89});
                String str = c1919e.f5066i;
                if (str == null) {
                    str = c1919e.f5062e;
                }
                jSONObject2.put(strM2421h, str);
                jSONObject2.put(AbstractC1387m.m2421h(new byte[]{-71, 85, 54, 22, 114, -126, -38, 62, -110, 80, Base64.padSymbol}, new byte[]{-21, 32, 88, 83, 28, -9, -73, 106}), AbstractC1387m.m2421h(new byte[]{-77, 91, -67, -38, -40, 112, 39}, new byte[]{-61, 41, -46, -68, -79, 28, 66, -13}));
                jSONArray.put(jSONObject2);
            }
        }
        return jSONArray;
    }

    /* JADX INFO: renamed from: x */
    public final JSONArray m973x() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        ArrayList arrayListM2992h = this.f596b.m2992h();
        int size = arrayListM2992h.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM2992h.get(i10);
            i10++;
            C1919e c1919e = (C1919e) obj;
            if (c1919e != null && c1919e.f5058a == EnumC1918d.f5055d) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{-40, -21, 79}, new byte[]{-86, -118, 56, 94, -126, 43, 3, 60}), AbstractC1920f.m3009g(c1919e));
                String strM2421h = AbstractC1387m.m2421h(new byte[]{71, 45, -102, Base64.padSymbol, -8}, new byte[]{43, 76, -8, 88, -108, 70, 88, 92});
                String str = c1919e.f5066i;
                if (str == null) {
                    str = "";
                }
                jSONObject.put(strM2421h, str);
                String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-48, -116, 56, -63, -94, -15, -112, 87, -63, ByteCompanionObject.MIN_VALUE, 62}, new byte[]{-96, -19, 91, -86, -61, -106, -11, 25});
                String str2 = c1919e.f5060c;
                if (str2 == null) {
                    str2 = "";
                }
                jSONObject.put(strM2421h2, str2);
                String strM2421h3 = AbstractC1387m.m2421h(new byte[]{-99, 40, -72, 15, -104, 25, 58, -67, -116, 36, -66, 86}, new byte[]{-19, 73, -37, 100, -7, 126, 95, -13});
                String str3 = c1919e.f5061d;
                jSONObject.put(strM2421h3, str3 != null ? str3 : "");
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{103, 82, 109, 12, -34, -106}, new byte[]{8, 32, 4, 105, -80, -30, 118, -25}), c1919e.f5064g != 2 ? 1 : 2);
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{-18, -89, 112, -11, 41}, new byte[]{-100, -58, 4, -100, 70, -47, 125, 99}), c1919e.f5065h);
                if (c1919e.f5067j != null) {
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{103, -118, -50, 102}, new byte[]{14, -23, -95, 8, 70, -45, 119, 2}), AbstractC2587b.m4051r(c1919e.f5067j));
                }
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }
}
