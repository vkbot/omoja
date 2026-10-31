package p225w0;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0077d;
import ai.onnxruntime.OnnxTensor;
import ai.onnxruntime.OrtEnvironment;
import ai.onnxruntime.OrtSession;
import android.content.Context;
import android.content.res.Configuration;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.os.Build;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.util.JsonReader;
import android.util.Log;
import androidx.activity.RunnableC0131f;
import androidx.core.content.ContextCompat;
import com.example.navistart.R;
import com.example.navistart.cores.ColorText;
import com.google.protobuf.AbstractC1178q;
import com.sun.jna.Native;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.nio.LongBuffer;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.tftp.TFTP;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.vosk.Model;
import org.vosk.Recognizer;
import p000a.AbstractC0000a;
import p006a5.C0023h;
import p026c1.AbstractC0950c;
import p026c1.EnumC0948a;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1440x1;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1917c;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p141n.C2455p;
import p142n0.C2467b;
import p142n0.EnumC2469d;
import p173q0.C3042f;
import p201t5.C3261e;
import p206u0.C3277a;
import p250y5.AbstractC3656k;
import p258z3.C3720f;

/* JADX INFO: renamed from: w0.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3498x implements InterfaceC3500y {

    /* JADX INFO: renamed from: l0 */
    public static EnumC3443b f10252l0;

    /* JADX INFO: renamed from: m0 */
    public static EnumC3443b f10253m0;

    /* JADX INFO: renamed from: n0 */
    public static final String f10254n0 = AbstractC1387m.m2421h(new byte[]{-16, 80, 110, 60, -64, 110, 12, -41, -16, 83, 111, 14}, new byte[]{32, -18, -65, -66, 16, -46, -36, 98});

    /* JADX INFO: renamed from: A */
    public volatile C3494v f10255A;

    /* JADX INFO: renamed from: B */
    public volatile C3474l0 f10256B;

    /* JADX INFO: renamed from: C */
    public volatile boolean f10257C;

    /* JADX INFO: renamed from: D */
    public final C3445b1 f10258D;

    /* JADX INFO: renamed from: E */
    public volatile C3460g1 f10259E;

    /* JADX INFO: renamed from: G */
    public volatile long f10261G;

    /* JADX INFO: renamed from: I */
    public volatile String f10263I;

    /* JADX INFO: renamed from: P */
    public Recognizer f10270P;

    /* JADX INFO: renamed from: Q */
    public Recognizer f10271Q;

    /* JADX INFO: renamed from: U */
    public volatile long f10275U;

    /* JADX INFO: renamed from: V */
    public volatile boolean f10276V;

    /* JADX INFO: renamed from: W */
    public volatile int f10277W;

    /* JADX INFO: renamed from: Y */
    public volatile int f10279Y;

    /* JADX INFO: renamed from: f0 */
    public volatile int f10292f0;

    /* JADX INFO: renamed from: g */
    public ScheduledFuture f10293g;

    /* JADX INFO: renamed from: g0 */
    public volatile int f10294g0;

    /* JADX INFO: renamed from: h */
    public ScheduledFuture f10295h;

    /* JADX INFO: renamed from: h0 */
    public volatile long f10296h0;

    /* JADX INFO: renamed from: i */
    public final AudioManager f10297i;

    /* JADX INFO: renamed from: i0 */
    public volatile boolean f10298i0;

    /* JADX INFO: renamed from: j */
    public AudioFocusRequest f10299j;

    /* JADX INFO: renamed from: k */
    public AudioRecord f10301k;

    /* JADX INFO: renamed from: l */
    public Model f10303l;

    /* JADX INFO: renamed from: m */
    public final Context f10304m;

    /* JADX INFO: renamed from: n */
    public C3455f f10305n;

    /* JADX INFO: renamed from: o */
    public volatile boolean f10306o;

    /* JADX INFO: renamed from: q */
    public volatile boolean f10308q;

    /* JADX INFO: renamed from: r */
    public volatile int f10309r;

    /* JADX INFO: renamed from: s */
    public C3476m f10310s;

    /* JADX INFO: renamed from: t */
    public OrtEnvironment f10311t;

    /* JADX INFO: renamed from: u */
    public OrtSession f10312u;

    /* JADX INFO: renamed from: v */
    public final C3451d1 f10313v;

    /* JADX INFO: renamed from: a */
    public final String f10281a = AbstractC1387m.m2421h(new byte[]{-11, 119, 99, 101, 91, 63, 121, 101, -49, 105, 111, 51}, new byte[]{-90, 7, 10, 6, 51, 122, 23, 2});

    /* JADX INFO: renamed from: b */
    public final ScheduledThreadPoolExecutor f10283b = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{77, 74, -115, 71, 101, -98, -49, -46, 119, 84, -127, 17}, new byte[]{30, 58, -28, 36, 13, -37, -95, -75}));

    /* JADX INFO: renamed from: c */
    public final ExecutorService f10285c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d */
    public final ExecutorService f10287d = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: e */
    public final ExecutorService f10289e = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: f */
    public final ArrayBlockingQueue f10291f = new ArrayBlockingQueue(128);

    /* JADX INFO: renamed from: p */
    public volatile List f10307p = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: w */
    public C3499x0 f10314w = new C3499x0();

    /* JADX INFO: renamed from: x */
    public volatile String f10315x = "";

    /* JADX INFO: renamed from: y */
    public volatile String f10316y = AbstractC1387m.m2421h(new byte[]{-57, 43, -26, 69, -103, -71, -92, 2, -47, 42, -32, 70, -105, -96, -82}, new byte[]{-78, 69, -115, 43, -10, -50, -54, 93});

    /* JADX INFO: renamed from: z */
    public volatile String f10317z = "";

    /* JADX INFO: renamed from: F */
    public volatile String f10260F = AbstractC1387m.m2421h(new byte[]{47, -82, 103, -41, -94, 20, Base64.padSymbol, 47, 37, -92, 101, -47, -76, 47}, new byte[]{73, -63, 4, -94, -47, 75, 79, 74});

    /* JADX INFO: renamed from: H */
    public volatile String f10262H = "";

    /* JADX INFO: renamed from: J */
    public volatile int f10264J = 1;

    /* JADX INFO: renamed from: K */
    public boolean f10265K = false;

    /* JADX INFO: renamed from: L */
    public final int f10266L = AudioRecord.getMinBufferSize(16000, 16, 2);

    /* JADX INFO: renamed from: M */
    public final byte[] f10267M = new byte[4096];

    /* JADX INFO: renamed from: N */
    public final byte[] f10268N = new byte[160000];

    /* JADX INFO: renamed from: O */
    public final Object f10269O = new Object();

    /* JADX INFO: renamed from: R */
    public int f10272R = 0;

    /* JADX INFO: renamed from: S */
    public int f10273S = 0;

    /* JADX INFO: renamed from: T */
    public volatile boolean f10274T = false;

    /* JADX INFO: renamed from: X */
    public volatile String f10278X = "";

    /* JADX INFO: renamed from: Z */
    public volatile String f10280Z = "";

    /* JADX INFO: renamed from: a0 */
    public String f10282a0 = "";

    /* JADX INFO: renamed from: b0 */
    public String f10284b0 = "";

    /* JADX INFO: renamed from: c0 */
    public String f10286c0 = "";

    /* JADX INFO: renamed from: d0 */
    public String f10288d0 = "";

    /* JADX INFO: renamed from: e0 */
    public String f10290e0 = "";

    /* JADX INFO: renamed from: j0 */
    public String f10300j0 = "";

    /* JADX INFO: renamed from: k0 */
    public long f10302k0 = 0;

    static {
        EnumC3443b enumC3443b = EnumC3443b.f9929b;
        f10252l0 = enumC3443b;
        f10253m0 = enumC3443b;
    }

    public C3498x(Context context) {
        this.f10313v = C3451d1.f9946d;
        this.f10263I = "";
        this.f10304m = context;
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(context.getAssets().open(AbstractC1387m.m2421h(new byte[]{81, -122, -80, -82, 58, -91, 17, -124, 74, -124, -72, -93, 59, -91, 30, -118, 73, -114, -84, -84, 56, -97, 92, -127, 84, -122, -73}, new byte[]{39, -23, -39, -51, 95, -6, 114, -21})), AbstractC1387m.m2421h(new byte[]{11, 110, Base64.padSymbol, 73, 101}, new byte[]{94, 58, 123, 100, 93, -106, 28, -91}));
            try {
                this.f10313v = C3451d1.m5395d(inputStreamReader);
                inputStreamReader.close();
            } catch (Throwable th) {
                try {
                    inputStreamReader.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (Exception e) {
            Log.w(AbstractC1387m.m2421h(new byte[]{-101, 103, 84, 12, -53, -21, -73, 63, -95, 121, 88, 90}, new byte[]{-56, 23, Base64.padSymbol, 111, -93, -82, -39, 88}), AbstractC1387m.m2421h(new byte[]{16, 46, -109, 0, 4, 108, 116, 79, ByteCompanionObject.MAX_VALUE, 40, -120, 0, 8, 103, 53, 85, 48, Base64.padSymbol, -122, 11, 30, 110, 116, 81, 38, 126, -110, 7, 10, 116, 116, 74, 51, 63, -123, 5, 14, 57, 53, 81, 58, 42, -122, 0, 5, 107, 123, 68, ByteCompanionObject.MAX_VALUE, 59, -97, 8, 8, 118, 53, 83, 55, 44, -122, 26, 14, 113}, new byte[]{95, 94, -25, 105, 107, 2, 21, 35}), e);
        }
        System.setProperty(AbstractC1387m.m2421h(new byte[]{-84, 80, 107, 68, -7, -107, Base64.padSymbol, -1, -75}, new byte[]{-58, 62, 10, 106, -105, -6, 78, -122}), AbstractC1387m.m2421h(new byte[]{-73, 109, 63, 43}, new byte[]{-61, 31, 74, 78, 93, -19, 39, 25}));
        Native.setProtected(true);
        System.setProperty(AbstractC1387m.m2421h(new byte[]{-126, 52, -44, -19, -56, -112, 51, 51, -58, 54, -36, -95, -40, -98, 46, 62, -58, 42, -44, -73, -62}, new byte[]{-24, 90, -75, -61, -86, -1, 92, 71}), this.f10304m.getApplicationInfo().nativeLibraryDir);
        System.loadLibrary(AbstractC1387m.m2421h(new byte[]{17, 37, 37, 101, 110, 29, 105, 119, 15, 40, 36}, new byte[]{123, 75, 76, 1, 7, 110, 25, 22}));
        System.loadLibrary(AbstractC1387m.m2421h(new byte[]{73, 101, 110, -72}, new byte[]{63, 10, 29, -45, 57, -93, -66, -49}));
        try {
            Context context2 = this.f10304m;
            String str = AbstractC3475l1.f10099a;
            File filesDir = context2.getFilesDir();
            String str2 = AbstractC3475l1.f10099a;
            if (AbstractC3475l1.m5451e(new File(filesDir, str2)) == null) {
                AbstractC3475l1.m5452f(context2, EnumC3472k1.f10049e, null);
            }
            File fileM5451e = AbstractC3475l1.m5451e(new File(this.f10304m.getFilesDir(), str2));
            if (fileM5451e == null) {
                throw new IOException(AbstractC1387m.m2421h(new byte[]{108, 48, 86, -1, 89, 78, 71, 113, 95, 51, 5, -3, 10, 3, 70, 122, 78, ByteCompanionObject.MAX_VALUE, 76, -6, 10, 87, 73, 121, 86, 58, 65}, new byte[]{58, 95, 37, -108, 121, 35, 40, 21}));
            }
            this.f10303l = new Model(fileM5451e.getAbsolutePath());
            this.f10263I = fileM5451e.getName();
            m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-80, 13, -56, -62, -100, 64, 50, -123, -68, 6, -43}, new byte[]{-35, 98, -84, -89, -16, 31, 64, -32}), AbstractC1387m.m2421h(new byte[]{11, 31, 60, 126, 38}, new byte[]{102, 112, 88, 27, 74, -123, 67, 51}), fileM5451e.getName(), AbstractC1387m.m2421h(new byte[]{83, 34, -43, -36, 23, -65, 57, 7, 84, 38}, new byte[]{32, 67, -72, -84, 123, -38, 107, 102}), 16000, AbstractC1387m.m2421h(new byte[]{22, 108, -115, -100, -104, -92, 59, 109, 23}, new byte[]{100, 9, -20, -8, -38, -35, 79, 8}), Integer.valueOf(this.f10267M.length), AbstractC1387m.m2421h(new byte[]{38, -13, 10, -87, 82, 96, -48, 30, 36, -52, 28}, new byte[]{86, -127, 111, -53, 39, 6, -74, 123}), Integer.valueOf(TFTP.DEFAULT_TIMEOUT), AbstractC1387m.m2421h(new byte[]{117, 97, 95, 77, 41, 107, 82, -111, 126, 117, 65}, new byte[]{19, 20, 51, 33, 110, 25, 51, -4}), Boolean.FALSE, AbstractC1387m.m2421h(new byte[]{6, -78, -91, ByteCompanionObject.MAX_VALUE, -125, 50, -90, 114, 8, -65, -105, ByteCompanionObject.MAX_VALUE, -101, 50, -66}, new byte[]{103, -47, -47, 22, -11, 83, -46, 27}), Boolean.TRUE);
            if (this.f10297i == null) {
                this.f10297i = (AudioManager) this.f10304m.getSystemService(AbstractC1387m.m2421h(new byte[]{-9, 106, -60, 83, 70}, new byte[]{-106, 31, -96, 58, 41, -93, 123, -20}));
            }
            if (Build.VERSION.SDK_INT >= 31) {
                C3455f c3455f = this.f10305n;
                if (c3455f != null) {
                    this.f10297i.removeOnModeChangedListener(c3455f);
                }
                C3455f c3455f2 = new C3455f(this, 2);
                this.f10305n = c3455f2;
                this.f10297i.addOnModeChangedListener(this.f10283b, c3455f2);
            }
            this.f10258D = new C3445b1(context, m5542e0(), this.f10283b);
        } catch (Exception e6) {
            m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-93, -81, 69, 44, -112}, new byte[]{-58, -35, 55, 67, -30, 110, 10, 58}), AbstractC1387m.m2421h(new byte[]{-42, -23, 123, 41, 96}, new byte[]{-91, -99, 26, 78, 5, -28, 126, 90}), AbstractC1387m.m2421h(new byte[]{-47, 37, -99, -82, -87, -115, -38, 74, -43, 62}, new byte[]{-68, 74, -7, -53, -59, -46, -77, 36}), AbstractC1387m.m2421h(new byte[]{-122, -89, -18, 43}, new byte[]{-14, -34, -98, 78, 90, -104, -39, 36}), e6.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{63, 71, -100, -83, 109, -118, -101}, new byte[]{82, 34, -17, -34, 12, -19, -2, 59}), e6.getMessage());
        }
    }

    /* JADX INFO: renamed from: G */
    public static boolean m5505G(String str) {
        String strM5393b = C3451d1.m5393b(str);
        C1652b.m2734a();
        ArrayList arrayListM2993i = C1652b.m2737f().m2993i(C1917c.f5050e);
        int size = arrayListM2993i.size();
        String str2 = null;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM2993i.get(i10);
            i10++;
            C3481o0 c3481o0 = (C3481o0) obj;
            if (c3481o0.f10180c && AbstractC1920f.m3006d(c3481o0.f10179b) && strM5393b.equals(C3451d1.m5393b(c3481o0.f10178a))) {
                String strM3009g = AbstractC1920f.m3009g(c3481o0.f10179b);
                if (str2 != null && !str2.equals(strM3009g)) {
                    return true;
                }
                str2 = strM3009g;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: H */
    public static boolean m5506H(String str) {
        if (str == null) {
            return false;
        }
        String strM5394c = C3451d1.m5394c(str);
        return f10254n0.equals(strM5394c) || strM5394c.equals(AbstractC1387m.m2421h(new byte[]{64, 8, -13, -11, 102, Base64.padSymbol}, new byte[]{35, 105, -99, -106, 3, 81, -39, 74}));
    }

    /* JADX INFO: renamed from: I */
    public static boolean m5507I(String str) {
        if (str != null) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty() && !strTrim.equals(AbstractC1387m.m2421h(new byte[]{66, 104}, new byte[]{25, 53, -56, 120, -44, -27, -41, -116})) && !strTrim.equals(AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, 86}, new byte[]{70, 43, -60, -48, 4, -73, -39, 125})) && strTrim.length() >= 5 && strTrim.startsWith(AbstractC1387m.m2421h(new byte[]{37}, new byte[]{126, 103, 68, -103, -28, 98, 97, -125})) && strTrim.endsWith(AbstractC1387m.m2421h(new byte[]{80}, new byte[]{13, 107, 47, 120, -90, -21, -117, 22}))) {
                for (char c : strTrim.toCharArray()) {
                    if (Character.isLetterOrDigit(c) || AbstractC1387m.m2421h(new byte[]{-21, 17, -102, 118, -98}, new byte[]{-55, 74, -57, 90, -66, 13, -14, -121}).indexOf(c) != -1) {
                    }
                }
                try {
                    new JSONArray(strTrim);
                    return true;
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: J */
    public static String m5508J(String str, String str2) {
        String strTrim = str == null ? "" : str.trim();
        String strTrim2 = str2 != null ? str2.trim() : "";
        if (strTrim.isEmpty()) {
            return strTrim2;
        }
        if (strTrim2.isEmpty()) {
            return strTrim;
        }
        return strTrim2.startsWith(strTrim) ? strTrim2 : AbstractC0074a.m149D(strTrim, " ", strTrim2);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0128  */
    /* JADX INFO: renamed from: K */
    public static float m5509K(String str, String str2) {
        float f8;
        String[] strArr;
        int i10;
        float fM151b;
        float size;
        String[] strArrM5510L = m5510L(str);
        String[] strArrM5510L2 = m5510L(str2);
        if (strArrM5510L.length == 0 || strArrM5510L2.length == 0) {
            return 0.0f;
        }
        int length = strArrM5510L2.length;
        float f10 = 0.0f;
        for (int i11 = 0; i11 < length; i11++) {
            String str3 = strArrM5510L2[i11];
            int length2 = strArrM5510L.length;
            int i12 = 0;
            float fMax = 0.0f;
            while (i12 < length2) {
                String str4 = strArrM5510L[i12];
                if (str3.equals(str4)) {
                    strArr = strArrM5510L;
                    i10 = length;
                    fM151b = 1.0f;
                } else {
                    int iMax = Math.max(str3.length(), str4.length());
                    if (iMax < 4) {
                        strArr = strArrM5510L;
                        i10 = length;
                        fM151b = 0.0f;
                    } else {
                        int i13 = 0;
                        while (i13 < Math.min(str3.length(), str4.length()) && str3.charAt(i13) == str4.charAt(i13)) {
                            i13++;
                        }
                        int iMin = Math.min(str3.length(), str4.length());
                        if (i13 >= 4) {
                            f8 = 1.0f;
                            if (i13 >= Math.ceil(iMin * 0.6f)) {
                                fM151b = 0.88f;
                                strArr = strArrM5510L;
                                i10 = length;
                            }
                        } else {
                            f8 = 1.0f;
                        }
                        int[] iArr = new int[str4.length() + 1];
                        int[] iArr2 = new int[str4.length() + 1];
                        for (int i14 = 0; i14 <= str4.length(); i14++) {
                            iArr[i14] = i14;
                        }
                        int i15 = 1;
                        while (i15 <= str3.length()) {
                            iArr2[0] = i15;
                            String[] strArr2 = strArrM5510L;
                            int i16 = 1;
                            while (i16 <= str4.length()) {
                                int i17 = i16 - 1;
                                int i18 = length;
                                int[] iArr3 = iArr;
                                iArr2[i16] = Math.min(Math.min(iArr3[i16] + 1, iArr2[i17] + 1), iArr[i17] + (str3.charAt(i15 + (-1)) == str4.charAt(i17) ? 0 : 1));
                                i16++;
                                length = i18;
                                iArr = iArr3;
                            }
                            int[] iArr4 = iArr;
                            i15++;
                            iArr = iArr2;
                            strArrM5510L = strArr2;
                            iArr2 = iArr4;
                        }
                        strArr = strArrM5510L;
                        i10 = length;
                        float f11 = iMax;
                        fM151b = f8 - (iArr[str4.length()] / f11);
                        if (fM151b < 0.72f) {
                            if (iMin >= 5 && iMin / f11 >= 0.65f) {
                                if (str3.length() < 2 || str4.length() < 2) {
                                    size = 0.0f;
                                } else {
                                    ArrayList arrayList = new ArrayList();
                                    ArrayList arrayList2 = new ArrayList();
                                    for (int i19 = 0; i19 <= str3.length() - 2; i19++) {
                                        arrayList.add(str3.substring(i19, i19 + 2));
                                    }
                                    for (int i20 = 0; i20 <= str4.length() - 2; i20++) {
                                        arrayList2.add(str4.substring(i20, i20 + 2));
                                    }
                                    boolean[] zArr = new boolean[arrayList2.size()];
                                    int size2 = arrayList.size();
                                    int i21 = 0;
                                    int i22 = 0;
                                    while (i22 < size2) {
                                        Object obj = arrayList.get(i22);
                                        i22++;
                                        String str5 = (String) obj;
                                        for (int i23 = 0; i23 < arrayList2.size(); i23++) {
                                            if (!zArr[i23] && str5.equals(arrayList2.get(i23))) {
                                                zArr[i23] = true;
                                                i21++;
                                                break;
                                            }
                                        }
                                    }
                                    size = (i21 * 2.0f) / (arrayList2.size() + arrayList.size());
                                }
                                if (size >= 0.62f) {
                                    fM151b = AbstractC0074a.m151b(size, 0.62f, 0.4f, 0.75f);
                                } else {
                                    fM151b = 0.0f;
                                }
                            } else {
                                fM151b = 0.0f;
                            }
                        }
                    }
                }
                fMax = Math.max(fMax, fM151b);
                i12++;
                strArrM5510L = strArr;
                length = i10;
            }
            f10 += fMax;
        }
        return f10 / strArrM5510L2.length;
    }

    /* JADX WARN: Code duplicated, block: B:128:0x0416  */
    /* JADX WARN: Code duplicated, block: B:131:0x043d  */
    /* JADX WARN: Code duplicated, block: B:134:0x0466  */
    /* JADX WARN: Code duplicated, block: B:143:0x04b7  */
    /* JADX WARN: Code duplicated, block: B:149:0x04f0  */
    /* JADX INFO: renamed from: L */
    public static String[] m5510L(String str) {
        int i10;
        if (str == null) {
            return new String[0];
        }
        String strTrim = Normalizer.normalize(str, Normalizer.Form.NFKC).toLowerCase(Locale.ROOT).replaceAll(AbstractC1387m.m2421h(new byte[]{59, 67, 75, 96, 63, 10, -95, 40, 16, 102, 89, 109, 25, 109}, new byte[]{96, 29, 23, 16, 68, 70, -36, 116}), " ").trim();
        if (strTrim.isEmpty()) {
            return new String[0];
        }
        String[] strArrSplit = strTrim.split(AbstractC1387m.m2421h(new byte[]{123, -20, 31}, new byte[]{39, -97, 52, -30, 118, -20, 50, 40}));
        ArrayList arrayList = new ArrayList(strArrSplit.length);
        int i11 = 0;
        while (i11 < strArrSplit.length) {
            if (strArrSplit[i11].equals(AbstractC1387m.m2421h(new byte[]{42, 4, -1, -114, -121, 18}, new byte[]{-6, -69, 46, 14, 87, -86, -1, -80})) && (i10 = i11 + 1) < strArrSplit.length && strArrSplit[i10].startsWith(AbstractC1387m.m2421h(new byte[]{-98, 45, 126, -30, -62, -26, 69, 5}, new byte[]{78, -109, -81, 96, 18, 92, -108, -123}))) {
                arrayList.add(AbstractC1387m.m2421h(new byte[]{-70, 29, 68, 18, -41, -58, -99, -56, -70, 25, 88, 16, -37, -43, -109}, new byte[]{-54, 124, 54, 102, -66, -89, -15, -89}));
                i11 = i10;
            } else {
                String strM2421h = strArrSplit[i11];
                if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{34, -126, -10, 78, -27, -30, 12, -43, 35, -65, -9, 116, -28, -38}, new byte[]{-14, Base64.padSymbol, 39, -50, 53, 90, -36, 107}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{18, ByteCompanionObject.MIN_VALUE, -94, 40, 56, 73, 121, -14, 18, -124, -66, 42, 52, 90, 119}, new byte[]{98, -31, -48, 92, 81, 40, 21, -99});
                } else if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{20, -19, 39, 73, 121, 106, 68, 35}, new byte[]{-60, 83, -10, -53, -87, -48, -107, -93})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-120, 7, 51, -127}, new byte[]{-25, 119, 86, -17, 6, -8, 12, 110}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{116, 93, -81, 69, 124, 18, 5, -13}, new byte[]{27, 45, -54, 43, 10, 119, 119, -111});
                } else if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{-9, -78, -124, -93, 75, 107, ByteCompanionObject.MIN_VALUE, -70}, new byte[]{39, 5, 84, 19, -101, -47, 81, 58})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{96, -90, -33, -90, -127}, new byte[]{3, -54, -80, -43, -28, 59, -62, -107}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{95, 18, -113, 32, -90, 104, -60, 19, 94}, new byte[]{60, 126, -32, 83, -61, 30, -95, 97});
                } else if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{-15, 120, -85, -44, -124, -4, 80, 116, -16, 77}, new byte[]{33, -54, 123, 110, 84, 71, -127, -6})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{124, 10, -89, -56, -31, -52}, new byte[]{25, 100, -58, -86, -115, -87, -120, 49})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-11, -22}, new byte[]{-102, -124, ByteCompanionObject.MAX_VALUE, -27, -110, -114, -113, 34}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{32, 17, -21, -21, -67, 15}, new byte[]{79, ByteCompanionObject.MAX_VALUE, -99, -114, -49, 109, -65, 58});
                } else if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{30, -106, 54, -62, -119, -107, -30, 14, 31, -86, 54, -50}, new byte[]{-50, 36, -25, 73, 89, 47, 50, -75})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{83, -55, ByteCompanionObject.MIN_VALUE, -106, 64, 20, -95}, new byte[]{55, -96, -13, -9, 34, 120, -60, -77})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{109, -72, 60}, new byte[]{2, -34, 90, -113, -116, 4, -17, -46}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{3, -93, 93, -10, -107, -106, 62}, new byte[]{108, -59, 59, ByteCompanionObject.MIN_VALUE, -16, -28, 92, -69});
                } else if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{-54, 25, -17, -101, 109, -21, -106, -6, -53, 34, -18, -82}, new byte[]{27, -102, 63, 41, -67, 94, 70, 65})) || strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{77, -59, 51, 52, -114, 43, 28, 124, 77, -54, 50, 6}, new byte[]{-99, 122, -30, -76, 94, -109, -52, -51})) || strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{-26, -60, 15, 4, -17, 36, -71, -83, -25, -6}, new byte[]{54, 123, -33, -70, 63, -106, 104, 38})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-52, 84, 15, 52, 99, -52, 55, 35}, new byte[]{-91, 58, 108, 70, 6, -83, 68, 70})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-93, -86, 52, 121, -18}, new byte[]{-47, -53, 93, 10, -117, -45, -112, -11}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{125, 76, -116, -85, 42, -103, -21, 122, 98, 71, -99, -69}, new byte[]{20, 34, -17, -39, 79, -8, -104, 31});
                } else if (!strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{112, -61, 16, -23, -64, 80, -121, -28, 112, -52, 17, -35}, new byte[]{-95, 64, -64, 85, 16, -27, 87, 89})) && !strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{-116, -87, 19, 41, 40, 40, -40, 67}, new byte[]{93, 42, -61, -104, -8, -104, 8, -15})) && !strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{-14, 39, -21, -113, -24, -82, -113, -62, -14, 47}, new byte[]{34, -104, 59, 49, 56, 19, 95, 122})) && !strM2421h.equals(AbstractC1387m.m2421h(new byte[]{123, 78, -82, -11, -55, 73, -51, 94}, new byte[]{31, 43, -51, -121, -84, 40, -66, 59})) && !strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-36, 110, 28, 69, 78}, new byte[]{-80, 1, 107, 32, 60, 105, 123, -31}))) {
                    switch (strM2421h.hashCode()) {
                        case -2116005972:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-32, -40, -43, -75, 10, -30, -11, 83, -31, -30, -44, -116}, new byte[]{49, 90, 4, 53, -38, 87, 36, -47}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-53}, new byte[]{-8, -51, -30, -10, 112, 102, -104, 82});
                            }
                            break;
                        case -2116005330:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-41, -106, -20, -8, -111, -56, -107, 81, -41, -104, -20, -9}, new byte[]{6, 20, Base64.padSymbol, 120, 65, 125, 68, -45}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-53}, new byte[]{-8, -51, -30, -10, 112, 102, -104, 82});
                            }
                            break;
                        case -1683837504:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-58, 36, -82, 32, -66, -112, -105, 94, -58, 37, -82, 32, -66, -107, -105, 95, -57, 20}, new byte[]{22, -101, ByteCompanionObject.MAX_VALUE, -96, 110, 40, 71, -17}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case -1683837092:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-122, 78, -41, -19, -29, -62, 9, -27, -122, 79, -41, -19, -29, -57, 9, -22, -122, 72}, new byte[]{86, -15, 6, 109, 51, 122, -39, 84}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case -1683836916:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{125, 121, 73, -117, -46, -106, 12, -126, 125, 120, 73, -117, -46, -109, 13, -80, 124, 72}, new byte[]{-83, -58, -104, 11, 2, 46, -36, 51}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case -1223190035:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-1, -53, 52, -74, -11, 109, -79, -53, -1, -60, 53, -117, -11, 111}, new byte[]{47, 118, -27, 53, 37, -42, 97, 126}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{11}, new byte[]{59, 19, ByteCompanionObject.MIN_VALUE, 72, -89, -91, -105, 29});
                            }
                            break;
                        case -906279820:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-89, -25, 15, 122, -8, 23}, new byte[]{-44, -126, 108, 21, -106, 115, -94, -113}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 110182:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-29, 37, -25}, new byte[]{-116, 75, -126, 34, -7, -32, -93, -109}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                        case 115276:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-13, 58, -107}, new byte[]{-121, 77, -6, -101, 100, -30, 111, 98}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 1068402:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-94, -36, -57, 44, 26, 126}, new byte[]{114, 104, 23, -98, -54, -50, 73, -4}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 1068407:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-62, 84, -12, -35, 83, -41}, new byte[]{18, -32, 36, 111, -125, 98, 101, -91}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 1082298:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-57, -85, -114, -100, ByteCompanionObject.MIN_VALUE, -106}, new byte[]{22, 41, 95, 28, 80, 46, -113, -118}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-53}, new byte[]{-8, -51, -30, -10, 112, 102, -104, 82});
                            }
                            break;
                        case 3735208:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{52, -43, 11, -36}, new byte[]{78, -80, 121, -77, -48, -51, -22, 26}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{11}, new byte[]{59, 19, ByteCompanionObject.MIN_VALUE, 72, -89, -91, -105, 29});
                            }
                            break;
                        case 33401554:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-83, -27, 26, 80, 73, 52, 6, -101}, new byte[]{125, 88, -54, -18, -103, -113, -41, 23}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{11}, new byte[]{59, 19, ByteCompanionObject.MIN_VALUE, 72, -89, -91, -105, 29});
                            }
                            break;
                        case 33421627:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{100, 96, 110, 63, -4, -4, -122, 96}, new byte[]{-76, -34, -66, -117, 44, 68, 86, -35}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                        case 33421769:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-53, 103, -5, 71, -19, 123, -4, -96}, new byte[]{27, -39, 43, -13, Base64.padSymbol, -58, 44, 16}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                        case 97440432:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{23, 51, -71, -15, 105}, new byte[]{113, 90, -53, -126, 29, 104, -31, 112}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                        case 110331239:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{44, -28, 57, 33, -76}, new byte[]{88, -116, 80, 83, -48, 122, 74, -30}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-53}, new byte[]{-8, -51, -30, -10, 112, 102, -104, 82});
                            }
                            break;
                        case 110339486:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{45, -85, 119, -118, 68}, new byte[]{89, -61, 5, -17, 33, -86, -115, 9}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-53}, new byte[]{-8, -51, -30, -10, 112, 102, -104, 82});
                            }
                            break;
                        case 1469703191:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-90, 95, 124, 50, -71, 38, 107, 1, -90, 94, 124, 50, -71, 36, 107, 5}, new byte[]{118, -32, -83, -78, 105, -98, -69, -80}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case 1469703194:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-65, -7, -63, 15, -83, 73, 60, 86, -65, -8, -63, 15, -83, 75, 60, 95}, new byte[]{111, 70, 16, -113, 125, -15, -20, -25}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case 1469703205:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{79, 16, 27, 43, 60, -18, -127, 97, 79, 17, 27, 43, 60, -20, ByteCompanionObject.MIN_VALUE, 83}, new byte[]{-97, -81, -54, -85, -20, 86, 81, -48}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case 1723007921:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{68, 83, 31, 72, -5, 116, 47, 75, 68, 81, 31, 69}, new byte[]{-108, -31, -50, -54, 43, -54, -2, -53}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 1723008333:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-21, 89, -64, 126, -96, -105, 62, 15, -21, 85, -63, 69}, new byte[]{59, -21, 17, -4, 112, 41, -17, -113}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 2083227239:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-117, 76, 96, -51, 72, -16, -87, -117, -117, 67, 97, -9}, new byte[]{91, -13, -80, 120, -103, 112, 121, 57}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                        case 2083228054:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{29, 83, 65, 47, 124, -39, -112, 78, 28, 103, 65, 35}, new byte[]{-51, -20, -111, -102, -83, 89, 64, -4}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                    }
                } else {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{13, 29, -113, 62, 98, -110, 40, -28, 31, 29, -98, 46}, new byte[]{105, 120, -20, 76, 7, -13, 91, -127});
                }
                arrayList.add(strM2421h);
            }
            i11++;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX INFO: renamed from: P */
    public static float m5511P(String str, String str2) {
        String[] strArrM5510L = m5510L(str);
        StringBuilder sb = new StringBuilder();
        if (strArrM5510L.length > 0) {
            sb.append((CharSequence) strArrM5510L[0]);
            for (int i10 = 1; i10 < strArrM5510L.length; i10++) {
                sb.append((CharSequence) " ");
                sb.append((CharSequence) strArrM5510L[i10]);
            }
        }
        String string = sb.toString();
        String[] strArrM5510L2 = m5510L(str2);
        StringBuilder sb2 = new StringBuilder();
        if (strArrM5510L2.length > 0) {
            sb2.append((CharSequence) strArrM5510L2[0]);
            for (int i11 = 1; i11 < strArrM5510L2.length; i11++) {
                sb2.append((CharSequence) " ");
                sb2.append((CharSequence) strArrM5510L2[i11]);
            }
        }
        String string2 = sb2.toString();
        String strM5517w = m5517w(string);
        String strM5517w2 = m5517w(string2);
        float f8 = 0.0f;
        if (!strM5517w.isEmpty() && !strM5517w2.isEmpty()) {
            f8 = 0.0f + (strM5517w.equals(strM5517w2) ? 0.12f : -0.35f);
        }
        boolean zM5515q = m5515q(string, AbstractC1387m.m2421h(new byte[]{107, -116, 120, -81, -113, -101, -91, 112, 106, -80}, new byte[]{-70, 13, -88, 23, 95, 47, 117, -59}), AbstractC1387m.m2421h(new byte[]{-44, -62, -74, 122}, new byte[]{-89, -89, -41, 14, -74, -79, -89, 50}));
        boolean zM5515q2 = m5515q(string2, AbstractC1387m.m2421h(new byte[]{121, -103, -26, -41, ByteCompanionObject.MIN_VALUE, 22, 53, -15, 120, -91}, new byte[]{-88, 24, 54, 111, 80, -94, -27, 68}), AbstractC1387m.m2421h(new byte[]{85, 87, -71, -37}, new byte[]{38, 50, -40, -81, -63, 94, 70, -2}));
        boolean zM5515q3 = m5515q(string, AbstractC1387m.m2421h(new byte[]{56, 68, -89, -90, -40, -117}, new byte[]{-23, -60, 118, 37, 8, 48, 6, 120}), AbstractC1387m.m2421h(new byte[]{62, -97, -112, 54, -28}, new byte[]{73, -9, -11, 83, -120, -78, 57, 51}));
        boolean zM5515q4 = m5515q(string2, AbstractC1387m.m2421h(new byte[]{111, 3, 87, -18, 87, -7}, new byte[]{-66, -125, -122, 109, -121, 66, -56, 109}), AbstractC1387m.m2421h(new byte[]{-107, 43, 25, -119, -55}, new byte[]{-30, 67, 124, -20, -91, 95, 124, 89}));
        if (zM5515q) {
            f8 += zM5515q2 ? 0.08f : -0.16f;
        }
        if (zM5515q3) {
            f8 += zM5515q4 ? 0.08f : -0.16f;
        }
        boolean zM5515q5 = m5515q(string, AbstractC1387m.m2421h(new byte[]{16, 90, 62, -111, 21, -106, -104, -13, 17, 106, 62, -102, 21, -103}, new byte[]{-64, -24, -18, 47, -59, 34, 72, 75}), AbstractC1387m.m2421h(new byte[]{-67, 28, -78, 105, -86, 16}, new byte[]{-39, 110, -37, 31, -49, 98, 87, 113}));
        boolean zM5515q6 = m5515q(string2, AbstractC1387m.m2421h(new byte[]{91, 28, -75, -127, 86, -108, 82, -31, 90, 44, -75, -118, 86, -101}, new byte[]{-117, -82, 101, 63, -122, 32, -126, 89}), AbstractC1387m.m2421h(new byte[]{44, -74, -32, 57, 110, -124}, new byte[]{72, -60, -119, 79, 11, -10, -98, -54}));
        boolean zM5515q7 = m5515q(string, AbstractC1387m.m2421h(new byte[]{12, -73, -22, -36, -22, -108, 110, 94, 12, -72, -22, -38, -21, -83, 110, 95}, new byte[]{-36, 8, 58, 108, 59, 21, -65, -33}), AbstractC1387m.m2421h(new byte[]{97, -59, -106, 113, 98, 63, -95, 79, 99}, new byte[]{17, -92, -27, 2, 7, 81, -58, 42}));
        boolean zM5515q8 = m5515q(string2, AbstractC1387m.m2421h(new byte[]{-122, -84, 42, 123, 96, 101, 59, 111, -122, -93, 42, 125, 97, 92, 59, 110}, new byte[]{86, 19, -6, -53, -79, -28, -22, -18}), AbstractC1387m.m2421h(new byte[]{28, -22, -35, -101, 77, 7, -105, 70, 30}, new byte[]{108, -117, -82, -24, 40, 105, -16, 35}));
        if (zM5515q5) {
            f8 += zM5515q6 ? 0.08f : -0.16f;
        }
        if (zM5515q7) {
            f8 += zM5515q8 ? 0.08f : -0.16f;
        }
        String strM5518z = m5518z(string);
        String strM5518z2 = m5518z(string2);
        if (strM5518z.isEmpty() || strM5518z2.isEmpty()) {
            return f8;
        }
        return f8 + (strM5518z.equals(strM5518z2) ? 0.08f : -0.1f);
    }

    /* JADX INFO: renamed from: f */
    public static void m5512f(C3498x c3498x, String str) {
        if (!c3498x.f10274T || c3498x.f10306o) {
            return;
        }
        c3498x.m5552s().m5558b(System.currentTimeMillis(), "", AbstractC1387m.m2421h(new byte[]{-92, -8, -98, -54, 82}, new byte[]{-44, -112, -15, -92, 55, 95, 32, -55}));
        c3498x.f10275U = c3498x.m5552s().m5561e();
        if (str == null) {
            str = "";
        }
        c3498x.f10315x = str;
        c3498x.m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{96, 89, 15, -20, 22, -64, -77, 124, 98, 65, 7, -15, 17}, new byte[]{3, 53, 110, -98, ByteCompanionObject.MAX_VALUE, -90, -38, 31}), AbstractC1387m.m2421h(new byte[]{111, -103, -97, 26, 79}, new byte[]{29, -10, -22, 110, 42, 113, 31, -54}), AbstractC1387m.m2421h(new byte[]{-92, -25, -59, 54, 31}, new byte[]{-44, -113, -86, 88, 122, -25, -106, 108}), AbstractC1387m.m2421h(new byte[]{99, -97, 77, 96, -123, -48}, new byte[]{19, -19, 34, 13, -11, -92, 11, 40}), c3498x.f10315x, AbstractC1387m.m2421h(new byte[]{3, -107, 2, 74, 81, -39, -127, -2, 12, -97, 30, 74, 121, -40}, new byte[]{98, -5, 113, Base64.padSymbol, 52, -85, -42, -105}), Long.valueOf(Math.max(0L, c3498x.f10275U - System.currentTimeMillis())));
        c3498x.m5526N(c3498x.f10315x);
    }

    /* JADX INFO: renamed from: g */
    public static Boolean m5513g() {
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
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-22}, new byte[]{-38, -62, -74, -68, -60, -108, 18, 112}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: j */
    public static float[] m5514j(float[][] fArr, long[] jArr, int i10, int i11) {
        int length = fArr[0].length;
        float[] fArr2 = new float[length];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            if (jArr[i10 + i13] != 0) {
                i12++;
                for (int i14 = 0; i14 < length; i14++) {
                    fArr2[i14] = fArr2[i14] + fArr[i13][i14];
                }
            }
        }
        double d = 0.0d;
        for (int i15 = 0; i15 < length; i15++) {
            float fMax = fArr2[i15] / Math.max(1, i12);
            fArr2[i15] = fMax;
            d += (double) (fMax * fMax);
        }
        float fMax2 = (float) Math.max(1.0E-12d, Math.sqrt(d));
        for (int i16 = 0; i16 < length; i16++) {
            fArr2[i16] = fArr2[i16] / fMax2;
        }
        return fArr2;
    }

    /* JADX INFO: renamed from: q */
    public static boolean m5515q(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: u */
    public static double m5516u(long j10) {
        if (j10 == 0) {
            return 0.0d;
        }
        return Math.max(0L, System.nanoTime() - j10) / 1000000.0d;
    }

    /* JADX INFO: renamed from: w */
    public static String m5517w(String str) {
        for (String str2 : str.split(AbstractC1387m.m2421h(new byte[]{-87, 67, 112}, new byte[]{-11, 48, 91, 76, 70, -21, 62, -82}))) {
            if (str2.equals(AbstractC1387m.m2421h(new byte[]{16, 89, 58, -40, 80, -97, 91, 39}, new byte[]{ByteCompanionObject.MAX_VALUE, 41, 95, -74, 38, -6, 41, 69})) || str2.equals(AbstractC1387m.m2421h(new byte[]{-95, -77, 62, 36, 56, -104, 78, 89, -95, -73, 34, 38, 52, -117, 64}, new byte[]{-47, -46, 76, 80, 81, -7, 34, 54})) || str2.equals(AbstractC1387m.m2421h(new byte[]{123, -65, 14, 3, -122, 92, -105, 124, 122}, new byte[]{24, -45, 97, 112, -29, 42, -14, 14})) || str2.equals(AbstractC1387m.m2421h(new byte[]{95, 8, 27, 101, -26, 76}, new byte[]{48, 102, 109, 0, -108, 46, 31, 88})) || str2.equals(AbstractC1387m.m2421h(new byte[]{28, 60, -12, -2, 54, 13, 21}, new byte[]{115, 90, -110, -120, 83, ByteCompanionObject.MAX_VALUE, 119, -47})) || str2.equals(AbstractC1387m.m2421h(new byte[]{64, -126, 75, 5, 11, 117, -78, -116, 95, -119, 90, 21}, new byte[]{41, -20, 40, 119, 110, 20, -63, -23})) || str2.equals(AbstractC1387m.m2421h(new byte[]{-35, 48, 124, -91, -45, -69, 44, -122, -49, 48, 109, -75}, new byte[]{-71, 85, 31, -41, -74, -38, 95, -29}))) {
                return str2;
            }
        }
        return "";
    }

    /* JADX INFO: renamed from: z */
    public static String m5518z(String str) {
        for (String str2 : str.split(AbstractC1387m.m2421h(new byte[]{105, -77, 22}, new byte[]{53, -64, Base64.padSymbol, -17, -21, 94, 29, 7}))) {
            if (str2.equals(AbstractC1387m.m2421h(new byte[]{38}, new byte[]{22, 8, -105, -94, -64, 45, -18, 5})) || str2.equals(AbstractC1387m.m2421h(new byte[]{-82}, new byte[]{-97, 126, -108, -12, -12, 114, 35, -54})) || str2.equals(AbstractC1387m.m2421h(new byte[]{70}, new byte[]{116, -9, -46, -71, -20, -11, 8, -70})) || str2.equals(AbstractC1387m.m2421h(new byte[]{16}, new byte[]{35, 14, 95, -45, 106, Base64.padSymbol, 99, 62}))) {
                return str2;
            }
        }
        return "";
    }

    /* JADX WARN: Code duplicated, block: B:20:0x006b  */
    /* JADX WARN: Code duplicated, block: B:21:0x006d  */
    /* JADX WARN: Code duplicated, block: B:47:0x008d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0033 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x009b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x001d A[SYNTHETIC] */
    /* JADX INFO: renamed from: A */
    public final C1919e m5519A(String str, boolean z9) {
        String strM3009g;
        String strM5393b = C3451d1.m5393b(str);
        C1652b.m2734a();
        ArrayList arrayListM2993i = C1652b.m2737f().m2993i(C1917c.f5050e);
        int size = arrayListM2993i.size();
        String str2 = "";
        int length = -1;
        C1919e c1919e = null;
        boolean z10 = false;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM2993i.get(i10);
            i10++;
            C3481o0 c3481o0 = (C3481o0) obj;
            if (c3481o0.f10180c && AbstractC1920f.m3006d(c3481o0.f10179b)) {
                String strM5393b2 = C3451d1.m5393b(c3481o0.f10178a);
                if (!strM5393b2.isEmpty()) {
                    boolean zEquals = strM5393b.equals(strM5393b2);
                    if (zEquals) {
                        if (zEquals) {
                            if (AbstractC0000a.m6f(AbstractC1920f.m3009g(c3481o0.f10179b)) != null) {
                                if (this.f10313v.f9948b.containsKey(AbstractC1920f.m3009g(c3481o0.f10179b))) {
                                }
                            }
                        }
                        strM3009g = AbstractC1920f.m3009g(c3481o0.f10179b);
                        if (strM5393b2.length() > length) {
                            C1919e c1919e2 = c3481o0.f10179b;
                            length = strM5393b2.length();
                            c1919e = c1919e2;
                            z10 = false;
                            str2 = strM3009g;
                        } else if (strM5393b2.length() != length && !strM3009g.equals(str2)) {
                            z10 = true;
                        }
                    } else if (!z9 && !c3481o0.f10181d) {
                        if (AbstractC0074a.m162m(" ", strM5393b, " ").contains(" " + strM5393b2 + " ")) {
                            if (zEquals) {
                                if (AbstractC0000a.m6f(AbstractC1920f.m3009g(c3481o0.f10179b)) != null) {
                                    if (this.f10313v.f9948b.containsKey(AbstractC1920f.m3009g(c3481o0.f10179b))) {
                                    }
                                }
                            }
                            strM3009g = AbstractC1920f.m3009g(c3481o0.f10179b);
                            if (strM5393b2.length() > length) {
                                C1919e c1919e3 = c3481o0.f10179b;
                                length = strM5393b2.length();
                                c1919e = c1919e3;
                                z10 = false;
                                str2 = strM3009g;
                            } else if (strM5393b2.length() != length) {
                            }
                        }
                    }
                }
            }
        }
        if (z10) {
            return null;
        }
        return c1919e;
    }

    /* JADX WARN: Code duplicated, block: B:76:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:79:0x01f3  */
    /* JADX INFO: renamed from: B */
    public final C3492u m5520B(int i10, String str, long j10) {
        boolean z9;
        int i11;
        String strM2421h;
        String strM2421h2;
        boolean zM5501a;
        C3492u c3492u;
        C3498x c3498x = this;
        String str2 = str;
        c3498x.f10317z = AbstractC1387m.m2421h(new byte[]{112, -118, -86, -6, 118, -59, 106, 32, 106, -116, -105, -11, 124, -9, 121, 32, 112, -127, -100, -3, 120, -36, ByteCompanionObject.MAX_VALUE}, new byte[]{30, -27, -11, -103, 25, -88, 26, 65});
        C3494v c3494vM5536Y = c3498x.m5536Y(str2);
        Iterator it = c3494vM5536Y.f10225b.iterator();
        while (it.hasNext()) {
            if (c3494vM5536Y.m5501a((C3492u) it.next())) {
                C3492u c3492u2 = new C3492u(str2, null, "");
                c3492u2.f10219f = c3498x.f10310s.m5454a(AbstractC1387m.m2421h(new byte[]{-57, 94, 103, -71, -15, 105, 82}, new byte[]{-74, 43, 2, -53, -120, 83, 114, 36}) + str2);
                ArrayList arrayList = new ArrayList();
                arrayList.add(c3492u2);
                c3498x.m5534W(arrayList, 0, 1);
                Iterator it2 = c3494vM5536Y.f10225b.iterator();
                C3492u c3492u3 = null;
                int i12 = 0;
                float f8 = -1.0f;
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    C3492u c3492u4 = (C3492u) it2.next();
                    if (c3494vM5536Y.m5501a(c3492u4)) {
                        float[] fArr = c3492u4.f10220g;
                        int length = fArr.length;
                        float[] fArr2 = c3492u2.f10220g;
                        if (length == fArr2.length) {
                            i12++;
                            float f10 = 0.0f;
                            for (int i13 = 0; i13 < fArr2.length; i13++) {
                                f10 += fArr2[i13] * fArr[i13];
                            }
                            float fM5509K = (m5509K(str2, c3492u4.f10214a) * 0.08f) + f10 + (c3494vM5536Y.f10230g ? 0.0f : m5511P(str2, c3492u4.f10214a));
                            if (fM5509K > f8) {
                                f8 = fM5509K;
                                c3492u3 = c3492u4;
                            }
                        }
                    }
                }
                String strM3009g = c3492u3 == null ? "" : AbstractC1920f.m3009g(c3492u3.f10215b);
                float f11 = -1.0f;
                C3492u c3492u5 = null;
                for (C3492u c3492u6 : c3494vM5536Y.f10225b) {
                    if (c3494vM5536Y.m5501a(c3492u6) && c3492u6.f10220g.length == c3492u2.f10220g.length && !strM3009g.equals(AbstractC1920f.m3009g(c3492u6.f10215b))) {
                        float[] fArr3 = c3492u2.f10220g;
                        float[] fArr4 = c3492u6.f10220g;
                        c3492u = c3492u2;
                        float f12 = 0.0f;
                        for (int i14 = 0; i14 < fArr3.length; i14++) {
                            f12 = (fArr3[i14] * fArr4[i14]) + f12;
                        }
                        float fM5509K2 = (m5509K(str2, c3492u6.f10214a) * 0.08f) + f12 + (c3494vM5536Y.f10230g ? 0.0f : m5511P(str2, c3492u6.f10214a));
                        if (fM5509K2 > f11) {
                            f11 = fM5509K2;
                            c3492u5 = c3492u6;
                        }
                    } else {
                        c3492u = c3492u2;
                    }
                    c3492u2 = c3492u;
                }
                float f13 = f8 - f11;
                String str3 = c3498x.f10281a;
                StringBuilder sb = new StringBuilder();
                AbstractC1178q.m2087u(new byte[]{-37, 117, 121, 9, 57, 33, -126, -32, -88, 97, 97, 13, 37, 44, -42, -92}, new byte[]{-120, 16, 20, 104, 87, 85, -21, -125}, sb, str2);
                sb.append(AbstractC1387m.m2421h(new byte[]{60, 11, 117, -12, 108, 85, -91, 90, 60}, new byte[]{27, 39, 85, -106, 9, 38, -47, 103}));
                sb.append(c3492u3 == null ? "" : c3492u3.f10214a);
                sb.append(AbstractC1387m.m2421h(new byte[]{31, 4, -122, 78, -1, 70, -86, -14, 5}, new byte[]{56, 40, -90, Base64.padSymbol, -100, 41, -40, -105}));
                sb.append(f8);
                sb.append(AbstractC1387m.m2421h(new byte[]{-49, -66, -22, 18, -103, -46, -110, -42, ByteCompanionObject.MIN_VALUE, -22, -20, 9, -97, -6, -127, -27, -124, -9, -21, 91}, new byte[]{-29, -98, -123, 102, -15, -73, -32, -105}));
                sb.append(f13);
                Log.d(str3, sb.toString());
                if (c3492u3 == null) {
                    z9 = false;
                } else {
                    if (c3494vM5536Y.f10230g) {
                        zM5501a = c3494vM5536Y.m5501a(c3492u3);
                    } else {
                        C0023h c0023h = c3494vM5536Y.f10228e;
                        String strM3009g2 = AbstractC1920f.m3009g(c3492u3.f10215b);
                        boolean z10 = c3492u3.f10217d;
                        Pattern pattern = AbstractC3469j1.f10033a;
                        if (c0023h.m74i()) {
                            zM5501a = false;
                        } else {
                            EnumC3503z0 enumC3503z0 = (EnumC3503z0) c0023h.f81c;
                            if (!z10 ? enumC3503z0 != EnumC3503z0.f10331c : !(enumC3503z0 == EnumC3503z0.f10330b && strM3009g2.equals((String) c0023h.f82d))) {
                                zM5501a = false;
                            } else {
                                zM5501a = true;
                            }
                        }
                    }
                    if (zM5501a) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                }
                boolean z11 = !c3494vM5536Y.f10230g || f11 > -1.0f;
                boolean z12 = z9 && z11 && f8 >= 0.88f && f13 >= 0.035f;
                if (z12) {
                    i11 = 8;
                    strM2421h = AbstractC1387m.m2421h(new byte[]{-75, -34, 78, 88}, new byte[]{-37, -79, 32, Base64.padSymbol, 57, -7, -35, -127});
                } else {
                    i11 = 8;
                    if (!z9) {
                        strM2421h = AbstractC1387m.m2421h(new byte[]{-27, -43, -19, 14, -43, 46, -61, 69, -25, -57}, new byte[]{-107, -76, -97, 111, -72, 75, -73, 32});
                    } else if (z11) {
                        strM2421h = f8 < 0.88f ? AbstractC1387m.m2421h(new byte[]{-64, 26, -63, 18, -50, 36, 84, 51, -55}, new byte[]{-84, 117, -74, 77, -67, 71, 59, 65}) : AbstractC1387m.m2421h(new byte[]{-14, 54, -119, -34, -123, 73, -41, 25, -32, 4, -104, -44, -115, 78, -35}, new byte[]{-109, 91, -21, -73, -30, 60, -72, 108});
                    } else {
                        strM2421h = AbstractC1387m.m2421h(new byte[]{107, -51, -57, 19, 66, -91, 26, 63, 113, -53, -9, 18, 109, -95, 4, 42, 96, -48, -10, 29, 70, -87, 30, 59}, new byte[]{5, -94, -104, 124, 50, -64, 104, 94});
                    }
                }
                StringBuilder sbM170u = AbstractC0074a.m170u(strM3009g);
                byte[] bArr = new byte[i11];
                // fill-array-data instruction
                bArr[0] = -45;
                bArr[1] = 12;
                bArr[2] = -17;
                bArr[3] = 26;
                bArr[4] = 43;
                bArr[5] = 117;
                bArr[6] = -113;
                bArr[7] = 88;
                byte[] bArr2 = new byte[i11];
                // fill-array-data instruction
                bArr2[0] = -23;
                bArr2[1] = 44;
                bArr2[2] = -100;
                bArr2[3] = 121;
                bArr2[4] = 68;
                bArr2[5] = 7;
                bArr2[6] = -22;
                bArr2[7] = 101;
                sbM170u.append(AbstractC1387m.m2421h(bArr, bArr2));
                sbM170u.append(f8);
                byte[] bArr3 = new byte[i11];
                // fill-array-data instruction
                bArr3[0] = 37;
                bArr3[1] = -28;
                bArr3[2] = 62;
                bArr3[3] = -123;
                bArr3[4] = -66;
                bArr3[5] = 34;
                bArr3[6] = -59;
                bArr3[7] = 95;
                sbM170u.append(AbstractC1387m.m2421h(new byte[]{9, -60, 83, -28, -52, 69, -84, 49, 24}, bArr3));
                sbM170u.append(f13);
                byte[] bArr4 = new byte[i11];
                // fill-array-data instruction
                bArr4[0] = 43;
                bArr4[1] = -72;
                bArr4[2] = -109;
                bArr4[3] = 87;
                bArr4[4] = 26;
                bArr4[5] = -46;
                bArr4[6] = 35;
                bArr4[7] = 93;
                sbM170u.append(AbstractC1387m.m2421h(new byte[]{7, -104, -14, 59, 118, -67, 84, 56, 79, -123}, bArr4));
                sbM170u.append(z9);
                byte[] bArr5 = new byte[i11];
                // fill-array-data instruction
                bArr5[0] = 113;
                bArr5[1] = 43;
                bArr5[2] = 103;
                bArr5[3] = 74;
                bArr5[4] = 73;
                bArr5[5] = -63;
                bArr5[6] = 53;
                bArr5[7] = -26;
                sbM170u.append(AbstractC1387m.m2421h(new byte[]{93, 11, 6, 41, 42, -92, 69, -110, 20, 79, 90}, bArr5));
                sbM170u.append(z12);
                byte[] bArr6 = new byte[i11];
                // fill-array-data instruction
                bArr6[0] = -82;
                bArr6[1] = -67;
                bArr6[2] = 110;
                bArr6[3] = -49;
                bArr6[4] = -118;
                bArr6[5] = -59;
                bArr6[6] = 90;
                bArr6[7] = -71;
                AbstractC1178q.m2087u(new byte[]{-126, -99, 28, -86, -32, -96, 57, -51, -57, -46, 0, -14}, bArr6, sbM170u, strM2421h);
                byte[] bArr7 = new byte[i11];
                // fill-array-data instruction
                bArr7[0] = 24;
                bArr7[1] = 117;
                bArr7[2] = -96;
                bArr7[3] = 112;
                bArr7[4] = 32;
                bArr7[5] = -20;
                bArr7[6] = 27;
                bArr7[7] = 23;
                byte[] bArr8 = new byte[i11];
                // fill-array-data instruction
                bArr8[0] = 52;
                bArr8[1] = 85;
                bArr8[2] = -46;
                bArr8[3] = 31;
                bArr8[4] = 85;
                bArr8[5] = -104;
                bArr8[6] = 126;
                bArr8[7] = 42;
                sbM170u.append(AbstractC1387m.m2421h(bArr7, bArr8));
                if (c3494vM5536Y.f10230g) {
                    byte[] bArr9 = new byte[i11];
                    // fill-array-data instruction
                    bArr9[0] = -14;
                    bArr9[1] = 4;
                    bArr9[2] = 111;
                    bArr9[3] = -57;
                    bArr9[4] = -46;
                    bArr9[5] = -3;
                    bArr9[6] = 74;
                    bArr9[7] = 97;
                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{-122, 125, 31, -94, -74, -94, 56, 4, -111, 107, 25, -94, -96, -124}, bArr9);
                } else {
                    byte[] bArr10 = new byte[i11];
                    // fill-array-data instruction
                    bArr10[0] = 6;
                    bArr10[1] = -2;
                    bArr10[2] = 109;
                    bArr10[3] = -64;
                    bArr10[4] = 88;
                    bArr10[5] = 115;
                    bArr10[6] = 32;
                    bArr10[7] = -56;
                    strM2421h2 = AbstractC1387m.m2421h(new byte[]{101, -97, 25, -95, 52, 28, 71}, bArr10);
                }
                sbM170u.append(strM2421h2);
                byte[] bArr11 = new byte[i11];
                // fill-array-data instruction
                bArr11[0] = -103;
                bArr11[1] = 109;
                bArr11[2] = 30;
                bArr11[3] = 118;
                bArr11[4] = -26;
                bArr11[5] = -82;
                bArr11[6] = 82;
                bArr11[7] = -3;
                sbM170u.append(AbstractC1387m.m2421h(new byte[]{-75, 77, 123, 0, -113, -54, 55, -109, -6, 8, 35}, bArr11));
                sbM170u.append((String) c3494vM5536Y.f10228e.f83e);
                c3498x.f10317z = sbM170u.toString();
                Log.d(c3498x.f10281a, AbstractC1387m.m2421h(new byte[]{-96, 46, -52, 2, -118, -122, 18, -26, -45, 47, -60, 0, -115, -127, 18, -22, -99, 113, -127}, new byte[]{-13, 75, -95, 99, -28, -14, 123, -123}) + c3498x.f10317z);
                C3492u c3492u7 = c3492u3;
                boolean z13 = z12;
                c3498x.m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{92, -106, -28, 94, -126, 59, -35, 58, 112, -127, -24, 81, -121}, new byte[]{47, -13, -119, 63, -20, 79, -76, 89}), AbstractC1387m.m2421h(new byte[]{95, 79, 21, -121, -106, -5, -56, -102, 95, 83, 9, -102, -101}, new byte[]{44, 32, 96, -11, -11, -98, -101, -1}), Long.valueOf(j10), AbstractC1387m.m2421h(new byte[]{-11, -15, 14, -97, 31, -62, 22, -64, -3, -6}, new byte[]{-110, -108, 96, -6, 109, -93, 98, -87}), Integer.valueOf(i10), AbstractC1387m.m2421h(new byte[]{77, 83, 94, -9, -13}, new byte[]{60, 38, 59, -123, -118, -10, 97, -107}), str, AbstractC1387m.m2421h(new byte[]{-30, 100, 11}, new byte[]{-119, 1, 114, 0, -91, -105, 19, -55}), strM3009g, AbstractC1387m.m2421h(new byte[]{-125, 123, 113, -24, 88, 118}, new byte[]{-13, 19, 3, -119, 43, 19, 84, 94}), c3492u3 == null ? "" : c3492u3.f10214a, AbstractC1387m.m2421h(new byte[]{-2, -7, 88, -87, -110}, new byte[]{-115, -102, 55, -37, -9, 107, 23, -110}), Float.valueOf(f8), AbstractC1387m.m2421h(new byte[]{110, -10, -9, -17, 48, 8, 104, 33, 79, -32, -10, -13, 48}, new byte[]{28, -125, -103, -127, 85, 122, Base64.padSymbol, 81}), Float.valueOf(f11), AbstractC1387m.m2421h(new byte[]{116, 46, -33, 25, 85, -113}, new byte[]{25, 79, -83, 126, 60, -31, -64, 54}), Float.valueOf(f13), AbstractC1387m.m2421h(new byte[]{105, 95, -35, -117, -82, -80, 106, 3, 80, 79, -54}, new byte[]{27, 42, -77, -27, -53, -62, 63, 115}), c3492u5 == null ? "" : AbstractC1920f.m3009g(c3492u5.f10215b), AbstractC1387m.m2421h(new byte[]{-71, 35, -122, 112, -61, 85, -66, 82, -101, 62, -102, ByteCompanionObject.MAX_VALUE, -43, 66}, new byte[]{-53, 86, -24, 30, -90, 39, -21, 34}), c3492u5 == null ? "" : c3492u5.f10214a, AbstractC1387m.m2421h(new byte[]{34, -23, -118, 51, 34, ByteCompanionObject.MIN_VALUE, 20}, new byte[]{67, -123, -26, 92, 85, -27, 112, 125}), Boolean.valueOf(z9), AbstractC1387m.m2421h(new byte[]{-115, -124, 3, 10, -110, -48, -89, 98}, new byte[]{-20, -25, 96, 111, -30, -92, -62, 6}), Boolean.valueOf(z12), AbstractC1387m.m2421h(new byte[]{55, -122, 25, 97, 57, 56, 115, 17, 43}, new byte[]{69, -29, 115, 4, 90, 76, 26, 126}), strM2421h, AbstractC1387m.m2421h(new byte[]{115, 52, 103, -37, 41}, new byte[]{1, 91, 18, -81, 76, 53, -45, -48}), c3494vM5536Y.f10230g ? AbstractC1387m.m2421h(new byte[]{66, -87, 52, Base64.padSymbol, 16, 87, -119, -28, 85, -65, 50, Base64.padSymbol, 6, 113}, new byte[]{54, -48, 68, 88, 116, 8, -5, -127}) : AbstractC1387m.m2421h(new byte[]{-114, 106, -91, -3, -37, -52, -39}, new byte[]{-19, 11, -47, -100, -73, -93, -66, 25}), AbstractC1387m.m2421h(new byte[]{-33, 70, -23, 77, 119, -126, 79, -127}, new byte[]{-70, 48, ByteCompanionObject.MIN_VALUE, 41, 18, -20, 44, -28}), (String) c3494vM5536Y.f10228e.f83e, AbstractC1387m.m2421h(new byte[]{74, -23, -42, 23, -70, 70, -43, 82}, new byte[]{41, -122, -69, 103, -37, 52, -80, 54}), Integer.valueOf(i12));
                if (z13) {
                    return c3492u7;
                }
                return null;
            }
            c3498x = this;
            str2 = str;
        }
        this.f10317z = AbstractC1387m.m2421h(new byte[]{-114, 121, -63, 124, 21, -65, -40, 47, -108, ByteCompanionObject.MAX_VALUE, -4, 115, 31, -115, -53, 47, -114, 114, -9, 123, 27, -90, -51, 116, -64}, new byte[]{-32, 22, -98, 31, 122, -46, -88, 78}) + ((String) c3494vM5536Y.f10228e.f83e) + AbstractC1387m.m2421h(new byte[]{-86, -91, -127, -71, -64, -114, -116, 111}, new byte[]{-122, -123, -14, -43, -81, -6, -1, 82}) + ((String) c3494vM5536Y.f10229f.f602d) + AbstractC1387m.m2421h(new byte[]{51, 38, -56, 23, -44, 45, 5, 68, 107, 59}, new byte[]{31, 6, -70, 114, -91, 88, 96, 55}) + c3494vM5536Y.f10231h;
        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{85, 40, -125, -82, -39, -18, -126, -34, 121, 63, -113, -95, -36}, new byte[]{38, 77, -18, -49, -73, -102, -21, -67}), AbstractC1387m.m2421h(new byte[]{-113, -23, -54, -97, 28, -55, 82, -19, -113, -11, -42, -126, 17}, new byte[]{-4, -122, -65, -19, ByteCompanionObject.MAX_VALUE, -84, 1, -120}), Long.valueOf(j10), AbstractC1387m.m2421h(new byte[]{-38, 44, 39, 42, -8, -124, -109, 124, -46, 39}, new byte[]{-67, 73, 73, 79, -118, -27, -25, 21}), Integer.valueOf(i10), AbstractC1387m.m2421h(new byte[]{89, 65, 116, -8, 75}, new byte[]{40, 52, 17, -118, 50, 81, -97, 54}), str, AbstractC1387m.m2421h(new byte[]{-84, -49, -45, 68, -5, -8, 31, -114}, new byte[]{-51, -84, -80, 33, -117, -116, 122, -22}), Boolean.FALSE, AbstractC1387m.m2421h(new byte[]{-9, -6, 9, -96, -113, 74}, new byte[]{-123, -97, 104, -45, -32, 36, 103, -49}), AbstractC1387m.m2421h(new byte[]{101, -20, -79, -90, -56, -47, -114, 52, ByteCompanionObject.MAX_VALUE, -22, -116, -87, -62, -29, -99, 52, 101, -25, -121, -95, -58, -56, -101}, new byte[]{11, -125, -18, -59, -89, -68, -2, 85}), AbstractC1387m.m2421h(new byte[]{121, 31, ByteCompanionObject.MAX_VALUE, 66, 107, 77, -44, 33}, new byte[]{28, 105, 22, 38, 14, 35, -73, 68}), (String) c3494vM5536Y.f10228e.f83e, AbstractC1387m.m2421h(new byte[]{-57, ByteCompanionObject.MAX_VALUE, -82, 31, -107}, new byte[]{-76, 19, -63, 107, -26, -125, 110, 98}), (String) c3494vM5536Y.f10229f.f602d);
        return null;
    }

    /* JADX INFO: renamed from: C */
    public final void m5521C(String str) {
        this.f10260F = str;
        mo5402a();
    }

    /* JADX INFO: renamed from: D */
    public final synchronized byte[] m5522D() {
        int i10 = this.f10272R;
        if (i10 <= 0) {
            return null;
        }
        byte[] bArr = new byte[i10];
        int i11 = this.f10273S - i10;
        byte[] bArr2 = this.f10268N;
        int length = (i11 + bArr2.length) % bArr2.length;
        int iMin = Math.min(i10, bArr2.length - length);
        System.arraycopy(this.f10268N, length, bArr, 0, iMin);
        int i12 = this.f10272R;
        if (iMin < i12) {
            System.arraycopy(this.f10268N, 0, bArr, iMin, i12 - iMin);
        }
        return bArr;
    }

    /* JADX INFO: renamed from: E */
    public final boolean m5523E(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C1652b.m2734a();
        ArrayList arrayListM2990e = C1652b.m2737f().m2990e();
        int size = arrayListM2990e.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM2990e.get(i10);
            i10++;
            C1919e c1919e = (C1919e) obj;
            if (AbstractC1920f.m3006d(c1919e)) {
                linkedHashMap.put(AbstractC1920f.m3009g(c1919e), c1919e);
            }
        }
        Pattern pattern = AbstractC3469j1.f10033a;
        C0023h c0023hM15p = AbstractC0000a.m15p(C3451d1.m5392a(str), linkedHashMap.keySet(), this.f10313v.f9948b);
        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{93, -24, 92, -72, 49, -11, -64, 41, 90, -25, 68, -92, 44, -24, -20}, new byte[]{52, -122, 40, -35, 95, -127, -97, 72}), AbstractC1387m.m2421h(new byte[]{-13, -4, 66}, new byte[]{-127, -99, 53, 116, -35, 103, -43, 85}), str, AbstractC1387m.m2421h(new byte[]{50, 10, 120, 77, 30}, new byte[]{67, ByteCompanionObject.MAX_VALUE, 29, 63, 103, -36, 83, 76}), C3451d1.m5392a(str), AbstractC1387m.m2421h(new byte[]{32, 122, -42, 115, -46, 79}, new byte[]{83, 14, -73, 7, -89, 60, 123, -117}), ((EnumC3503z0) c0023hM15p.f81c).name(), AbstractC1387m.m2421h(new byte[]{91, 124, -12, -107, 39, -98}, new byte[]{41, 25, -107, -26, 72, -16, -107, -117}), (String) c0023hM15p.f83e, AbstractC1387m.m2421h(new byte[]{-79, -112, -92}, new byte[]{-38, -11, -35, 58, -114, -27, -121, ByteCompanionObject.MAX_VALUE}), (String) c0023hM15p.f82d, AbstractC1387m.m2421h(new byte[]{-88, -115, -21, 11, 5, 120, -36, 89, -84, -70, -23, 22, 0, 118, -48, 70}, new byte[]{-55, -5, -118, 98, 105, 25, -66, 53}), Integer.valueOf(linkedHashMap.size()), AbstractC1387m.m2421h(new byte[]{-48, -114, -108, -17, ByteCompanionObject.MAX_VALUE, 47, -13, -28}, new byte[]{-72, -17, -26, -117, 41, 74, -121, -117}), Boolean.valueOf(c0023hM15p.m74i()));
        if (((String) c0023hM15p.f83e).equals(AbstractC1387m.m2421h(new byte[]{48, 9, -71, 52, 68, 29, 26, 114, 50, 16, -81, 53, 76, 7, 20, 66, 51}, new byte[]{93, 96, -54, 71, 45, 115, 125, 45})) || ((String) c0023hM15p.f83e).matches(AbstractC1387m.m2421h(new byte[]{-115, -38, -1, -6, 95, -21, 102, -73, -46, -103, -95, -30, 89, -9, 126, -84, -41, -112, -85, -26, 74, -30, 110, -73, -45, ByteCompanionObject.MIN_VALUE, -89, -30, 78, -84, 56, -10, -113}, new byte[]{-91, -27, -59, -115, 54, -123, 2, -40}))) {
            HashSet hashSet = new HashSet();
            for (String str2 : C3451d1.m5392a(str).split(AbstractC1387m.m2421h(new byte[]{125, 85, 49}, new byte[]{33, 38, 26, -16, 21, -44, 84, -70}))) {
                if (AbstractC3469j1.f10039g.matcher(str2).matches() || AbstractC3469j1.m5431g(str2)) {
                    hashSet.add(str2);
                }
            }
            if (hashSet.size() > 1) {
                m5544i(str, AbstractC1387m.m2421h(new byte[]{-77, -99, -44, 82, 6, 95, -30, 112, -71, -100, -35, 107, 5, 70, -28, 118, -79, -122, -45, 91, 4}, new byte[]{-48, -14, -70, 52, 106, 54, -127, 4}));
                return true;
            }
        }
        if (!c0023hM15p.m74i()) {
            if (m5505G(str)) {
                Log.w(this.f10281a, AbstractC1387m.m2421h(new byte[]{22, -30, -108, 6, 18, -126, 105, 121, 60, -29, -99, 64, 27, -109, 107, 110, 33, -83, -113, 19, 27, -103, 42, 125, Base64.padSymbol, -1, -101, 19, 27, -104, 49, 45, 39, -24, -100, 21, 13, -126, 100, 106, 117, -7, -107, 64, 25, -98, 111, 126, 38}, new byte[]{85, -115, -6, 96, 126, -21, 10, 13}));
                m5544i(str, AbstractC1387m.m2421h(new byte[]{106, 81, -65, -117, -42, -123, -43, -60, 104, 94, -73, -110, -34, -118, -2}, new byte[]{7, 48, -47, -2, -73, -23, -118, -89}));
                return true;
            }
            C1919e c1919eM5519A = m5519A(str, true);
            if (c1919eM5519A != null) {
                m5540c0(AbstractC1387m.m2421h(new byte[]{47, -25, -115, -118, 113, -124, -21, -35, 58, -25, ByteCompanionObject.MIN_VALUE, -117}, new byte[]{66, -122, -29, -1, 16, -24, -76, -72}), AbstractC1920f.m3009g(c1919eM5519A), "", AbstractC1387m.m2421h(new byte[]{-2, 116, 89, -34, 63, -61, 4, 46, -17, 110, 82, -53}, new byte[]{-117, 7, 60, -84, 96, -95, 109, 64}));
                Log.i(this.f10281a, AbstractC1387m.m2421h(new byte[]{11, -62, -28, -9, 79, -69, -88, -3, 32, -49, -28, -8, 27, -8, -86, -15, 35, -37, -21, -16, 27, -10, -92, -24, 45, -46, -32, -16, 1, -69}, new byte[]{78, -70, -123, -108, 59, -101, -59, -100}) + AbstractC1920f.m3009g(c1919eM5519A));
                m5554v(c1919eM5519A, -1);
                return true;
            }
            C3492u c3492uM5556y = m5556y(str);
            if (c3492uM5556y != null) {
                m5540c0(AbstractC1387m.m2421h(new byte[]{81, -78, 91, 24, 88, 9, -121, 94, 87, -85, 78, 26, 64}, new byte[]{50, -45, 47, 121, 52, 102, -32, 1}), AbstractC1920f.m3009g(c3492uM5556y.f10215b), c3492uM5556y.f10214a, AbstractC1387m.m2421h(new byte[]{114, 103, 114, 126, 63, 112, -108, 87, 97, 110, 116, 126, 32, 122}, new byte[]{17, 6, 6, 31, 83, 31, -13, 8}));
                Log.i(this.f10281a, AbstractC1387m.m2421h(new byte[]{42, -27, 10, 50, -12, 16, 90, -63, 25, -20, 12, 50, -21, 26, 29, -116, 8, -16, 29, 59, -3, 27, 7, -63}, new byte[]{105, -124, 126, 83, -104, ByteCompanionObject.MAX_VALUE, Base64.padSymbol, -31}) + c3492uM5556y.f10214a);
                m5554v(c3492uM5556y.f10215b, -1);
                return true;
            }
            C3492u c3492uM5555x = m5555x(str);
            if (c3492uM5555x != null) {
                m5540c0(AbstractC1387m.m2421h(new byte[]{104, -38, 38, -81, -39, 99, -73, -57, 104, -43, 59}, new byte[]{9, -74, 79, -50, -86, 60, -46, -65}), AbstractC1920f.m3009g(c3492uM5555x.f10215b), c3492uM5555x.f10214a, AbstractC1387m.m2421h(new byte[]{40, 57, -83, -101, 92, 24, 5, -39, 59, 36, -83, -101, 91, 24}, new byte[]{75, 76, -33, -6, 40, 125, 97, -122}));
                Log.i(this.f10281a, AbstractC1387m.m2421h(new byte[]{98, 58, 62, -44, 76, 119, 19, -55, 67, 43, 43, -34, 87, 57, 19, -63, 7, 50, 55, -59, 89, 36, 23, -115, 74, 35, 43, -44, 80, 50, 22, -105, 7}, new byte[]{39, 66, 95, -73, 56, 87, 114, -83}) + c3492uM5555x.f10214a);
                m5554v(c3492uM5555x.f10215b, -1);
                return true;
            }
        }
        EnumC3503z0 enumC3503z0 = (EnumC3503z0) c0023hM15p.f81c;
        EnumC3503z0 enumC3503z1 = EnumC3503z0.f10331c;
        if (enumC3503z0 == enumC3503z1) {
            return false;
        }
        if (enumC3503z0 == enumC3503z1 || (enumC3503z0 == EnumC3503z0.f10332d && ((String) c0023hM15p.f83e).equals(AbstractC1387m.m2421h(new byte[]{-57, 70, -126, 30, 76, 39, -109, -30, -59, 95, -108, 31, 68, Base64.padSymbol, -99, -46, -60}, new byte[]{-86, 47, -15, 109, 37, 73, -12, -67})))) {
            m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{12, 18, -83, 32, 65, 47, -13, -41, 32, 17, -95, 45, 67, 57, -5, -41, 20}, new byte[]{ByteCompanionObject.MAX_VALUE, 119, -64, 65, 47, 91, -102, -76}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, 78, -70, 49, 73}, new byte[]{-15, 59, -33, 67, 48, -85, -10, -42}), C3451d1.m5392a(str), AbstractC1387m.m2421h(new byte[]{25, 114, 50, 92, 63, -17}, new byte[]{107, 23, 83, 47, 80, -127, 92, -40}), (String) c0023hM15p.f83e, AbstractC1387m.m2421h(new byte[]{-68, -108, 70, 108, 17, -29, 13, 91}, new byte[]{-44, -11, 52, 8, 71, -122, 121, 52}), Boolean.FALSE);
            this.f10316y = (String) c0023hM15p.f83e;
            Log.d(this.f10281a, AbstractC1387m.m2421h(new byte[]{-39, 53, -5, -11, 27, -51, -71, -53, -2, 56, -32, -3, 5, -43, -4, -42, -11, 96, -81, -13, 29, -36, -6, -55, -7, 53, -24, -80, 6, -36, -12, -61, -2, 47, -26, -13, 85, -38, -8, -52, -12, 50, -21, -15, 1, -36, -22, -126, -14, 62, -23, -1, 7, -36, -71, -63, -4, 58, -3, -7, 19, -48, -6, -61, -28, 50, -32, -2, 79, -103}, new byte[]{-112, 91, -113, -112, 117, -71, -103, -94}).concat((String) c0023hM15p.f83e));
            return false;
        }
        if (((EnumC3503z0) c0023hM15p.f81c) != EnumC3503z0.f10330b) {
            String str3 = this.f10281a;
            StringBuilder sb = new StringBuilder();
            AbstractC1178q.m2087u(new byte[]{106, 87, -99, 109, -115, 70, 37, 41, 70, 83, -116, 107, -105, 87, 97, 123, 82, 76, -116, 122, -102, 15, 34}, new byte[]{35, 57, -23, 8, -29, 50, 5, 91}, sb, str);
            sb.append(AbstractC1387m.m2421h(new byte[]{-122, -35, -28, 95, -90, 98, 88, -102, -49, -52}, new byte[]{-95, -15, -60, 45, -61, 3, 43, -11}));
            sb.append((String) c0023hM15p.f83e);
            Log.i(str3, sb.toString());
            m5544i(str, (String) c0023hM15p.f83e);
            return true;
        }
        m5540c0(AbstractC1387m.m2421h(new byte[]{56, -63, 65, 14, 55, 100}, new byte[]{81, -81, 53, 107, 89, 16, 99, -27}), (String) c0023hM15p.f82d, "", (String) c0023hM15p.f83e);
        C1919e c1919e2 = (C1919e) linkedHashMap.get((String) c0023hM15p.f82d);
        String str4 = this.f10281a;
        StringBuilder sb2 = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{1, -117, 37, -1, -2, 116, -79, 110, Base64.padSymbol, ByteCompanionObject.MIN_VALUE, 35, -29, -83, 39}, new byte[]{72, -27, 81, -102, -112, 0, -111, 31}, sb2, str);
        sb2.append(AbstractC1387m.m2421h(new byte[]{-84, 122, -110, 8, 8, 110, -41, -69, -18, 50, -113}, new byte[]{-117, 86, -78, 101, 105, 26, -76, -45}));
        sb2.append((String) c0023hM15p.f82d);
        sb2.append(AbstractC1387m.m2421h(new byte[]{-26, -10, 40, 60, 87, 38, -9, -78}, new byte[]{-54, -42, 91, 80, 56, 82, -124, -113}));
        sb2.append((String) c0023hM15p.f83e);
        Log.i(str4, sb2.toString());
        if (c1919e2 != null) {
            m5554v(c1919e2, -1);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x008b  */
    /* JADX WARN: Code duplicated, block: B:59:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d4 A[Catch: all -> 0x0088, TryCatch #0 {all -> 0x0088, blocks: (B:33:0x006e, B:35:0x0073, B:38:0x0079, B:40:0x007f, B:49:0x0090, B:51:0x00a7, B:53:0x00b5, B:54:0x00bd, B:56:0x00c3, B:64:0x00d4, B:65:0x00d8, B:67:0x00dc, B:68:0x00e1, B:70:0x00f5, B:72:0x0101, B:80:0x011c, B:83:0x0152, B:84:0x01fb, B:86:0x01fd, B:87:0x0242, B:76:0x0110, B:96:0x02a9, B:98:0x02ad, B:99:0x02bb, B:101:0x02bd), top: B:106:0x006e }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00dc A[Catch: all -> 0x0088, TryCatch #0 {all -> 0x0088, blocks: (B:33:0x006e, B:35:0x0073, B:38:0x0079, B:40:0x007f, B:49:0x0090, B:51:0x00a7, B:53:0x00b5, B:54:0x00bd, B:56:0x00c3, B:64:0x00d4, B:65:0x00d8, B:67:0x00dc, B:68:0x00e1, B:70:0x00f5, B:72:0x0101, B:80:0x011c, B:83:0x0152, B:84:0x01fb, B:86:0x01fd, B:87:0x0242, B:76:0x0110, B:96:0x02a9, B:98:0x02ad, B:99:0x02bb, B:101:0x02bd), top: B:106:0x006e }] */
    /* JADX WARN: Code duplicated, block: B:70:0x00f5 A[Catch: all -> 0x0088, TryCatch #0 {all -> 0x0088, blocks: (B:33:0x006e, B:35:0x0073, B:38:0x0079, B:40:0x007f, B:49:0x0090, B:51:0x00a7, B:53:0x00b5, B:54:0x00bd, B:56:0x00c3, B:64:0x00d4, B:65:0x00d8, B:67:0x00dc, B:68:0x00e1, B:70:0x00f5, B:72:0x0101, B:80:0x011c, B:83:0x0152, B:84:0x01fb, B:86:0x01fd, B:87:0x0242, B:76:0x0110, B:96:0x02a9, B:98:0x02ad, B:99:0x02bb, B:101:0x02bd), top: B:106:0x006e }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0110 A[Catch: all -> 0x0088, TryCatch #0 {all -> 0x0088, blocks: (B:33:0x006e, B:35:0x0073, B:38:0x0079, B:40:0x007f, B:49:0x0090, B:51:0x00a7, B:53:0x00b5, B:54:0x00bd, B:56:0x00c3, B:64:0x00d4, B:65:0x00d8, B:67:0x00dc, B:68:0x00e1, B:70:0x00f5, B:72:0x0101, B:80:0x011c, B:83:0x0152, B:84:0x01fb, B:86:0x01fd, B:87:0x0242, B:76:0x0110, B:96:0x02a9, B:98:0x02ad, B:99:0x02bb, B:101:0x02bd), top: B:106:0x006e }] */
    /* JADX WARN: Code duplicated, block: B:80:0x011c A[Catch: all -> 0x0088, TryCatch #0 {all -> 0x0088, blocks: (B:33:0x006e, B:35:0x0073, B:38:0x0079, B:40:0x007f, B:49:0x0090, B:51:0x00a7, B:53:0x00b5, B:54:0x00bd, B:56:0x00c3, B:64:0x00d4, B:65:0x00d8, B:67:0x00dc, B:68:0x00e1, B:70:0x00f5, B:72:0x0101, B:80:0x011c, B:83:0x0152, B:84:0x01fb, B:86:0x01fd, B:87:0x0242, B:76:0x0110, B:96:0x02a9, B:98:0x02ad, B:99:0x02bb, B:101:0x02bd), top: B:106:0x006e }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0150  */
    /* JADX WARN: Code duplicated, block: B:86:0x01fd A[Catch: all -> 0x0088, TryCatch #0 {all -> 0x0088, blocks: (B:33:0x006e, B:35:0x0073, B:38:0x0079, B:40:0x007f, B:49:0x0090, B:51:0x00a7, B:53:0x00b5, B:54:0x00bd, B:56:0x00c3, B:64:0x00d4, B:65:0x00d8, B:67:0x00dc, B:68:0x00e1, B:70:0x00f5, B:72:0x0101, B:80:0x011c, B:83:0x0152, B:84:0x01fb, B:86:0x01fd, B:87:0x0242, B:76:0x0110, B:96:0x02a9, B:98:0x02ad, B:99:0x02bb, B:101:0x02bd), top: B:106:0x006e }] */
    /* JADX WARN: Code duplicated, block: B:90:0x028c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0290  */
    /* JADX WARN: Code duplicated, block: B:93:0x0294  */
    /* JADX WARN: Code duplicated, block: B:98:0x02ad A[Catch: all -> 0x0088, TryCatch #0 {all -> 0x0088, blocks: (B:33:0x006e, B:35:0x0073, B:38:0x0079, B:40:0x007f, B:49:0x0090, B:51:0x00a7, B:53:0x00b5, B:54:0x00bd, B:56:0x00c3, B:64:0x00d4, B:65:0x00d8, B:67:0x00dc, B:68:0x00e1, B:70:0x00f5, B:72:0x0101, B:80:0x011c, B:83:0x0152, B:84:0x01fb, B:86:0x01fd, B:87:0x0242, B:76:0x0110, B:96:0x02a9, B:98:0x02ad, B:99:0x02bb, B:101:0x02bd), top: B:106:0x006e }] */
    /* JADX INFO: renamed from: F */
    public final boolean m5524F(String str) {
        String strSubstring;
        char cCharAt;
        long jM5423i;
        int i10;
        boolean z9;
        boolean z10;
        boolean z11;
        EnumC0948a enumC0948aM1095c;
        int i11;
        String string;
        if (str != null) {
            Matcher matcher = AbstractC3442a1.f9926a.matcher(str);
            if (matcher.find()) {
                int iEnd = matcher.end();
                while (iEnd < str.length() && ((cCharAt = str.charAt(iEnd)) == ',' || cCharAt == ':' || Character.isWhitespace(cCharAt) || Character.isSpaceChar(cCharAt))) {
                    iEnd++;
                }
                strSubstring = str.substring(iEnd);
                if (AbstractC3442a1.f9927b.matcher(strSubstring).matches() || AbstractC3442a1.f9928c.matcher(strSubstring).matches()) {
                    strSubstring = "";
                }
            }
            if (strSubstring != null && !this.f10257C) {
                return false;
            }
            jM5423i = m5551r().m5423i();
            synchronized (this.f10269O) {
                try {
                    i10 = 1;
                    if (this.f10274T && !this.f10306o) {
                        if (m5519A(str, true) == null || m5505G(str)) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        if (strSubstring == null || z9) {
                            z10 = false;
                        } else {
                            ArrayList arrayList = new ArrayList();
                            C1652b.m2734a();
                            ArrayList arrayListM2990e = C1652b.m2737f().m2990e();
                            int size = arrayListM2990e.size();
                            int i12 = 0;
                            while (i12 < size) {
                                Object obj = arrayListM2990e.get(i12);
                                i12++;
                                C1919e c1919e = (C1919e) obj;
                                if (AbstractC1920f.m3006d(c1919e)) {
                                    arrayList.add(AbstractC1920f.m3009g(c1919e));
                                }
                            }
                            if (C3479n0.m5458i(str) || m5547m(str, arrayList)) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                        }
                        if (!z9 && !z10) {
                            if (strSubstring == null) {
                                strSubstring = str.trim();
                            }
                            if (this.f10256B != null) {
                                this.f10256B.m5444i0();
                            }
                            this.f10292f0++;
                            this.f10277W++;
                            this.f10278X = "";
                            this.f10280Z = "";
                            if (strSubstring != null) {
                                if (AbstractC3442a1.f9927b.matcher(strSubstring).matches() && !AbstractC3442a1.f9928c.matcher(strSubstring).matches()) {
                                    z11 = false;
                                }
                                if (z11) {
                                    this.f10257C = true;
                                    m5552s().m5558b(System.currentTimeMillis(), "", AbstractC1387m.m2421h(new byte[]{36, 97, -38, 99, 102, 99, -40, -72, 37, 110, -13, 107, 101, 102, -34, -76, 57, 115}, new byte[]{74, 0, -84, 10, 1, 2, -84, -47}));
                                    this.f10275U = m5552s().m5561e();
                                    string = this.f10304m.getString(R.string.voice_navigation_ask_address);
                                    if (string == null) {
                                        string = "";
                                    }
                                    this.f10315x = string;
                                    m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-72, 5, 23, -63, 45, 94, 111, -102, -70, 29, 31, -36, 42}, new byte[]{-37, 105, 118, -77, 68, 56, 6, -7}), AbstractC1387m.m2421h(new byte[]{74, 100, -47, -90, -21}, new byte[]{56, 11, -92, -46, -114, -56, 52, -111}), AbstractC1387m.m2421h(new byte[]{-1, 102, -75, Base64.padSymbol, 102, -100, -25, -2, -2, 105}, new byte[]{-111, 7, -61, 84, 1, -3, -109, -105}), AbstractC1387m.m2421h(new byte[]{99, -100, 20}, new byte[]{17, -3, 99, 67, 36, 89, -101, 36}), str, AbstractC1387m.m2421h(new byte[]{-125, 40, 114, -51, 10, 120}, new byte[]{-15, 77, 19, -66, 101, 22, 94, -102}), AbstractC1387m.m2421h(new byte[]{47, 102, 103, ByteCompanionObject.MAX_VALUE, 98, 56, -106, -97, 46, 105, 78, 119, 97, Base64.padSymbol, -112, -109, 50, 116}, new byte[]{65, 7, 17, 22, 5, 89, -30, -10}), AbstractC1387m.m2421h(new byte[]{-64, 75, -96, -37, 40, 78}, new byte[]{-80, 57, -49, -74, 88, 58, -55, 17}), this.f10315x, AbstractC1387m.m2421h(new byte[]{91, -47, 71, 25, 74, -72, 37, 102, 84, -37, 91, 25, 98, -71}, new byte[]{58, -65, 52, 110, 47, -54, 114, 15}), Long.valueOf(Math.max(0L, this.f10275U - System.currentTimeMillis())));
                                    m5526N(this.f10315x);
                                    return true;
                                }
                                this.f10257C = false;
                                m5540c0(AbstractC1387m.m2421h(new byte[]{56, -89, 123, -127, 35, -44, 80, 32, 57, -88}, new byte[]{86, -58, 13, -24, 68, -75, 36, 73}), AbstractC1387m.m2421h(new byte[]{88, 91, -87, 52, -86, -36, -5, 73, 69, 94, -75, 53, -68, -41, -5, 91, 68, 91, -75, 51, -89}, new byte[]{33, 58, -57, 80, -49, -92, -92, 40}), strSubstring, AbstractC1387m.m2421h(new byte[]{106, 70, -96, -111, -44, -69, 32, -59, 80, 95, -76, -103, -49, -67, 58, -62}, new byte[]{15, 62, -48, -3, -67, -40, 73, -79}));
                                m5521C(AbstractC1387m.m2421h(new byte[]{2, -122, 55, 55, 6, 10, 57, -27, 3, -119}, new byte[]{108, -25, 65, 94, 97, 107, 77, -116}));
                                enumC0948aM1095c = AbstractC0950c.m1095c(this.f10304m, strSubstring);
                                m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-19, 2, 96, -28, 118, 57, -97, 72, -20, 13, 73, -1, 116, 43, -98, 77, -9}, new byte[]{-125, 99, 22, -115, 17, 88, -21, 33}), AbstractC1387m.m2421h(new byte[]{124, -69, 97, -99, 53, -20, 114, 6, 124, -89, 125, ByteCompanionObject.MIN_VALUE, 56}, new byte[]{15, -44, 20, -17, 86, -119, 33, 99}), Long.valueOf(jM5423i), AbstractC1387m.m2421h(new byte[]{-82, -118, 30, 125, 17, 74}, new byte[]{-36, -17, 109, 8, 125, 62, -102, -13}), enumC0948aM1095c.name());
                                if (enumC0948aM1095c != EnumC0948a.f813b) {
                                    if (enumC0948aM1095c == EnumC0948a.f814c) {
                                        i11 = R.string.voice_navigation_unavailable;
                                    } else {
                                        i11 = R.string.voice_navigation_failed;
                                    }
                                    new Handler(Looper.getMainLooper()).post(new RunnableC3484q(this, i11, i10));
                                }
                                return true;
                            }
                            Pattern pattern = AbstractC3442a1.f9926a;
                            z11 = true;
                            if (z11) {
                                this.f10257C = true;
                                m5552s().m5558b(System.currentTimeMillis(), "", AbstractC1387m.m2421h(new byte[]{36, 97, -38, 99, 102, 99, -40, -72, 37, 110, -13, 107, 101, 102, -34, -76, 57, 115}, new byte[]{74, 0, -84, 10, 1, 2, -84, -47}));
                                this.f10275U = m5552s().m5561e();
                                string = this.f10304m.getString(R.string.voice_navigation_ask_address);
                                if (string == null) {
                                    string = "";
                                }
                                this.f10315x = string;
                                m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-72, 5, 23, -63, 45, 94, 111, -102, -70, 29, 31, -36, 42}, new byte[]{-37, 105, 118, -77, 68, 56, 6, -7}), AbstractC1387m.m2421h(new byte[]{74, 100, -47, -90, -21}, new byte[]{56, 11, -92, -46, -114, -56, 52, -111}), AbstractC1387m.m2421h(new byte[]{-1, 102, -75, Base64.padSymbol, 102, -100, -25, -2, -2, 105}, new byte[]{-111, 7, -61, 84, 1, -3, -109, -105}), AbstractC1387m.m2421h(new byte[]{99, -100, 20}, new byte[]{17, -3, 99, 67, 36, 89, -101, 36}), str, AbstractC1387m.m2421h(new byte[]{-125, 40, 114, -51, 10, 120}, new byte[]{-15, 77, 19, -66, 101, 22, 94, -102}), AbstractC1387m.m2421h(new byte[]{47, 102, 103, ByteCompanionObject.MAX_VALUE, 98, 56, -106, -97, 46, 105, 78, 119, 97, Base64.padSymbol, -112, -109, 50, 116}, new byte[]{65, 7, 17, 22, 5, 89, -30, -10}), AbstractC1387m.m2421h(new byte[]{-64, 75, -96, -37, 40, 78}, new byte[]{-80, 57, -49, -74, 88, 58, -55, 17}), this.f10315x, AbstractC1387m.m2421h(new byte[]{91, -47, 71, 25, 74, -72, 37, 102, 84, -37, 91, 25, 98, -71}, new byte[]{58, -65, 52, 110, 47, -54, 114, 15}), Long.valueOf(Math.max(0L, this.f10275U - System.currentTimeMillis())));
                                m5526N(this.f10315x);
                                return true;
                            }
                            this.f10257C = false;
                            m5540c0(AbstractC1387m.m2421h(new byte[]{56, -89, 123, -127, 35, -44, 80, 32, 57, -88}, new byte[]{86, -58, 13, -24, 68, -75, 36, 73}), AbstractC1387m.m2421h(new byte[]{88, 91, -87, 52, -86, -36, -5, 73, 69, 94, -75, 53, -68, -41, -5, 91, 68, 91, -75, 51, -89}, new byte[]{33, 58, -57, 80, -49, -92, -92, 40}), strSubstring, AbstractC1387m.m2421h(new byte[]{106, 70, -96, -111, -44, -69, 32, -59, 80, 95, -76, -103, -49, -67, 58, -62}, new byte[]{15, 62, -48, -3, -67, -40, 73, -79}));
                            m5521C(AbstractC1387m.m2421h(new byte[]{2, -122, 55, 55, 6, 10, 57, -27, 3, -119}, new byte[]{108, -25, 65, 94, 97, 107, 77, -116}));
                            enumC0948aM1095c = AbstractC0950c.m1095c(this.f10304m, strSubstring);
                            m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-19, 2, 96, -28, 118, 57, -97, 72, -20, 13, 73, -1, 116, 43, -98, 77, -9}, new byte[]{-125, 99, 22, -115, 17, 88, -21, 33}), AbstractC1387m.m2421h(new byte[]{124, -69, 97, -99, 53, -20, 114, 6, 124, -89, 125, ByteCompanionObject.MIN_VALUE, 56}, new byte[]{15, -44, 20, -17, 86, -119, 33, 99}), Long.valueOf(jM5423i), AbstractC1387m.m2421h(new byte[]{-82, -118, 30, 125, 17, 74}, new byte[]{-36, -17, 109, 8, 125, 62, -102, -13}), enumC0948aM1095c.name());
                            if (enumC0948aM1095c != EnumC0948a.f813b) {
                                if (enumC0948aM1095c == EnumC0948a.f814c) {
                                    i11 = R.string.voice_navigation_unavailable;
                                } else {
                                    i11 = R.string.voice_navigation_failed;
                                }
                                new Handler(Looper.getMainLooper()).post(new RunnableC3484q(this, i11, i10));
                            }
                            return true;
                        }
                        if (this.f10257C) {
                            this.f10257C = false;
                            m5552s().m5557a(str, true);
                            this.f10315x = "";
                        }
                        return false;
                    }
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Pattern pattern2 = AbstractC3442a1.f9926a;
        strSubstring = null;
        if (strSubstring != null) {
        }
        jM5423i = m5551r().m5423i();
        synchronized (this.f10269O) {
            i10 = 1;
            if (this.f10274T) {
                if (m5519A(str, true) == null) {
                    z9 = true;
                } else {
                    z9 = true;
                }
                if (strSubstring == null) {
                    z10 = false;
                } else {
                    z10 = false;
                }
                if (!z9) {
                    if (strSubstring == null) {
                        strSubstring = str.trim();
                    }
                    if (this.f10256B != null) {
                        this.f10256B.m5444i0();
                    }
                    this.f10292f0++;
                    this.f10277W++;
                    this.f10278X = "";
                    this.f10280Z = "";
                    if (strSubstring != null) {
                        if (AbstractC3442a1.f9927b.matcher(strSubstring).matches()) {
                        }
                        if (z11) {
                            this.f10257C = true;
                            m5552s().m5558b(System.currentTimeMillis(), "", AbstractC1387m.m2421h(new byte[]{36, 97, -38, 99, 102, 99, -40, -72, 37, 110, -13, 107, 101, 102, -34, -76, 57, 115}, new byte[]{74, 0, -84, 10, 1, 2, -84, -47}));
                            this.f10275U = m5552s().m5561e();
                            string = this.f10304m.getString(R.string.voice_navigation_ask_address);
                            if (string == null) {
                                string = "";
                            }
                            this.f10315x = string;
                            m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-72, 5, 23, -63, 45, 94, 111, -102, -70, 29, 31, -36, 42}, new byte[]{-37, 105, 118, -77, 68, 56, 6, -7}), AbstractC1387m.m2421h(new byte[]{74, 100, -47, -90, -21}, new byte[]{56, 11, -92, -46, -114, -56, 52, -111}), AbstractC1387m.m2421h(new byte[]{-1, 102, -75, Base64.padSymbol, 102, -100, -25, -2, -2, 105}, new byte[]{-111, 7, -61, 84, 1, -3, -109, -105}), AbstractC1387m.m2421h(new byte[]{99, -100, 20}, new byte[]{17, -3, 99, 67, 36, 89, -101, 36}), str, AbstractC1387m.m2421h(new byte[]{-125, 40, 114, -51, 10, 120}, new byte[]{-15, 77, 19, -66, 101, 22, 94, -102}), AbstractC1387m.m2421h(new byte[]{47, 102, 103, ByteCompanionObject.MAX_VALUE, 98, 56, -106, -97, 46, 105, 78, 119, 97, Base64.padSymbol, -112, -109, 50, 116}, new byte[]{65, 7, 17, 22, 5, 89, -30, -10}), AbstractC1387m.m2421h(new byte[]{-64, 75, -96, -37, 40, 78}, new byte[]{-80, 57, -49, -74, 88, 58, -55, 17}), this.f10315x, AbstractC1387m.m2421h(new byte[]{91, -47, 71, 25, 74, -72, 37, 102, 84, -37, 91, 25, 98, -71}, new byte[]{58, -65, 52, 110, 47, -54, 114, 15}), Long.valueOf(Math.max(0L, this.f10275U - System.currentTimeMillis())));
                            m5526N(this.f10315x);
                            return true;
                        }
                        this.f10257C = false;
                        m5540c0(AbstractC1387m.m2421h(new byte[]{56, -89, 123, -127, 35, -44, 80, 32, 57, -88}, new byte[]{86, -58, 13, -24, 68, -75, 36, 73}), AbstractC1387m.m2421h(new byte[]{88, 91, -87, 52, -86, -36, -5, 73, 69, 94, -75, 53, -68, -41, -5, 91, 68, 91, -75, 51, -89}, new byte[]{33, 58, -57, 80, -49, -92, -92, 40}), strSubstring, AbstractC1387m.m2421h(new byte[]{106, 70, -96, -111, -44, -69, 32, -59, 80, 95, -76, -103, -49, -67, 58, -62}, new byte[]{15, 62, -48, -3, -67, -40, 73, -79}));
                        m5521C(AbstractC1387m.m2421h(new byte[]{2, -122, 55, 55, 6, 10, 57, -27, 3, -119}, new byte[]{108, -25, 65, 94, 97, 107, 77, -116}));
                        enumC0948aM1095c = AbstractC0950c.m1095c(this.f10304m, strSubstring);
                        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-19, 2, 96, -28, 118, 57, -97, 72, -20, 13, 73, -1, 116, 43, -98, 77, -9}, new byte[]{-125, 99, 22, -115, 17, 88, -21, 33}), AbstractC1387m.m2421h(new byte[]{124, -69, 97, -99, 53, -20, 114, 6, 124, -89, 125, ByteCompanionObject.MIN_VALUE, 56}, new byte[]{15, -44, 20, -17, 86, -119, 33, 99}), Long.valueOf(jM5423i), AbstractC1387m.m2421h(new byte[]{-82, -118, 30, 125, 17, 74}, new byte[]{-36, -17, 109, 8, 125, 62, -102, -13}), enumC0948aM1095c.name());
                        if (enumC0948aM1095c != EnumC0948a.f813b) {
                            if (enumC0948aM1095c == EnumC0948a.f814c) {
                                i11 = R.string.voice_navigation_unavailable;
                            } else {
                                i11 = R.string.voice_navigation_failed;
                            }
                            new Handler(Looper.getMainLooper()).post(new RunnableC3484q(this, i11, i10));
                        }
                        return true;
                    }
                    Pattern pattern3 = AbstractC3442a1.f9926a;
                    z11 = true;
                    if (z11) {
                        this.f10257C = true;
                        m5552s().m5558b(System.currentTimeMillis(), "", AbstractC1387m.m2421h(new byte[]{36, 97, -38, 99, 102, 99, -40, -72, 37, 110, -13, 107, 101, 102, -34, -76, 57, 115}, new byte[]{74, 0, -84, 10, 1, 2, -84, -47}));
                        this.f10275U = m5552s().m5561e();
                        string = this.f10304m.getString(R.string.voice_navigation_ask_address);
                        if (string == null) {
                            string = "";
                        }
                        this.f10315x = string;
                        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-72, 5, 23, -63, 45, 94, 111, -102, -70, 29, 31, -36, 42}, new byte[]{-37, 105, 118, -77, 68, 56, 6, -7}), AbstractC1387m.m2421h(new byte[]{74, 100, -47, -90, -21}, new byte[]{56, 11, -92, -46, -114, -56, 52, -111}), AbstractC1387m.m2421h(new byte[]{-1, 102, -75, Base64.padSymbol, 102, -100, -25, -2, -2, 105}, new byte[]{-111, 7, -61, 84, 1, -3, -109, -105}), AbstractC1387m.m2421h(new byte[]{99, -100, 20}, new byte[]{17, -3, 99, 67, 36, 89, -101, 36}), str, AbstractC1387m.m2421h(new byte[]{-125, 40, 114, -51, 10, 120}, new byte[]{-15, 77, 19, -66, 101, 22, 94, -102}), AbstractC1387m.m2421h(new byte[]{47, 102, 103, ByteCompanionObject.MAX_VALUE, 98, 56, -106, -97, 46, 105, 78, 119, 97, Base64.padSymbol, -112, -109, 50, 116}, new byte[]{65, 7, 17, 22, 5, 89, -30, -10}), AbstractC1387m.m2421h(new byte[]{-64, 75, -96, -37, 40, 78}, new byte[]{-80, 57, -49, -74, 88, 58, -55, 17}), this.f10315x, AbstractC1387m.m2421h(new byte[]{91, -47, 71, 25, 74, -72, 37, 102, 84, -37, 91, 25, 98, -71}, new byte[]{58, -65, 52, 110, 47, -54, 114, 15}), Long.valueOf(Math.max(0L, this.f10275U - System.currentTimeMillis())));
                        m5526N(this.f10315x);
                        return true;
                    }
                    this.f10257C = false;
                    m5540c0(AbstractC1387m.m2421h(new byte[]{56, -89, 123, -127, 35, -44, 80, 32, 57, -88}, new byte[]{86, -58, 13, -24, 68, -75, 36, 73}), AbstractC1387m.m2421h(new byte[]{88, 91, -87, 52, -86, -36, -5, 73, 69, 94, -75, 53, -68, -41, -5, 91, 68, 91, -75, 51, -89}, new byte[]{33, 58, -57, 80, -49, -92, -92, 40}), strSubstring, AbstractC1387m.m2421h(new byte[]{106, 70, -96, -111, -44, -69, 32, -59, 80, 95, -76, -103, -49, -67, 58, -62}, new byte[]{15, 62, -48, -3, -67, -40, 73, -79}));
                    m5521C(AbstractC1387m.m2421h(new byte[]{2, -122, 55, 55, 6, 10, 57, -27, 3, -119}, new byte[]{108, -25, 65, 94, 97, 107, 77, -116}));
                    enumC0948aM1095c = AbstractC0950c.m1095c(this.f10304m, strSubstring);
                    m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-19, 2, 96, -28, 118, 57, -97, 72, -20, 13, 73, -1, 116, 43, -98, 77, -9}, new byte[]{-125, 99, 22, -115, 17, 88, -21, 33}), AbstractC1387m.m2421h(new byte[]{124, -69, 97, -99, 53, -20, 114, 6, 124, -89, 125, ByteCompanionObject.MIN_VALUE, 56}, new byte[]{15, -44, 20, -17, 86, -119, 33, 99}), Long.valueOf(jM5423i), AbstractC1387m.m2421h(new byte[]{-82, -118, 30, 125, 17, 74}, new byte[]{-36, -17, 109, 8, 125, 62, -102, -13}), enumC0948aM1095c.name());
                    if (enumC0948aM1095c != EnumC0948a.f813b) {
                        if (enumC0948aM1095c == EnumC0948a.f814c) {
                            i11 = R.string.voice_navigation_unavailable;
                        } else {
                            i11 = R.string.voice_navigation_failed;
                        }
                        new Handler(Looper.getMainLooper()).post(new RunnableC3484q(this, i11, i10));
                    }
                    return true;
                }
                if (this.f10257C) {
                    this.f10257C = false;
                    m5552s().m5557a(str, true);
                    this.f10315x = "";
                }
                return false;
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: M */
    public final void m5525M() {
        String str = this.f10300j0;
        if (str == null || str.trim().isEmpty() || System.currentTimeMillis() < 0) {
            return;
        }
        String str2 = this.f10300j0;
        this.f10300j0 = "";
        m5526N(str2);
    }

    /* JADX INFO: renamed from: N */
    public final synchronized void m5526N(String str) {
        if (m5513g().booleanValue()) {
            ArrayList arrayList = AbstractC3441a0.f9925e;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                ((InterfaceC3444b0) obj).mo1517i(str);
            }
        }
    }

    /* JADX INFO: renamed from: O */
    public final void m5527O(EnumC3443b enumC3443b) {
        if (m5513g().booleanValue()) {
            f10252l0 = enumC3443b;
            AbstractC3446c.f9939a = enumC3443b;
            ArrayList arrayList = AbstractC3441a0.f9925e;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                ((InterfaceC3444b0) obj).mo1518m(enumC3443b);
            }
        }
    }

    /* JADX INFO: renamed from: Q */
    public final void m5528Q(ArrayList arrayList) throws IOException {
        int i10;
        String str = AbstractC3440a.f9917a;
        File fileM5363d = AbstractC3440a.m5363d(new File(this.f10304m.getFilesDir(), AbstractC3440a.f9918b));
        if (fileM5363d == null) {
            C2467b.m3820A(AbstractC1387m.m2421h(new byte[]{11, 94, -32, 5, 20, 0, 111, 90, 120, 86, -30, 0, 31, 24, 38, 80, 43, 27, -29, 11, 14, 84, 111, 87, 43, 79, -20, 8, 22, 17, 98}, new byte[]{88, 59, -115, 100, 122, 116, 6, 57}));
            return;
        }
        File file = new File(fileM5363d, AbstractC1387m.m2421h(new byte[]{49, 52, 88, -64, 54, 30, 41, 74, 55, 117, 89, -42, 55, 25}, new byte[]{69, 91, 51, -91, 88, 119, 83, 47}));
        File file2 = new File(fileM5363d, AbstractC1387m.m2421h(new byte[]{-91, -123, -78, -112, 3, -100, -49, -87, -81, -123, -65, -120, 71, -107, -109, -22, -69, -99, -65, -120, 6, -35, -49, -87, -68, -56, -16, -117, 4, -98, -34}, new byte[]{-56, -16, -34, -28, 106, -16, -90, -57}));
        File file3 = new File(fileM5363d, AbstractC1387m.m2421h(new byte[]{-80, 25, 118, 70, 24, -83, 53, -103, -18, 31, 122, 73, 18, -80, 56, -101, -73, 25, 104, 10, 67, -9, 63, -101, -96, 20, 126}, new byte[]{-61, 124, 27, 39, 118, -39, 92, -6}));
        if (this.f10310s == null) {
            HashMap map = new HashMap(300000);
            JsonReader jsonReader = new JsonReader(new InputStreamReader(new FileInputStream(file), AbstractC1387m.m2421h(new byte[]{-74, -14, -15, -104, 13}, new byte[]{-29, -90, -73, -75, 53, -39, 66, -115})));
            try {
                jsonReader.beginObject();
                int iMax = 1;
                while (jsonReader.hasNext()) {
                    if (AbstractC1387m.m2421h(new byte[]{-115, -11, 7, -121, -23}, new byte[]{-32, -102, 99, -30, -123, -70, 85, 13}).equals(jsonReader.nextName())) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            if (AbstractC1387m.m2421h(new byte[]{-78, 17, -97, -53, 123}, new byte[]{-60, 126, -4, -86, 25, -99, -89, -67}).equals(jsonReader.nextName())) {
                                jsonReader.beginArray();
                                int i11 = 0;
                                while (jsonReader.hasNext()) {
                                    jsonReader.beginArray();
                                    String strNextString = jsonReader.nextString();
                                    float fNextDouble = (float) jsonReader.nextDouble();
                                    while (jsonReader.hasNext()) {
                                        jsonReader.skipValue();
                                    }
                                    jsonReader.endArray();
                                    map.put(strNextString, new C3496w(i11, fNextDouble));
                                    iMax = Math.max(iMax, strNextString.length());
                                    i11++;
                                }
                                jsonReader.endArray();
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                jsonReader.close();
                this.f10310s = new C3476m(map, iMax, 1);
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (this.f10311t == null) {
            this.f10311t = OrtEnvironment.getEnvironment();
        }
        if (this.f10312u == null) {
            OrtSession.SessionOptions sessionOptions = new OrtSession.SessionOptions();
            sessionOptions.setIntraOpNumThreads(1);
            sessionOptions.setInterOpNumThreads(1);
            sessionOptions.setCPUArenaAllocator(false);
            sessionOptions.setMemoryPatternOptimization(false);
            this.f10312u = this.f10311t.createSession(file2.getAbsolutePath(), sessionOptions);
        }
        boolean zIsFile = file3.isFile();
        String str2 = this.f10281a;
        if (zIsFile) {
            try {
                DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(file3)));
                try {
                    if (dataInputStream.readInt() == 1245926449 && dataInputStream.readInt() == arrayList.size()) {
                        int size = arrayList.size();
                        int i12 = 0;
                        while (true) {
                            if (i12 >= size) {
                                dataInputStream.close();
                                Log.i(str2, AbstractC1387m.m2421h(new byte[]{-101, 115, -31, -32, -2, 100, -80, 104, -24, 117, -19, -17, -12, 121, -67, 106, -68, 115, -1, -95, -4, ByteCompanionObject.MAX_VALUE, -72, 111, -83, 114, -84, -25, -30, ByteCompanionObject.MAX_VALUE, -76, 43, -85, 119, -17, -23, -11, 42, -7}, new byte[]{-56, 22, -116, -127, -112, 16, -39, 11}) + arrayList.size());
                                return;
                            }
                            Object obj = arrayList.get(i12);
                            i12++;
                            C3492u c3492u = (C3492u) obj;
                            String utf = dataInputStream.readUTF();
                            String utf2 = dataInputStream.readUTF();
                            if (!c3492u.f10214a.equals(utf) || !AbstractC1920f.m3009g(c3492u.f10215b).equals(utf2) || (i10 = dataInputStream.readInt()) < 0 || i10 > 64) {
                                break;
                                break;
                                break;
                                break;
                            }
                            c3492u.f10219f = new int[i10];
                            for (int i13 = 0; i13 < i10; i13++) {
                                c3492u.f10219f[i13] = dataInputStream.readInt();
                            }
                            int i14 = dataInputStream.readInt();
                            if (i14 != 384) {
                                break;
                            }
                            c3492u.f10220g = new float[i14];
                            for (int i15 = 0; i15 < i14; i15++) {
                                c3492u.f10220g[i15] = dataInputStream.readFloat();
                            }
                            Log.w(str2, AbstractC1387m.m2421h(new byte[]{30, -53, 46, -13, 2, 69, -46, -57, 109, -51, 34, -15, 4, 84, -101, -51, 62, -114, 45, -3, 24, 17, -50, -41, 44, -52, 47, -9}, new byte[]{77, -82, 67, -110, 108, 49, -69, -92}), e);
                        }
                    }
                    dataInputStream.close();
                } catch (Throwable th3) {
                    try {
                        dataInputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (Exception e) {
                Log.w(str2, AbstractC1387m.m2421h(new byte[]{30, -53, 46, -13, 2, 69, -46, -57, 109, -51, 34, -15, 4, 84, -101, -51, 62, -114, 45, -3, 24, 17, -50, -41, 44, -52, 47, -9}, new byte[]{77, -82, 67, -110, 108, 49, -69, -92}), e);
            }
        }
        int size2 = arrayList.size();
        int i16 = 0;
        while (i16 < size2) {
            Object obj2 = arrayList.get(i16);
            i16++;
            C3492u c3492u2 = (C3492u) obj2;
            c3492u2.f10219f = this.f10310s.m5454a(AbstractC1387m.m2421h(new byte[]{79, -115, -64, -31, 43, 103, 125, 5, 31}, new byte[]{63, -20, -77, -110, 74, 0, 24, 63}) + c3492u2.f10214a);
        }
        for (int i17 = 0; i17 < arrayList.size(); i17 += 8) {
            m5534W(arrayList, i17, Math.min(8, arrayList.size() - i17));
        }
        File parentFile = file3.getParentFile();
        StringBuilder sb = new StringBuilder();
        sb.append(file3.getName());
        File file4 = new File(parentFile, AbstractC1178q.m2075i(new byte[]{-62, 26, -126, -99}, new byte[]{-20, 116, -25, -22, 57, -75, -69, -115}, sb));
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(file4)));
            try {
                dataOutputStream.writeInt(1245926449);
                dataOutputStream.writeInt(arrayList.size());
                int size3 = arrayList.size();
                int i18 = 0;
                while (i18 < size3) {
                    Object obj3 = arrayList.get(i18);
                    i18++;
                    C3492u c3492u3 = (C3492u) obj3;
                    dataOutputStream.writeUTF(c3492u3.f10214a);
                    dataOutputStream.writeUTF(AbstractC1920f.m3009g(c3492u3.f10215b));
                    dataOutputStream.writeInt(c3492u3.f10219f.length);
                    for (int i19 : c3492u3.f10219f) {
                        dataOutputStream.writeInt(i19);
                    }
                    dataOutputStream.writeInt(c3492u3.f10220g.length);
                    for (float f8 : c3492u3.f10220g) {
                        dataOutputStream.writeFloat(f8);
                    }
                }
                dataOutputStream.close();
                if (file3.exists() && !file3.delete()) {
                    file4.delete();
                } else {
                    if (file4.renameTo(file3)) {
                        return;
                    }
                    file4.delete();
                }
            } catch (Throwable th5) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th6) {
                    th5.addSuppressed(th6);
                }
                throw th5;
            }
        } catch (Exception e6) {
            Log.w(str2, AbstractC1387m.m2421h(new byte[]{-59, 93, 107, -112, -20, -56, 65, -60, -14, 18, 105, -114, -31, -100, 74, -117, -11, 87, 115, -99, -26, -100, 70, -56, -90, 81, ByteCompanionObject.MAX_VALUE, -97, -32, -115}, new byte[]{-122, 50, 30, -4, -120, -24, 47, -85}), e6);
            file4.delete();
        }
    }

    /* JADX INFO: renamed from: R */
    public final void m5529R(String str) {
        boolean zM5547m;
        String str2;
        String str3 = str;
        if (!this.f10274T || this.f10306o || str3 == null || str3.trim().isEmpty()) {
            return;
        }
        this.f10261G = System.nanoTime();
        this.f10290e0 = str3;
        this.f10262H = "";
        int i10 = 13;
        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-15, -99, -13, 96, 120, 27, -127, 48, -12, -101, -16, 108, 117}, new byte[]{-110, -14, -98, 13, 25, 117, -27, 111}), AbstractC1387m.m2421h(new byte[]{95, 66, 43}, new byte[]{45, 35, 92, 88, -49, -89, 99, 97}), str3, AbstractC1387m.m2421h(new byte[]{46, -72, 9, 39, -120, -7, 15, -126, 37, -77}, new byte[]{64, -41, 123, 74, -23, -107, 102, -8}), C3451d1.m5393b(str3), AbstractC1387m.m2421h(new byte[]{58, 114, -75, 14, -63, 39, -30, -87, 26, 107, -89, 16, -48, 60}, new byte[]{91, 5, -44, 103, -75, 78, -116, -50}), Boolean.valueOf(m5552s().m5559c()));
        if (m5506H(str3)) {
            m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-89, ByteCompanionObject.MIN_VALUE, -115, -114, -97, 14}, new byte[]{-60, -31, -29, -19, -6, 98, 60, -48}), AbstractC1387m.m2421h(new byte[]{111, -7, 85, 122}, new byte[]{27, -100, 45, 14, 31, -104, 84, 86}), str3);
            m5521C(AbstractC1387m.m2421h(new byte[]{-29, 104, -26, -44, 41, 14}, new byte[]{ByteCompanionObject.MIN_VALUE, 9, -120, -73, 76, 98, -18, -108}));
            return;
        }
        if (m5524F(str)) {
            return;
        }
        boolean z9 = true;
        boolean z10 = this.f10256B != null && this.f10256B.f10088i;
        if (z10 || C3479n0.m5458i(str3)) {
            if (m5519A(str3, true) == null && !m5505G(str3)) {
                C3474l0 c3474l0M5542e0 = m5542e0();
                synchronized (c3474l0M5542e0) {
                    try {
                        boolean zM5458i = C3479n0.m5458i(str3);
                        if (!c3474l0M5542e0.f10089j && (zM5458i || c3474l0M5542e0.f10088i)) {
                            if (zM5458i || !C3479n0.m5456d(str3)) {
                                c3474l0M5542e0.f10088i = true;
                                c3474l0M5542e0.f10083d.execute(new RunnableC0131f(c3474l0M5542e0, str3, c3474l0M5542e0.f10086g.get(), i10));
                                m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-106, 81, -70, 101, -104, -98, -53, -7, -121, 81, -94, 124, -100, -108}, new byte[]{-11, 62, -41, 8, -7, -16, -81, -90}), AbstractC1387m.m2421h(new byte[]{8, 124, -50, -61, -53}, new byte[]{122, 19, -69, -73, -82, 126, -78, -17}), AbstractC1387m.m2421h(new byte[]{60, 122, 30, 9, -87}, new byte[]{76, 18, 113, 103, -52, -26, -13, -35}), AbstractC1387m.m2421h(new byte[]{64, -29, 7}, new byte[]{50, -126, 112, -119, -108, 29, -87, 47}), str3);
                                this.f10292f0++;
                                this.f10277W++;
                                this.f10278X = "";
                                return;
                            }
                            c3474l0M5542e0.m5444i0();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z10) {
                this.f10256B.m5444i0();
            }
        }
        if (m5552s().m5559c()) {
            ArrayList arrayList = new ArrayList();
            C1652b.m2734a();
            ArrayList arrayListM2990e = C1652b.m2737f().m2990e();
            int size = arrayListM2990e.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayListM2990e.get(i11);
                i11++;
                C1919e c1919e = (C1919e) obj;
                if (AbstractC1920f.m3006d(c1919e)) {
                    arrayList.add(AbstractC1920f.m3009g(c1919e));
                }
                z9 = z9;
            }
            boolean z11 = z9;
            zM5547m = m5547m(str3, arrayList);
            C3499x0 c3499x0M5552s = m5552s();
            synchronized (c3499x0M5552s) {
                try {
                    if (c3499x0M5552s.f10321d.equals(AbstractC1387m.m2421h(new byte[]{53, -55, 80, -101, 114, -26, 10, -32, 35, -56, 86, -104, 124, -1, 0}, new byte[]{64, -89, 59, -11, 29, -111, 100, -65}))) {
                        str2 = c3499x0M5552s.f10320c + " " + str3;
                    } else {
                        str2 = "";
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (!zM5547m && !str2.isEmpty() && m5547m(str2, arrayList)) {
                str3 = str2;
                zM5547m = z11;
            }
        } else {
            zM5547m = false;
        }
        String strM5557a = m5552s().m5557a(str3, zM5547m);
        this.f10315x = "";
        this.f10292f0++;
        this.f10277W++;
        this.f10278X = "";
        this.f10280Z = "";
        this.f10290e0 = strM5557a;
        C3460g1 c3460g1M5551r = m5551r();
        String strM2421h = AbstractC1387m.m2421h(new byte[]{105, 37, -24, -34, -38, 96, -106, 46, 122, 56, -32, -61, -38, 124, -105, 21}, new byte[]{10, 74, -123, -77, -69, 14, -14, 113});
        String strM2421h2 = AbstractC1387m.m2421h(new byte[]{79, -29, 115}, new byte[]{Base64.padSymbol, -126, 4, -58, 103, -100, 91, 40});
        String strM2421h3 = AbstractC1387m.m2421h(new byte[]{-23, 7, 17, -118, 47, 59, -34, -69, -39, 11, 8, -110}, new byte[]{-115, 110, 112, -26, 64, 92, -85, -34});
        String strM2421h4 = AbstractC1387m.m2421h(new byte[]{5, 84, 74, 110, 65}, new byte[]{116, 33, 47, 28, 56, 13, -103, -41});
        Pattern pattern = AbstractC3469j1.f10033a;
        c3460g1M5551r.m5422e(strM2421h, strM2421h2, str3, strM2421h3, strM5557a, strM2421h4, C3451d1.m5392a(strM5557a), AbstractC1387m.m2421h(new byte[]{109, 23, 22, 4, Base64.padSymbol, -51, 73, -38, 97, 23, 6}, new byte[]{4, 121, 114, 97, 77, -88, 39, -66}), Boolean.valueOf(zM5547m));
        this.f10316y = AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -52, 112, -53, -125, 74, 9, 101, 43, -51, 118, -56, -115, 83, 3}, new byte[]{72, -94, 27, -91, -20, Base64.padSymbol, 103, 58});
        if (m5523E(strM5557a)) {
            return;
        }
        C1919e c1919eM5519A = m5519A(strM5557a, false);
        if (c1919eM5519A != null) {
            m5540c0(AbstractC1387m.m2421h(new byte[]{33, 41, 23, -91, 24, 114, 15, 97, 35, 38, 13, -79, 16, 112, 35}, new byte[]{76, 72, 121, -48, 121, 30, 80, 2}), AbstractC1920f.m3009g(c1919eM5519A), "", AbstractC1387m.m2421h(new byte[]{-78, 52, -70, 124, -69, -114, 111, 21, -93, 46, -79, 105}, new byte[]{-57, 71, -33, 14, -28, -20, 6, 123}));
            m5554v(c1919eM5519A, -1);
            return;
        }
        C3492u c3492uM5555x = m5555x(strM5557a);
        if (c3492uM5555x != null) {
            m5540c0(AbstractC1387m.m2421h(new byte[]{112, 57, -57, -65, 118}, new byte[]{17, 85, -82, -34, 5, 47, -113, -46}), AbstractC1920f.m3009g(c3492uM5555x.f10215b), c3492uM5555x.f10214a, AbstractC1387m.m2421h(new byte[]{-8, 93, -95, -81, -69, -101, 116, -37, -60, 66, -92, -83, -74, -115, 101}, new byte[]{-101, 50, -52, -33, -41, -2, 0, -66}));
            m5554v(c3492uM5555x.f10215b, -1);
            return;
        }
        String strM5392a = C3451d1.m5392a(strM5557a);
        C3494v c3494vM5536Y = m5536Y(strM5392a);
        Iterator it = c3494vM5536Y.f10225b.iterator();
        while (it.hasNext()) {
            if (c3494vM5536Y.m5501a((C3492u) it.next())) {
                Pattern pattern2 = AbstractC3469j1.f10033a;
                String strM5392a2 = C3451d1.m5392a(strM5392a);
                if (strM5392a2.length() < 2 || this.f10307p.isEmpty()) {
                    m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-28, -55, -36, 6, -80, -99, 0, -92, -56, -33, -38, 14, -82, -103, 12, -93}, new byte[]{-105, -84, -79, 103, -34, -23, 105, -57}), AbstractC1387m.m2421h(new byte[]{-107, -117, -61, 3, -102}, new byte[]{-28, -2, -90, 113, -29, -124, -80, -65}), strM5392a2, AbstractC1387m.m2421h(new byte[]{58, -1, -59, 23, -105, -6}, new byte[]{72, -102, -92, 100, -8, -108, 114, 29}), strM5392a2.length() < 2 ? AbstractC1387m.m2421h(new byte[]{121, 52, 106, 36, -17, -87, 75, 58, 111, 46, 124}, new byte[]{10, 92, 5, 86, -101, -10, 58, 79}) : AbstractC1387m.m2421h(new byte[]{5, -100, 99, -7, 26, -33, -101, 71, 20, -112, ByteCompanionObject.MAX_VALUE, -30, 4}, new byte[]{96, -15, 19, -115, 99, ByteCompanionObject.MIN_VALUE, -8, 38}), AbstractC1387m.m2421h(new byte[]{-28, 112, -21, -12, 87, 70, -21, -12, -13}, new byte[]{-108, 2, -114, -124, 54, 52, -126, -102}), Boolean.valueOf(this.f10308q));
                    return;
                }
                if (strM5392a2.equalsIgnoreCase(this.f10280Z)) {
                    return;
                }
                this.f10280Z = strM5392a2;
                System.currentTimeMillis();
                int i12 = this.f10277W + 1;
                this.f10277W = i12;
                this.f10278X = strM5392a2;
                this.f10279Y = i12;
                m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{38, -100, -89, -9, -109, -63, -21, 24, 10, -118, -87, -2, -104, -47, -9, 23, 48, -99}, new byte[]{85, -7, -54, -106, -3, -75, -126, 123}), AbstractC1387m.m2421h(new byte[]{-17, 124, -5, -14, 70}, new byte[]{-98, 9, -98, ByteCompanionObject.MIN_VALUE, 63, -54, 107, -75}), strM5392a2, AbstractC1387m.m2421h(new byte[]{3, -95, 13, -119, -106, 74, -62, -116, 11, -86}, new byte[]{100, -60, 99, -20, -28, 43, -74, -27}), Integer.valueOf(i12), AbstractC1387m.m2421h(new byte[]{-124, 46, -24, -21, -11, -36, 3, -101, -83, 56}, new byte[]{-32, 75, -118, -124, ByteCompanionObject.MIN_VALUE, -78, 96, -2}), 100L);
                this.f10283b.schedule(new RunnableC3486r(this, strM5392a2, i12, 0), 100L, TimeUnit.MILLISECONDS);
                return;
            }
        }
        C3494v c3494vM5536Y2 = m5536Y(strM5392a);
        if (c3494vM5536Y2.f10230g && ((String) c3494vM5536Y2.f10229f.f602d).equals(AbstractC1387m.m2421h(new byte[]{28, -106, 17, -2, -28, 60, -108, 70, 3, -125, 2, -8, -31}, new byte[]{111, -26, 116, -99, -115, 90, -19, 25}))) {
            this.f10316y = AbstractC1387m.m2421h(new byte[]{-14, -28, -82, 25, 83, 44, 62, -50, -19, -15, -67, 31, 86}, new byte[]{-127, -108, -53, 122, 58, 74, 71, -111});
        }
        Log.d(this.f10281a, AbstractC1387m.m2421h(new byte[]{49, -44, -109, 48, 48, -119, 112, 122, 66, -63, -116, 52, Base64.padSymbol, -107, 124, 122, 9, -111, -116, 52, 52, -104, 122, 109, 7, -43, -60, 113, 59, -117, 112, 125, 7, -33, -99, 52, 99}, new byte[]{98, -79, -2, 81, 94, -3, 25, 25}) + ((String) c3494vM5536Y2.f10228e.f83e) + AbstractC1387m.m2421h(new byte[]{-126, 23, 80, -31, 43, 62, 65, 39}, new byte[]{-82, 55, 35, -115, 68, 74, 50, 26}) + ((String) c3494vM5536Y2.f10229f.f602d) + AbstractC1387m.m2421h(new byte[]{32, -44, 25, -50, -10, -118, -109, 27, 120, -55}, new byte[]{12, -12, 107, -85, -121, -1, -10, 104}) + c3494vM5536Y2.f10231h);
        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-84, 37, 85, 3, -15, 97, 3, -121, ByteCompanionObject.MIN_VALUE, 48, 74, 7, -4, 125, 15, -121, -76}, new byte[]{-33, 64, 56, 98, -97, 21, 106, -28}), AbstractC1387m.m2421h(new byte[]{113, 3, -109, 63, -67}, new byte[]{0, 118, -10, 77, -60, -108, -125, -88}), strM5392a, AbstractC1387m.m2421h(new byte[]{18, -13, 23, 78, 107, -25, 100, -42}, new byte[]{115, -112, 116, 43, 27, -109, 1, -78}), Boolean.FALSE, AbstractC1387m.m2421h(new byte[]{105, -62, 101, 19, -46, ByteCompanionObject.MIN_VALUE, 28, -71}, new byte[]{12, -76, 12, 119, -73, -18, ByteCompanionObject.MAX_VALUE, -36}), (String) c3494vM5536Y2.f10228e.f83e, AbstractC1387m.m2421h(new byte[]{103, 81, 79, -36, -59}, new byte[]{20, Base64.padSymbol, 32, -88, -74, -21, 94, -83}), (String) c3494vM5536Y2.f10229f.f602d, AbstractC1387m.m2421h(new byte[]{115, 59, -43, -50, -30, -112, ByteCompanionObject.MIN_VALUE, 8, 83, 59, -57, -44, -15, -122, -122}, new byte[]{1, 94, -74, -95, -108, -11, -14, 113}), Boolean.valueOf(c3494vM5536Y2.f10231h), AbstractC1387m.m2421h(new byte[]{3, -123, -85, 59, -16, -46, 124, 90, 5, -105}, new byte[]{96, -28, -59, 95, -103, -74, 29, 46}), Integer.valueOf(this.f10307p.size()), AbstractC1387m.m2421h(new byte[]{-107, 7, 108, 78, 121, 107, 10, 104, -126}, new byte[]{-27, 117, 9, 62, 24, 25, 99, 6}), Boolean.valueOf(this.f10308q));
        m5544i(strM5557a, this.f10316y);
    }

    /* JADX INFO: renamed from: S */
    public final String m5530S(int i10, byte[] bArr) {
        synchronized (this.f10269O) {
            try {
                Recognizer recognizer = this.f10274T ? this.f10271Q : this.f10270P;
                if (recognizer == null) {
                    return null;
                }
                return recognizer.acceptWaveForm(bArr, i10) ? recognizer.getResult() : recognizer.getPartialResult();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: T */
    public final synchronized void m5531T(int i10, byte[] bArr) {
        if (bArr == null || i10 <= 0) {
            return;
        }
        int iMin = Math.min(i10, bArr.length);
        int iMax = Math.max(0, iMin - this.f10268N.length);
        int i11 = iMin - iMax;
        while (i11 > 0) {
            int iMin2 = Math.min(i11, this.f10268N.length - this.f10273S);
            System.arraycopy(bArr, iMax, this.f10268N, this.f10273S, iMin2);
            int i12 = this.f10273S + iMin2;
            byte[] bArr2 = this.f10268N;
            this.f10273S = i12 % bArr2.length;
            this.f10272R = Math.min(this.f10272R + iMin2, bArr2.length);
            iMax += iMin2;
            i11 -= iMin2;
        }
    }

    /* JADX INFO: renamed from: U */
    public final String m5532U(String str) {
        if (str == null) {
            return "";
        }
        C1652b.m2734a();
        C1652b.m2737f().getClass();
        String strM2986f = C1917c.m2986f();
        String strTrim = str.trim();
        if (strM2986f == null || strM2986f.trim().isEmpty()) {
            return strTrim;
        }
        Locale locale = Locale.ROOT;
        String lowerCase = strTrim.toLowerCase(locale);
        String lowerCase2 = strM2986f.trim().toLowerCase(locale);
        Pattern pattern = AbstractC3442a1.f9926a;
        if (pattern.matcher(strTrim).find()) {
            return strTrim;
        }
        boolean z9 = lowerCase.startsWith(lowerCase2) && (strTrim.length() == lowerCase2.length() || Character.isWhitespace(strTrim.charAt(lowerCase2.length())));
        if (this.f10257C && !z9) {
            return strTrim;
        }
        if (z9) {
            String strTrim2 = strTrim.substring(strM2986f.trim().length()).trim();
            if (this.f10257C || (strTrim2 != null && pattern.matcher(strTrim2).find())) {
                return strTrim2;
            }
        }
        if (lowerCase2.startsWith(lowerCase)) {
            return "";
        }
        int iLastIndexOf = lowerCase.lastIndexOf(lowerCase2);
        return iLastIndexOf >= 0 ? strTrim.substring(Math.min(strTrim.length(), strM2986f.trim().length() + iLastIndexOf)).trim() : strTrim;
    }

    /* JADX INFO: renamed from: V */
    public final void m5533V(String str) {
        String strTrim;
        String str2;
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean z9 = this.f10274T;
            boolean zHas = jSONObject.has(AbstractC1387m.m2421h(new byte[]{28, 103, 22, 33}, new byte[]{104, 2, 110, 85, 59, 42, 97, -38}));
            String strTrim2 = zHas ? jSONObject.optString(AbstractC1387m.m2421h(new byte[]{62, 68, -97, -39}, new byte[]{74, 33, -25, -83, -12, -13, 90, -42}), "").trim() : jSONObject.optString(AbstractC1387m.m2421h(new byte[]{118, 43, -77, 57, -79, -45, -11}, new byte[]{6, 74, -63, 77, -40, -78, -103, -83}), "").trim();
            if (z9) {
                String str3 = this.f10282a0;
                strTrim = "";
                String strTrim3 = str3 == null ? "" : str3.trim();
                if (strTrim2 != null) {
                    strTrim = strTrim2.trim();
                }
                if (!strTrim3.isEmpty() && strTrim.startsWith(strTrim3.concat(" "))) {
                    strTrim = strTrim.substring(strTrim3.length()).trim();
                }
            } else {
                strTrim = strTrim2;
            }
            if (z9) {
                String strTrim4 = "";
                if (zHas) {
                    if (strTrim2 != null && !strTrim2.trim().isEmpty()) {
                        this.f10282a0 = m5508J(this.f10282a0, strTrim2.trim());
                    }
                    this.f10284b0 = "";
                } else {
                    if (strTrim2 != null) {
                        strTrim4 = strTrim2.trim();
                    }
                    this.f10284b0 = strTrim4;
                }
                strTrim2 = m5508J(this.f10282a0, this.f10284b0);
                m5551r().m5424j(zHas ? AbstractC1387m.m2421h(new byte[]{42, 109, 4, 108, 100}, new byte[]{76, 4, 106, 13, 8, 126, 26, 64}) : AbstractC1387m.m2421h(new byte[]{-80, -107, -65, -6, -63, -71, -65}, new byte[]{-64, -12, -51, -114, -88, -40, -45, -97}), strTrim, strTrim2);
            }
            if ("".equals(strTrim2)) {
                return;
            }
            boolean z10 = true;
            if (!z9) {
                C1652b.m2734a();
                C1652b.m2737f().getClass();
                String strM2986f = C1917c.m2986f();
                if (strM2986f == null || strM2986f.trim().isEmpty() || strTrim2 == null || !strTrim2.toLowerCase().contains(strM2986f.trim().toLowerCase())) {
                    z10 = false;
                }
                if (z10 && zHas) {
                    m5545k(AbstractC1387m.m2421h(new byte[]{-9, 33, -65, 23}, new byte[]{ByteCompanionObject.MIN_VALUE, 64, -44, 114, -31, 104, 17, 65}));
                    m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{65, 28, 55, 54, ByteCompanionObject.MIN_VALUE, 12, 36, 43, 79, 17}, new byte[]{32, ByteCompanionObject.MAX_VALUE, 67, 95, -10, 109, 80, 66}), AbstractC1387m.m2421h(new byte[]{21, 110, -102, 43}, new byte[]{97, 11, -30, 95, 70, -67, 13, -28}), strTrim2, AbstractC1387m.m2421h(new byte[]{-8, 16, Base64.padSymbol, 88, 39}, new byte[]{-98, 121, 83, 57, 75, 21, 63, 81}), Boolean.valueOf(zHas));
                    String strM5539b0 = m5539b0();
                    if (!this.f10274T) {
                        m5551r().m5421d(AbstractC1387m.m2421h(new byte[]{-90, 28, 115, 33, -10, -113, -83, -4, -88, 17, 88, 46, -31, -121, -75, -16, -93}, new byte[]{-57, ByteCompanionObject.MAX_VALUE, 7, 72, ByteCompanionObject.MIN_VALUE, -18, -39, -107}));
                        return;
                    }
                    mo5405d();
                    this.f10300j0 = "";
                    m5526N(strTrim2);
                    m5533V(strM5539b0);
                    return;
                }
                return;
            }
            if (!strTrim2.equals(this.f10286c0)) {
                this.f10286c0 = strTrim2;
                Log.d(this.f10281a, AbstractC1387m.m2421h(new byte[]{64, -1, 43, 124, -54, -28, -49, -43, 105, -19, 41, 121, -98, -1, -59, -40, 38, -23, 40, 125, -120, -1, -60, -45, 98, -73, 96}, new byte[]{6, -118, 71, 16, -22, -106, -86, -74}) + strTrim2 + AbstractC1387m.m2421h(new byte[]{-10}, new byte[]{-47, -7, -34, 60, -39, 102, -122, 31}));
                if (this.f10315x.isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "\n" + this.f10315x;
                }
                m5526N(strTrim2.concat(str2));
                C3499x0 c3499x0M5552s = m5552s();
                long jCurrentTimeMillis = System.currentTimeMillis();
                synchronized (c3499x0M5552s) {
                    long j10 = c3499x0M5552s.f10319b;
                    if (j10 != 0) {
                        c3499x0M5552s.f10318a = Math.min(j10, Math.max(c3499x0M5552s.f10318a, jCurrentTimeMillis + 5000));
                    }
                }
                this.f10275U = m5552s().m5561e();
            }
            String strM5532U = m5532U(strTrim2);
            if (strM5532U.isEmpty()) {
                return;
            }
            synchronized (this.f10269O) {
                try {
                    if (!strM5532U.equals(this.f10288d0)) {
                        this.f10288d0 = strM5532U;
                        this.f10290e0 = "";
                        this.f10292f0++;
                        this.f10277W++;
                        this.f10278X = "";
                        this.f10280Z = "";
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (m5506H(m5532U(strTrim))) {
                Log.i(this.f10281a, AbstractC1387m.m2421h(new byte[]{28, 107, -76, 28, 121, -5, 24, 58, 53, 121, -74, 25, 45, -32, 18, 55, 122, 125, -71, 30, 58, -20, 17, 53, 63, 122, -8, 18, 32, -87, 11, 54, 51, 125, -67, 80, 58, -26, 16, 52, 59, 112, -68}, new byte[]{90, 30, -40, 112, 89, -119, 125, 89}));
                m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-71, 108, 46, 69, -89, 20}, new byte[]{-38, 13, 64, 38, -62, 120, 74, -56}), AbstractC1387m.m2421h(new byte[]{75, -28, 38, 96}, new byte[]{63, -127, 94, 20, 52, 35, 79, 31}), strTrim);
                m5521C(AbstractC1387m.m2421h(new byte[]{-89, 116, 47, 44, 101, -104}, new byte[]{-60, 21, 65, 79, 0, -12, -69, -49}));
            } else {
                if (zHas && !strTrim.isEmpty()) {
                    m5529R(m5532U(strTrim));
                }
            }
        } catch (JSONException e) {
            m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{34, 67, -113, 17, 27}, new byte[]{71, 49, -3, 126, 105, 8, -71, -87}), AbstractC1387m.m2421h(new byte[]{57, -25, -97, -76, 38}, new byte[]{74, -109, -2, -45, 67, 21, -123, 57}), AbstractC1387m.m2421h(new byte[]{-55, -73, 50, -58, 75, -50, -63, -77, -46, -67, 63, -10, 70, -45, -57, -87}, new byte[]{-69, -46, 81, -87, 44, -96, -88, -57}), AbstractC1387m.m2421h(new byte[]{96, 58, 101, -71}, new byte[]{20, 67, 21, -36, 97, -115, 105, 30}), e.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{67, 37, 33, -117, -6, 119, 7}, new byte[]{46, 64, 82, -8, -101, 16, 98, 106}), e.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:67:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0117 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:? A[Catch: all -> 0x00f3, SYNTHETIC, TRY_LEAVE, TryCatch #1 {all -> 0x00f3, blocks: (B:13:0x0065, B:29:0x00ef, B:55:0x011f, B:54:0x011c, B:14:0x006f, B:24:0x00e6, B:49:0x0114, B:48:0x0111, B:51:0x0117), top: B:64:0x0065, inners: #4, #5 }] */
    /* JADX WARN: Code duplicated, block: B:86:? A[SYNTHETIC] */
    /* JADX INFO: renamed from: W */
    public final void m5534W(ArrayList arrayList, int i10, int i11) {
        int iMax = 1;
        for (int i12 = 0; i12 < i11; i12++) {
            iMax = Math.max(iMax, ((C3492u) arrayList.get(i10 + i12)).f10219f.length);
        }
        int i13 = i11 * iMax;
        long[] jArr = new long[i13];
        long[] jArr2 = new long[i13];
        long[] jArr3 = new long[i13];
        long j10 = 1;
        Arrays.fill(jArr, 1L);
        for (int i14 = 0; i14 < i11; i14++) {
            int[] iArr = ((C3492u) arrayList.get(i10 + i14)).f10219f;
            int i15 = 0;
            while (i15 < iArr.length) {
                int i16 = (i14 * iMax) + i15;
                long j11 = j10;
                jArr[i16] = iArr[i15];
                jArr2[i16] = j11;
                i15++;
                j10 = j11;
            }
        }
        long[] jArr4 = {i11, iMax};
        OnnxTensor onnxTensorCreateTensor = OnnxTensor.createTensor(this.f10311t, LongBuffer.wrap(jArr), jArr4);
        try {
            OnnxTensor onnxTensorCreateTensor2 = OnnxTensor.createTensor(this.f10311t, LongBuffer.wrap(jArr2), jArr4);
            try {
                OnnxTensor onnxTensorCreateTensor3 = OnnxTensor.createTensor(this.f10311t, LongBuffer.wrap(jArr3), jArr4);
                try {
                    HashMap map = new HashMap();
                    map.put(AbstractC1387m.m2421h(new byte[]{-37, -99, -28, -122, -37, 106, 76, -32, -63}, new byte[]{-78, -13, -108, -13, -81, 53, 37, -124}), onnxTensorCreateTensor);
                    map.put(AbstractC1387m.m2421h(new byte[]{-123, -120, -119, 56, -116, 30, -64, 42, -118, -93, -112, 60, -111, 1}, new byte[]{-28, -4, -3, 93, -30, 106, -87, 69}), onnxTensorCreateTensor2);
                    map.put(AbstractC1387m.m2421h(new byte[]{-127, -73, -52, 91, -106, -32, -73, -48, -123, -67, -8, 87, -100, -52}, new byte[]{-11, -40, -89, 62, -8, -65, -61, -87}), onnxTensorCreateTensor3);
                    OrtSession.Result resultRun = this.f10312u.run(map);
                    try {
                        float[][][] fArr = (float[][][]) resultRun.get(0).getValue();
                        for (int i17 = 0; i17 < i11; i17++) {
                            ((C3492u) arrayList.get(i10 + i17)).f10220g = m5514j(fArr[i17], jArr2, i17 * iMax, iMax);
                        }
                        resultRun.close();
                        if (onnxTensorCreateTensor3 != null) {
                            onnxTensorCreateTensor3.close();
                        }
                        if (onnxTensorCreateTensor2 != null) {
                            onnxTensorCreateTensor2.close();
                        }
                        if (onnxTensorCreateTensor != null) {
                            onnxTensorCreateTensor.close();
                        }
                    } catch (Throwable th) {
                        if (resultRun == null) {
                            throw th;
                        }
                        try {
                            resultRun.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                        if (onnxTensorCreateTensor2 != null) {
                            throw th;
                        }
                        try {
                            onnxTensorCreateTensor2.close();
                            throw th;
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                            throw th;
                        }
                    }
                } catch (Throwable th4) {
                    if (onnxTensorCreateTensor3 == null) {
                        throw th4;
                    }
                    try {
                        onnxTensorCreateTensor3.close();
                        throw th4;
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                        throw th4;
                    }
                    if (onnxTensorCreateTensor != null) {
                        throw th;
                    }
                    try {
                        onnxTensorCreateTensor.close();
                        throw th;
                    } catch (Throwable th6) {
                        th.addSuppressed(th6);
                        throw th;
                    }
                }
            } catch (Throwable th7) {
                if (onnxTensorCreateTensor2 != null) {
                    throw th7;
                }
                onnxTensorCreateTensor2.close();
                throw th7;
            }
        } catch (Throwable th8) {
            if (onnxTensorCreateTensor != null) {
                throw th8;
            }
            onnxTensorCreateTensor.close();
            throw th8;
        }
    }

    /* JADX INFO: renamed from: X */
    public final void m5535X() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f10302k0 < 1000) {
            return;
        }
        this.f10302k0 = jCurrentTimeMillis;
        if (m5548n()) {
            m5538a0();
            try {
                String string = new JSONArray((Collection) m5546l()).toString();
                if (m5507I(string)) {
                    synchronized (this.f10269O) {
                        Recognizer recognizer = this.f10270P;
                        if (recognizer != null) {
                            recognizer.close();
                            this.f10270P = null;
                        }
                        Recognizer recognizer2 = this.f10271Q;
                        if (recognizer2 != null) {
                            recognizer2.close();
                            this.f10271Q = null;
                        }
                        float f8 = 16000;
                        this.f10270P = new Recognizer(this.f10303l, f8, string);
                        this.f10271Q = new Recognizer(this.f10303l, f8);
                        this.f10274T = false;
                        synchronized (this) {
                            this.f10272R = 0;
                            this.f10273S = 0;
                        }
                    }
                    if (ContextCompat.checkSelfPermission(this.f10304m, AbstractC1387m.m2421h(new byte[]{-17, -50, 0, 13, 24, 41, 111, 40, -2, -59, 22, 18, 30, 51, 120, 111, -31, -50, 74, 45, 50, 3, 68, 84, -54, -1, 37, 42, 51, 9, 68}, new byte[]{-114, -96, 100, ByteCompanionObject.MAX_VALUE, 119, 64, 11, 6})) != 0) {
                        m5527O(EnumC3443b.f9929b);
                        return;
                    }
                    this.f10264J = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-56, 96, 90, -97, 70, 27, -102, 47, -22, 119, 90, -109, 85, 103, -66, 57, -31, 108, 81, -91, 72, 60, -115, 47, -32}, new byte[]{-123, 5, 62, -10, 39, 73, -1, 76}), 1);
                    AudioRecord audioRecord = new AudioRecord(this.f10264J, 16000, 16, 2, this.f10266L);
                    this.f10301k = audioRecord;
                    audioRecord.startRecording();
                    m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-96, -108, -90, -68, -93, -7, ByteCompanionObject.MIN_VALUE, -7, -75, -82, -74, -89, -80, -17, -99, -14, -74}, new byte[]{-46, -15, -59, -45, -47, -99, -23, -105}), AbstractC1387m.m2421h(new byte[]{95, -20, -108, -104, -23, 1, -6, 39, 76, -6, -107}, new byte[]{62, -103, -16, -15, -122, 82, -107, 82}), Integer.valueOf(this.f10264J), AbstractC1387m.m2421h(new byte[]{51, -56, 101, 24, 54, 57, Base64.padSymbol, 19, 52, -52}, new byte[]{64, -87, 8, 104, 90, 92, 111, 114}), 16000, AbstractC1387m.m2421h(new byte[]{-76, -76, -58, 49, -60, -83, -9, -105, -75}, new byte[]{-58, -47, -89, 85, -122, -44, -125, -14}), Integer.valueOf(this.f10267M.length), AbstractC1387m.m2421h(new byte[]{37, 31, 14, 13, 47, 19, -38, 52, 51, 15, 27}, new byte[]{71, 106, 104, 107, 74, 97, -104, 77}), Integer.valueOf(this.f10266L));
                }
            } catch (Exception e) {
                m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{81, 101, -17, 120, 37}, new byte[]{52, 23, -99, 23, 87, -24, -43, 34}), AbstractC1387m.m2421h(new byte[]{111, 3, -95, 9, 98}, new byte[]{28, 119, -64, 110, 7, 12, 125, 22}), AbstractC1387m.m2421h(new byte[]{-121, -93, 56, -113, 35, -35, 4, 56, -110, -103, 50, -114, 56, -51}, new byte[]{-11, -58, 91, -32, 81, -71, 109, 86}), AbstractC1387m.m2421h(new byte[]{-72, -10, -78, 29}, new byte[]{-52, -113, -62, 120, 14, 92, -63, -39}), e.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{-122, -71, 11, -24, 39, -4, -97}, new byte[]{-21, -36, 120, -101, 70, -101, -6, 119}), e.getMessage());
                Log.e(this.f10281a, AbstractC1387m.m2421h(new byte[]{10, 97, 71, 94, 34, 121, 119, -50, 63, 97, 92, 89, 46, 55, 98, -117, 53, 96, 71, 73, 46, 56, 105, -62, 38, 111, 90, 84, 40, 55, 37, -51, Base64.padSymbol, 103, 66, 88, 35}, new byte[]{92, 14, 46, Base64.padSymbol, 71, 89, 5, -85}), e);
                m5538a0();
            }
        }
    }

    /* JADX INFO: renamed from: Y */
    public final C3494v m5536Y(String str) {
        List list = this.f10307p;
        C3451d1 c3451d1 = this.f10313v;
        C3494v c3494v = this.f10255A;
        if (c3494v != null && c3494v.f10224a.equals(str) && c3494v.f10225b == list && c3494v.f10226c == c3451d1) {
            return c3494v;
        }
        C3494v c3494v2 = new C3494v(str, list, c3451d1);
        this.f10255A = c3494v2;
        return c3494v2;
    }

    /* JADX INFO: renamed from: Z */
    public final void m5537Z(final int i10, final String str) {
        if (i10 == this.f10277W && this.f10274T && !this.f10276V) {
            if (i10 == this.f10279Y) {
                this.f10278X = "";
            }
            this.f10276V = true;
            final long jM5423i = m5551r().m5423i();
            final String str2 = this.f10290e0;
            final long j10 = this.f10261G;
            this.f10285c.execute(new Runnable() { // from class: w0.s
                /* JADX WARN: Code duplicated, block: B:16:0x00a5  */
                /* JADX WARN: Code duplicated, block: B:170:0x03c0 A[Catch: all -> 0x03cc, TryCatch #20 {all -> 0x03cc, blocks: (B:168:0x03bc, B:170:0x03c0, B:172:0x03c4, B:175:0x03ce), top: B:224:0x03bc, outer: #11 }] */
                /* JADX WARN: Code duplicated, block: B:178:0x03d5  */
                /* JADX WARN: Code duplicated, block: B:192:0x0400  */
                /* JADX WARN: Code duplicated, block: B:224:0x03bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:247:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r14v5, types: [java.lang.String] */
                /* JADX WARN: Type inference failed for: r14v7 */
                /* JADX WARN: Type inference failed for: r14v8 */
                /* JADX WARN: Type inference failed for: r15v29 */
                /* JADX WARN: Type inference failed for: r15v30 */
                /* JADX WARN: Type inference failed for: r15v31 */
                /* JADX WARN: Type inference failed for: r15v4 */
                /* JADX WARN: Type inference failed for: r15v5, types: [int] */
                /* JADX WARN: Type inference failed for: r18v1 */
                /* JADX WARN: Type inference failed for: r18v10 */
                /* JADX WARN: Type inference failed for: r18v11 */
                /* JADX WARN: Type inference failed for: r18v12 */
                /* JADX WARN: Type inference failed for: r18v2 */
                /* JADX WARN: Type inference failed for: r18v3 */
                /* JADX WARN: Type inference failed for: r18v4 */
                /* JADX WARN: Type inference failed for: r18v6, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r18v7 */
                /* JADX WARN: Type inference failed for: r18v8 */
                /* JADX WARN: Type inference failed for: r18v9 */
                /* JADX WARN: Type inference failed for: r1v10 */
                /* JADX WARN: Type inference failed for: r1v12, types: [boolean] */
                /* JADX WARN: Type inference failed for: r1v19, types: [boolean] */
                /* JADX WARN: Type inference failed for: r1v22 */
                /* JADX WARN: Type inference failed for: r1v23 */
                /* JADX WARN: Type inference failed for: r1v24 */
                /* JADX WARN: Type inference failed for: r1v35 */
                /* JADX WARN: Type inference failed for: r1v37 */
                /* JADX WARN: Type inference failed for: r1v46 */
                /* JADX WARN: Type inference failed for: r1v47 */
                /* JADX WARN: Type inference failed for: r1v48 */
                /* JADX WARN: Type inference failed for: r1v49 */
                /* JADX WARN: Type inference failed for: r1v5 */
                /* JADX WARN: Type inference failed for: r1v50 */
                /* JADX WARN: Type inference failed for: r1v51 */
                /* JADX WARN: Type inference failed for: r1v9 */
                /* JADX WARN: Type inference failed for: r20v1, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r2v0, types: [w0.x] */
                /* JADX WARN: Type inference failed for: r32v0 */
                /* JADX WARN: Type inference failed for: r32v1 */
                /* JADX WARN: Type inference failed for: r32v10 */
                /* JADX WARN: Type inference failed for: r32v11 */
                /* JADX WARN: Type inference failed for: r32v12 */
                /* JADX WARN: Type inference failed for: r32v13 */
                /* JADX WARN: Type inference failed for: r32v14 */
                /* JADX WARN: Type inference failed for: r32v15 */
                /* JADX WARN: Type inference failed for: r32v2 */
                /* JADX WARN: Type inference failed for: r32v3, types: [long] */
                /* JADX WARN: Type inference failed for: r32v4 */
                /* JADX WARN: Type inference failed for: r32v5 */
                /* JADX WARN: Type inference failed for: r32v6 */
                /* JADX WARN: Type inference failed for: r32v7, types: [long] */
                /* JADX WARN: Type inference failed for: r32v9 */
                /* JADX WARN: Type inference failed for: r3v11, types: [java.util.concurrent.ScheduledExecutorService, java.util.concurrent.ScheduledThreadPoolExecutor] */
                /* JADX WARN: Type inference failed for: r4v1, types: [java.util.concurrent.ScheduledExecutorService, java.util.concurrent.ScheduledThreadPoolExecutor] */
                /* JADX WARN: Type inference failed for: r5v0 */
                /* JADX WARN: Type inference failed for: r5v1, types: [int] */
                /* JADX WARN: Type inference failed for: r5v11 */
                /* JADX WARN: Type inference failed for: r5v20 */
                /* JADX WARN: Type inference failed for: r5v5 */
                /* JADX WARN: Type inference failed for: r5v6 */
                /* JADX WARN: Type inference failed for: r5v8 */
                /* JADX WARN: Type inference failed for: r7v0, types: [long] */
                /* JADX WARN: Type inference failed for: r7v10 */
                /* JADX WARN: Type inference failed for: r7v11 */
                /* JADX WARN: Type inference failed for: r7v17 */
                /* JADX WARN: Type inference failed for: r7v24 */
                /* JADX WARN: Type inference failed for: r7v3 */
                /* JADX WARN: Type inference failed for: r7v30 */
                /* JADX WARN: Type inference failed for: r7v31 */
                /* JADX WARN: Type inference failed for: r7v4 */
                /* JADX WARN: Type inference failed for: r7v5 */
                /* JADX WARN: Type inference failed for: r7v6, types: [long] */
                /* JADX WARN: Type inference failed for: r7v7, types: [long] */
                /* JADX WARN: Type inference failed for: r7v8 */
                /* JADX WARN: Type inference failed for: r7v9 */
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    boolean z9;
                    ?? r32;
                    ?? r18;
                    ?? r33;
                    ?? r19;
                    boolean z10;
                    int i11;
                    ?? r9;
                    ?? r34;
                    ?? r110;
                    boolean z11;
                    ?? r35;
                    boolean z12;
                    char c;
                    long j11;
                    int i12;
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
                    RunnableC3486r runnableC3486r;
                    TimeUnit timeUnit;
                    ?? r10 = this.f10200b;
                    ?? r11 = jM5423i;
                    int i13 = i10;
                    String str3 = str;
                    String str4 = str2;
                    long j12 = j10;
                    long jNanoTime = System.nanoTime();
                    long jThreadCpuTimeNanos = Debug.threadCpuTimeNanos();
                    ?? r1 = 8;
                    ?? r14 = str3;
                    r10.m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-15, 102, -27, -84, -85, -118, 30, 23, -35, 112, -4, -84, -73, -118}, new byte[]{-126, 3, -120, -51, -59, -2, 119, 116}), AbstractC1387m.m2421h(new byte[]{98, -17, 109, 43, 72, 35, -122, -21, 98, -13, 113, 54, 69}, new byte[]{17, ByteCompanionObject.MIN_VALUE, 24, 89, 43, 70, -43, -114}), Long.valueOf((long) r11), AbstractC1387m.m2421h(new byte[]{59, -35, -97, 10, 49, -126, 34, 122, 51, -42}, new byte[]{92, -72, -15, 111, 67, -29, 86, 19}), Integer.valueOf(i13), AbstractC1387m.m2421h(new byte[]{79, 107, -49, 28, -8}, new byte[]{62, 30, -86, 110, -127, 27, 35, -116}), str3);
                    try {
                        try {
                            try {
                                C3492u c3492uM5520B = r10.m5520B(i13, r14, r11);
                                if (r10.f10274T) {
                                    try {
                                        if (i13 != r10.f10277W) {
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        r1 = 0;
                                        r9 = 1;
                                        r11 = 0;
                                        r10.f10276V = r1;
                                        if (r10.f10274T) {
                                            r10.f10283b.schedule(new RunnableC3486r(r10, r10.f10278X, r10.f10279Y, r9), r11, TimeUnit.MILLISECONDS);
                                        }
                                        throw th;
                                    }
                                } else {
                                    z11 = true;
                                }
                                C3460g1 c3460g1M5551r = r10.m5551r();
                                try {
                                    String strM2421h = AbstractC1387m.m2421h(new byte[]{49, -56, 75, 102, 85, -63, -21, -124, 29, -56, 72, 99}, new byte[]{66, -83, 38, 7, 59, -75, -126, -25});
                                    String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-94, 11, -71, 11, -84, 26, -56, -114, -94, 23, -91, 22, -95}, new byte[]{-47, 100, -52, 121, -49, ByteCompanionObject.MAX_VALUE, -101, -21});
                                    r18 = r14;
                                    try {
                                        Long lValueOf = Long.valueOf((long) r11);
                                        boolean z13 = z11;
                                        char c10 = 5;
                                        try {
                                            try {
                                                try {
                                                    c10 = 5;
                                                    r32 = r11;
                                                    r11 = 0;
                                                    r11 = 0;
                                                    long j13 = 0;
                                                    try {
                                                        try {
                                                            try {
                                                                try {
                                                                    r11 = 8;
                                                                    String strM2421h3 = AbstractC1387m.m2421h(new byte[]{-96, 100, -127, -51, -56, 27, -38, -104, -88, 111}, new byte[]{-57, 1, -17, -88, -70, 122, -82, -15});
                                                                    z9 = false;
                                                                    r1 = 0;
                                                                    r1 = 0;
                                                                    r1 = 0;
                                                                    z12 = false;
                                                                    try {
                                                                        c3460g1M5551r.m5422e(strM2421h, strM2421h2, lValueOf, strM2421h3, Integer.valueOf(i13), AbstractC1387m.m2421h(new byte[]{24, 69, 84, 82, 26}, new byte[]{105, 48, 49, 32, 99, 109, -44, 0}), r18, AbstractC1387m.m2421h(new byte[]{-111, 36, 58, -17, -57}, new byte[]{-30, 80, 91, -125, -94, 52, 31, 117}), Boolean.valueOf(z13), AbstractC1387m.m2421h(new byte[]{-74, -48, -121, -79, -37, -43, 64, -25, -97, -42}, new byte[]{-46, -91, -11, -48, -81, -68, 47, -119}), Double.valueOf(C3498x.m5516u(jNanoTime)), AbstractC1387m.m2421h(new byte[]{-52, -67, -86, -71, -38}, new byte[]{-81, -51, -33, -12, -87, -53, -120, -85}), Double.valueOf(Math.max(0L, Debug.threadCpuTimeNanos() - jThreadCpuTimeNanos) / 1000000.0d), AbstractC1387m.m2421h(new byte[]{91, -45, 112, 103, 36, 104, -43, 28, 99, -45, 101}, new byte[]{40, -74, 28, 2, 71, 28, -80, 120}), c3492uM5520B == null ? "" : AbstractC1920f.m3009g(c3492uM5520B.f10215b), AbstractC1387m.m2421h(new byte[]{-100, 91, -93, -124, ByteCompanionObject.MIN_VALUE, 113, -26, -101, -111, 81}, new byte[]{-8, 50, -62, -29, -18, 30, -107, -17}), r10.f10317z);
                                                                        try {
                                                                            if (c3492uM5520B != null && r10.f10274T && i13 == r10.f10277W) {
                                                                                synchronized (r10.f10269O) {
                                                                                    try {
                                                                                        try {
                                                                                            if (r10.f10274T) {
                                                                                                try {
                                                                                                    if (i13 == r10.f10277W) {
                                                                                                        i11 = 5;
                                                                                                        i12 = 1;
                                                                                                        try {
                                                                                                            r10.m5541d0(AbstractC1387m.m2421h(new byte[]{-71, 57, -111, -126, 8, 98, 1, -4}, new byte[]{-54, 92, -4, -29, 102, 22, 104, -97}), AbstractC1920f.m3009g(c3492uM5520B.f10215b), c3492uM5520B.f10214a, r10.f10317z, r32, str4, j12);
                                                                                                            r34 = r32;
                                                                                                            try {
                                                                                                                Log.i(r10.f10281a, AbstractC1387m.m2421h(new byte[]{120, -125, 24, 30, -126, 57, 87, 118, 11, -123, 26, 18, -127, 44, 80, 113, 11, -117, 20, 11, -113, 37, 91, 113, 17, -58}, new byte[]{43, -26, 117, ByteCompanionObject.MAX_VALUE, -20, 77, 62, 21}) + c3492uM5520B.f10214a);
                                                                                                                r10.m5554v(c3492uM5520B.f10215b, i13);
                                                                                                                j11 = 0;
                                                                                                            } catch (Exception e) {
                                                                                                                e = e;
                                                                                                                r11 = 0;
                                                                                                                r110 = r18;
                                                                                                                C3460g1 c3460g1M5551r2 = r10.m5551r();
                                                                                                                byte[] bArr = new byte[i11];
                                                                                                                // fill-array-data instruction
                                                                                                                bArr[0] = -29;
                                                                                                                bArr[1] = -75;
                                                                                                                bArr[2] = -31;
                                                                                                                bArr[3] = 63;
                                                                                                                bArr[4] = -32;
                                                                                                                String strM2421h4 = AbstractC1387m.m2421h(bArr, new byte[]{-122, -57, -109, 80, -110, -3, -109, -53});
                                                                                                                byte[] bArr2 = new byte[i11];
                                                                                                                // fill-array-data instruction
                                                                                                                bArr2[0] = 70;
                                                                                                                bArr2[1] = -107;
                                                                                                                bArr2[2] = 37;
                                                                                                                bArr2[3] = -89;
                                                                                                                bArr2[4] = 124;
                                                                                                                String strM2421h5 = AbstractC1387m.m2421h(bArr2, new byte[]{53, -31, 68, -64, 25, 78, 95, -126});
                                                                                                                try {
                                                                                                                    byte[] bArr3 = new byte[i11];
                                                                                                                    // fill-array-data instruction
                                                                                                                    bArr3[0] = 10;
                                                                                                                    bArr3[1] = 75;
                                                                                                                    bArr3[2] = 12;
                                                                                                                    bArr3[3] = 80;
                                                                                                                    bArr3[4] = -12;
                                                                                                                    r9 = 1;
                                                                                                                    try {
                                                                                                                        c3460g1M5551r2.m5422e(strM2421h4, strM2421h5, AbstractC1387m.m2421h(new byte[]{-51, -59, 52, -45, 12, 19, -89, -125}, new byte[]{-66, -96, 89, -78, 98, 103, -50, -32}), AbstractC1387m.m2421h(new byte[]{-98, -22, -48, -84, 20, 10, -102, ByteCompanionObject.MIN_VALUE, -98, -10, -52, -79, 25}, new byte[]{-19, -123, -91, -34, 119, 111, -55, -27}), Long.valueOf((long) r34), AbstractC1387m.m2421h(new byte[]{-126, 56, 104, 82, -23, -106, -40, -13, -118, 51}, new byte[]{-27, 93, 6, 55, -101, -9, -84, -102}), Integer.valueOf(i13), AbstractC1387m.m2421h(bArr3, new byte[]{123, 62, 105, 34, -115, -108, 67, 119}), r110, AbstractC1387m.m2421h(new byte[]{109, -81, -66, 48, 64, 79, 101, -27, 68, -87}, new byte[]{9, -38, -52, 81, 52, 38, 10, -117}), Double.valueOf(C3498x.m5516u(jNanoTime)), AbstractC1387m.m2421h(new byte[]{-91, 18, -113, -105}, new byte[]{-47, 107, -1, -14, -33, 3, -71, 112}), e.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{-72, 4, 69, -75, 88, -4, 73}, new byte[]{-43, 97, 54, -58, 57, -101, 44, 58}), e.getMessage());
                                                                                                                        Log.e(r10.f10281a, AbstractC1387m.m2421h(new byte[]{51, 104, -117, 78, 62, 13, -34, 116, 64, 124, -109, 74, 34, 0, -105, 113, 1, 100, -118, 74, 52}, new byte[]{96, 13, -26, 47, 80, 121, -73, 23}), e);
                                                                                                                        synchronized (r10.f10269O) {
                                                                                                                            try {
                                                                                                                                if (r10.f10274T) {
                                                                                                                                    r10.m5544i(r10.f10290e0, r10.f10316y);
                                                                                                                                }
                                                                                                                                r10.f10276V = r1;
                                                                                                                                if (r10.f10274T) {
                                                                                                                                }
                                                                                                                            } catch (Throwable th2) {
                                                                                                                                throw th2;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    } catch (Throwable th3) {
                                                                                                                        th = th3;
                                                                                                                        r10.f10276V = r1;
                                                                                                                        if (r10.f10274T) {
                                                                                                                            r10.f10283b.schedule(new RunnableC3486r(r10, r10.f10278X, r10.f10279Y, r9), r11, TimeUnit.MILLISECONDS);
                                                                                                                        }
                                                                                                                        throw th;
                                                                                                                    }
                                                                                                                } catch (Throwable th4) {
                                                                                                                    th = th4;
                                                                                                                    r9 = 1;
                                                                                                                }
                                                                                                            } catch (Throwable th5) {
                                                                                                                th = th5;
                                                                                                                r9 = 1;
                                                                                                                r11 = 0;
                                                                                                                r10.f10276V = r1;
                                                                                                                if (r10.f10274T) {
                                                                                                                    r10.f10283b.schedule(new RunnableC3486r(r10, r10.f10278X, r10.f10279Y, r9), r11, TimeUnit.MILLISECONDS);
                                                                                                                }
                                                                                                                throw th;
                                                                                                            }
                                                                                                        } catch (Throwable th6) {
                                                                                                            th = th6;
                                                                                                            while (true) {
                                                                                                                try {
                                                                                                                    throw th;
                                                                                                                } catch (Throwable th7) {
                                                                                                                    th = th7;
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                    scheduledThreadPoolExecutor.schedule(runnableC3486r, j11, timeUnit);
                                                                                                } catch (Throwable th8) {
                                                                                                    th = th8;
                                                                                                }
                                                                                            }
                                                                                            r10.f10276V = false;
                                                                                            if (r10.f10274T && !r10.f10278X.isEmpty() && r10.f10279Y == r10.f10277W) {
                                                                                                String str5 = r10.f10278X;
                                                                                                int i14 = r10.f10279Y;
                                                                                                scheduledThreadPoolExecutor = r10.f10283b;
                                                                                                runnableC3486r = new RunnableC3486r(r10, str5, i14, 1);
                                                                                                timeUnit = TimeUnit.MILLISECONDS;
                                                                                                j11 = 0;
                                                                                                scheduledThreadPoolExecutor.schedule(runnableC3486r, j11, timeUnit);
                                                                                            }
                                                                                            return;
                                                                                        } catch (Throwable th9) {
                                                                                            th = th9;
                                                                                        }
                                                                                    } catch (Throwable th10) {
                                                                                        th = th10;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                j11 = 0;
                                                                                i12 = 1;
                                                                                if (c3492uM5520B == null && r10.f10274T && i13 == r10.f10277W) {
                                                                                    synchronized (r10.f10269O) {
                                                                                        try {
                                                                                            if (i13 == r10.f10277W) {
                                                                                                r10.m5544i(r10.f10290e0, r10.f10316y);
                                                                                            }
                                                                                        } catch (Throwable th11) {
                                                                                            throw th11;
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            r10.f10276V = false;
                                                                            if (r10.f10274T && !r10.f10278X.isEmpty() && r10.f10279Y == r10.f10277W) {
                                                                                String str6 = r10.f10278X;
                                                                                int i15 = r10.f10279Y;
                                                                                scheduledThreadPoolExecutor = r10.f10283b;
                                                                                runnableC3486r = new RunnableC3486r(r10, str6, i15, i12);
                                                                                timeUnit = TimeUnit.MILLISECONDS;
                                                                                scheduledThreadPoolExecutor.schedule(runnableC3486r, j11, timeUnit);
                                                                            }
                                                                        } catch (Exception e6) {
                                                                            e = e6;
                                                                            i11 = strM2421h3;
                                                                            r110 = r18;
                                                                            r34 = r32;
                                                                        }
                                                                    } catch (Exception e10) {
                                                                        e = e10;
                                                                        c = 5;
                                                                        r35 = r32;
                                                                        r11 = 0;
                                                                        r1 = z12;
                                                                        i11 = c;
                                                                        r110 = r18;
                                                                        r34 = r35;
                                                                        C3460g1 c3460g1M5551r3 = r10.m5551r();
                                                                        byte[] bArr4 = new byte[i11];
                                                                        // fill-array-data instruction
                                                                        bArr4[0] = -29;
                                                                        bArr4[1] = -75;
                                                                        bArr4[2] = -31;
                                                                        bArr4[3] = 63;
                                                                        bArr4[4] = -32;
                                                                        String strM2421h6 = AbstractC1387m.m2421h(bArr4, new byte[]{-122, -57, -109, 80, -110, -3, -109, -53});
                                                                        byte[] bArr5 = new byte[i11];
                                                                        // fill-array-data instruction
                                                                        bArr5[0] = 70;
                                                                        bArr5[1] = -107;
                                                                        bArr5[2] = 37;
                                                                        bArr5[3] = -89;
                                                                        bArr5[4] = 124;
                                                                        String strM2421h7 = AbstractC1387m.m2421h(bArr5, new byte[]{53, -31, 68, -64, 25, 78, 95, -126});
                                                                        byte[] bArr6 = new byte[i11];
                                                                        // fill-array-data instruction
                                                                        bArr6[0] = 10;
                                                                        bArr6[1] = 75;
                                                                        bArr6[2] = 12;
                                                                        bArr6[3] = 80;
                                                                        bArr6[4] = -12;
                                                                        r9 = 1;
                                                                        c3460g1M5551r3.m5422e(strM2421h6, strM2421h7, AbstractC1387m.m2421h(new byte[]{-51, -59, 52, -45, 12, 19, -89, -125}, new byte[]{-66, -96, 89, -78, 98, 103, -50, -32}), AbstractC1387m.m2421h(new byte[]{-98, -22, -48, -84, 20, 10, -102, ByteCompanionObject.MIN_VALUE, -98, -10, -52, -79, 25}, new byte[]{-19, -123, -91, -34, 119, 111, -55, -27}), Long.valueOf((long) r34), AbstractC1387m.m2421h(new byte[]{-126, 56, 104, 82, -23, -106, -40, -13, -118, 51}, new byte[]{-27, 93, 6, 55, -101, -9, -84, -102}), Integer.valueOf(i13), AbstractC1387m.m2421h(bArr6, new byte[]{123, 62, 105, 34, -115, -108, 67, 119}), r110, AbstractC1387m.m2421h(new byte[]{109, -81, -66, 48, 64, 79, 101, -27, 68, -87}, new byte[]{9, -38, -52, 81, 52, 38, 10, -117}), Double.valueOf(C3498x.m5516u(jNanoTime)), AbstractC1387m.m2421h(new byte[]{-91, 18, -113, -105}, new byte[]{-47, 107, -1, -14, -33, 3, -71, 112}), e.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{-72, 4, 69, -75, 88, -4, 73}, new byte[]{-43, 97, 54, -58, 57, -101, 44, 58}), e.getMessage());
                                                                        Log.e(r10.f10281a, AbstractC1387m.m2421h(new byte[]{51, 104, -117, 78, 62, 13, -34, 116, 64, 124, -109, 74, 34, 0, -105, 113, 1, 100, -118, 74, 52}, new byte[]{96, 13, -26, 47, 80, 121, -73, 23}), e);
                                                                        synchronized (r10.f10269O) {
                                                                            if (r10.f10274T) {
                                                                                r10.m5544i(r10.f10290e0, r10.f10316y);
                                                                            }
                                                                            r10.f10276V = r1;
                                                                            if (r10.f10274T) {
                                                                            }
                                                                        }
                                                                    } catch (Throwable th12) {
                                                                        th = th12;
                                                                        r11 = 0;
                                                                        r1 = z9;
                                                                        r14 = 1;
                                                                        r9 = r14;
                                                                        r10.f10276V = r1;
                                                                        if (r10.f10274T) {
                                                                            r10.f10283b.schedule(new RunnableC3486r(r10, r10.f10278X, r10.f10279Y, r9), r11, TimeUnit.MILLISECONDS);
                                                                        }
                                                                        throw th;
                                                                    }
                                                                } catch (Exception e11) {
                                                                    e = e11;
                                                                    z10 = false;
                                                                    j13 = 0;
                                                                    r19 = r18;
                                                                    r33 = r32;
                                                                    i11 = 5;
                                                                    r1 = z10;
                                                                    r11 = j13;
                                                                    r110 = r19;
                                                                    r34 = r33;
                                                                    C3460g1 c3460g1M5551r4 = r10.m5551r();
                                                                    byte[] bArr7 = new byte[i11];
                                                                    // fill-array-data instruction
                                                                    bArr7[0] = -29;
                                                                    bArr7[1] = -75;
                                                                    bArr7[2] = -31;
                                                                    bArr7[3] = 63;
                                                                    bArr7[4] = -32;
                                                                    String strM2421h8 = AbstractC1387m.m2421h(bArr7, new byte[]{-122, -57, -109, 80, -110, -3, -109, -53});
                                                                    byte[] bArr8 = new byte[i11];
                                                                    // fill-array-data instruction
                                                                    bArr8[0] = 70;
                                                                    bArr8[1] = -107;
                                                                    bArr8[2] = 37;
                                                                    bArr8[3] = -89;
                                                                    bArr8[4] = 124;
                                                                    String strM2421h9 = AbstractC1387m.m2421h(bArr8, new byte[]{53, -31, 68, -64, 25, 78, 95, -126});
                                                                    byte[] bArr9 = new byte[i11];
                                                                    // fill-array-data instruction
                                                                    bArr9[0] = 10;
                                                                    bArr9[1] = 75;
                                                                    bArr9[2] = 12;
                                                                    bArr9[3] = 80;
                                                                    bArr9[4] = -12;
                                                                    r9 = 1;
                                                                    c3460g1M5551r4.m5422e(strM2421h8, strM2421h9, AbstractC1387m.m2421h(new byte[]{-51, -59, 52, -45, 12, 19, -89, -125}, new byte[]{-66, -96, 89, -78, 98, 103, -50, -32}), AbstractC1387m.m2421h(new byte[]{-98, -22, -48, -84, 20, 10, -102, ByteCompanionObject.MIN_VALUE, -98, -10, -52, -79, 25}, new byte[]{-19, -123, -91, -34, 119, 111, -55, -27}), Long.valueOf((long) r34), AbstractC1387m.m2421h(new byte[]{-126, 56, 104, 82, -23, -106, -40, -13, -118, 51}, new byte[]{-27, 93, 6, 55, -101, -9, -84, -102}), Integer.valueOf(i13), AbstractC1387m.m2421h(bArr9, new byte[]{123, 62, 105, 34, -115, -108, 67, 119}), r110, AbstractC1387m.m2421h(new byte[]{109, -81, -66, 48, 64, 79, 101, -27, 68, -87}, new byte[]{9, -38, -52, 81, 52, 38, 10, -117}), Double.valueOf(C3498x.m5516u(jNanoTime)), AbstractC1387m.m2421h(new byte[]{-91, 18, -113, -105}, new byte[]{-47, 107, -1, -14, -33, 3, -71, 112}), e.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{-72, 4, 69, -75, 88, -4, 73}, new byte[]{-43, 97, 54, -58, 57, -101, 44, 58}), e.getMessage());
                                                                    Log.e(r10.f10281a, AbstractC1387m.m2421h(new byte[]{51, 104, -117, 78, 62, 13, -34, 116, 64, 124, -109, 74, 34, 0, -105, 113, 1, 100, -118, 74, 52}, new byte[]{96, 13, -26, 47, 80, 121, -73, 23}), e);
                                                                    synchronized (r10.f10269O) {
                                                                        if (r10.f10274T) {
                                                                            r10.m5544i(r10.f10290e0, r10.f10316y);
                                                                        }
                                                                        r10.f10276V = r1;
                                                                        if (r10.f10274T) {
                                                                        }
                                                                    }
                                                                }
                                                            } catch (Throwable th13) {
                                                                th = th13;
                                                                r1 = 0;
                                                                r14 = 1;
                                                                r9 = r14;
                                                                r10.f10276V = r1;
                                                                if (r10.f10274T) {
                                                                    r10.f10283b.schedule(new RunnableC3486r(r10, r10.f10278X, r10.f10279Y, r9), r11, TimeUnit.MILLISECONDS);
                                                                }
                                                                throw th;
                                                            }
                                                        } catch (Throwable th14) {
                                                            th = th14;
                                                            r1 = 0;
                                                        }
                                                    } catch (Exception e12) {
                                                        e = e12;
                                                        z10 = false;
                                                        r19 = r18;
                                                        r33 = r32;
                                                        i11 = 5;
                                                        r1 = z10;
                                                        r11 = j13;
                                                        r110 = r19;
                                                        r34 = r33;
                                                        C3460g1 c3460g1M5551r5 = r10.m5551r();
                                                        byte[] bArr10 = new byte[i11];
                                                        // fill-array-data instruction
                                                        bArr10[0] = -29;
                                                        bArr10[1] = -75;
                                                        bArr10[2] = -31;
                                                        bArr10[3] = 63;
                                                        bArr10[4] = -32;
                                                        String strM2421h10 = AbstractC1387m.m2421h(bArr10, new byte[]{-122, -57, -109, 80, -110, -3, -109, -53});
                                                        byte[] bArr11 = new byte[i11];
                                                        // fill-array-data instruction
                                                        bArr11[0] = 70;
                                                        bArr11[1] = -107;
                                                        bArr11[2] = 37;
                                                        bArr11[3] = -89;
                                                        bArr11[4] = 124;
                                                        String strM2421h11 = AbstractC1387m.m2421h(bArr11, new byte[]{53, -31, 68, -64, 25, 78, 95, -126});
                                                        byte[] bArr12 = new byte[i11];
                                                        // fill-array-data instruction
                                                        bArr12[0] = 10;
                                                        bArr12[1] = 75;
                                                        bArr12[2] = 12;
                                                        bArr12[3] = 80;
                                                        bArr12[4] = -12;
                                                        r9 = 1;
                                                        c3460g1M5551r5.m5422e(strM2421h10, strM2421h11, AbstractC1387m.m2421h(new byte[]{-51, -59, 52, -45, 12, 19, -89, -125}, new byte[]{-66, -96, 89, -78, 98, 103, -50, -32}), AbstractC1387m.m2421h(new byte[]{-98, -22, -48, -84, 20, 10, -102, ByteCompanionObject.MIN_VALUE, -98, -10, -52, -79, 25}, new byte[]{-19, -123, -91, -34, 119, 111, -55, -27}), Long.valueOf((long) r34), AbstractC1387m.m2421h(new byte[]{-126, 56, 104, 82, -23, -106, -40, -13, -118, 51}, new byte[]{-27, 93, 6, 55, -101, -9, -84, -102}), Integer.valueOf(i13), AbstractC1387m.m2421h(bArr12, new byte[]{123, 62, 105, 34, -115, -108, 67, 119}), r110, AbstractC1387m.m2421h(new byte[]{109, -81, -66, 48, 64, 79, 101, -27, 68, -87}, new byte[]{9, -38, -52, 81, 52, 38, 10, -117}), Double.valueOf(C3498x.m5516u(jNanoTime)), AbstractC1387m.m2421h(new byte[]{-91, 18, -113, -105}, new byte[]{-47, 107, -1, -14, -33, 3, -71, 112}), e.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{-72, 4, 69, -75, 88, -4, 73}, new byte[]{-43, 97, 54, -58, 57, -101, 44, 58}), e.getMessage());
                                                        Log.e(r10.f10281a, AbstractC1387m.m2421h(new byte[]{51, 104, -117, 78, 62, 13, -34, 116, 64, 124, -109, 74, 34, 0, -105, 113, 1, 100, -118, 74, 52}, new byte[]{96, 13, -26, 47, 80, 121, -73, 23}), e);
                                                        synchronized (r10.f10269O) {
                                                            if (r10.f10274T) {
                                                                r10.m5544i(r10.f10290e0, r10.f10316y);
                                                            }
                                                            r10.f10276V = r1;
                                                            if (r10.f10274T) {
                                                            }
                                                        }
                                                    }
                                                } catch (Exception e13) {
                                                    e = e13;
                                                    c10 = 5;
                                                    r35 = r11;
                                                    z12 = false;
                                                    c = c10;
                                                    r11 = 0;
                                                    r1 = z12;
                                                    i11 = c;
                                                    r110 = r18;
                                                    r34 = r35;
                                                    C3460g1 c3460g1M5551r6 = r10.m5551r();
                                                    byte[] bArr13 = new byte[i11];
                                                    // fill-array-data instruction
                                                    bArr13[0] = -29;
                                                    bArr13[1] = -75;
                                                    bArr13[2] = -31;
                                                    bArr13[3] = 63;
                                                    bArr13[4] = -32;
                                                    String strM2421h12 = AbstractC1387m.m2421h(bArr13, new byte[]{-122, -57, -109, 80, -110, -3, -109, -53});
                                                    byte[] bArr14 = new byte[i11];
                                                    // fill-array-data instruction
                                                    bArr14[0] = 70;
                                                    bArr14[1] = -107;
                                                    bArr14[2] = 37;
                                                    bArr14[3] = -89;
                                                    bArr14[4] = 124;
                                                    String strM2421h13 = AbstractC1387m.m2421h(bArr14, new byte[]{53, -31, 68, -64, 25, 78, 95, -126});
                                                    byte[] bArr15 = new byte[i11];
                                                    // fill-array-data instruction
                                                    bArr15[0] = 10;
                                                    bArr15[1] = 75;
                                                    bArr15[2] = 12;
                                                    bArr15[3] = 80;
                                                    bArr15[4] = -12;
                                                    r9 = 1;
                                                    c3460g1M5551r6.m5422e(strM2421h12, strM2421h13, AbstractC1387m.m2421h(new byte[]{-51, -59, 52, -45, 12, 19, -89, -125}, new byte[]{-66, -96, 89, -78, 98, 103, -50, -32}), AbstractC1387m.m2421h(new byte[]{-98, -22, -48, -84, 20, 10, -102, ByteCompanionObject.MIN_VALUE, -98, -10, -52, -79, 25}, new byte[]{-19, -123, -91, -34, 119, 111, -55, -27}), Long.valueOf((long) r34), AbstractC1387m.m2421h(new byte[]{-126, 56, 104, 82, -23, -106, -40, -13, -118, 51}, new byte[]{-27, 93, 6, 55, -101, -9, -84, -102}), Integer.valueOf(i13), AbstractC1387m.m2421h(bArr15, new byte[]{123, 62, 105, 34, -115, -108, 67, 119}), r110, AbstractC1387m.m2421h(new byte[]{109, -81, -66, 48, 64, 79, 101, -27, 68, -87}, new byte[]{9, -38, -52, 81, 52, 38, 10, -117}), Double.valueOf(C3498x.m5516u(jNanoTime)), AbstractC1387m.m2421h(new byte[]{-91, 18, -113, -105}, new byte[]{-47, 107, -1, -14, -33, 3, -71, 112}), e.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{-72, 4, 69, -75, 88, -4, 73}, new byte[]{-43, 97, 54, -58, 57, -101, 44, 58}), e.getMessage());
                                                    Log.e(r10.f10281a, AbstractC1387m.m2421h(new byte[]{51, 104, -117, 78, 62, 13, -34, 116, 64, 124, -109, 74, 34, 0, -105, 113, 1, 100, -118, 74, 52}, new byte[]{96, 13, -26, 47, 80, 121, -73, 23}), e);
                                                    synchronized (r10.f10269O) {
                                                        if (r10.f10274T && i13 == r10.f10277W) {
                                                            r10.m5544i(r10.f10290e0, r10.f10316y);
                                                        }
                                                    }
                                                    r10.f10276V = r1;
                                                    if (r10.f10274T || r10.f10278X.isEmpty() || r10.f10279Y != r10.f10277W) {
                                                        return;
                                                    }
                                                    r10.f10283b.schedule(new RunnableC3486r(r10, r10.f10278X, r10.f10279Y, 1), r11, TimeUnit.MILLISECONDS);
                                                }
                                            } catch (Exception e14) {
                                                e = e14;
                                                c10 = 5;
                                            }
                                        } catch (Exception e15) {
                                            e = e15;
                                        }
                                    } catch (Exception e16) {
                                        e = e16;
                                        r32 = r11;
                                    }
                                } catch (Throwable th15) {
                                    th = th15;
                                    r1 = 0;
                                    r11 = 0;
                                }
                            } catch (Throwable th16) {
                                th = th16;
                                z9 = false;
                            }
                        } catch (Exception e17) {
                            e = e17;
                            r32 = r11;
                            r18 = r14;
                        }
                    } catch (Throwable th17) {
                        th = th17;
                        r9 = r14;
                        r10.f10276V = r1;
                        if (r10.f10274T && !r10.f10278X.isEmpty() && r10.f10279Y == r10.f10277W) {
                            r10.f10283b.schedule(new RunnableC3486r(r10, r10.f10278X, r10.f10279Y, r9), r11, TimeUnit.MILLISECONDS);
                        }
                        throw th;
                    }
                }
            });
        }
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: a */
    public final void mo5402a() {
        int iAbandonAudioFocusRequest;
        AudioFocusRequest audioFocusRequest;
        long jNanoTime = System.nanoTime();
        AudioManager audioManager = this.f10297i;
        if (audioManager == null || (audioFocusRequest = this.f10299j) == null) {
            iAbandonAudioFocusRequest = -1;
        } else {
            iAbandonAudioFocusRequest = Build.VERSION.SDK_INT >= 26 ? audioManager.abandonAudioFocusRequest(audioFocusRequest) : 0;
        }
        if (m5551r().m5423i() != 0) {
            m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-27, 119, 11, -22, 5, 81, -34, -83, -17, 125, 9, -20, 19}, new byte[]{-125, 24, 104, -97, 118, 14, -84, -56}), AbstractC1387m.m2421h(new byte[]{87, 97, -21, 40, -101, -84}, new byte[]{37, 4, -104, 93, -9, -40, 64, 23}), Integer.valueOf(iAbandonAudioFocusRequest), AbstractC1387m.m2421h(new byte[]{-106, -32, -32, 27, -94, 66, 2, -24, -65, -26}, new byte[]{-14, -107, -110, 122, -42, 43, 109, -122}), Double.valueOf(m5516u(jNanoTime)));
        }
        synchronized (this.f10269O) {
            try {
                m5551r().m5421d(this.f10260F == null ? AbstractC1387m.m2421h(new byte[]{59, -40, -89, 76, 65, -19, -111, 90, 49, -46, -91, 74, 87, -42}, new byte[]{93, -73, -60, 57, 50, -78, -29, 63}) : this.f10260F);
                this.f10260F = AbstractC1387m.m2421h(new byte[]{53, 21, -38, -28, 11, -28, 84, 16, 63, 31, -40, -30, 29, -33}, new byte[]{83, 122, -71, -111, 120, -69, 38, 117});
                this.f10274T = false;
                this.f10291f.clear();
                this.f10277W++;
                this.f10278X = "";
                this.f10275U = 0L;
                C3499x0 c3499x0M5552s = m5552s();
                synchronized (c3499x0M5552s) {
                    c3499x0M5552s.f10319b = 0L;
                    c3499x0M5552s.f10318a = 0L;
                    c3499x0M5552s.f10321d = "";
                    c3499x0M5552s.f10320c = "";
                }
                this.f10257C = false;
                if (this.f10256B != null) {
                    this.f10256B.m5444i0();
                }
                this.f10315x = "";
                this.f10280Z = "";
                this.f10282a0 = "";
                this.f10284b0 = "";
                this.f10286c0 = "";
                this.f10288d0 = "";
                this.f10290e0 = "";
                this.f10292f0++;
                Recognizer recognizer = this.f10270P;
                if (recognizer != null) {
                    recognizer.reset();
                }
                Recognizer recognizer2 = this.f10271Q;
                if (recognizer2 != null) {
                    recognizer2.reset();
                }
                synchronized (this) {
                    this.f10272R = 0;
                    this.f10273S = 0;
                }
                this.f10300j0 = "";
            } catch (Throwable th) {
                throw th;
            }
        }
        m5527O(f10253m0);
    }

    /* JADX INFO: renamed from: a0 */
    public final void m5538a0() {
        AudioRecord audioRecord = this.f10301k;
        if (audioRecord != null) {
            try {
                if (audioRecord.getState() == 1) {
                    this.f10301k.stop();
                }
            } catch (IllegalStateException unused) {
            }
            this.f10301k.release();
            this.f10301k = null;
        }
        m5527O(EnumC3443b.f9929b);
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: b */
    public final void mo5403b() {
        m5551r().m5421d(this.f10306o ? AbstractC1387m.m2421h(new byte[]{-47, -60, -45, 23, -75, 121, -46, -112}, new byte[]{-75, -83, -96, 103, -38, 10, -73, -12}) : AbstractC1387m.m2421h(new byte[]{120, 113, 24, 39, 42, 35, -25, -21, 109, 75, 8, 60, 55, 55, -2, -32, 110}, new byte[]{10, 20, 123, 72, 88, 71, -114, -123}));
        if (this.f10256B != null) {
            this.f10256B.m5444i0();
        }
        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-45, -1, -98, 27, -111, -53, -60, 100}, new byte[]{-96, -117, -15, 107, -57, -92, -73, 15}), ColorText.RED);
        this.f10294g0++;
        this.f10291f.clear();
        ScheduledFuture scheduledFuture = this.f10293g;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f10293g.cancel(true);
            this.f10293g = null;
        }
        m5538a0();
        synchronized (this.f10269O) {
            Recognizer recognizer = this.f10270P;
            if (recognizer != null) {
                recognizer.close();
                this.f10270P = null;
            }
            Recognizer recognizer2 = this.f10271Q;
            if (recognizer2 != null) {
                recognizer2.close();
                this.f10271Q = null;
            }
            this.f10274T = false;
            this.f10257C = false;
        }
        m5527O(EnumC3443b.f9929b);
    }

    /* JADX INFO: renamed from: b0 */
    public final String m5539b0() {
        synchronized (this.f10269O) {
            if (this.f10271Q == null) {
                try {
                    this.f10271Q = new Recognizer(this.f10303l, 16000.0f);
                } catch (Exception unused) {
                    return null;
                }
            }
            this.f10271Q.reset();
            this.f10274T = true;
            if (m5551r().m5423i() == 0) {
                m5545k(AbstractC1387m.m2421h(new byte[]{-89, -45, -59, -24, -122, -30}, new byte[]{-54, -78, -85, -99, -25, -114, -43, -35}));
            }
            this.f10260F = AbstractC1387m.m2421h(new byte[]{49, 90, Base64.padSymbol, 17, -75, -40, -10, -44, 59, 80, 63, 23, -93, -29}, new byte[]{87, 53, 94, 100, -58, -121, -124, -79});
            this.f10277W++;
            this.f10278X = "";
            m5552s().m5560d(System.currentTimeMillis());
            this.f10257C = false;
            this.f10315x = "";
            this.f10275U = m5552s().m5561e();
            this.f10280Z = "";
            this.f10282a0 = "";
            this.f10284b0 = "";
            this.f10286c0 = "";
            this.f10288d0 = "";
            this.f10290e0 = "";
            this.f10292f0++;
            byte[] bArrM5522D = m5522D();
            if (bArrM5522D == null || bArrM5522D.length <= 0) {
                return null;
            }
            this.f10291f.clear();
            long jNanoTime = System.nanoTime();
            long jThreadCpuTimeNanos = Debug.threadCpuTimeNanos();
            boolean zAcceptWaveForm = this.f10271Q.acceptWaveForm(bArrM5522D, bArrM5522D.length);
            Recognizer recognizer = this.f10271Q;
            String result = zAcceptWaveForm ? recognizer.getResult() : recognizer.getPartialResult();
            m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{69, -18, -104, -57, 78, -50, -119, -65, 71, -61, -113, -64, 75, -60, -114, -93}, new byte[]{53, -100, -3, -91, 59, -88, -17, -38}), AbstractC1387m.m2421h(new byte[]{-27, 78, 120, 37, -90}, new byte[]{-121, 55, 12, 64, -43, -87, -111, -14}), Integer.valueOf(bArrM5522D.length), AbstractC1387m.m2421h(new byte[]{110, -63, 36, 17, 111, -21, -123}, new byte[]{15, -76, 64, 120, 0, -90, -10, -76}), Long.valueOf((((long) bArrM5522D.length) * 1000) / 32000), AbstractC1387m.m2421h(new byte[]{-24, -100, -49, -77, 54, 4, 56, -86}, new byte[]{-116, -7, -84, -36, 82, 97, 117, -39}), Double.valueOf(m5516u(jNanoTime)), AbstractC1387m.m2421h(new byte[]{-71, -86, -35, 33, -66}, new byte[]{-38, -38, -88, 108, -51, 19, 9, -11}), Double.valueOf(Math.max(0L, Debug.threadCpuTimeNanos() - jThreadCpuTimeNanos) / 1000000.0d));
            return result;
        }
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: c */
    public final void mo5404c() {
        int i10;
        if (this.f10306o) {
            return;
        }
        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-87, 4, -106, 99, -20, -55, 94, -53, -79}, new byte[]{-38, 112, -9, 17, -104, -97, 49, -72}), ColorText.RED);
        mo5403b();
        synchronized (this) {
            i10 = 0;
            if (!this.f10306o) {
                int i11 = this.f10309r + 1;
                this.f10309r = i11;
                this.f10307p = Collections.EMPTY_LIST;
                this.f10308q = true;
                this.f10285c.execute(new RunnableC3484q(this, i11, i10));
            }
        }
        this.f10296h0 = System.currentTimeMillis();
        int i12 = this.f10294g0 + 1;
        this.f10294g0 = i12;
        this.f10291f.clear();
        this.f10289e.execute(new RunnableC3484q(this, i12, 2));
        this.f10293g = this.f10283b.scheduleWithFixedDelay(new RunnableC3484q(this, i12, 3), 0L, 30L, TimeUnit.MILLISECONDS);
        synchronized (this) {
            ScheduledFuture scheduledFuture = this.f10295h;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                this.f10295h = this.f10283b.scheduleWithFixedDelay(new RunnableC3482p(this, i10), 3L, 3L, TimeUnit.SECONDS);
            }
        }
    }

    /* JADX INFO: renamed from: c0 */
    public final void m5540c0(String str, String str2, String str3, String str4) {
        m5541d0(str, str2, str3, str4, m5551r().m5423i(), this.f10290e0, this.f10261G);
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: d */
    public final void mo5405d() {
        f10253m0 = f10252l0;
        if (!this.f10274T && m5551r().m5423i() == 0) {
            m5545k(AbstractC1387m.m2421h(new byte[]{7, 94, -68, 25, -84, -3}, new byte[]{106, 63, -46, 108, -51, -111, -16, 77}));
        }
        long jNanoTime = System.nanoTime();
        if (this.f10299j == null && Build.VERSION.SDK_INT >= 26) {
            this.f10299j = AbstractC3449d.m5378d().setOnAudioFocusChangeListener(new C3452e(this, 2)).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(2).build()).build();
        }
        int iRequestAudioFocus = Build.VERSION.SDK_INT >= 26 ? this.f10297i.requestAudioFocus(this.f10299j) : 0;
        if (!this.f10274T) {
            m5539b0();
        }
        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-31, -72, 50, -54, -1, 90, 119, 26, -10, -94, 52, -52, -8}, new byte[]{-121, -41, 81, -65, -116, 5, 5, ByteCompanionObject.MAX_VALUE}), AbstractC1387m.m2421h(new byte[]{44, 105, -86, -14, 69, -23}, new byte[]{94, 12, -39, -121, 41, -99, -29, -61}), Integer.valueOf(iRequestAudioFocus), AbstractC1387m.m2421h(new byte[]{-15, 105, 9, -7, 72, 97, -92, -30, -40, 111}, new byte[]{-107, 28, 123, -104, 60, 8, -53, -116}), Double.valueOf(m5516u(jNanoTime)), AbstractC1387m.m2421h(new byte[]{-46, 110, -20, -71, -45, 119, 12, 116}, new byte[]{-76, 27, ByteCompanionObject.MIN_VALUE, -43, -98, 24, 104, 17}), Boolean.valueOf(this.f10274T));
        m5527O(EnumC3443b.f9931d);
    }

    /* JADX INFO: renamed from: d0 */
    public final void m5541d0(String str, String str2, String str3, String str4, long j10, String str5, long j11) {
        this.f10262H = str;
        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{73, -68, 37, ByteCompanionObject.MAX_VALUE, -121, 115, 113, 15}, new byte[]{45, -39, 70, 22, -12, 26, 30, 97}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -68, -20, -57, 23, -117, 68, 122, ByteCompanionObject.MAX_VALUE, -96, -16, -38, 26}, new byte[]{12, -45, -103, -75, 116, -18, 23, 31}), Long.valueOf(j10), AbstractC1387m.m2421h(new byte[]{-10, 46, -16}, new byte[]{-124, 79, -121, -9, 74, -41, 47, 115}), str5, AbstractC1387m.m2421h(new byte[]{9, 83, -105, 27, Base64.padSymbol}, new byte[]{123, 60, -30, 111, 88, 4, 45, -32}), str, AbstractC1387m.m2421h(new byte[]{2, -125, 58}, new byte[]{105, -26, 67, -92, -122, 29, -40, -58}), str2, AbstractC1387m.m2421h(new byte[]{42, -94, -98, -113, 23, 103}, new byte[]{90, -54, -20, -18, 100, 2, 95, -124}), str3, AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, 28, -123, -50, -83, -48}, new byte[]{13, 121, -28, -67, -62, -66, 78, -33}), str4, AbstractC1387m.m2421h(new byte[]{-86, ByteCompanionObject.MAX_VALUE, -7, -53, 59, -72, 73, 72, -118, 109}, new byte[]{-57, 30, -115, -88, 83, -47, 39, 47}), Double.valueOf(m5516u(j11)));
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: e */
    public final EnumC3443b mo5406e() {
        return f10252l0;
    }

    /* JADX INFO: renamed from: e0 */
    public final synchronized C3474l0 m5542e0() {
        try {
            if (this.f10256B == null) {
                this.f10256B = new C3474l0(new C3720f(18), new C2455p(13, this), Executors.newSingleThreadScheduledExecutor());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f10256B;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x02ae A[EDGE_INSN: B:108:0x02ae->B:77:0x02ae BREAK  A[LOOP:2: B:74:0x029b->B:76:0x02aa], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x008c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0090  */
    /* JADX WARN: Code duplicated, block: B:24:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:26:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:28:0x00da  */
    /* JADX WARN: Code duplicated, block: B:72:0x028c  */
    /* JADX WARN: Code duplicated, block: B:74:0x029b A[LOOP:2: B:74:0x029b->B:76:0x02aa, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:76:0x02aa A[LOOP:2: B:74:0x029b->B:76:0x02aa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:80:0x02be  */
    /* JADX WARN: Code duplicated, block: B:83:0x02c7 A[LOOP:0: B:81:0x02c4->B:83:0x02c7, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX INFO: renamed from: h */
    public final void m5543h(LinkedHashMap linkedHashMap, String str, C1919e c1919e, String str2) {
        String str3;
        String strM5390d;
        String strM5532U;
        String strTrim;
        ArrayList arrayList;
        String[] strArrSplit;
        int length;
        int i10;
        boolean z9;
        StringBuilder sb;
        Iterator it;
        String str4;
        boolean z10;
        ?? r18;
        String[] strArrM5510L;
        StringBuilder sb2;
        int i11;
        if (str == null || c1919e == null) {
            return;
        }
        String strReplaceAll = str.trim().replaceAll(AbstractC1387m.m2421h(new byte[]{-18, 3, -14}, new byte[]{-78, 112, -39, -27, 92, 60, -6, -90}), " ");
        if (strReplaceAll.isEmpty()) {
            return;
        }
        String strM3009g = AbstractC1920f.m3009g(c1919e);
        StringBuilder sb3 = new StringBuilder();
        Locale locale = Locale.ROOT;
        sb3.append(strReplaceAll.toLowerCase(locale));
        boolean z11 = false;
        sb3.append((char) 0);
        sb3.append(strM3009g);
        String string = sb3.toString();
        if (linkedHashMap.containsKey(string)) {
            return;
        }
        String strM5393b = C3451d1.m5393b(strReplaceAll);
        if (!str2.isEmpty()) {
            str3 = str2;
            if (!str3.startsWith(AbstractC1387m.m2421h(new byte[]{-119, 67, -33, 17, -14, -88, 18, 72, -33}, new byte[]{-27, 34, -79, 118, -121, -55, 117, 45}))) {
                strM5390d = C3450d0.m5390d(strM5393b);
            }
            C3492u c3492u = new C3492u(strReplaceAll, c1919e, strM5390d);
            strM5532U = m5532U(strReplaceAll);
            if (strM5532U.isEmpty()) {
                r18 = 0;
            } else {
                strTrim = Normalizer.normalize(strM5532U, Normalizer.Form.NFKC).toLowerCase(locale).replaceAll(AbstractC1387m.m2421h(new byte[]{113, 102, 65, -19, -111, 35, 22, 97, 90, 67, 83, -32, -73, 68}, new byte[]{42, 56, 29, -99, -22, 111, 107, Base64.padSymbol}), " ").trim();
                if (strTrim.isEmpty()) {
                    z10 = false;
                } else {
                    arrayList = new ArrayList();
                    strArrSplit = strTrim.split(AbstractC1387m.m2421h(new byte[]{-31, 13, 94}, new byte[]{-67, 126, 117, 59, 51, 93, 12, 0}));
                    length = strArrSplit.length;
                    i10 = 0;
                    while (i10 < length) {
                        boolean z12 = z11;
                        str4 = strArrSplit[i10];
                        if (str4.equals(AbstractC1387m.m2421h(new byte[]{-120, -124, -94, -96, -104, -61, 77, 45, -120, ByteCompanionObject.MIN_VALUE, -93, -99, -104, -52, 76, 28, -119, -71, -94, -82}, new byte[]{88, 59, 114, 30, 72, 117, -99, -99})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{19, -102, 88, 76, -120, -65, 37, -127, 19, -98, 89, 113, -120, -80}, new byte[]{-61, 37, -120, -14, 88, 9, -11, 49})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{68, -1, -119, 21}, new byte[]{-108, 66, 89, -91, -32, 119, 8, 33})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{22, -28}, new byte[]{-58, 86, -80, -3, 26, 108, -122, 49})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{120, 39, 82, 84}, new byte[]{-88, -104, -126, -22, 15, -8, 28, -61})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{-56, -30, 122, -38, -91, -75, -118, -21, -55, -42, 123, -24}, new byte[]{24, 94, -86, 100, 117, 3, 90, 94})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{42, -52, -28, 69, 63, 111, -117, 90, 42, -50}, new byte[]{-6, 112, 52, -5, -17, -39, 91, -25})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{-64, 51, -2, 58, 120, -73, 95, 69, -64, 62}, new byte[]{16, -121, 46, -118, -88, 5, -113, -11})) && !str4.startsWith(AbstractC1387m.m2421h(new byte[]{-110, 124, -89, -58, -104, 59, -19, -63, -109, 74, -90, -12}, new byte[]{66, -53, 119, 118, 72, -124, 60, 66})) && !str4.startsWith(AbstractC1387m.m2421h(new byte[]{-11, 0, -65, 66, -15, 57, -24, 40, -11, 9, -66, 116}, new byte[]{37, -78, 110, -55, 33, -122, 56, -106})) && !str4.startsWith(AbstractC1387m.m2421h(new byte[]{48, 98, -113, 94, 123, -32, -53, -73, 49, 83}, new byte[]{-31, -29, 95, -22, -85, 85, 27, 12})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{63, -50, 122, -78, 125, 106}, new byte[]{79, -94, 31, -45, 14, 15, 80, 5})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{-48, -111, -107, 5, -48}, new byte[]{-77, -2, -32, 105, -76, 47, 58, 63})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{-36, 65, 50, -56, 74}, new byte[]{-85, 46, 71, -92, 46, -36, -46, 28})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{-69, -53, -2}, new byte[]{-40, -86, -112, -14, -2, -104, 12, 25})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{-10, 55, -124}, new byte[]{-113, 88, -15, 52, 48, 73, -13, 59})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{-48, -61, -124, -126, 114}, new byte[]{-93, -73, -27, -16, 6, -7, 116, -74})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{-112, -125, 107, ByteCompanionObject.MAX_VALUE, -52, -57}, new byte[]{-4, -30, 30, 17, -81, -81, 14, -93})) && !str4.equals(AbstractC1387m.m2421h(new byte[]{51, -86, -83}, new byte[]{65, -33, -61, 48, ByteCompanionObject.MIN_VALUE, 2, 42, 20}))) {
                            arrayList.add(str4);
                        }
                        i10++;
                        z11 = z12;
                    }
                    z9 = z11;
                    z10 = z9;
                    if (arrayList.isEmpty()) {
                        sb = new StringBuilder();
                        it = arrayList.iterator();
                        if (it.hasNext()) {
                            while (true) {
                                sb.append((CharSequence) it.next());
                                if (it.hasNext()) {
                                    break;
                                } else {
                                    sb.append((CharSequence) " ");
                                }
                            }
                        }
                        strM5532U = sb.toString();
                        r18 = z9;
                    }
                }
                strM5532U = "";
                r18 = z10;
            }
            strArrM5510L = m5510L(strM5532U);
            sb2 = new StringBuilder();
            if (strArrM5510L.length > 0) {
                sb2.append((CharSequence) strArrM5510L[r18]);
                for (i11 = 1; i11 < strArrM5510L.length; i11++) {
                    sb2.append((CharSequence) " ");
                    sb2.append((CharSequence) strArrM5510L[i11]);
                }
            }
            c3492u.f10221h = strM5393b;
            C3451d1 c3451d1 = this.f10313v;
            c3492u.f10222i = c3451d1.m5396e(strM5393b);
            c3492u.f10217d = c3451d1.f9948b.containsKey(strM3009g) | c3492u.f10217d;
            linkedHashMap.put(string, c3492u);
        }
        str3 = str2;
        strM5390d = str3;
        C3492u c3492u2 = new C3492u(strReplaceAll, c1919e, strM5390d);
        strM5532U = m5532U(strReplaceAll);
        if (strM5532U.isEmpty()) {
            r18 = 0;
        } else {
            strTrim = Normalizer.normalize(strM5532U, Normalizer.Form.NFKC).toLowerCase(locale).replaceAll(AbstractC1387m.m2421h(new byte[]{113, 102, 65, -19, -111, 35, 22, 97, 90, 67, 83, -32, -73, 68}, new byte[]{42, 56, 29, -99, -22, 111, 107, Base64.padSymbol}), " ").trim();
            if (strTrim.isEmpty()) {
                z10 = false;
            } else {
                arrayList = new ArrayList();
                strArrSplit = strTrim.split(AbstractC1387m.m2421h(new byte[]{-31, 13, 94}, new byte[]{-67, 126, 117, 59, 51, 93, 12, 0}));
                length = strArrSplit.length;
                i10 = 0;
                while (i10 < length) {
                    boolean z13 = z11;
                    str4 = strArrSplit[i10];
                    if (str4.equals(AbstractC1387m.m2421h(new byte[]{-120, -124, -94, -96, -104, -61, 77, 45, -120, ByteCompanionObject.MIN_VALUE, -93, -99, -104, -52, 76, 28, -119, -71, -94, -82}, new byte[]{88, 59, 114, 30, 72, 117, -99, -99}))) {
                    }
                    i10++;
                    z11 = z13;
                }
                z9 = z11;
                z10 = z9;
                if (arrayList.isEmpty()) {
                    sb = new StringBuilder();
                    it = arrayList.iterator();
                    if (it.hasNext()) {
                        while (true) {
                            sb.append((CharSequence) it.next());
                            if (it.hasNext()) {
                                break;
                                break;
                            }
                            sb.append((CharSequence) " ");
                        }
                    }
                    strM5532U = sb.toString();
                    r18 = z9;
                }
            }
            strM5532U = "";
            r18 = z10;
        }
        strArrM5510L = m5510L(strM5532U);
        sb2 = new StringBuilder();
        if (strArrM5510L.length > 0) {
            sb2.append((CharSequence) strArrM5510L[r18]);
            while (i11 < strArrM5510L.length) {
                sb2.append((CharSequence) " ");
                sb2.append((CharSequence) strArrM5510L[i11]);
            }
        }
        c3492u2.f10221h = strM5393b;
        C3451d1 c3451d2 = this.f10313v;
        c3492u2.f10222i = c3451d2.m5396e(strM5393b);
        c3492u2.f10217d = c3451d2.f9948b.containsKey(strM3009g) | c3492u2.f10217d;
        linkedHashMap.put(string, c3492u2);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x006f  */
    /* JADX INFO: renamed from: i */
    public final void m5544i(String str, String str2) {
        int i10;
        char c;
        String[] strArrSplit;
        String strM2421h;
        int i11;
        int i12;
        String string;
        if (this.f10274T) {
            m5552s().m5558b(System.currentTimeMillis(), str, str2);
            this.f10275U = m5552s().m5561e();
            Context context = this.f10304m;
            boolean z9 = str2.equals(AbstractC1387m.m2421h(new byte[]{94, 124, -41, -37, 76, -119, -49, 105, 75, 109, -36, -25, 73, -118, -64, 83, 65}, new byte[]{45, 12, -78, -72, 37, -17, -74, 54})) || str2.equals(AbstractC1387m.m2421h(new byte[]{-111, 81, 114, -33, 43, 103, -72, -115, -68, 82, ByteCompanionObject.MAX_VALUE, -48, 0, 98, -85, -98, -122, 88, 65, -48, 48, 122, -111, -101, -106, 68, 110, -47, 45, 122, -85, -116}, new byte[]{-29, 52, 30, -66, 95, 14, -50, -24}));
            if (z9 || str2.startsWith(AbstractC1387m.m2421h(new byte[]{70, -84, 119, 74, -10, 23, -78, 113, 85, -112, 117, 66, -11, 12, -120, 65, 82, -95, 98, 85, -8, 16, -127, ByteCompanionObject.MAX_VALUE, 69, -93, 102, 25}, new byte[]{39, -49, 3, 35, -103, 121, -19, 30}))) {
                if (z9) {
                    i10 = 0;
                    c = 1;
                    strArrSplit = new String[]{"", AbstractC1387m.m2421h(new byte[]{19, -73, 68}, new byte[]{117, -42, 42, -65, 122, -67, -89, -123}), AbstractC1387m.m2421h(new byte[]{76, 27, -47}, new byte[]{45, 119, -67, 109, -31, 19, 43, -24}), ""};
                } else {
                    i10 = 0;
                    c = 1;
                    strArrSplit = str2.split(AbstractC1387m.m2421h(new byte[]{58}, new byte[]{0, 102, -105, 115, Base64.padSymbol, -54, -39, -86}));
                }
                if (strArrSplit.length == 4 && strArrSplit[c].matches(AbstractC1387m.m2421h(new byte[]{67, -88, 22, 57, 107, -124, -47, -119, 81, -96, 12, 33, 114, -106, -61, -107, 72, -89, 25, 51, 120, -121, -56, -116, 68, -92, 10, 60, 112, -122, -33, -124}, new byte[]{52, -63, 120, 93, 4, -13, -83, -31}))) {
                    ArrayList arrayList = new ArrayList();
                    C1652b.m2734a();
                    ArrayList arrayListM2990e = C1652b.m2737f().m2990e();
                    int size = arrayListM2990e.size();
                    int i13 = i10;
                    while (i13 < size) {
                        Object obj = arrayListM2990e.get(i13);
                        i13++;
                        C1919e c1919e = (C1919e) obj;
                        if (AbstractC1920f.m3006d(c1919e)) {
                            arrayList.add(AbstractC1920f.m3009g(c1919e));
                        }
                    }
                    String str3 = strArrSplit[c];
                    String str4 = strArrSplit[2];
                    String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-42, 37, -77}, new byte[]{-91, 64, -57, 68, -47, 74, -36, -119});
                    Map map = this.f10313v.f9948b;
                    TreeSet treeSet = new TreeSet();
                    int size2 = arrayList.size();
                    int i14 = i10;
                    while (i14 < size2) {
                        Object obj2 = arrayList.get(i14);
                        i14++;
                        String str5 = (String) obj2;
                        C3501y0 c3501y0M6f = map.containsKey(str5) ? (C3501y0) map.get(str5) : AbstractC0000a.m6f(str5);
                        boolean z10 = z9;
                        if (c3501y0M6f != null && c3501y0M6f.f10322a.equals(str3) && c3501y0M6f.f10323b.equals(str4) && c3501y0M6f.f10324c.equals(strM2421h2)) {
                            double d = c3501y0M6f.f10325d;
                            if (d == 0.0d) {
                                d = 0.0d;
                            }
                            treeSet.add(Double.valueOf(d));
                        }
                        strArrSplit = strArrSplit;
                        z9 = z10;
                        arrayList = arrayList;
                    }
                    boolean z11 = z9;
                    String[] strArr = strArrSplit;
                    ArrayList arrayList2 = new ArrayList(treeSet);
                    if (!arrayList2.isEmpty()) {
                        ArrayList arrayList3 = new ArrayList();
                        if (strArr[c].equals(AbstractC1387m.m2421h(new byte[]{96, -81, 110, 34, -83, -109}, new byte[]{23, -58, 0, 70, -62, -28, 108, -27}))) {
                            byte[] bArr = new byte[1];
                            bArr[i10] = 14;
                            strM2421h = AbstractC1387m.m2421h(bArr, new byte[]{43, 116, 64, -89, -40, 81, -41, -126});
                        } else {
                            strM2421h = strArr[c].equals(AbstractC1387m.m2421h(new byte[]{67, -31, -23, 36, -28, 88, 77, 56, 66, -10, -31}, new byte[]{55, -124, -124, 84, -127, 42, 44, 76})) ? AbstractC1387m.m2421h(new byte[]{106, -115, -39, 27}, new byte[]{74, 79, 105, 88, -18, 54, 92, -119}) : "";
                        }
                        int size3 = arrayList2.size();
                        int i15 = i10;
                        while (i15 < size3) {
                            Object obj3 = arrayList2.get(i15);
                            i15++;
                            double dDoubleValue = ((Double) obj3).doubleValue();
                            StringBuilder sb = new StringBuilder();
                            sb.append(dDoubleValue == Math.rint(dDoubleValue) ? Long.toString((long) dDoubleValue) : Double.toString(dDoubleValue));
                            sb.append(strM2421h);
                            arrayList3.add(sb.toString());
                        }
                        C3460g1 c3460g1M5551r = m5551r();
                        String strM2421h3 = AbstractC1387m.m2421h(new byte[]{31, 38, 35, 67, 124, -113, 118, -106, 27, 15, 52, 75, 124, -101, 113, -119}, new byte[]{126, 80, 66, 42, 16, -18, 20, -6});
                        String strM2421h4 = AbstractC1387m.m2421h(new byte[]{44, -101, 78, 77, 117, 76}, new byte[]{72, -12, 35, 44, 28, 34, -52, 39});
                        String str6 = strArr[c];
                        String strM2421h5 = AbstractC1387m.m2421h(new byte[]{-38, -74, -76, 24}, new byte[]{-96, -39, -38, 125, 106, 10, 35, -1});
                        String str7 = strArr[2];
                        String strM2421h6 = AbstractC1387m.m2421h(new byte[]{-61, -53, 49, -95, 83, -20}, new byte[]{-75, -86, 93, -44, 54, -97, 76, -98});
                        String strM2421h7 = AbstractC1387m.m2421h(new byte[]{-100, -45}, new byte[]{-80, -13, 18, -124, 18, 24, -38, 32});
                        StringBuilder sb2 = new StringBuilder();
                        Iterator it = arrayList3.iterator();
                        if (it.hasNext()) {
                            while (true) {
                                sb2.append((CharSequence) it.next());
                                if (!it.hasNext()) {
                                    break;
                                } else {
                                    sb2.append((CharSequence) strM2421h7);
                                }
                            }
                        }
                        c3460g1M5551r.m5422e(strM2421h3, strM2421h4, str6, strM2421h5, str7, strM2421h6, sb2.toString());
                        if (z11) {
                            i12 = R.string.voice_ask_fan_available_values;
                            i11 = 8;
                        } else {
                            i11 = 8;
                            if (strArr[c].equals(AbstractC1387m.m2421h(new byte[]{110, 19, 91, -87, -121, 110}, new byte[]{25, 122, 53, -51, -24, 25, ByteCompanionObject.MAX_VALUE, 69}))) {
                                i12 = R.string.voice_available_window_values;
                            } else {
                                i12 = strArr[c].equals(AbstractC1387m.m2421h(new byte[]{-52, -10, -94, Base64.padSymbol, 101, 58, -90, -84, -51, -31, -86}, new byte[]{-72, -109, -49, 77, 0, 72, -57, -40})) ? R.string.voice_available_temperature_values : R.string.voice_available_level_values;
                            }
                        }
                        byte[] bArr2 = new byte[i11];
                        // fill-array-data instruction
                        bArr2[0] = -77;
                        bArr2[1] = -58;
                        bArr2[2] = -33;
                        bArr2[3] = 100;
                        bArr2[4] = -27;
                        bArr2[5] = 35;
                        bArr2[6] = -102;
                        bArr2[7] = -127;
                        String strM2421h8 = AbstractC1387m.m2421h(new byte[]{-97, -26}, bArr2);
                        StringBuilder sb3 = new StringBuilder();
                        Iterator it2 = arrayList3.iterator();
                        if (it2.hasNext()) {
                            while (true) {
                                sb3.append((CharSequence) it2.next());
                                if (!it2.hasNext()) {
                                    break;
                                } else {
                                    sb3.append((CharSequence) strM2421h8);
                                }
                            }
                        }
                        string = context.getString(i12, sb3.toString());
                    } else if (z11) {
                        string = context.getString(R.string.voice_fan_unavailable);
                    } else {
                        string = null;
                    }
                } else {
                    string = null;
                }
            } else {
                string = null;
            }
            if (string == null) {
                string = this.f10304m.getString(AbstractC3656k.m5870p(str2, str));
            }
            this.f10315x = string != null ? string : "";
            m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-40, 69, -106, 103, -37, 70, 96, 19, -38, 93, -98, 122, -36}, new byte[]{-69, 41, -9, 21, -78, 32, 9, 112}), AbstractC1387m.m2421h(new byte[]{-74, 2, -56}, new byte[]{-60, 99, -65, 112, -43, -54, 7, 80}), str, AbstractC1387m.m2421h(new byte[]{-3, 72, 75, -31, 91, -71}, new byte[]{-113, 45, 42, -110, 52, -41, -70, 55}), str2, AbstractC1387m.m2421h(new byte[]{86, -78, -77, -45, -34, -29}, new byte[]{38, -64, -36, -66, -82, -105, 106, -70}), this.f10315x, AbstractC1387m.m2421h(new byte[]{20, 120, 29, 65, -124, 25, 14, -120, 52, 106}, new byte[]{121, 25, 105, 34, -20, 112, 96, -17}), Double.valueOf(m5516u(this.f10261G)), AbstractC1387m.m2421h(new byte[]{26, 50, 30, 68, 16, 108, -89, 8, 21, 56, 2, 68, 56, 109}, new byte[]{123, 92, 109, 51, 117, 30, -16, 97}), Long.valueOf(Math.max(0L, this.f10275U - System.currentTimeMillis())));
            m5526N(str + "\n" + this.f10315x);
            String str8 = this.f10281a;
            StringBuilder sb4 = new StringBuilder();
            AbstractC1178q.m2087u(new byte[]{103, 123, -48, 126, 86, 24, 44, 115, 69, 99, -40, 99, 81, 68, 101}, new byte[]{36, 23, -79, 12, 63, 126, 69, 16}, sb4, str2);
            sb4.append(AbstractC1387m.m2421h(new byte[]{-113, -32, -61, -105, 111, 29, -127, 32, -125, -73, -53, -105, 120, 5, -109, 111}, new byte[]{-93, -64, -94, -7, 28, 106, -28, 82}));
            sb4.append(20000L);
            Log.i(str8, sb4.toString());
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m5545k(String str) {
        C3460g1 c3460g1M5551r = m5551r();
        synchronized (c3460g1M5551r) {
            try {
                if (c3460g1M5551r.f9999e != 0) {
                    c3460g1M5551r.m5421d(AbstractC1387m.m2421h(new byte[]{-43, -53, -31, -113, 120, 47, -25, 68, -61}, new byte[]{-89, -82, -110, -5, 25, 93, -109, 33}));
                }
                c3460g1M5551r.f9999e = C3460g1.f9994k.incrementAndGet();
                c3460g1M5551r.f9996b.getClass();
                c3460g1M5551r.f10000f = System.nanoTime();
                c3460g1M5551r.f10002h = false;
                c3460g1M5551r.f10004j = null;
                c3460g1M5551r.f10003i = null;
                C3261e c3261eM5419b = c3460g1M5551r.m5419b(c3460g1M5551r.f10000f, AbstractC1387m.m2421h(new byte[]{-10, -56, 53, -30, 92, -73, 38, 105, -10, -39, 39, -29, 65}, new byte[]{-123, -83, 70, -111, 53, -40, 72, 54}));
                C3460g1.m5416g(c3261eM5419b, AbstractC1387m.m2421h(new byte[]{75, 116, -99, 11, 105, 78}, new byte[]{56, 27, -24, 121, 10, 43, 21, -51}), str);
                c3460g1M5551r.f9997c.m5397a(c3261eM5419b, AbstractC1387m.m2421h(new byte[]{29, 51, -9, 12}, new byte[]{106, 82, -100, 105, -18, -90, 54, -8}));
                c3460g1M5551r.f9997c.m5398b();
                c3460g1M5551r.f9998d.m5398b();
                c3460g1M5551r.m5420c(c3261eM5419b);
            } catch (Throwable th) {
                throw th;
            }
        }
        String strLoadString = "";
        try {
            strLoadString = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{94, -4, 111, 58, 93, 100, 49, -123, 113, -40}, new byte[]{29, -67, Base64.padSymbol, 106, 47, 11, 87, -20}), "");
        } catch (Exception unused) {
        }
        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{55, 43, -59, -81, -115, -124, 45, 119, 53, 48, -62, -90, -118}, new byte[]{84, 68, -85, -55, -28, -29, 88, 5}), AbstractC1387m.m2421h(new byte[]{35, -108, -50, 105, 107, 50, -101}, new byte[]{83, -26, -95, 15, 2, 94, -2, 112}), strLoadString, AbstractC1387m.m2421h(new byte[]{-45, 12, -80, -127, 111}, new byte[]{-66, 99, -44, -28, 3, 88, 8, -102}), this.f10263I, AbstractC1387m.m2421h(new byte[]{41, 13, 63, -94, -126, -43, -57, 52, 58, 27, 62}, new byte[]{72, 120, 91, -53, -19, -122, -88, 65}), Integer.valueOf(this.f10264J), AbstractC1387m.m2421h(new byte[]{-110, 29, -83, -110, 2, 116, -74, 58, -107, 25}, new byte[]{-31, 124, -64, -30, 110, 17, -28, 91}), 16000, AbstractC1387m.m2421h(new byte[]{25, 39, -58, 54, 110, -92, -12, -34, 24}, new byte[]{107, 66, -89, 82, 44, -35, ByteCompanionObject.MIN_VALUE, -69}), 4096, AbstractC1387m.m2421h(new byte[]{123, -67, -80, -105, 40, 86, -78, 122, 121, -126, -90}, new byte[]{11, -49, -43, -11, 93, 48, -44, 31}), Integer.valueOf(TFTP.DEFAULT_TIMEOUT), AbstractC1387m.m2421h(new byte[]{-40, -127, -12, 103, -124, -61, 81, 26, -34, -109}, new byte[]{-69, -32, -102, 3, -19, -89, 48, 110}), Integer.valueOf(this.f10307p == null ? 0 : this.f10307p.size()), AbstractC1387m.m2421h(new byte[]{-47, -114, 58, 50, 4, -73, 75, 51, -41, -100, 4, 36, 8, -93, 75, 53, -37, -127, 51}, new byte[]{-78, -17, 84, 86, 109, -45, 42, 71}), Boolean.valueOf(this.f10308q), AbstractC1387m.m2421h(new byte[]{-52, 53, 13, 102, 58, -57, -122, -39, -19, 53, 1, 99, 45}, new byte[]{-65, 80, 96, 7, 84, -77, -17, -70}), Boolean.valueOf((this.f10312u == null || this.f10310s == null) ? false : true), AbstractC1387m.m2421h(new byte[]{28, 1, 2, 123, 38, 25, 46, 108, 10, 17, 5, 102, 47, 41}, new byte[]{111, 98, 109, 9, 67, 77, 70, 30}), Float.valueOf(0.88f), AbstractC1387m.m2421h(new byte[]{-97, -45, -27, -32, 111, -65, -100, -36, ByteCompanionObject.MIN_VALUE, -41, -28, -17, 105, -67, -84}, new byte[]{-14, -78, -105, -121, 6, -47, -56, -76}), Float.valueOf(0.035f));
    }

    /* JADX INFO: renamed from: l */
    public final List m5546l() {
        ArrayList arrayList = new ArrayList();
        C1652b.m2734a();
        C1652b.m2737f().getClass();
        String strM2986f = C1917c.m2986f();
        if (strM2986f != null && !strM2986f.trim().isEmpty()) {
            for (String str : strM2986f.trim().toLowerCase(Locale.ROOT).split(AbstractC1387m.m2421h(new byte[]{-61, -17, 31}, new byte[]{-97, -100, 52, 56, -106, ByteCompanionObject.MAX_VALUE, -24, 51}))) {
                if (!str.isEmpty() && !arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
            arrayList.add(AbstractC1387m.m2421h(new byte[]{-120, -84, -85, -74, 126}, new byte[]{-45, -39, -59, -35, 35, 40, ByteCompanionObject.MAX_VALUE, -114}));
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: m */
    public final boolean m5547m(String str, ArrayList arrayList) {
        Pattern pattern = AbstractC3469j1.f10033a;
        C0023h c0023hM15p = AbstractC0000a.m15p(C3451d1.m5392a(str), arrayList, this.f10313v.f9948b);
        if (c0023hM15p.m74i()) {
            return false;
        }
        return (((EnumC3503z0) c0023hM15p.f81c) != EnumC3503z0.f10330b && m5556y(str) == null && m5519A(str, true) == null && m5555x(str) == null) ? false : true;
    }

    /* JADX INFO: renamed from: n */
    public final boolean m5548n() {
        AudioManager audioManager = (AudioManager) this.f10304m.getSystemService(AbstractC1387m.m2421h(new byte[]{-86, 98, -62, -44, -118}, new byte[]{-53, 23, -90, -67, -27, -54, 82, -35}));
        return audioManager.getMode() == 0 && !audioManager.isMicrophoneMute();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003b  */
    /* JADX INFO: renamed from: o */
    public final void m5549o() {
        long j10;
        boolean z9;
        long j11;
        if (!this.f10274T || this.f10275U <= 0 || System.currentTimeMillis() < this.f10275U) {
            return;
        }
        C3499x0 c3499x0M5552s = m5552s();
        synchronized (c3499x0M5552s) {
            j10 = c3499x0M5552s.f10319b;
        }
        if (j10 > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            C3499x0 c3499x0M5552s2 = m5552s();
            synchronized (c3499x0M5552s2) {
                j11 = c3499x0M5552s2.f10319b;
            }
            if (jCurrentTimeMillis >= j11) {
                z9 = true;
            } else {
                z9 = false;
            }
        } else {
            z9 = false;
        }
        if (!z9 && !this.f10291f.isEmpty()) {
            this.f10275U = System.currentTimeMillis() + 1000;
            return;
        }
        if (!z9 && (this.f10276V || (!this.f10278X.isEmpty() && this.f10279Y == this.f10277W))) {
            this.f10275U = System.currentTimeMillis() + 1000;
            return;
        }
        Log.i(this.f10281a, AbstractC1387m.m2421h(new byte[]{-26, 2, 93, 93, 57, -9, -87, 119, -49, 16, 95, 88, 109, -20, -93, 122, ByteCompanionObject.MIN_VALUE, 3, 88, 92, 124, -22, -71, 96}, new byte[]{-96, 119, 49, 49, 25, -123, -52, 20}));
        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-68, -69, 82, 57, 50, -7, -127}, new byte[]{-56, -46, 63, 92, 93, -116, -11, -116}), AbstractC1387m.m2421h(new byte[]{-39, -121, 68, 118}, new byte[]{-79, -26, 54, 18, -3, 125, ByteCompanionObject.MAX_VALUE, 87}), Boolean.valueOf(z9), AbstractC1387m.m2421h(new byte[]{123, 6, -87, 6, 91, 116, 121, 11, 126, 27}, new byte[]{10, 115, -52, 115, 62, 48, 28, 123}), Integer.valueOf(this.f10291f.size()), AbstractC1387m.m2421h(new byte[]{65, 94, -58, 31, 3, 16, -21, 103, 96, 78, -59, 16, 4, 10, -27}, new byte[]{50, 59, -85, 126, 109, 100, -126, 4}), Boolean.valueOf(this.f10276V), AbstractC1387m.m2421h(new byte[]{-98, -112, -117, 109, -11, 3, -19, -72, -98}, new byte[]{-14, -15, -8, 25, -77, 106, -125, -39}), this.f10290e0, AbstractC1387m.m2421h(new byte[]{-59, 58, 47, 45, -108, -16, -31, -16, -37, 45, 57, Base64.padSymbol}, new byte[]{-87, 91, 92, 89, -37, -110, -110, -107}), this.f10288d0, AbstractC1387m.m2421h(new byte[]{52, 10, -49, -60, -18, 117, 56, 10, 20, 19, -35, -38, -1, 110}, new byte[]{85, 125, -82, -83, -102, 28, 86, 109}), Boolean.valueOf(m5552s().m5559c()));
        m5521C(AbstractC1387m.m2421h(new byte[]{-1, -2, -74, 20, 53, -98, -8}, new byte[]{-117, -105, -37, 113, 90, -21, -116, -69}));
        m5527O(EnumC3443b.f9930c);
    }

    /* JADX INFO: renamed from: p */
    public final ArrayList m5550p() {
        EnumC2469d enumC2469d;
        int i10;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C1652b.m2734a();
        ArrayList arrayListM2990e = C1652b.m2737f().m2990e();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put(Locale.getDefault().toLanguageTag(), Locale.getDefault());
        Context context = this.f10304m;
        int i11 = 0;
        for (String str : context.getAssets().getLocales()) {
            if (str != null && !str.trim().isEmpty()) {
                Locale localeForLanguageTag = Locale.forLanguageTag(str.replace('_', '-'));
                if (!localeForLanguageTag.getLanguage().isEmpty()) {
                    linkedHashMap2.put(localeForLanguageTag.toLanguageTag(), localeForLanguageTag);
                }
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap2.values());
        int size = arrayListM2990e.size();
        int i12 = 0;
        while (i12 < size) {
            Object obj = arrayListM2990e.get(i12);
            i12++;
            C1919e c1919e = (C1919e) obj;
            if (AbstractC1920f.m3006d(c1919e)) {
                if (c1919e.f5058a == EnumC1918d.f5053b && (enumC2469d = c1919e.f5059b) != null) {
                    try {
                        Field declaredField = EnumC2469d.class.getDeclaredField(AbstractC1387m.m2421h(new byte[]{-61, -27, 113, -10, 121, -45, -124, -55, -58, -31, 103}, new byte[]{-89, -116, 2, -122, 21, -78, -3, -121}));
                        declaredField.setAccessible(true);
                        i10 = declaredField.getInt(enumC2469d);
                    } catch (Exception unused) {
                        i10 = 0;
                    }
                    if (i10 != 0) {
                        int size2 = arrayList.size();
                        int i13 = 0;
                        while (i13 < size2) {
                            Object obj2 = arrayList.get(i13);
                            i13++;
                            Configuration configuration = new Configuration(context.getResources().getConfiguration());
                            configuration.setLocale((Locale) obj2);
                            m5543h(linkedHashMap, context.createConfigurationContext(configuration).getString(i10), c1919e, "");
                        }
                    }
                }
                m5543h(linkedHashMap, c1919e.f5066i, c1919e, "");
            }
        }
        String str2 = this.f10281a;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        for (C3492u c3492u : linkedHashMap.values()) {
            String strM3009g = AbstractC1920f.m3009g(c3492u.f10215b);
            ((List) linkedHashMap3.computeIfAbsent(strM3009g, new C0077d(8))).add(c3492u.f10214a);
            linkedHashMap4.put(strM3009g, c3492u.f10215b);
        }
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(context.getAssets().open(AbstractC1387m.m2421h(new byte[]{-89, -28, 77, -88, 5, 34, 25, 82, -91, -30, 75, -91, 63, 28, 20, 88, -80, -8, 65, -72, 78, 23, 11, 94, -65}, new byte[]{-47, -117, 36, -53, 96, 125, 120, 49})), AbstractC1387m.m2421h(new byte[]{-25, -22, -24, 83, -94}, new byte[]{-78, -66, -82, 126, -102, -47, -49, 115}));
            try {
                List<C3447c0> listM5391b = C3450d0.m5389c(inputStreamReader).m5391b(linkedHashMap3);
                int size3 = linkedHashMap.size();
                for (C3447c0 c3447c0 : listM5391b) {
                    m5543h(linkedHashMap, c3447c0.f9941b, (C1919e) linkedHashMap4.get(c3447c0.f9940a), c3447c0.f9942c);
                }
                Log.i(str2, AbstractC1387m.m2421h(new byte[]{-88, 2, -70, -102, -80, 71, -68, -110, -120, 10, -2, -123, -85, 71, -80, -103, -55, 22, -74, -127, -91, 93, -74, -113, -55, 10, -79, -110, -96, 75, -73, -58, -55}, new byte[]{-23, 102, -34, -13, -60, 46, -45, -4}) + (linkedHashMap.size() - size3));
                inputStreamReader.close();
            } catch (Throwable th) {
                try {
                    inputStreamReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e) {
            Log.w(str2, AbstractC1387m.m2421h(new byte[]{-68, 23, 72, 102, 3, -66, -69, -81, -100, 31, 12, 121, 24, -66, -73, -92, -35, 3, 68, 125, 22, -92, -79, -31, -98, 18, 88, 110, 27, -72, -77, -31, -120, 29, 77, 121, 22, -66, -72, -96, -97, 31, 73, 52, 87, -94, -89, -88, -109, 20, 12, 96, 5, -66, -77, -88, -109, 18, 64, 47, 7, -65, -90, -96, -114, 22, 95}, new byte[]{-3, 115, 44, 15, 119, -41, -44, -63}), e);
        }
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        int size4 = arrayListM2990e.size();
        while (i11 < size4) {
            Object obj3 = arrayListM2990e.get(i11);
            i11++;
            C1919e c1919e2 = (C1919e) obj3;
            if (AbstractC1920f.m3006d(c1919e2)) {
                linkedHashMap5.put(AbstractC1920f.m3009g(c1919e2), c1919e2);
            }
        }
        C3451d1 c3451d1 = this.f10313v;
        for (Map.Entry entry : c3451d1.f9949c.entrySet()) {
            C1919e c1919e3 = (C1919e) linkedHashMap5.get(entry.getKey());
            if (c1919e3 != null) {
                for (String str3 : (List) entry.getValue()) {
                    m5543h(linkedHashMap, str3, c1919e3, AbstractC1387m.m2421h(new byte[]{103, 96, 47, -8, -112, 78, 75, -94, 49}, new byte[]{11, 1, 65, -97, -27, 47, 44, -57}).concat(c3451d1.m5396e(str3)));
                }
            }
        }
        return new ArrayList(linkedHashMap.values());
    }

    /* JADX INFO: renamed from: r */
    public final C3460g1 m5551r() {
        C3460g1 c3460g1;
        C3460g1 c3460g2 = this.f10259E;
        if (c3460g2 != null) {
            return c3460g2;
        }
        synchronized (this) {
            try {
                if (this.f10259E == null) {
                    this.f10259E = new C3460g1(new C3042f(5, this));
                }
                c3460g1 = this.f10259E;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c3460g1;
    }

    /* JADX INFO: renamed from: s */
    public final C3499x0 m5552s() {
        if (this.f10314w == null) {
            this.f10314w = new C3499x0();
        }
        return this.f10314w;
    }

    /* JADX INFO: renamed from: t */
    public final void m5553t() {
        AudioManager audioManager;
        C3455f c3455f;
        if (this.f10306o) {
            return;
        }
        this.f10306o = true;
        C3445b1 c3445b1 = this.f10258D;
        if (c3445b1 != null) {
            c3445b1.close();
        }
        if (this.f10256B != null) {
            this.f10256B.close();
        }
        mo5402a();
        mo5403b();
        ScheduledFuture scheduledFuture = this.f10295h;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        if (Build.VERSION.SDK_INT >= 31 && (audioManager = this.f10297i) != null && (c3455f = this.f10305n) != null) {
            audioManager.removeOnModeChangedListener(c3455f);
            this.f10305n = null;
        }
        this.f10287d.shutdownNow();
        this.f10289e.shutdownNow();
        this.f10285c.execute(new RunnableC3482p(this, 1));
        this.f10285c.shutdown();
        synchronized (this.f10269O) {
            try {
                Model model = this.f10303l;
                if (model != null) {
                    model.close();
                }
                this.f10303l = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m5554v(C1919e c1919e, int i10) {
        C1919e c1919e2;
        long jM5423i = m5551r().m5423i();
        C1919e c1919e3 = c1919e;
        if (c1919e3.f5058a == EnumC1918d.f5056e) {
            String strM3009g = AbstractC1920f.m3009g(c1919e3);
            C1652b.m2734a();
            ArrayList arrayListM2990e = C1652b.m2737f().m2990e();
            int size = arrayListM2990e.size();
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    c1919e2 = null;
                    break;
                }
                Object obj = arrayListM2990e.get(i11);
                i11++;
                c1919e2 = (C1919e) obj;
                if (strM3009g.equals(AbstractC1920f.m3009g(c1919e2)) && AbstractC1920f.m3006d(c1919e2)) {
                    break;
                }
            }
            if (c1919e2 == null) {
                m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-73, 64, 19, -110, -49, 59, 72, 17, -72, 66, 17, -102, -55, 57, 118, 6, -70, 70}, new byte[]{-42, 35, 103, -5, -96, 85, 23, 100}), AbstractC1387m.m2421h(new byte[]{-82, 88, 10}, new byte[]{-59, Base64.padSymbol, 115, -70, -110, -33, -112, 59}), strM3009g);
                Log.w(this.f10281a, AbstractC1387m.m2421h(new byte[]{-70, 22, 85, 125, -76, 82, 8, -75, -108, 85, 77, 123, -75, 91, 77, -87, -37, 20, 87, 117, -78, 80, 73, -71, -105, 16, 1, 125, -75, 28, 75, -82, -119, 7, 68, 122, -81, 28, 88, -87, -108, 19, 72, 120, -66, 6, 8}, new byte[]{-5, 117, 33, 20, -37, 60, 40, -37}) + strM3009g);
                m5521C(AbstractC1387m.m2421h(new byte[]{89, 121, 110, ByteCompanionObject.MIN_VALUE, 31, -108, -75, 2, 86, 123, 108, -120, 25, -106, -117, 21, 84, ByteCompanionObject.MAX_VALUE}, new byte[]{56, 26, 26, -23, 112, -6, -22, 119}));
                return;
            }
            c1919e3 = c1919e2;
        }
        synchronized (this.f10269O) {
            try {
                if (this.f10274T && (i10 < 0 || i10 == this.f10277W)) {
                    m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-100, -36, 85, 120, 6, 91, -35, 113, -108, -52, 81, 112, 29, 86, -22}, new byte[]{-3, -65, 33, 17, 105, 53, -126, 21}), AbstractC1387m.m2421h(new byte[]{-119, 23, -58}, new byte[]{-30, 114, -65, 10, -59, 17, 41, 24}), AbstractC1920f.m3009g(c1919e3), AbstractC1387m.m2421h(new byte[]{-35, -92, -121, 109, -107}, new byte[]{-81, -53, -14, 25, -16, 92, -81, -86}), this.f10262H, AbstractC1387m.m2421h(new byte[]{92, 101, -93, -97, -31, -80, 86, -38, 124, 119}, new byte[]{49, 4, -41, -4, -119, -39, 56, -67}), Double.valueOf(m5516u(this.f10261G)));
                    m5521C(AbstractC1387m.m2421h(new byte[]{-90, -104, ByteCompanionObject.MIN_VALUE, 70, -85, -92, 37, 124, -74, -110, -127, 78, -87, -66, 36, 71}, new byte[]{-59, -9, -19, 43, -54, -54, 65, 35}));
                    long jNanoTime = System.nanoTime();
                    try {
                        C1652b.m2734a();
                        C1652b.m2737f().m2994j(c1919e3, null);
                        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-40, -45, -83, -14, 95, 13, -17, -109, -36, -60, -84, -23, 94, 6, -44}, new byte[]{-71, -80, -39, -101, 48, 99, -80, -31}), AbstractC1387m.m2421h(new byte[]{39, -25, -84}, new byte[]{76, -126, -43, -4, -102, 103, -82, -40}), AbstractC1920f.m3009g(c1919e3), AbstractC1387m.m2421h(new byte[]{63, 13, 57, -47, 33, 44, -81, -39, 63, 17, 37, -52, 44}, new byte[]{76, 98, 76, -93, 66, 73, -4, -68}), Long.valueOf(jM5423i), AbstractC1387m.m2421h(new byte[]{29, 76, -33, -1, -124, ByteCompanionObject.MIN_VALUE, 33, 7, 52, 74}, new byte[]{121, 57, -83, -98, -16, -23, 78, 105}), Double.valueOf(m5516u(jNanoTime)));
                        return;
                    } catch (RuntimeException e) {
                        m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{92, -19, 2, -55, 27}, new byte[]{57, -97, 112, -90, 105, -94, 29, 93}), AbstractC1387m.m2421h(new byte[]{-56, 97, -121, 14, 56}, new byte[]{-69, 21, -26, 105, 93, -113, -96, 1}), AbstractC1387m.m2421h(new byte[]{22, 60, 9, -22, -118, 47, 103, -59, 30, 44, 13, -30, -111, 34, 80}, new byte[]{119, 95, 125, -125, -27, 65, 56, -95}), AbstractC1387m.m2421h(new byte[]{23, 11, -40, 44, -16, 120, 92, 38, 23, 23, -60, 49, -3}, new byte[]{100, 100, -83, 94, -109, 29, 15, 67}), Long.valueOf(jM5423i), AbstractC1387m.m2421h(new byte[]{22, -32, -64}, new byte[]{125, -123, -71, -74, 0, 59, 105, -66}), AbstractC1920f.m3009g(c1919e3), AbstractC1387m.m2421h(new byte[]{-24, -57, -91, -39, -111, 70, -52, -101, -63, -63}, new byte[]{-116, -78, -41, -72, -27, 47, -93, -11}), Double.valueOf(m5516u(jNanoTime)), AbstractC1387m.m2421h(new byte[]{102, -34, -38, -113}, new byte[]{18, -89, -86, -22, -19, -24, 76, -125}), e.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{82, 28, 38, -99, -19, -96, 98}, new byte[]{63, 121, 85, -18, -116, -57, 7, 115}), e.getMessage());
                        throw e;
                    }
                }
                m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-70, 7, 20, 3, -121, -44, 50, -18, -68, 10, 15, 24, -115, -34}, new byte[]{-37, 100, 96, 106, -24, -70, 109, -121}), AbstractC1387m.m2421h(new byte[]{6, 24, 23, 102, -118, 13, 52, 8, 6, 4, 11, 123, -121}, new byte[]{117, 119, 98, 20, -23, 104, 103, 109}), Long.valueOf(jM5423i), AbstractC1387m.m2421h(new byte[]{16, 30, -89}, new byte[]{123, 123, -34, 28, -41, -24, -12, 6}), AbstractC1920f.m3009g(c1919e3), AbstractC1387m.m2421h(new byte[]{-84, 109, -35, -99, -31, 73}, new byte[]{-34, 8, -68, -18, -114, 39, -44, -41}), AbstractC1387m.m2421h(new byte[]{-120, 20, 48, -89, -7, 99, 35, -30, -92, 9, 63, -86, -1, 72, 37, -26, -98}, new byte[]{-5, 96, 81, -53, -100, 60, 76, -112}));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: x */
    public final C3492u m5555x(String str) {
        String strM5390d = C3450d0.m5390d(C3451d1.m5393b(str));
        C3492u c3492u = null;
        for (C3492u c3492u2 : this.f10307p) {
            if (!c3492u2.f10216c.isEmpty() && c3492u2.f10216c.equals(strM5390d)) {
                if (c3492u != null && !AbstractC1920f.m3009g(c3492u.f10215b).equals(AbstractC1920f.m3009g(c3492u2.f10215b))) {
                    return null;
                }
                c3492u = c3492u2;
            }
        }
        return c3492u;
    }

    /* JADX INFO: renamed from: y */
    public final C3492u m5556y(String str) {
        String strM5393b = C3451d1.m5393b(str);
        String strM5394c = C3451d1.m5394c(strM5393b);
        String strReplaceFirst = strM5394c.replaceFirst(AbstractC1387m.m2421h(new byte[]{78, -79, -97, -11, 85, -49, 76, -25, -64, 35, 113, 79, 85, -49, 77, -36, 108, 73, 30, 30, 7, -95, 39, -76, -112, 72, 43, 30, 7, -96, 17, 25, -64, 46, 112, ByteCompanionObject.MAX_VALUE, 85, -50, 76, -26, -63, 24, 113, 77, 85, -55, -31, -75, -89, 73, 16, 31, 58, -96, 30, -76, -111, 72, 34, 31, Base64.padSymbol, -96, 31, -76, -100, -27, 112, 112, 85, -49, 77, -33, -64, 41, 112, 121, 85, -55, -31, 10, 96, -4, -50, -77, -23, 16, -24, 11, 115, -15, -36, -68, -15, 16, -17, 17, 57, -59, -45, -28, -83, 78, -89, 77, 47, -93, 112, 112, 84, -15, 77, -35, -64, 34, 112, 113, 85, -57, 77, -48, -64, 36, 112, 119, 85, -60, -31, 4, 96, -23, -119, -109, -10, 90, -76, 90}, new byte[]{16, -103, -96, -49, -123, 113, -99, 101}), "");
        boolean zEquals = strReplaceFirst.equals(strM5394c);
        String strM5396e = this.f10313v.m5396e(strM5393b);
        boolean z9 = false;
        C3492u c3492u = null;
        C3492u c3492u2 = null;
        boolean z10 = false;
        for (C3492u c3492u3 : this.f10307p) {
            String strM3009g = AbstractC1920f.m3009g(c3492u3.f10215b);
            if (strM5393b.equals(c3492u3.f10221h)) {
                if (c3492u != null && !strM3009g.equals(AbstractC1920f.m3009g(c3492u.f10215b))) {
                    z10 = true;
                }
                c3492u = c3492u3;
            }
            if (!zEquals && c3492u3.f10215b.f5058a == EnumC1918d.f5054c && strReplaceFirst.equals(c3492u3.f10221h)) {
                if (c3492u != null && !strM3009g.equals(AbstractC1920f.m3009g(c3492u.f10215b))) {
                    z10 = true;
                }
                c3492u = c3492u3;
            }
            if (!strM5396e.isEmpty() && strM5396e.equals(c3492u3.f10222i)) {
                if (c3492u2 != null && !strM3009g.equals(AbstractC1920f.m3009g(c3492u2.f10215b))) {
                    z9 = true;
                }
                c3492u2 = c3492u3;
            }
        }
        if (c3492u != null) {
            if (!z10) {
                return c3492u;
            }
        } else if (!z9) {
            return c3492u2;
        }
        return null;
    }
}
