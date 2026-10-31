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
import android.os.Process;
import android.util.JsonReader;
import android.util.Log;
import androidx.core.content.ContextCompat;
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
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.vosk.Model;
import org.vosk.Recognizer;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1440x1;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1917c;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p142n0.C2467b;
import p142n0.EnumC2469d;
import p206u0.C3277a;

/* JADX INFO: renamed from: w0.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3480o implements InterfaceC3500y {

    /* JADX INFO: renamed from: T */
    public static EnumC3443b f10129T;

    /* JADX INFO: renamed from: U */
    public static EnumC3443b f10130U;

    /* JADX INFO: renamed from: V */
    public static C3455f f10131V;

    /* JADX INFO: renamed from: W */
    public static final String f10132W = AbstractC1387m.m2421h(new byte[]{122, 62, ByteCompanionObject.MAX_VALUE, -44, -107, -120, -22, -117, 122, Base64.padSymbol, 126, -26}, new byte[]{-86, ByteCompanionObject.MIN_VALUE, -82, 86, 69, 52, 58, 62});

    /* JADX INFO: renamed from: C */
    public volatile long f10135C;

    /* JADX INFO: renamed from: D */
    public volatile boolean f10136D;

    /* JADX INFO: renamed from: E */
    public volatile int f10137E;

    /* JADX INFO: renamed from: G */
    public volatile int f10139G;

    /* JADX INFO: renamed from: N */
    public volatile int f10146N;

    /* JADX INFO: renamed from: O */
    public volatile int f10147O;

    /* JADX INFO: renamed from: P */
    public volatile long f10148P;

    /* JADX INFO: renamed from: Q */
    public volatile boolean f10149Q;

    /* JADX INFO: renamed from: g */
    public ScheduledFuture f10158g;

    /* JADX INFO: renamed from: h */
    public ScheduledFuture f10159h;

    /* JADX INFO: renamed from: i */
    public final AudioManager f10160i;

    /* JADX INFO: renamed from: j */
    public AudioFocusRequest f10161j;

    /* JADX INFO: renamed from: k */
    public AudioRecord f10162k;

    /* JADX INFO: renamed from: l */
    public final Model f10163l;

    /* JADX INFO: renamed from: m */
    public final Context f10164m;

    /* JADX INFO: renamed from: o */
    public volatile boolean f10166o;

    /* JADX INFO: renamed from: p */
    public C3476m f10167p;

    /* JADX INFO: renamed from: q */
    public OrtEnvironment f10168q;

    /* JADX INFO: renamed from: r */
    public OrtSession f10169r;

    /* JADX INFO: renamed from: x */
    public Recognizer f10175x;

    /* JADX INFO: renamed from: y */
    public Recognizer f10176y;

    /* JADX INFO: renamed from: a */
    public final String f10152a = AbstractC1387m.m2421h(new byte[]{-83, -64, ByteCompanionObject.MAX_VALUE, -69, 51, -99, 121, -2, -105, -34, 115, -20}, new byte[]{-2, -80, 22, -40, 91, -40, 23, -103});

    /* JADX INFO: renamed from: b */
    public final ScheduledThreadPoolExecutor f10153b = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{19, -87, 86, 93, 35, -121, -56, -87, 41, -73, 90, 10}, new byte[]{64, -39, 63, 62, 75, -62, -90, -50}));

    /* JADX INFO: renamed from: c */
    public final ExecutorService f10154c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d */
    public final ExecutorService f10155d = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: e */
    public final ExecutorService f10156e = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: f */
    public final ArrayBlockingQueue f10157f = new ArrayBlockingQueue(128);

    /* JADX INFO: renamed from: n */
    public volatile List f10165n = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: s */
    public boolean f10170s = false;

    /* JADX INFO: renamed from: t */
    public final int f10171t = AudioRecord.getMinBufferSize(16000, 16, 2);

    /* JADX INFO: renamed from: u */
    public final byte[] f10172u = new byte[4096];

    /* JADX INFO: renamed from: v */
    public final byte[] f10173v = new byte[160000];

    /* JADX INFO: renamed from: w */
    public final Object f10174w = new Object();

    /* JADX INFO: renamed from: z */
    public int f10177z = 0;

    /* JADX INFO: renamed from: A */
    public int f10133A = 0;

    /* JADX INFO: renamed from: B */
    public volatile boolean f10134B = false;

    /* JADX INFO: renamed from: F */
    public volatile String f10138F = "";

    /* JADX INFO: renamed from: H */
    public volatile String f10140H = "";

    /* JADX INFO: renamed from: I */
    public String f10141I = "";

    /* JADX INFO: renamed from: J */
    public String f10142J = "";

    /* JADX INFO: renamed from: K */
    public String f10143K = "";

    /* JADX INFO: renamed from: L */
    public String f10144L = "";

    /* JADX INFO: renamed from: M */
    public String f10145M = "";

    /* JADX INFO: renamed from: R */
    public String f10150R = "";

    /* JADX INFO: renamed from: S */
    public long f10151S = 0;

    static {
        EnumC3443b enumC3443b = EnumC3443b.f9929b;
        f10129T = enumC3443b;
        f10130U = enumC3443b;
    }

    public C3480o(Context context) {
        this.f10164m = context;
        System.setProperty(AbstractC1387m.m2421h(new byte[]{60, 36, -90, 103, 115, -2, 103, -16, 37}, new byte[]{86, 74, -57, 73, 29, -111, 20, -119}), AbstractC1387m.m2421h(new byte[]{45, 96, 21, 57}, new byte[]{89, 18, 96, 92, -127, -24, -108, 27}));
        Native.setProtected(true);
        System.setProperty(AbstractC1387m.m2421h(new byte[]{70, 13, 69, -81, 81, 95, -121, 29, 2, 15, 77, -29, 65, 81, -102, 16, 2, 19, 69, -11, 91}, new byte[]{44, 99, 36, -127, 51, 48, -24, 105}), context.getApplicationInfo().nativeLibraryDir);
        System.loadLibrary(AbstractC1387m.m2421h(new byte[]{-55, -105, ByteCompanionObject.MIN_VALUE, -54, -4, 11, 92, 21, -41, -102, -127}, new byte[]{-93, -7, -23, -82, -107, 120, 44, 116}));
        System.loadLibrary(AbstractC1387m.m2421h(new byte[]{-98, 48, -50, 89}, new byte[]{-24, 95, -67, 50, -33, -90, -50, -58}));
        try {
            String str = AbstractC3475l1.f10099a;
            File filesDir = context.getFilesDir();
            String str2 = AbstractC3475l1.f10099a;
            if (AbstractC3475l1.m5451e(new File(filesDir, str2)) == null) {
                AbstractC3475l1.m5452f(context, EnumC3472k1.f10049e, null);
            }
            File fileM5451e = AbstractC3475l1.m5451e(new File(context.getFilesDir(), str2));
            if (fileM5451e == null) {
                throw new IOException(AbstractC1387m.m2421h(new byte[]{-44, -113, 88, -9, -90, -18, -121, 3, -25, -116, 11, -11, -11, -93, -122, 8, -10, -64, 66, -14, -11, -9, -119, 11, -18, -123, 79}, new byte[]{-126, -32, 43, -100, -122, -125, -24, 103}));
            }
            this.f10163l = new Model(fileM5451e.getAbsolutePath());
            if (this.f10160i == null) {
                this.f10160i = (AudioManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{-118, 68, 12, -52, 79}, new byte[]{-21, 49, 104, -91, 32, -10, 14, -4}));
            }
            if (Build.VERSION.SDK_INT >= 31) {
                C3455f c3455f = f10131V;
                if (c3455f != null) {
                    this.f10160i.removeOnModeChangedListener(c3455f);
                }
                f10131V = new C3455f(this, 1);
                this.f10160i.addOnModeChangedListener(Executors.newSingleThreadExecutor(), f10131V);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: A */
    public static float m5464A(String str, String str2) {
        String[] strArrM5477w = m5477w(str);
        StringBuilder sb = new StringBuilder();
        if (strArrM5477w.length > 0) {
            sb.append((CharSequence) strArrM5477w[0]);
            for (int i10 = 1; i10 < strArrM5477w.length; i10++) {
                sb.append((CharSequence) " ");
                sb.append((CharSequence) strArrM5477w[i10]);
            }
        }
        String string = sb.toString();
        String[] strArrM5477w2 = m5477w(str2);
        StringBuilder sb2 = new StringBuilder();
        if (strArrM5477w2.length > 0) {
            sb2.append((CharSequence) strArrM5477w2[0]);
            for (int i11 = 1; i11 < strArrM5477w2.length; i11++) {
                sb2.append((CharSequence) " ");
                sb2.append((CharSequence) strArrM5477w2[i11]);
            }
        }
        return m5465B(string, sb2.toString());
    }

    /* JADX INFO: renamed from: B */
    public static float m5465B(String str, String str2) {
        String strM5472o = m5472o(str);
        String strM5472o2 = m5472o(str2);
        float f8 = 0.0f;
        if (!strM5472o.isEmpty() && !strM5472o2.isEmpty()) {
            f8 = 0.0f + (strM5472o.equals(strM5472o2) ? 0.12f : -0.35f);
        }
        boolean zM5471m = m5471m(str, AbstractC1387m.m2421h(new byte[]{56, 121, -33, -56, 116, 109, -94, 102, 57, 69}, new byte[]{-23, -8, 15, 112, -92, -39, 114, -45}), AbstractC1387m.m2421h(new byte[]{-31, -50, -45, -116}, new byte[]{-110, -85, -78, -8, 29, -12, -16, 49}));
        boolean zM5471m2 = m5471m(str2, AbstractC1387m.m2421h(new byte[]{-113, 41, 20, 34, 9, 119, 86, 12, -114, 21}, new byte[]{94, -88, -60, -102, -39, -61, -122, -71}), AbstractC1387m.m2421h(new byte[]{-100, 85, -54, -63}, new byte[]{-17, 48, -85, -75, 43, 114, 111, 117}));
        boolean zM5471m3 = m5471m(str, AbstractC1387m.m2421h(new byte[]{-97, -72, 83, -34, 84, 98}, new byte[]{78, 56, -126, 93, -124, -39, -120, 21}), AbstractC1387m.m2421h(new byte[]{30, -92, 5, -23, 92}, new byte[]{105, -52, 96, -116, 48, 36, -93, 18}));
        boolean zM5471m4 = m5471m(str2, AbstractC1387m.m2421h(new byte[]{-64, 107, 81, -122, -46, -22}, new byte[]{17, -21, ByteCompanionObject.MIN_VALUE, 5, 2, 81, 115, -96}), AbstractC1387m.m2421h(new byte[]{121, -75, 85, 20, 51}, new byte[]{14, -35, 48, 113, 95, 14, -98, -111}));
        if (zM5471m) {
            f8 += zM5471m2 ? 0.08f : -0.16f;
        }
        if (zM5471m3) {
            f8 += zM5471m4 ? 0.08f : -0.16f;
        }
        boolean zM5471m5 = m5471m(str, AbstractC1387m.m2421h(new byte[]{-57, -86, -76, -24, -8, -61, -38, -115, -58, -102, -76, -29, -8, -52}, new byte[]{23, 24, 100, 86, 40, 119, 10, 53}), AbstractC1387m.m2421h(new byte[]{-46, 75, -120, -76, 56, ByteCompanionObject.MIN_VALUE}, new byte[]{-74, 57, -31, -62, 93, -14, -100, -73}));
        boolean zM5471m6 = m5471m(str2, AbstractC1387m.m2421h(new byte[]{-13, -101, -30, 52, 109, -44, 116, 25, -14, -85, -30, 63, 109, -37}, new byte[]{35, 41, 50, -118, -67, 96, -92, -95}), AbstractC1387m.m2421h(new byte[]{50, 39, -53, -11, 30, -118}, new byte[]{86, 85, -94, -125, 123, -8, -4, 85}));
        boolean zM5471m7 = m5471m(str, AbstractC1387m.m2421h(new byte[]{58, 14, 73, -96, -11, 77, -36, 20, 58, 1, 73, -90, -12, 116, -36, 21}, new byte[]{-22, -79, -103, 16, 36, -52, 13, -107}), AbstractC1387m.m2421h(new byte[]{102, 111, 82, 98, -16, 126, -125, -61, 100}, new byte[]{22, 14, 33, 17, -107, 16, -28, -90}));
        boolean zM5471m8 = m5471m(str2, AbstractC1387m.m2421h(new byte[]{-26, 6, -54, -109, 36, -122, 48, -99, -26, 9, -54, -107, 37, -65, 48, -100}, new byte[]{54, -71, 26, 35, -11, 7, -31, 28}), AbstractC1387m.m2421h(new byte[]{105, -21, 100, -7, Base64.padSymbol, -64, -72, 56, 107}, new byte[]{25, -118, 23, -118, 88, -82, -33, 93}));
        if (zM5471m5) {
            f8 += zM5471m6 ? 0.08f : -0.16f;
        }
        if (zM5471m7) {
            f8 += zM5471m8 ? 0.08f : -0.16f;
        }
        String strM5473q = m5473q(str);
        String strM5473q2 = m5473q(str2);
        if (strM5473q.isEmpty() || strM5473q2.isEmpty()) {
            return f8;
        }
        return f8 + (strM5473q.equals(strM5473q2) ? 0.08f : -0.1f);
    }

    /* JADX INFO: renamed from: D */
    public static String m5466D(String str) {
        String strM5467G = m5467G(str);
        if (strM5467G.isEmpty()) {
            return strM5467G;
        }
        String strTrim = Normalizer.normalize(strM5467G, Normalizer.Form.NFKC).toLowerCase(Locale.ROOT).replaceAll(AbstractC1387m.m2421h(new byte[]{-40, -74, -49, -38, -126, -52, -105, 40, -13, -109, -35, -41, -92, -85}, new byte[]{-125, -24, -109, -86, -7, ByteCompanionObject.MIN_VALUE, -22, 116}), " ").trim();
        if (strTrim.isEmpty()) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : strTrim.split(AbstractC1387m.m2421h(new byte[]{-120, 27, 59}, new byte[]{-44, 104, 16, 38, 35, -95, -127, -118}))) {
            if (!str2.equals(AbstractC1387m.m2421h(new byte[]{-18, 103, 20, -38, 44, -118, -85, 52, -18, 99, 21, -25, 44, -123, -86, 5, -17, 90, 20, -44}, new byte[]{62, -40, -60, 100, -4, 60, 123, -124})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{-24, -126, -94, -42, -119, 6, -78, -61, -24, -122, -93, -21, -119, 9}, new byte[]{56, Base64.padSymbol, 114, 104, 89, -80, 98, 115})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{57, -55, 17, -60}, new byte[]{-23, 116, -63, 116, -49, -25, 114, 111})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{95, -93}, new byte[]{-113, 17, 79, -117, -86, -39, 40, -39})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{-30, -127, -90, 115}, new byte[]{50, 62, 118, -51, 19, 30, 46, -76})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{115, 74, 63, -65, 48, 88, -8, -1, 114, 126, 62, -115}, new byte[]{-93, -10, -17, 1, -32, -18, 40, 74})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{38, 52, -48, -23, -36, 37, -94, Base64.padSymbol, 38, 54}, new byte[]{-10, -120, 0, 87, 12, -109, 114, ByteCompanionObject.MIN_VALUE})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{60, -53, -43, -69, -60, -42, -117, 85, 60, -58}, new byte[]{-20, ByteCompanionObject.MAX_VALUE, 5, 11, 20, 100, 91, -27})) && !str2.startsWith(AbstractC1387m.m2421h(new byte[]{116, -22, -76, -49, -63, 79, 21, 125, 117, -36, -75, -3}, new byte[]{-92, 93, 100, ByteCompanionObject.MAX_VALUE, 17, -16, -60, -2})) && !str2.startsWith(AbstractC1387m.m2421h(new byte[]{-99, ByteCompanionObject.MIN_VALUE, -102, -43, 15, -41, 103, 0, -99, -119, -101, -29}, new byte[]{77, 50, 75, 94, -33, 104, -73, -66})) && !str2.startsWith(AbstractC1387m.m2421h(new byte[]{36, 45, -34, 45, 110, -103, 67, 2, 37, 28}, new byte[]{-11, -84, 14, -103, -66, 44, -109, -71})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{-108, -71, -119, 43, -9, 58}, new byte[]{-28, -43, -20, 74, -124, 95, 54, -65})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{17, 83, -126, 9, 101}, new byte[]{114, 60, -9, 101, 1, -120, 122, 95})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{111, -119, -56, -44, 86}, new byte[]{24, -26, -67, -72, 50, 59, -57, 73})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{-55, -30, 45}, new byte[]{-86, -125, 67, -108, 78, -119, -7, -100})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{-36, -84, -30}, new byte[]{-91, -61, -105, 35, -70, 36, -93, -30})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{76, 102, -55, -50, 6}, new byte[]{63, 18, -88, -68, 114, 95, 58, 44})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{103, -115, -2, 78, 17, 59}, new byte[]{11, -20, -117, 32, 114, 83, 18, -9})) && !str2.equals(AbstractC1387m.m2421h(new byte[]{86, 12, 90}, new byte[]{36, 121, 52, -1, -80, 114, -91, 100}))) {
                arrayList.add(str2);
            }
        }
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append((CharSequence) " ");
            }
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: G */
    public static String m5467G(String str) {
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
        if (lowerCase2.startsWith(lowerCase)) {
            return "";
        }
        int iLastIndexOf = lowerCase.lastIndexOf(lowerCase2);
        return iLastIndexOf >= 0 ? strTrim.substring(Math.min(strTrim.length(), strM2986f.trim().length() + iLastIndexOf)).trim() : strTrim;
    }

    /* JADX INFO: renamed from: f */
    public static Boolean m5468f() {
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
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{68}, new byte[]{116, 2, -16, 11, -25, 124, 107, 101}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: g */
    public static void m5469g(LinkedHashMap linkedHashMap, String str, C1919e c1919e, String str2) {
        if (str == null || c1919e == null) {
            return;
        }
        String strReplaceAll = str.trim().replaceAll(AbstractC1387m.m2421h(new byte[]{123, 66, -48}, new byte[]{39, 49, -5, 85, -2, 109, -122, 105}), " ");
        if (strReplaceAll.isEmpty()) {
            return;
        }
        String str3 = strReplaceAll.toLowerCase(Locale.ROOT) + (char) 0 + AbstractC1920f.m3009g(c1919e);
        if (linkedHashMap.containsKey(str3)) {
            return;
        }
        C3473l c3473l = new C3473l(strReplaceAll, c1919e, str2);
        String[] strArrM5477w = m5477w(m5466D(strReplaceAll));
        c3473l.f10079f = strArrM5477w;
        StringBuilder sb = new StringBuilder();
        if (strArrM5477w.length > 0) {
            sb.append((CharSequence) strArrM5477w[0]);
            for (int i10 = 1; i10 < strArrM5477w.length; i10++) {
                sb.append((CharSequence) " ");
                sb.append((CharSequence) strArrM5477w[i10]);
            }
        }
        c3473l.f10080g = sb.toString();
        linkedHashMap.put(str3, c3473l);
    }

    /* JADX INFO: renamed from: h */
    public static float[] m5470h(float[][] fArr, long[] jArr, int i10, int i11) {
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

    /* JADX INFO: renamed from: m */
    public static boolean m5471m(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: o */
    public static String m5472o(String str) {
        for (String str2 : str.split(AbstractC1387m.m2421h(new byte[]{54, -56, -45}, new byte[]{106, -69, -8, -127, 58, 51, 18, -53}))) {
            if (str2.equals(AbstractC1387m.m2421h(new byte[]{-33, -85, -18, 67, -40, -105, 38, -35}, new byte[]{-80, -37, -117, 45, -82, -14, 84, -65})) || str2.equals(AbstractC1387m.m2421h(new byte[]{-35, 80, -91, 116, 97, 108, -68, -114, -35, 84, -71, 118, 109, ByteCompanionObject.MAX_VALUE, -78}, new byte[]{-83, 49, -41, 0, 8, 13, -48, -31})) || str2.equals(AbstractC1387m.m2421h(new byte[]{13, -43, 102, 75, 28, 102, -70, 85, 12}, new byte[]{110, -71, 9, 56, 121, 16, -33, 39})) || str2.equals(AbstractC1387m.m2421h(new byte[]{118, 12, -19, 70, 42, 20}, new byte[]{25, 98, -101, 35, 88, 118, -113, 44})) || str2.equals(AbstractC1387m.m2421h(new byte[]{14, 38, -54, 43, 14, 102, -8}, new byte[]{97, 64, -84, 93, 107, 20, -102, -33})) || str2.equals(AbstractC1387m.m2421h(new byte[]{126, 10, 120, -17, -26, -108, 94, -2, 97, 1, 105, -1}, new byte[]{23, 100, 27, -99, -125, -11, 45, -101})) || str2.equals(AbstractC1387m.m2421h(new byte[]{-106, -59, 76, -108, 117, 2, 3, 36, -124, -59, 93, -124}, new byte[]{-14, -96, 47, -26, 16, 99, 112, 65}))) {
                return str2;
            }
        }
        return "";
    }

    /* JADX INFO: renamed from: q */
    public static String m5473q(String str) {
        for (String str2 : str.split(AbstractC1387m.m2421h(new byte[]{-59, 31, -29}, new byte[]{-103, 108, -56, 91, 77, -1, 24, 79}))) {
            if (str2.equals(AbstractC1387m.m2421h(new byte[]{-90}, new byte[]{-106, -42, -108, -63, -21, 80, -61, -94})) || str2.equals(AbstractC1387m.m2421h(new byte[]{76}, new byte[]{125, 89, 17, -90, -34, 107, -29, -50})) || str2.equals(AbstractC1387m.m2421h(new byte[]{9}, new byte[]{59, 109, 8, ByteCompanionObject.MAX_VALUE, -33, 104, -38, -16})) || str2.equals(AbstractC1387m.m2421h(new byte[]{49}, new byte[]{2, 63, 45, -78, 15, 17, -19, -127}))) {
                return str2;
            }
        }
        return "";
    }

    /* JADX INFO: renamed from: t */
    public static boolean m5474t(String str) {
        if (str != null) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty() && !strTrim.equals(AbstractC1387m.m2421h(new byte[]{-32, 114}, new byte[]{-69, 47, 81, -89, 80, 115, 106, -27})) && !strTrim.equals(AbstractC1387m.m2421h(new byte[]{108, -48}, new byte[]{23, -83, -72, 88, -110, 92, -118, 69})) && strTrim.length() >= 5 && strTrim.startsWith(AbstractC1387m.m2421h(new byte[]{-40}, new byte[]{-125, 30, 35, 36, 74, -60, 108, 115})) && strTrim.endsWith(AbstractC1387m.m2421h(new byte[]{114}, new byte[]{47, 120, -124, -51, 58, 68, 62, 63}))) {
                for (char c : strTrim.toCharArray()) {
                    if (Character.isLetterOrDigit(c) || AbstractC1387m.m2421h(new byte[]{-124, -76, -87, 86, -78}, new byte[]{-90, -17, -12, 122, -110, -13, -85, 83}).indexOf(c) != -1) {
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

    /* JADX INFO: renamed from: u */
    public static String m5475u(String str, String str2) {
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

    /* JADX WARN: Code duplicated, block: B:51:0x0115  */
    /* JADX INFO: renamed from: v */
    public static float m5476v(String[] strArr, String[] strArr2) {
        float f8;
        float fM151b;
        float size;
        String[] strArr3 = strArr;
        if (strArr3.length == 0 || strArr2.length == 0) {
            return 0.0f;
        }
        int length = strArr2.length;
        int i10 = 0;
        float f10 = 0.0f;
        while (i10 < length) {
            String str = strArr2[i10];
            int length2 = strArr3.length;
            int i11 = 0;
            float fMax = 0.0f;
            while (i11 < length2) {
                String str2 = strArr3[i11];
                if (str.equals(str2)) {
                    fM151b = 1.0f;
                } else {
                    int iMax = Math.max(str.length(), str2.length());
                    if (iMax < 4) {
                        fM151b = 0.0f;
                    } else {
                        int i12 = 0;
                        while (i12 < Math.min(str.length(), str2.length()) && str.charAt(i12) == str2.charAt(i12)) {
                            i12++;
                        }
                        int iMin = Math.min(str.length(), str2.length());
                        if (i12 >= 4) {
                            f8 = 1.0f;
                            if (i12 >= Math.ceil(iMin * 0.6f)) {
                                fM151b = 0.88f;
                                length = length;
                            }
                        } else {
                            f8 = 1.0f;
                        }
                        int[] iArr = new int[str2.length() + 1];
                        int[] iArr2 = new int[str2.length() + 1];
                        for (int i13 = 0; i13 <= str2.length(); i13++) {
                            iArr[i13] = i13;
                        }
                        int i14 = 1;
                        while (i14 <= str.length()) {
                            iArr2[0] = i14;
                            int i15 = 1;
                            while (i15 <= str2.length()) {
                                int i16 = i15 - 1;
                                int i17 = length;
                                int[] iArr3 = iArr;
                                iArr2[i15] = Math.min(Math.min(iArr3[i15] + 1, iArr2[i16] + 1), iArr[i16] + (str.charAt(i14 + (-1)) == str2.charAt(i16) ? 0 : 1));
                                i15++;
                                length = i17;
                                iArr = iArr3;
                            }
                            int[] iArr4 = iArr;
                            i14++;
                            iArr = iArr2;
                            iArr2 = iArr4;
                        }
                        length = length;
                        float f11 = iMax;
                        fM151b = f8 - (iArr[str2.length()] / f11);
                        if (fM151b < 0.72f) {
                            if (iMin >= 5 && iMin / f11 >= 0.65f) {
                                if (str.length() < 2 || str2.length() < 2) {
                                    size = 0.0f;
                                } else {
                                    ArrayList arrayList = new ArrayList();
                                    ArrayList arrayList2 = new ArrayList();
                                    for (int i18 = 0; i18 <= str.length() - 2; i18++) {
                                        arrayList.add(str.substring(i18, i18 + 2));
                                    }
                                    for (int i19 = 0; i19 <= str2.length() - 2; i19++) {
                                        arrayList2.add(str2.substring(i19, i19 + 2));
                                    }
                                    boolean[] zArr = new boolean[arrayList2.size()];
                                    int size2 = arrayList.size();
                                    int i20 = 0;
                                    int i21 = 0;
                                    while (i21 < size2) {
                                        Object obj = arrayList.get(i21);
                                        i21++;
                                        String str3 = (String) obj;
                                        for (int i22 = 0; i22 < arrayList2.size(); i22++) {
                                            if (!zArr[i22] && str3.equals(arrayList2.get(i22))) {
                                                zArr[i22] = true;
                                                i20++;
                                                break;
                                            }
                                        }
                                    }
                                    size = (i20 * 2.0f) / (arrayList2.size() + arrayList.size());
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
                    fMax = Math.max(fMax, fM151b);
                    i11++;
                    strArr3 = strArr;
                    length = length;
                }
                fMax = Math.max(fMax, fM151b);
                i11++;
                strArr3 = strArr;
                length = length;
            }
            f10 += fMax;
            i10++;
            strArr3 = strArr;
        }
        return f10 / strArr2.length;
    }

    /* JADX WARN: Code duplicated, block: B:128:0x0422  */
    /* JADX WARN: Code duplicated, block: B:131:0x0447  */
    /* JADX WARN: Code duplicated, block: B:134:0x046e  */
    /* JADX WARN: Code duplicated, block: B:143:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:149:0x04f5  */
    /* JADX INFO: renamed from: w */
    public static String[] m5477w(String str) {
        int i10;
        if (str == null) {
            return new String[0];
        }
        String strTrim = Normalizer.normalize(str, Normalizer.Form.NFKC).toLowerCase(Locale.ROOT).replaceAll(AbstractC1387m.m2421h(new byte[]{-125, -22, -44, -48, -127, 16, 34, 108, -88, -49, -58, -35, -89, 119}, new byte[]{-40, -76, -120, -96, -6, 92, 95, 48}), " ").trim();
        if (strTrim.isEmpty()) {
            return new String[0];
        }
        String[] strArrSplit = strTrim.split(AbstractC1387m.m2421h(new byte[]{75, 105, 55}, new byte[]{23, 26, 28, 75, -56, 115, -71, -52}));
        ArrayList arrayList = new ArrayList(strArrSplit.length);
        int i11 = 0;
        while (i11 < strArrSplit.length) {
            if (strArrSplit[i11].equals(AbstractC1387m.m2421h(new byte[]{-12, -41, 114, -91, -6, -50}, new byte[]{36, 104, -93, 37, 42, 118, -33, -12})) && (i10 = i11 + 1) < strArrSplit.length && strArrSplit[i10].startsWith(AbstractC1387m.m2421h(new byte[]{62, -54, -125, -81, 2, -100, 94, 67}, new byte[]{-18, 116, 82, 45, -46, 38, -113, -61}))) {
                arrayList.add(AbstractC1387m.m2421h(new byte[]{-63, -27, -89, -32, -59, 8, -78, -13, -63, -31, -69, -30, -55, 27, -68}, new byte[]{-79, -124, -43, -108, -84, 105, -34, -100}));
                i11 = i10;
            } else {
                String strM2421h = strArrSplit[i11];
                if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{48, 0, -42, -59, 6, -99, -13, -37, 49, Base64.padSymbol, -41, -1, 7, -91}, new byte[]{-32, -65, 7, 69, -42, 37, 35, 101}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{-97, -20, -58, 100, 97, 62, -50, -113, -97, -24, -38, 102, 109, 45, -64}, new byte[]{-17, -115, -76, 16, 8, 95, -94, -32});
                } else if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{105, 86, 59, 106, -117, -63, -105, 59}, new byte[]{-71, -24, -22, -24, 91, 123, 70, -69})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{51, 113, 71, -21}, new byte[]{92, 1, 34, -123, 16, -97, 118, 124}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{-98, 59, 63, -126, 38, 117, 25, -86}, new byte[]{-15, 75, 90, -20, 80, 16, 107, -56});
                } else if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{30, -10, 118, -53, 60, -49, 12, 45}, new byte[]{-50, 65, -90, 123, -20, 117, -35, -83})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{89, -87, 107, -15, 26}, new byte[]{58, -59, 4, -126, ByteCompanionObject.MAX_VALUE, 56, 36, 3}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{25, -6, 24, -44, 118, 83, 115, 96, 24}, new byte[]{122, -106, 119, -89, 19, 37, 22, 18});
                } else if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{120, 92, 17, 47, 84, -61, -67, -74, 121, 105}, new byte[]{-88, -18, -63, -107, -124, 120, 108, 56})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-91, -87, -27, 5, 91, -58}, new byte[]{-64, -57, -124, 103, 55, -93, 115, -59})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{46, 35}, new byte[]{65, 77, -108, 50, 77, -100, 2, 31}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{120, 6, 2, -26, -113, -75}, new byte[]{23, 104, 116, -125, -3, -41, 115, -18});
                } else if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{31, 29, -2, -58, -70, -46, -86, 76, 30, 33, -2, -54}, new byte[]{-49, -81, 47, 77, 106, 104, 122, -9})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{68, -120, 125, 84, -76, 86, 59}, new byte[]{32, -31, 14, 53, -42, 58, 94, -54})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{11, 107, 95}, new byte[]{100, 13, 57, -41, 23, 0, -105, 52}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{-113, -15, 126, -57, 75, 94, 126}, new byte[]{-32, -105, 24, -79, 46, 44, 28, 47});
                } else if (strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{-75, -100, -86, 57, -76, 79, -8, -95, -76, -89, -85, 12}, new byte[]{100, 31, 122, -117, 100, -6, 40, 26})) || strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{80, -108, 25, 101, 57, -66, 50, -127, 80, -101, 24, 87}, new byte[]{ByteCompanionObject.MIN_VALUE, 43, -56, -27, -23, 6, -30, 48})) || strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{73, 32, 13, 13, 4, 92, 119, -119, 72, 30}, new byte[]{-103, -97, -35, -77, -44, -18, -90, 2})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-24, -54, 17, 18, -74, 38, -9, -106}, new byte[]{-127, -92, 114, 96, -45, 71, -124, -13})) || strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-7, Base64.padSymbol, -74, 126, 8}, new byte[]{-117, 92, -33, 13, 109, -93, -35, 97}))) {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{42, -101, 0, -79, -124, 40, 69, -119, 53, -112, 17, -95}, new byte[]{67, -11, 99, -61, -31, 73, 54, -20});
                } else if (!strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{4, -93, 75, 41, 73, -50, 1, -34, 4, -84, 74, 29}, new byte[]{-43, 32, -101, -107, -103, 123, -47, 99})) && !strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{-56, 70, -118, -56, -23, 31, -108, -50}, new byte[]{25, -59, 90, 121, 57, -81, 68, 124})) && !strM2421h.startsWith(AbstractC1387m.m2421h(new byte[]{-97, 19, -49, 15, 0, 46, -99, -118, -97, 27}, new byte[]{79, -84, 31, -79, -48, -109, 77, 50})) && !strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-118, -113, -58, -38, -45, 16, -105, 88}, new byte[]{-18, -22, -91, -88, -74, 113, -28, Base64.padSymbol})) && !strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-100, 27, 117, 72, -102}, new byte[]{-16, 116, 2, 45, -24, ByteCompanionObject.MAX_VALUE, -48, -54}))) {
                    switch (strM2421h.hashCode()) {
                        case -2116005972:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{111, -118, 43, -81, 118, 49, -122, 24, 110, -80, 42, -106}, new byte[]{-66, 8, -6, 47, -90, -124, 87, -102}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-109}, new byte[]{-96, -119, -55, -10, -44, -67, 115, 57});
                            }
                            break;
                        case -2116005330:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{55, -34, -12, -105, 94, -28, 35, -110, 55, -48, -12, -104}, new byte[]{-26, 92, 37, 23, -114, 81, -14, 16}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-109}, new byte[]{-96, -119, -55, -10, -44, -67, 115, 57});
                            }
                            break;
                        case -1683837504:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{113, 121, 125, 64, 34, -39, 118, -72, 113, 120, 125, 64, 34, -36, 118, -71, 112, 73}, new byte[]{-95, -58, -84, -64, -14, 97, -90, 9}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case -1683837092:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-115, 122, -78, 55, 50, 50, -120, 118, -115, 123, -78, 55, 50, 55, -120, 121, -115, 124}, new byte[]{93, -59, 99, -73, -30, -118, 88, -57}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case -1683836916:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-86, -103, -117, 46, -32, Base64.padSymbol, -93, -19, -86, -104, -117, 46, -32, 56, -94, -33, -85, -88}, new byte[]{122, 38, 90, -82, 48, -123, 115, 92}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case -1223190035:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-60, -82, 98, 109, -69, -3, -10, -14, -60, -95, 99, 80, -69, -1}, new byte[]{20, 19, -77, -18, 107, 70, 38, 71}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-8}, new byte[]{-56, -65, 17, -75, -49, 21, -5, -95});
                            }
                            break;
                        case -906279820:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-26, -86, 62, 62, 116, 118}, new byte[]{-107, -49, 93, 81, 26, 18, 60, -42}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 110182:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-34, -42, 108}, new byte[]{-79, -72, 9, -12, 94, 123, -49, 117}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                        case 115276:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{103, -76, 86}, new byte[]{19, -61, 57, -2, 98, 96, 106, -5}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 1068402:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{68, 15, -48, 110, -105, -98}, new byte[]{-108, -69, 0, -36, 71, 46, 17, 36}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 1068407:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{107, 78, -74, -37, -56, 76}, new byte[]{-69, -6, 102, 105, 24, -7, 88, 66}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 1082298:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{113, -86, -46, 6, -127, -34}, new byte[]{-96, 40, 3, -122, 81, 102, 46, -126}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-109}, new byte[]{-96, -119, -55, -10, -44, -67, 115, 57});
                            }
                            break;
                        case 3735208:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{1, 62, -73, 103}, new byte[]{123, 91, -59, 8, 56, 2, 48, -33}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-8}, new byte[]{-56, -65, 17, -75, -49, 21, -5, -95});
                            }
                            break;
                        case 33401554:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-95, -103, 46, 57, -108, -69, 71, 65}, new byte[]{113, 36, -2, -121, 68, 0, -106, -51}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-8}, new byte[]{-56, -65, 17, -75, -49, 21, -5, -95});
                            }
                            break;
                        case 33421627:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{21, -123, 39, 68, 44, 12, 105, 69}, new byte[]{-59, 59, -9, -16, -4, -76, -71, -8}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                        case 33421769:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{17, -89, -55, -29, 67, -48, 103, 37}, new byte[]{-63, 25, 25, 87, -109, 109, -73, -107}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                        case 97440432:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-59, -14, 79, -111, -120}, new byte[]{-93, -101, Base64.padSymbol, -30, -4, -87, -70, 9}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                        case 110331239:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{30, 108, 97, 96, -37}, new byte[]{106, 4, 8, 18, -65, 42, 49, 120}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-109}, new byte[]{-96, -119, -55, -10, -44, -67, 115, 57});
                            }
                            break;
                        case 110339486:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{109, -126, 88, 19, 88}, new byte[]{25, -22, 42, 118, Base64.padSymbol, -82, -127, -25}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-109}, new byte[]{-96, -119, -55, -10, -44, -67, 115, 57});
                            }
                            break;
                        case 1469703191:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{98, 81, -72, 118, -103, 99, 98, -21, 98, 80, -72, 118, -103, 97, 98, -17}, new byte[]{-78, -18, 105, -10, 73, -37, -78, 90}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case 1469703194:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-42, 0, 83, 40, -35, -127, -83, 99, -42, 1, 83, 40, -35, -125, -83, 106}, new byte[]{6, -65, -126, -88, 13, 57, 125, -46}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case 1469703205:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{97, -34, -109, -98, 124, -94, 20, -39, 97, -33, -109, -98, 124, -96, 21, -21}, new byte[]{-79, 97, 66, 30, -84, 26, -60, 104}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case 1723007921:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-52, 120, -17, 40, 8, -21, 18, -78, -52, 122, -17, 37}, new byte[]{28, -54, 62, -86, -40, 85, -61, 50}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 1723008333:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-104, -36, 49, -96, -108, -41, -106, 20, -104, -48, 48, -101}, new byte[]{72, 110, -32, 34, 68, 105, 71, -108}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 2083227239:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{-88, -63, 75, -21, 120, 15, 15, -3, -88, -50, 74, -47}, new byte[]{120, 126, -101, 94, -87, -113, -33, 79}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                        case 2083228054:
                            if (strM2421h.equals(AbstractC1387m.m2421h(new byte[]{33, -62, 104, -7, -5, -127, -80, 116, 32, -10, 104, -11}, new byte[]{-15, 125, -72, 76, 42, 1, 96, -58}))) {
                                strM2421h = AbstractC1387m.m2421h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                    }
                } else {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -69, 74, 120, 60, 121, -118, -77, -110, -69, 91, 104}, new byte[]{-28, -34, 41, 10, 89, 24, -7, -42});
                }
                arrayList.add(strM2421h);
            }
            i11++;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX INFO: renamed from: C */
    public final void m5478C(ArrayList arrayList) throws IOException {
        int i10;
        String str = AbstractC3440a.f9917a;
        File fileM5363d = AbstractC3440a.m5363d(new File(this.f10164m.getFilesDir(), AbstractC3440a.f9918b));
        if (fileM5363d == null) {
            C2467b.m3820A(AbstractC1387m.m2421h(new byte[]{44, -97, 57, -38, 78, -81, -10, 104, 95, -105, 59, -33, 69, -73, -65, 98, 12, -38, 58, -44, 84, -5, -10, 101, 12, -114, 53, -41, 76, -66, -5}, new byte[]{ByteCompanionObject.MAX_VALUE, -6, 84, -69, 32, -37, -97, 11}));
            return;
        }
        File file = new File(fileM5363d, AbstractC1387m.m2421h(new byte[]{101, -109, -77, 52, -105, 122, -18, -37, 99, -46, -78, 34, -106, 125}, new byte[]{17, -4, -40, 81, -7, 19, -108, -66}));
        File file2 = new File(fileM5363d, AbstractC1387m.m2421h(new byte[]{119, -14, 100, -110, -89, 33, -53, 99, 125, -14, 105, -118, -29, 40, -105, 32, 105, -22, 105, -118, -94, 96, -53, 99, 110, -65, 38, -119, -96, 35, -38}, new byte[]{26, -121, 8, -26, -50, 77, -94, 13}));
        File file3 = new File(fileM5363d, AbstractC1387m.m2421h(new byte[]{-7, -118, 89, 36, 90, 51, 78, -10, -89, -116, 85, 43, 80, 46, 67, -12, -2, -118, 71, 107, 87, 38, 68, -3, -17}, new byte[]{-118, -17, 52, 69, 52, 71, 39, -107}));
        if (this.f10167p == null) {
            HashMap map = new HashMap(300000);
            JsonReader jsonReader = new JsonReader(new InputStreamReader(new FileInputStream(file), AbstractC1387m.m2421h(new byte[]{-103, -41, 88, -4, 68}, new byte[]{-52, -125, 30, -47, 124, -112, 37, 4})));
            try {
                jsonReader.beginObject();
                int iMax = 1;
                while (jsonReader.hasNext()) {
                    if (AbstractC1387m.m2421h(new byte[]{-82, -87, 111, -31, -98}, new byte[]{-61, -58, 11, -124, -14, 27, 80, -46}).equals(jsonReader.nextName())) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            if (AbstractC1387m.m2421h(new byte[]{-77, 65, -124, -108, 77}, new byte[]{-59, 46, -25, -11, 47, -80, 41, -53}).equals(jsonReader.nextName())) {
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
                                    map.put(strNextString, new C3478n(i11, fNextDouble));
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
                this.f10167p = new C3476m(map, iMax, 0);
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (this.f10168q == null) {
            this.f10168q = OrtEnvironment.getEnvironment();
        }
        if (this.f10169r == null) {
            OrtSession.SessionOptions sessionOptions = new OrtSession.SessionOptions();
            sessionOptions.setIntraOpNumThreads(1);
            sessionOptions.setInterOpNumThreads(1);
            sessionOptions.setCPUArenaAllocator(false);
            sessionOptions.setMemoryPatternOptimization(false);
            this.f10169r = this.f10168q.createSession(file2.getAbsolutePath(), sessionOptions);
        }
        boolean zIsFile = file3.isFile();
        String str2 = this.f10152a;
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
                                Log.i(str2, AbstractC1387m.m2421h(new byte[]{84, 50, 105, -43, 11, -25, -116, -107, 39, 52, 101, -38, 1, -6, -127, -105, 115, 50, 119, -108, 9, -4, -124, -110, 98, 51, 36, -46, 23, -4, -120, -42, 100, 54, 103, -36, 0, -87, -59}, new byte[]{7, 87, 4, -76, 101, -109, -27, -10}) + arrayList.size());
                                return;
                            }
                            Object obj = arrayList.get(i12);
                            i12++;
                            C3473l c3473l = (C3473l) obj;
                            String utf = dataInputStream.readUTF();
                            String utf2 = dataInputStream.readUTF();
                            if (!c3473l.f10074a.equals(utf) || !AbstractC1920f.m3009g(c3473l.f10075b).equals(utf2) || (i10 = dataInputStream.readInt()) < 0 || i10 > 64) {
                                break;
                                break;
                                break;
                                break;
                            }
                            c3473l.f10077d = new int[i10];
                            for (int i13 = 0; i13 < i10; i13++) {
                                c3473l.f10077d[i13] = dataInputStream.readInt();
                            }
                            int i14 = dataInputStream.readInt();
                            if (i14 != 384) {
                                break;
                            }
                            c3473l.f10078e = new float[i14];
                            for (int i15 = 0; i15 < i14; i15++) {
                                c3473l.f10078e[i15] = dataInputStream.readFloat();
                            }
                            Log.w(str2, AbstractC1387m.m2421h(new byte[]{49, -74, 2, 125, 39, 26, -49, -110, 66, -80, 14, ByteCompanionObject.MAX_VALUE, 33, 11, -122, -104, 17, -13, 1, 115, Base64.padSymbol, 78, -45, -126, 3, -79, 3, 121}, new byte[]{98, -45, 111, 28, 73, 110, -90, -15}), e);
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
                Log.w(str2, AbstractC1387m.m2421h(new byte[]{49, -74, 2, 125, 39, 26, -49, -110, 66, -80, 14, ByteCompanionObject.MAX_VALUE, 33, 11, -122, -104, 17, -13, 1, 115, Base64.padSymbol, 78, -45, -126, 3, -79, 3, 121}, new byte[]{98, -45, 111, 28, 73, 110, -90, -15}), e);
            }
        }
        int size2 = arrayList.size();
        int i16 = 0;
        while (i16 < size2) {
            Object obj2 = arrayList.get(i16);
            i16++;
            C3473l c3473l2 = (C3473l) obj2;
            c3473l2.f10077d = this.f10167p.m5454a(AbstractC1387m.m2421h(new byte[]{78, -105, 41, 66, -69, 22, 92, -49, 30}, new byte[]{62, -10, 90, 49, -38, 113, 57, -11}) + c3473l2.f10074a);
        }
        for (int i17 = 0; i17 < arrayList.size(); i17 += 8) {
            m5482I(arrayList, i17, Math.min(8, arrayList.size() - i17));
        }
        File parentFile = file3.getParentFile();
        StringBuilder sb = new StringBuilder();
        sb.append(file3.getName());
        File file4 = new File(parentFile, AbstractC1178q.m2075i(new byte[]{-91, -53, -43, -87}, new byte[]{-117, -91, -80, -34, -46, 122, 102, 55}, sb));
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
                    C3473l c3473l3 = (C3473l) obj3;
                    dataOutputStream.writeUTF(c3473l3.f10074a);
                    dataOutputStream.writeUTF(AbstractC1920f.m3009g(c3473l3.f10075b));
                    dataOutputStream.writeInt(c3473l3.f10077d.length);
                    for (int i19 : c3473l3.f10077d) {
                        dataOutputStream.writeInt(i19);
                    }
                    dataOutputStream.writeInt(c3473l3.f10078e.length);
                    for (float f8 : c3473l3.f10078e) {
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
            Log.w(str2, AbstractC1387m.m2421h(new byte[]{-107, 100, 60, 34, -80, 31, -119, 78, -94, 43, 62, 60, -67, 75, -126, 1, -91, 110, 36, 47, -70, 75, -114, 66, -10, 104, 40, 45, -68, 90}, new byte[]{-42, 11, 73, 78, -44, 63, -25, 33}), e6);
            file4.delete();
        }
    }

    /* JADX INFO: renamed from: E */
    public final String m5479E(int i10, byte[] bArr) {
        synchronized (this.f10174w) {
            try {
                Recognizer recognizer = this.f10134B ? this.f10176y : this.f10175x;
                if (recognizer == null) {
                    return null;
                }
                return recognizer.acceptWaveForm(bArr, i10) ? recognizer.getResult() : recognizer.getPartialResult();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: F */
    public final synchronized void m5480F(int i10, byte[] bArr) {
        if (bArr == null || i10 <= 0) {
            return;
        }
        int iMin = Math.min(i10, bArr.length);
        int iMax = Math.max(0, iMin - this.f10173v.length);
        int i11 = iMin - iMax;
        while (i11 > 0) {
            int iMin2 = Math.min(i11, this.f10173v.length - this.f10133A);
            System.arraycopy(bArr, iMax, this.f10173v, this.f10133A, iMin2);
            int i12 = this.f10133A + iMin2;
            byte[] bArr2 = this.f10173v;
            this.f10133A = i12 % bArr2.length;
            this.f10177z = Math.min(this.f10177z + iMin2, bArr2.length);
            iMax += iMin2;
            i11 -= iMin2;
        }
    }

    /* JADX INFO: renamed from: H */
    public final void m5481H(String str) {
        C3473l c3473lM5494p;
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean z9 = this.f10134B;
            boolean zHas = jSONObject.has(AbstractC1387m.m2421h(new byte[]{-112, 14, 115, -52}, new byte[]{-28, 107, 11, -72, -58, 75, 78, -36}));
            String strTrim = zHas ? jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-58, 48, -100, -87}, new byte[]{-78, 85, -28, -35, 58, 106, 27, 108}), "").trim() : jSONObject.optString(AbstractC1387m.m2421h(new byte[]{104, 91, -12, -102, 78, 95, 79}, new byte[]{24, 58, -122, -18, 39, 62, 35, -58}), "").trim();
            if (z9) {
                if (zHas) {
                    if (strTrim != null && !strTrim.trim().isEmpty()) {
                        this.f10141I = m5475u(this.f10141I, strTrim.trim());
                    }
                    this.f10142J = "";
                } else {
                    this.f10142J = strTrim == null ? "" : strTrim.trim();
                }
                strTrim = m5475u(this.f10141I, this.f10142J);
            }
            if ("".equals(strTrim)) {
                return;
            }
            if (!z9) {
                C1652b.m2734a();
                C1652b.m2737f().getClass();
                String strM2986f = C1917c.m2986f();
                if (strM2986f != null && !strM2986f.trim().isEmpty() && strTrim != null && strTrim.toLowerCase().contains(strM2986f.trim().toLowerCase()) && zHas) {
                    String strM5487N = m5487N();
                    this.f10150R = "";
                    m5498y(strTrim);
                    m5481H(strM5487N);
                    return;
                }
                return;
            }
            if (!strTrim.equals(this.f10145M)) {
                this.f10145M = strTrim;
                Log.d(this.f10152a, AbstractC1387m.m2421h(new byte[]{-59, -117, -106, 36, 42, 60, -106, -6, -20, -103, -108, 33, 126, 39, -100, -9, -93, -99, -107, 37, 104, 39, -99, -4, -25, -61, -35}, new byte[]{-125, -2, -6, 72, 10, 78, -13, -103}) + strTrim + AbstractC1387m.m2421h(new byte[]{8}, new byte[]{47, -13, -117, 51, 85, 92, -95, 53}));
                m5498y(strTrim);
            }
            String strM5467G = m5467G(strTrim);
            if (strM5467G.isEmpty()) {
                return;
            }
            if (f10132W.equals(Normalizer.normalize(strM5467G, Normalizer.Form.NFKC).toLowerCase(Locale.ROOT).replaceAll(AbstractC1387m.m2421h(new byte[]{114, -9, -103, 83, -43, ByteCompanionObject.MIN_VALUE, -92, -56, 89, -46, -117, 94, -13, -25}, new byte[]{41, -87, -59, 35, -82, -52, -39, -108}), " ").trim())) {
                Log.i(this.f10152a, AbstractC1387m.m2421h(new byte[]{-106, -121, -19, -54, 51, 92, 95, -112, -65, -107, -17, -49, 103, 71, 85, -99, -16, -111, -32, -56, 112, 75, 86, -97, -75, -106, -95, -60, 106, 14, 76, -100, -71, -111, -28, -122, 112, 65, 87, -98, -79, -100, -27}, new byte[]{-48, -14, -127, -90, 19, 46, 58, -13}));
                mo5402a();
                return;
            }
            C1652b.m2734a();
            C1919e c1919eM2989d = C1652b.m2737f().m2989d(strM5467G);
            if (AbstractC1920f.m3006d(c1919eM2989d)) {
                m5493n(c1919eM2989d);
                return;
            }
            String strM5466D = m5466D(strM5467G);
            if (strM5466D.isEmpty()) {
                return;
            }
            if (zHas || !strM5466D.equals(this.f10143K)) {
                this.f10143K = strM5466D;
                C1652b.m2734a();
                C1919e c1919eM2989d2 = C1652b.m2737f().m2989d(strM5466D);
                if (AbstractC1920f.m3006d(c1919eM2989d2)) {
                    m5493n(c1919eM2989d2);
                    return;
                }
                if (zHas && (c3473lM5494p = m5494p(strM5467G)) != null) {
                    Log.i(this.f10152a, AbstractC1387m.m2421h(new byte[]{-9, 1, -123, -92, -16, -92, -115, 29, -41, 9, -63, -69, -21, -92, -127, 22, -106, 21, -119, -65, -27, -66, -121, 83, -37, 4, -107, -82, -20, -88, -122, 73, -106}, new byte[]{-74, 101, -31, -51, -124, -51, -30, 115}) + c3473lM5494p.f10074a + AbstractC1387m.m2421h(new byte[]{99, 73, 97, -18}, new byte[]{67, 100, 95, -50, 83, 22, -65, -94}) + AbstractC1920f.m3009g(c3473lM5494p.f10075b));
                    m5493n(c3473lM5494p.f10075b);
                    return;
                }
                if (!this.f10165n.isEmpty() && !strM5466D.equals(this.f10144L)) {
                    this.f10144L = strM5466D;
                    int i10 = this.f10146N + 1;
                    this.f10146N = i10;
                    this.f10153b.schedule(new RunnableC3461h(this, i10, strM5466D, 3), 350L, TimeUnit.MILLISECONDS);
                }
                if (zHas) {
                    m5488O(strM5466D);
                }
            }
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:67:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0117 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:? A[Catch: all -> 0x00f3, SYNTHETIC, TRY_LEAVE, TryCatch #1 {all -> 0x00f3, blocks: (B:13:0x0065, B:29:0x00ef, B:55:0x011f, B:54:0x011c, B:14:0x006f, B:24:0x00e6, B:49:0x0114, B:48:0x0111, B:51:0x0117), top: B:64:0x0065, inners: #4, #5 }] */
    /* JADX WARN: Code duplicated, block: B:86:? A[SYNTHETIC] */
    /* JADX INFO: renamed from: I */
    public final void m5482I(ArrayList arrayList, int i10, int i11) {
        int iMax = 1;
        for (int i12 = 0; i12 < i11; i12++) {
            iMax = Math.max(iMax, ((C3473l) arrayList.get(i10 + i12)).f10077d.length);
        }
        int i13 = i11 * iMax;
        long[] jArr = new long[i13];
        long[] jArr2 = new long[i13];
        long[] jArr3 = new long[i13];
        long j10 = 1;
        Arrays.fill(jArr, 1L);
        for (int i14 = 0; i14 < i11; i14++) {
            int[] iArr = ((C3473l) arrayList.get(i10 + i14)).f10077d;
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
        OnnxTensor onnxTensorCreateTensor = OnnxTensor.createTensor(this.f10168q, LongBuffer.wrap(jArr), jArr4);
        try {
            OnnxTensor onnxTensorCreateTensor2 = OnnxTensor.createTensor(this.f10168q, LongBuffer.wrap(jArr2), jArr4);
            try {
                OnnxTensor onnxTensorCreateTensor3 = OnnxTensor.createTensor(this.f10168q, LongBuffer.wrap(jArr3), jArr4);
                try {
                    HashMap map = new HashMap();
                    map.put(AbstractC1387m.m2421h(new byte[]{104, -56, -86, -102, 54, 66, -5, -32, 114}, new byte[]{1, -90, -38, -17, 66, 29, -110, -124}), onnxTensorCreateTensor);
                    map.put(AbstractC1387m.m2421h(new byte[]{-127, 97, 97, -45, 69, -85, ByteCompanionObject.MAX_VALUE, 104, -114, 74, 120, -41, 88, -76}, new byte[]{-32, 21, 21, -74, 43, -33, 22, 7}), onnxTensorCreateTensor2);
                    map.put(AbstractC1387m.m2421h(new byte[]{-54, 71, 75, 113, -15, -28, -123, 35, -50, 77, ByteCompanionObject.MAX_VALUE, 125, -5, -56}, new byte[]{-66, 40, 32, 20, -97, -69, -15, 90}), onnxTensorCreateTensor3);
                    OrtSession.Result resultRun = this.f10169r.run(map);
                    try {
                        float[][][] fArr = (float[][][]) resultRun.get(0).getValue();
                        for (int i17 = 0; i17 < i11; i17++) {
                            ((C3473l) arrayList.get(i10 + i17)).f10078e = m5470h(fArr[i17], jArr2, i17 * iMax, iMax);
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

    /* JADX INFO: renamed from: J */
    public final void m5483J() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f10151S < 1000) {
            return;
        }
        this.f10151S = jCurrentTimeMillis;
        if (m5490j()) {
            m5485L();
            try {
                String string = new JSONArray((Collection) m5489i()).toString();
                if (m5474t(string)) {
                    synchronized (this.f10174w) {
                        Recognizer recognizer = this.f10175x;
                        if (recognizer != null) {
                            recognizer.close();
                            this.f10175x = null;
                        }
                        Recognizer recognizer2 = this.f10176y;
                        if (recognizer2 != null) {
                            recognizer2.close();
                            this.f10176y = null;
                        }
                        float f8 = 16000;
                        this.f10175x = new Recognizer(this.f10163l, f8, string);
                        this.f10176y = new Recognizer(this.f10163l, f8);
                        this.f10134B = false;
                        synchronized (this) {
                            this.f10177z = 0;
                            this.f10133A = 0;
                        }
                    }
                    if (ContextCompat.checkSelfPermission(this.f10164m, AbstractC1387m.m2421h(new byte[]{-29, -99, 104, 69, -19, 74, -40, 33, -14, -106, 126, 90, -21, 80, -49, 102, -19, -99, 34, 101, -57, 96, -13, 93, -58, -84, 77, 98, -58, 106, -13}, new byte[]{-126, -13, 12, 55, -126, 35, -68, 15})) != 0) {
                        m5499z(EnumC3443b.f9929b);
                        return;
                    }
                    AudioRecord audioRecord = new AudioRecord(C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-111, -104, -106, 8, -92, 13, -39, 7, -77, -113, -106, 4, -73, 113, -3, 17, -72, -108, -99, 50, -86, 42, -50, 7, -71}, new byte[]{-36, -3, -14, 97, -59, 95, -68, 100}), 1), 16000, 16, 2, this.f10171t);
                    this.f10162k = audioRecord;
                    audioRecord.startRecording();
                }
            } catch (Exception e) {
                Log.e(this.f10152a, AbstractC1387m.m2421h(new byte[]{-21, 110, 47, 107, -55, -29, 32, 114, -34, 110, 52, 108, -59, -83, 53, 55, -44, 111, 47, 124, -59, -94, 62, 126, -57, 96, 50, 97, -61, -83, 114, 113, -36, 104, 42, 109, -56}, new byte[]{-67, 1, 70, 8, -84, -61, 82, 23}), e);
                m5485L();
            }
        }
    }

    /* JADX INFO: renamed from: K */
    public final void m5484K(int i10, String str) {
        if (i10 == this.f10137E && this.f10134B && !this.f10136D) {
            if (i10 == this.f10139G) {
                this.f10138F = "";
            }
            this.f10136D = true;
            this.f10154c.execute(new RunnableC3461h(this, str, i10, 0));
        }
    }

    /* JADX INFO: renamed from: L */
    public final void m5485L() {
        AudioRecord audioRecord = this.f10162k;
        if (audioRecord != null) {
            try {
                if (audioRecord.getState() == 1) {
                    this.f10162k.stop();
                }
            } catch (IllegalStateException unused) {
            }
            this.f10162k.release();
            this.f10162k = null;
        }
        m5499z(EnumC3443b.f9929b);
    }

    /* JADX INFO: renamed from: M */
    public final void m5486M() {
        synchronized (this.f10174w) {
            try {
                this.f10134B = false;
                this.f10157f.clear();
                this.f10137E++;
                this.f10138F = "";
                this.f10135C = 0L;
                this.f10140H = "";
                this.f10141I = "";
                this.f10142J = "";
                this.f10143K = "";
                this.f10144L = "";
                this.f10145M = "";
                this.f10146N++;
                Recognizer recognizer = this.f10175x;
                if (recognizer != null) {
                    recognizer.reset();
                }
                Recognizer recognizer2 = this.f10176y;
                if (recognizer2 != null) {
                    recognizer2.reset();
                }
                synchronized (this) {
                    this.f10177z = 0;
                    this.f10133A = 0;
                }
                this.f10150R = "";
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: N */
    public final String m5487N() {
        synchronized (this.f10174w) {
            if (this.f10176y == null) {
                try {
                    this.f10176y = new Recognizer(this.f10163l, 16000.0f);
                } catch (Exception unused) {
                    return null;
                }
            }
            this.f10176y.reset();
            this.f10134B = true;
            this.f10137E++;
            this.f10138F = "";
            this.f10135C = System.currentTimeMillis() + 10000;
            this.f10140H = "";
            this.f10141I = "";
            this.f10142J = "";
            this.f10143K = "";
            this.f10144L = "";
            this.f10145M = "";
            this.f10146N++;
            byte[] bArrM5496s = m5496s();
            if (bArrM5496s == null || bArrM5496s.length <= 0) {
                return null;
            }
            this.f10157f.clear();
            boolean zAcceptWaveForm = this.f10176y.acceptWaveForm(bArrM5496s, bArrM5496s.length);
            Recognizer recognizer = this.f10176y;
            return zAcceptWaveForm ? recognizer.getResult() : recognizer.getPartialResult();
        }
    }

    /* JADX INFO: renamed from: O */
    public final void m5488O(String str) {
        String strM5466D = m5466D(str);
        if (strM5466D.length() < 2 || this.f10165n.isEmpty() || strM5466D.equalsIgnoreCase(this.f10140H)) {
            return;
        }
        this.f10140H = strM5466D;
        System.currentTimeMillis();
        int i10 = this.f10137E + 1;
        this.f10137E = i10;
        this.f10138F = strM5466D;
        this.f10139G = i10;
        this.f10153b.schedule(new RunnableC3461h(this, strM5466D, i10, 4), 550L, TimeUnit.MILLISECONDS);
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: a */
    public final void mo5402a() {
        AudioFocusRequest audioFocusRequest;
        AudioManager audioManager = this.f10160i;
        if (audioManager != null && (audioFocusRequest = this.f10161j) != null && Build.VERSION.SDK_INT >= 26) {
            audioManager.abandonAudioFocusRequest(audioFocusRequest);
        }
        m5486M();
        m5499z(f10130U);
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: b */
    public final void mo5403b() {
        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{53, -25, -37, -91, -105, -16, -33, 108}, new byte[]{70, -109, -76, -43, -63, -97, -84, 7}), ColorText.RED);
        this.f10147O++;
        this.f10157f.clear();
        ScheduledFuture scheduledFuture = this.f10158g;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f10158g.cancel(true);
            this.f10158g = null;
        }
        m5485L();
        synchronized (this.f10174w) {
            Recognizer recognizer = this.f10175x;
            if (recognizer != null) {
                recognizer.close();
                this.f10175x = null;
            }
            Recognizer recognizer2 = this.f10176y;
            if (recognizer2 != null) {
                recognizer2.close();
                this.f10176y = null;
            }
            this.f10134B = false;
        }
        m5499z(EnumC3443b.f9929b);
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: c */
    public final void mo5404c() {
        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-122, -5, 122, 101, -70, 11, 60, -39, -98}, new byte[]{-11, -113, 27, 23, -50, 93, 83, -86}), ColorText.RED);
        mo5403b();
        final int i10 = 0;
        final int i11 = 1;
        if (!this.f10166o && this.f10165n.isEmpty()) {
            this.f10166o = true;
            this.f10154c.execute(new Runnable(this) { // from class: w0.j

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ C3480o f10029c;

                {
                    this.f10029c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i10) {
                        case 0:
                            C3480o c3480o = this.f10029c;
                            try {
                                try {
                                    Process.setThreadPriority(10);
                                    ArrayList arrayListM5492l = c3480o.m5492l();
                                    c3480o.m5478C(arrayListM5492l);
                                    c3480o.f10165n = Collections.unmodifiableList(arrayListM5492l);
                                    Log.i(c3480o.f10152a, AbstractC1387m.m2421h(new byte[]{-78, 27, -30, 54, 59, -2, 1, -31, -63, 29, -18, 57, 49, -29, 12, -29, -107, 27, -4, 119, 37, -8, 13, -14, ByteCompanionObject.MIN_VALUE, 12, -22, 51, 111, -86}, new byte[]{-31, 126, -113, 87, 85, -118, 104, -126}) + arrayListM5492l.size());
                                    break;
                                } catch (Exception e) {
                                    Log.e(c3480o.f10152a, AbstractC1387m.m2421h(new byte[]{19, 76, -58, -103, -45, 27, 67, -20, 36, 3, -61, -121, -46, 75, 76, -15, 53, 3, -64, -112, -38, 90, 67, -9, 57, 64, -109, -106, -42, 85, 73, -22, 52, 66, -57, -112, -60}, new byte[]{80, 35, -77, -11, -73, 59, 45, -125}), e);
                                    c3480o.f10165n = Collections.EMPTY_LIST;
                                }
                                return;
                            } finally {
                                c3480o.f10166o = false;
                            }
                        default:
                            C3480o c3480o2 = this.f10029c;
                            try {
                                try {
                                    C1652b.m2734a();
                                    if (C1652b.m2747q() != c3480o2) {
                                        synchronized (c3480o2) {
                                            try {
                                                ScheduledFuture scheduledFuture = c3480o2.f10159h;
                                                if (scheduledFuture != null) {
                                                    scheduledFuture.cancel(false);
                                                }
                                                c3480o2.f10159h = null;
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                            break;
                                        }
                                    } else if (!C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-114, 117, 122, 14, 100, 49, 52, -112, -117, 100, 103, 52, 90, 41, 55, -90, -82, 82}, new byte[]{-3, 5, 19, 81, 5, 90, 64, -7}), false) && c3480o2.f10163l != null && c3480o2.m5490j() && System.currentTimeMillis() - c3480o2.f10148P >= 5000) {
                                        ScheduledFuture scheduledFuture2 = c3480o2.f10158g;
                                        boolean z9 = (scheduledFuture2 == null || scheduledFuture2.isCancelled() || c3480o2.f10158g.isDone()) ? false : true;
                                        AudioRecord audioRecord = c3480o2.f10162k;
                                        boolean z10 = audioRecord != null && audioRecord.getState() == 1 && c3480o2.f10162k.getRecordingState() == 3;
                                        if ((!z9 || !z10) && !c3480o2.f10149Q) {
                                            c3480o2.f10149Q = true;
                                            Log.w(c3480o2.f10152a, AbstractC1387m.m2421h(new byte[]{-66, -111, 62, 24, -66, 111, -83, 126, -117, -44, 42, 22, -72, 104, -84, 116, -125, -109, 125, 5, -87, 120, -80, 113, -98, ByteCompanionObject.MIN_VALUE, 103, 87, -72, 106, -73, 123, -83, -104, 52, 1, -87, 54}, new byte[]{-20, -12, 93, 119, -52, 11, -60, 16}) + z9 + AbstractC1387m.m2421h(new byte[]{-7, -127, 115, -114, 6, 39, 85, -70, -80, -45, 64, -121, 12, 62, 66, -29}, new byte[]{-43, -95, 1, -21, 101, 72, 39, -34}) + z10);
                                            c3480o2.mo5404c();
                                        }
                                    }
                                } catch (Exception e6) {
                                    Log.e(c3480o2.f10152a, AbstractC1387m.m2421h(new byte[]{54, 92, 66, ByteCompanionObject.MAX_VALUE, 36, 108, -95, 40, 3, 25, 86, 113, 34, 107, -96, 34, 11, 94, 1, 118, 55, 97, -92, 35, 0}, new byte[]{100, 57, 33, 16, 86, 8, -56, 70}), e6);
                                }
                                c3480o2.f10149Q = false;
                                return;
                            } catch (Throwable th2) {
                                c3480o2.f10149Q = false;
                                throw th2;
                            }
                    }
                }
            });
        }
        this.f10148P = System.currentTimeMillis();
        final int i12 = this.f10147O + 1;
        this.f10147O = i12;
        this.f10157f.clear();
        this.f10156e.execute(new Runnable(this) { // from class: w0.i

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3480o f10014c;

            {
                this.f10014c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i10) {
                    case 0:
                        C3480o c3480o = this.f10014c;
                        int i13 = i12;
                        Process.setThreadPriority(-16);
                        while (i13 == c3480o.f10147O && !Thread.currentThread().isInterrupted()) {
                            try {
                                C3470k c3470k = (C3470k) c3480o.f10157f.poll(250L, TimeUnit.MILLISECONDS);
                                if (c3470k == null) {
                                    c3480o.m5497x();
                                    c3480o.m5491k();
                                } else {
                                    c3480o.m5481H(c3480o.m5479E(c3470k.f10041b, c3470k.f10040a));
                                    c3480o.m5497x();
                                    c3480o.m5491k();
                                }
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                return;
                            } catch (Exception e) {
                                Log.e(c3480o.f10152a, AbstractC1387m.m2421h(new byte[]{-16, 86, 78, -17, -64, 20, -18, -79, -53, 92, 67, -96, -41, 8, -24, -90, -57, 64, 94, -23, -55, 29, -89, -93, -61, 90, 65, -27, -61}, new byte[]{-94, 51, 45, ByteCompanionObject.MIN_VALUE, -89, 122, -121, -59}), e);
                                if (i13 == c3480o.f10147O) {
                                    c3480o.m5483J();
                                    return;
                                }
                                return;
                            }
                        }
                        break;
                    default:
                        C3480o c3480o2 = this.f10014c;
                        int i14 = i12;
                        if (i14 == c3480o2.f10147O) {
                            try {
                                AudioRecord audioRecord = c3480o2.f10162k;
                                if (audioRecord != null && audioRecord.getRecordingState() == 3) {
                                    AudioRecord audioRecord2 = c3480o2.f10162k;
                                    byte[] bArr = c3480o2.f10172u;
                                    int i15 = audioRecord2.read(bArr, 0, bArr.length, 0);
                                    if (i15 > 0) {
                                        if (C3480o.f10129T != EnumC3443b.f9931d) {
                                            c3480o2.m5499z(EnumC3443b.f9930c);
                                        }
                                        c3480o2.m5480F(i15, c3480o2.f10172u);
                                        C3470k c3470k2 = new C3470k(Arrays.copyOf(c3480o2.f10172u, i15), i15);
                                        if (!c3480o2.f10157f.offer(c3470k2)) {
                                            c3480o2.f10157f.poll();
                                            c3480o2.f10157f.offer(c3470k2);
                                            Log.w(c3480o2.f10152a, AbstractC1387m.m2421h(new byte[]{123, -44, -120, 62, -108, 24, -22, -8, 64, -34, -123, 113, -126, 3, -26, -7, 76, -111, -124, 39, -106, 4, -27, -32, 70, -58, -48, 113, -100, 26, -25, -23, 90, -59, -53, 48, -122, 18, -22, -29, 9, -43, -103, 62, -125, 6, -26, -24}, new byte[]{41, -79, -21, 81, -13, 118, -125, -116}));
                                        }
                                    }
                                }
                                if (i14 == c3480o2.f10147O) {
                                    c3480o2.m5483J();
                                }
                            } catch (Exception e6) {
                                Log.e(c3480o2.f10152a, AbstractC1387m.m2421h(new byte[]{87, -15, 59, -67, 18, -100, 122, -72, 121, -25, 58, -89, 14, -43, 100, -83, 54, -30, 62, -67, 17, -39, 110}, new byte[]{22, -124, 95, -44, 125, -68, 10, -54}), e6);
                                if (i14 == c3480o2.f10147O) {
                                    c3480o2.m5483J();
                                }
                                return;
                            }
                            break;
                        }
                        break;
                }
            }
        });
        this.f10158g = this.f10153b.scheduleWithFixedDelay(new Runnable(this) { // from class: w0.i

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C3480o f10014c;

            {
                this.f10014c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i11) {
                    case 0:
                        C3480o c3480o = this.f10014c;
                        int i13 = i12;
                        Process.setThreadPriority(-16);
                        while (i13 == c3480o.f10147O && !Thread.currentThread().isInterrupted()) {
                            try {
                                C3470k c3470k = (C3470k) c3480o.f10157f.poll(250L, TimeUnit.MILLISECONDS);
                                if (c3470k == null) {
                                    c3480o.m5497x();
                                    c3480o.m5491k();
                                } else {
                                    c3480o.m5481H(c3480o.m5479E(c3470k.f10041b, c3470k.f10040a));
                                    c3480o.m5497x();
                                    c3480o.m5491k();
                                }
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                return;
                            } catch (Exception e) {
                                Log.e(c3480o.f10152a, AbstractC1387m.m2421h(new byte[]{-16, 86, 78, -17, -64, 20, -18, -79, -53, 92, 67, -96, -41, 8, -24, -90, -57, 64, 94, -23, -55, 29, -89, -93, -61, 90, 65, -27, -61}, new byte[]{-94, 51, 45, ByteCompanionObject.MIN_VALUE, -89, 122, -121, -59}), e);
                                if (i13 == c3480o.f10147O) {
                                    c3480o.m5483J();
                                    return;
                                }
                                return;
                            }
                        }
                        break;
                    default:
                        C3480o c3480o2 = this.f10014c;
                        int i14 = i12;
                        if (i14 == c3480o2.f10147O) {
                            try {
                                AudioRecord audioRecord = c3480o2.f10162k;
                                if (audioRecord != null && audioRecord.getRecordingState() == 3) {
                                    AudioRecord audioRecord2 = c3480o2.f10162k;
                                    byte[] bArr = c3480o2.f10172u;
                                    int i15 = audioRecord2.read(bArr, 0, bArr.length, 0);
                                    if (i15 > 0) {
                                        if (C3480o.f10129T != EnumC3443b.f9931d) {
                                            c3480o2.m5499z(EnumC3443b.f9930c);
                                        }
                                        c3480o2.m5480F(i15, c3480o2.f10172u);
                                        C3470k c3470k2 = new C3470k(Arrays.copyOf(c3480o2.f10172u, i15), i15);
                                        if (!c3480o2.f10157f.offer(c3470k2)) {
                                            c3480o2.f10157f.poll();
                                            c3480o2.f10157f.offer(c3470k2);
                                            Log.w(c3480o2.f10152a, AbstractC1387m.m2421h(new byte[]{123, -44, -120, 62, -108, 24, -22, -8, 64, -34, -123, 113, -126, 3, -26, -7, 76, -111, -124, 39, -106, 4, -27, -32, 70, -58, -48, 113, -100, 26, -25, -23, 90, -59, -53, 48, -122, 18, -22, -29, 9, -43, -103, 62, -125, 6, -26, -24}, new byte[]{41, -79, -21, 81, -13, 118, -125, -116}));
                                        }
                                    }
                                }
                                if (i14 == c3480o2.f10147O) {
                                    c3480o2.m5483J();
                                }
                            } catch (Exception e6) {
                                Log.e(c3480o2.f10152a, AbstractC1387m.m2421h(new byte[]{87, -15, 59, -67, 18, -100, 122, -72, 121, -25, 58, -89, 14, -43, 100, -83, 54, -30, 62, -67, 17, -39, 110}, new byte[]{22, -124, 95, -44, 125, -68, 10, -54}), e6);
                                if (i14 == c3480o2.f10147O) {
                                    c3480o2.m5483J();
                                }
                                return;
                            }
                            break;
                        }
                        break;
                }
            }
        }, 0L, 30L, TimeUnit.MILLISECONDS);
        synchronized (this) {
            ScheduledFuture scheduledFuture = this.f10159h;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                this.f10159h = this.f10153b.scheduleWithFixedDelay(new Runnable(this) { // from class: w0.j

                    /* JADX INFO: renamed from: c */
                    public final /* synthetic */ C3480o f10029c;

                    {
                        this.f10029c = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i11) {
                            case 0:
                                C3480o c3480o = this.f10029c;
                                try {
                                    try {
                                        Process.setThreadPriority(10);
                                        ArrayList arrayListM5492l = c3480o.m5492l();
                                        c3480o.m5478C(arrayListM5492l);
                                        c3480o.f10165n = Collections.unmodifiableList(arrayListM5492l);
                                        Log.i(c3480o.f10152a, AbstractC1387m.m2421h(new byte[]{-78, 27, -30, 54, 59, -2, 1, -31, -63, 29, -18, 57, 49, -29, 12, -29, -107, 27, -4, 119, 37, -8, 13, -14, ByteCompanionObject.MIN_VALUE, 12, -22, 51, 111, -86}, new byte[]{-31, 126, -113, 87, 85, -118, 104, -126}) + arrayListM5492l.size());
                                        break;
                                    } catch (Exception e) {
                                        Log.e(c3480o.f10152a, AbstractC1387m.m2421h(new byte[]{19, 76, -58, -103, -45, 27, 67, -20, 36, 3, -61, -121, -46, 75, 76, -15, 53, 3, -64, -112, -38, 90, 67, -9, 57, 64, -109, -106, -42, 85, 73, -22, 52, 66, -57, -112, -60}, new byte[]{80, 35, -77, -11, -73, 59, 45, -125}), e);
                                        c3480o.f10165n = Collections.EMPTY_LIST;
                                    }
                                    return;
                                } finally {
                                    c3480o.f10166o = false;
                                }
                            default:
                                C3480o c3480o2 = this.f10029c;
                                try {
                                    try {
                                        C1652b.m2734a();
                                        if (C1652b.m2747q() != c3480o2) {
                                            synchronized (c3480o2) {
                                                try {
                                                    ScheduledFuture scheduledFuture2 = c3480o2.f10159h;
                                                    if (scheduledFuture2 != null) {
                                                        scheduledFuture2.cancel(false);
                                                    }
                                                    c3480o2.f10159h = null;
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                                break;
                                            }
                                        } else if (!C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-114, 117, 122, 14, 100, 49, 52, -112, -117, 100, 103, 52, 90, 41, 55, -90, -82, 82}, new byte[]{-3, 5, 19, 81, 5, 90, 64, -7}), false) && c3480o2.f10163l != null && c3480o2.m5490j() && System.currentTimeMillis() - c3480o2.f10148P >= 5000) {
                                            ScheduledFuture scheduledFuture3 = c3480o2.f10158g;
                                            boolean z9 = (scheduledFuture3 == null || scheduledFuture3.isCancelled() || c3480o2.f10158g.isDone()) ? false : true;
                                            AudioRecord audioRecord = c3480o2.f10162k;
                                            boolean z10 = audioRecord != null && audioRecord.getState() == 1 && c3480o2.f10162k.getRecordingState() == 3;
                                            if ((!z9 || !z10) && !c3480o2.f10149Q) {
                                                c3480o2.f10149Q = true;
                                                Log.w(c3480o2.f10152a, AbstractC1387m.m2421h(new byte[]{-66, -111, 62, 24, -66, 111, -83, 126, -117, -44, 42, 22, -72, 104, -84, 116, -125, -109, 125, 5, -87, 120, -80, 113, -98, ByteCompanionObject.MIN_VALUE, 103, 87, -72, 106, -73, 123, -83, -104, 52, 1, -87, 54}, new byte[]{-20, -12, 93, 119, -52, 11, -60, 16}) + z9 + AbstractC1387m.m2421h(new byte[]{-7, -127, 115, -114, 6, 39, 85, -70, -80, -45, 64, -121, 12, 62, 66, -29}, new byte[]{-43, -95, 1, -21, 101, 72, 39, -34}) + z10);
                                                c3480o2.mo5404c();
                                            }
                                        }
                                    } catch (Exception e6) {
                                        Log.e(c3480o2.f10152a, AbstractC1387m.m2421h(new byte[]{54, 92, 66, ByteCompanionObject.MAX_VALUE, 36, 108, -95, 40, 3, 25, 86, 113, 34, 107, -96, 34, 11, 94, 1, 118, 55, 97, -92, 35, 0}, new byte[]{100, 57, 33, 16, 86, 8, -56, 70}), e6);
                                    }
                                    c3480o2.f10149Q = false;
                                    return;
                                } catch (Throwable th2) {
                                    c3480o2.f10149Q = false;
                                    throw th2;
                                }
                        }
                    }
                }, 3L, 3L, TimeUnit.SECONDS);
            }
        }
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: d */
    public final void mo5405d() {
        f10130U = f10129T;
        if (this.f10161j == null && Build.VERSION.SDK_INT >= 26) {
            this.f10161j = AbstractC3449d.m5378d().setOnAudioFocusChangeListener(new C3452e(this, 1)).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(2).build()).build();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f10160i.requestAudioFocus(this.f10161j);
        }
        if (!this.f10134B) {
            m5487N();
        }
        m5499z(EnumC3443b.f9931d);
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: e */
    public final EnumC3443b mo5406e() {
        return f10129T;
    }

    /* JADX INFO: renamed from: i */
    public final List m5489i() {
        ArrayList arrayList = new ArrayList();
        C1652b.m2734a();
        C1652b.m2737f().getClass();
        String strM2986f = C1917c.m2986f();
        if (strM2986f != null && !strM2986f.trim().isEmpty()) {
            for (String str : strM2986f.trim().toLowerCase(Locale.ROOT).split(AbstractC1387m.m2421h(new byte[]{24, 24, -99}, new byte[]{68, 107, -74, 4, -71, -92, 124, 26}))) {
                if (!str.isEmpty() && !arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
            arrayList.add(AbstractC1387m.m2421h(new byte[]{-35, Base64.padSymbol, 125, -2, 5}, new byte[]{-122, 72, 19, -107, 88, 123, -79, -55}));
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: j */
    public final boolean m5490j() {
        AudioManager audioManager = (AudioManager) this.f10164m.getSystemService(AbstractC1387m.m2421h(new byte[]{7, -26, -59, -114, -16}, new byte[]{102, -109, -95, -25, -97, 11, 56, -71}));
        return audioManager.getMode() == 0 && !audioManager.isMicrophoneMute();
    }

    /* JADX INFO: renamed from: k */
    public final void m5491k() {
        if (!this.f10134B || this.f10135C <= 0 || System.currentTimeMillis() < this.f10135C) {
            return;
        }
        if (!this.f10157f.isEmpty()) {
            this.f10135C = System.currentTimeMillis() + 1000;
            return;
        }
        if (this.f10136D || (!this.f10138F.isEmpty() && this.f10139G == this.f10137E)) {
            this.f10135C = System.currentTimeMillis() + 1000;
            return;
        }
        Log.i(this.f10152a, AbstractC1387m.m2421h(new byte[]{118, -11, 105, 33, 23, -47, 89, 54, 95, -25, 107, 36, 67, -54, 83, 59, 16, -12, 108, 32, 82, -52, 73, 33}, new byte[]{48, ByteCompanionObject.MIN_VALUE, 5, 77, 55, -93, 60, 85}));
        m5486M();
        m5499z(EnumC3443b.f9930c);
    }

    /* JADX INFO: renamed from: l */
    public final ArrayList m5492l() {
        EnumC2469d enumC2469d;
        int i10;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C1652b.m2734a();
        ArrayList arrayListM2990e = C1652b.m2737f().m2990e();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put(Locale.getDefault().toLanguageTag(), Locale.getDefault());
        Context context = this.f10164m;
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
                        Field declaredField = EnumC2469d.class.getDeclaredField(AbstractC1387m.m2421h(new byte[]{-91, 86, 33, 110, -62, -92, -30, 0, -96, 82, 55}, new byte[]{-63, 63, 82, 30, -82, -59, -101, 78}));
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
                            m5469g(linkedHashMap, context.createConfigurationContext(configuration).getString(i10), c1919e, "");
                        }
                    }
                }
                m5469g(linkedHashMap, c1919e.f5066i, c1919e, "");
            }
        }
        C1652b.m2734a();
        ArrayList arrayListM2993i = C1652b.m2737f().m2993i(C1917c.f5050e);
        int size3 = arrayListM2993i.size();
        while (i11 < size3) {
            Object obj3 = arrayListM2993i.get(i11);
            i11++;
            C3481o0 c3481o0 = (C3481o0) obj3;
            if (c3481o0.f10180c && AbstractC1920f.m3006d(c3481o0.f10179b)) {
                m5469g(linkedHashMap, c3481o0.f10178a, c3481o0.f10179b, "");
            }
        }
        String str2 = this.f10152a;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        for (C3473l c3473l : linkedHashMap.values()) {
            String strM3009g = AbstractC1920f.m3009g(c3473l.f10075b);
            ((List) linkedHashMap3.computeIfAbsent(strM3009g, new C0077d(7))).add(c3473l.f10074a);
            linkedHashMap4.put(strM3009g, c3473l.f10075b);
        }
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(context.getAssets().open(AbstractC1387m.m2421h(new byte[]{104, Base64.padSymbol, 71, -107, 41, -64, -113, -65, 106, 59, 65, -104, 19, -2, -126, -75, ByteCompanionObject.MAX_VALUE, 33, 75, -123, 98, -11, -99, -77, 112}, new byte[]{30, 82, 46, -10, 76, -97, -18, -36})), AbstractC1387m.m2421h(new byte[]{-63, -125, -47, 108, -108}, new byte[]{-108, -41, -105, 65, -84, -77, 21, -40}));
            try {
                List<C3447c0> listM5391b = C3450d0.m5389c(inputStreamReader).m5391b(linkedHashMap3);
                int size4 = linkedHashMap.size();
                for (C3447c0 c3447c0 : listM5391b) {
                    m5469g(linkedHashMap, c3447c0.f9941b, (C1919e) linkedHashMap4.get(c3447c0.f9940a), c3447c0.f9942c);
                }
                Log.i(str2, AbstractC1387m.m2421h(new byte[]{86, 35, -7, 78, 2, -65, 25, -36, 118, 43, -67, 81, 25, -65, 21, -41, 55, 55, -11, 85, 23, -91, 19, -63, 55, 43, -14, 70, 18, -77, 18, -120, 55}, new byte[]{23, 71, -99, 39, 118, -42, 118, -78}) + (linkedHashMap.size() - size4));
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
            Log.w(str2, AbstractC1387m.m2421h(new byte[]{70, -61, 110, 49, -86, -81, -124, 23, 102, -53, 42, 46, -79, -81, -120, 28, 39, -41, 98, 42, -65, -75, -114, 89, 100, -58, 126, 57, -78, -87, -116, 89, 114, -55, 107, 46, -65, -81, -121, 24, 101, -53, 111, 99, -2, -77, -104, 16, 105, -64, 42, 55, -84, -81, -116, 16, 105, -58, 102, 120, -82, -82, -103, 24, 116, -62, 121}, new byte[]{7, -89, 10, 88, -34, -58, -21, 121}), e);
        }
        return new ArrayList(linkedHashMap.values());
    }

    /* JADX INFO: renamed from: n */
    public final void m5493n(C1919e c1919e) {
        mo5402a();
        C1652b.m2734a();
        C1652b.m2737f().m2994j(c1919e, null);
    }

    /* JADX INFO: renamed from: p */
    public final C3473l m5494p(String str) {
        String strM5390d = C3450d0.m5390d(str);
        C3473l c3473l = null;
        for (C3473l c3473l2 : this.f10165n) {
            if (!c3473l2.f10076c.isEmpty() && c3473l2.f10076c.equals(strM5390d)) {
                if (c3473l != null && !AbstractC1920f.m3009g(c3473l.f10075b).equals(AbstractC1920f.m3009g(c3473l2.f10075b))) {
                    return null;
                }
                c3473l = c3473l2;
            }
        }
        return c3473l;
    }

    /* JADX INFO: renamed from: r */
    public final C3473l m5495r(String str) {
        C3473l c3473l;
        C3473l c3473l2 = null;
        C3473l c3473l3 = new C3473l(str, null, "");
        c3473l3.f10077d = this.f10167p.m5454a(AbstractC1387m.m2421h(new byte[]{116, 5, -109, 36, 28, -89, -34}, new byte[]{5, 112, -10, 86, 101, -99, -2, -94}) + str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(c3473l3);
        int i10 = 0;
        m5482I(arrayList, 0, 1);
        C3473l c3473l4 = null;
        float f8 = -1.0f;
        for (C3473l c3473l5 : this.f10165n) {
            if (c3473l5.f10076c.isEmpty()) {
                float[] fArr = c3473l5.f10078e;
                int length = fArr.length;
                c3473l = c3473l2;
                float[] fArr2 = c3473l3.f10078e;
                if (length == fArr2.length) {
                    float f10 = 0.0f;
                    for (int i11 = 0; i11 < fArr2.length; i11++) {
                        f10 += fArr2[i11] * fArr[i11];
                    }
                    float fM5464A = m5464A(str, c3473l5.f10074a) + (m5476v(m5477w(str), m5477w(c3473l5.f10074a)) * 0.08f) + f10;
                    if (fM5464A > f8) {
                        f8 = fM5464A;
                        c3473l4 = c3473l5;
                    }
                }
            } else {
                c3473l = c3473l2;
            }
            c3473l2 = c3473l;
        }
        C3473l c3473l6 = c3473l2;
        String strM3009g = c3473l4 == null ? "" : AbstractC1920f.m3009g(c3473l4.f10075b);
        float fMax = -1.0f;
        for (C3473l c3473l7 : this.f10165n) {
            if (c3473l7.f10076c.isEmpty() && c3473l7.f10078e.length == c3473l3.f10078e.length && !strM3009g.equals(AbstractC1920f.m3009g(c3473l7.f10075b))) {
                float[] fArr3 = c3473l3.f10078e;
                float[] fArr4 = c3473l7.f10078e;
                float f11 = 0.0f;
                while (i10 < fArr3.length) {
                    f11 = (fArr3[i10] * fArr4[i10]) + f11;
                    i10++;
                }
                fMax = Math.max(fMax, m5464A(str, c3473l7.f10074a) + (m5476v(m5477w(str), m5477w(c3473l7.f10074a)) * 0.08f) + f11);
            }
            i10 = 0;
        }
        float f12 = f8 - fMax;
        String str2 = this.f10152a;
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{ByteCompanionObject.MIN_VALUE, 83, -53, -61, 99, -16, -35, -68, -13, 71, -45, -57, ByteCompanionObject.MAX_VALUE, -3, -119, -8}, new byte[]{-45, 54, -90, -94, 13, -124, -76, -33}, sb, str);
        sb.append(AbstractC1387m.m2421h(new byte[]{-110, -76, 105, 37, -77, 38, -83, 25, -110}, new byte[]{-75, -104, 73, 71, -42, 85, -39, 36}));
        sb.append(c3473l4 != null ? c3473l4.f10074a : "");
        sb.append(AbstractC1387m.m2421h(new byte[]{-49, -44, 88, -36, -104, 59, -10, 63, -43}, new byte[]{-24, -8, 120, -81, -5, 84, -124, 90}));
        sb.append(f8);
        sb.append(AbstractC1387m.m2421h(new byte[]{74, -38, 78, 92, -57, 38, 97, -69, 5, -114, 72, 71, -63, 14, 114, -120, 1, -109, 79, 21}, new byte[]{102, -6, 33, 40, -81, 67, 19, -6}));
        sb.append(f12);
        Log.d(str2, sb.toString());
        return (f8 < 0.82f || f12 < 0.016f) ? c3473l6 : c3473l4;
    }

    /* JADX INFO: renamed from: s */
    public final synchronized byte[] m5496s() {
        int i10 = this.f10177z;
        if (i10 <= 0) {
            return null;
        }
        byte[] bArr = new byte[i10];
        int i11 = this.f10133A - i10;
        byte[] bArr2 = this.f10173v;
        int length = (i11 + bArr2.length) % bArr2.length;
        int iMin = Math.min(i10, bArr2.length - length);
        System.arraycopy(this.f10173v, length, bArr, 0, iMin);
        int i12 = this.f10177z;
        if (iMin < i12) {
            System.arraycopy(this.f10173v, 0, bArr, iMin, i12 - iMin);
        }
        return bArr;
    }

    /* JADX INFO: renamed from: x */
    public final void m5497x() {
        String str = this.f10150R;
        if (str == null || str.trim().isEmpty() || System.currentTimeMillis() < 0) {
            return;
        }
        String str2 = this.f10150R;
        this.f10150R = "";
        m5498y(str2);
    }

    /* JADX INFO: renamed from: y */
    public final synchronized void m5498y(String str) {
        if (m5468f().booleanValue()) {
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

    /* JADX INFO: renamed from: z */
    public final void m5499z(EnumC3443b enumC3443b) {
        if (m5468f().booleanValue()) {
            f10129T = enumC3443b;
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
}
