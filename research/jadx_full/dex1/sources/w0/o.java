package w0;

import ai.onnxruntime.OnnxTensor;
import ai.onnxruntime.OrtEnvironment;
import ai.onnxruntime.OrtSession;
import ai.onnxruntime.OrtSession$Result;
import ai.onnxruntime.OrtSession$SessionOptions;
import android.content.Context;
import android.content.res.Configuration;
import android.media.AudioAttributes$Builder;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.os.Build$VERSION;
import android.util.JsonReader;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.example.navistart.cores.ColorText;
import com.sun.jna.Native;
import e0.p3;
import e0.x1;
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
import java.text.Normalizer$Form;
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
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.vosk.Model;
import org.vosk.Recognizer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o implements y {
    public static b T;
    public static b U;
    public static f V;
    public static final String W = e0.m.h(new byte[]{122, 62, ByteCompanionObject.MAX_VALUE, -44, -107, -120, -22, -117, 122, Base64.padSymbol, 126, -26}, new byte[]{-86, ByteCompanionObject.MIN_VALUE, -82, 86, 69, 52, 58, 62});
    public volatile long C;
    public volatile boolean D;
    public volatile int E;
    public volatile int G;
    public volatile int N;
    public volatile int O;
    public volatile long P;
    public volatile boolean Q;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ScheduledFuture f5733g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ScheduledFuture f5734h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AudioManager f5735i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public AudioFocusRequest f5736j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AudioRecord f5737k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Model f5738l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Context f5739m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile boolean f5741o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public m f5742p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public OrtEnvironment f5743q;
    public OrtSession r;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Recognizer f5747x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Recognizer f5748y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5730a = e0.m.h(new byte[]{-83, -64, ByteCompanionObject.MAX_VALUE, -69, 51, -99, 121, -2, -105, -34, 115, -20}, new byte[]{-2, -80, 22, -40, 91, -40, 23, -103});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f5731b = e0.w.c(-1, e0.m.h(new byte[]{19, -87, 86, 93, 35, -121, -56, -87, 41, -73, 90, 10}, new byte[]{64, -39, 63, 62, 75, -62, -90, -50}));
    public final ExecutorService c = Executors.newSingleThreadExecutor();
    public final ExecutorService d = Executors.newSingleThreadExecutor();
    public final ExecutorService e = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayBlockingQueue f5732f = new ArrayBlockingQueue(128);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile List f5740n = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f5744s = false;
    public final int t = AudioRecord.getMinBufferSize(16000, 16, 2);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final byte[] f5745u = new byte[4096];

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final byte[] f5746v = new byte[160000];
    public final Object w = new Object();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f5749z = 0;
    public int A = 0;
    public volatile boolean B = false;
    public volatile String F = "";
    public volatile String H = "";
    public String I = "";
    public String J = "";
    public String K = "";
    public String L = "";
    public String M = "";
    public String R = "";
    public long S = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        b bVar = b.f5599b;
        T = bVar;
        U = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(Context context) {
        this.f5739m = context;
        System.setProperty(e0.m.h(new byte[]{60, 36, -90, 103, 115, -2, 103, -16, 37}, new byte[]{86, 74, -57, 73, 29, -111, 20, -119}), e0.m.h(new byte[]{45, 96, 21, 57}, new byte[]{89, 18, 96, 92, -127, -24, -108, 27}));
        Native.setProtected(true);
        System.setProperty(e0.m.h(new byte[]{70, 13, 69, -81, 81, 95, -121, 29, 2, 15, 77, -29, 65, 81, -102, 16, 2, 19, 69, -11, 91}, new byte[]{44, 99, 36, -127, 51, 48, -24, 105}), context.getApplicationInfo().nativeLibraryDir);
        System.loadLibrary(e0.m.h(new byte[]{-55, -105, ByteCompanionObject.MIN_VALUE, -54, -4, 11, 92, 21, -41, -102, -127}, new byte[]{-93, -7, -23, -82, -107, 120, 44, 116}));
        System.loadLibrary(e0.m.h(new byte[]{-98, 48, -50, 89}, new byte[]{-24, 95, -67, 50, -33, -90, -50, -58}));
        try {
            String str = l1.f5708a;
            File filesDir = context.getFilesDir();
            String str2 = l1.f5708a;
            if (l1.e(new File(filesDir, str2)) == null) {
                l1.f(context, k1.e, null);
            }
            File fileE = l1.e(new File(context.getFilesDir(), str2));
            if (fileE == null) {
                throw new IOException(e0.m.h(new byte[]{-44, -113, 88, -9, -90, -18, -121, 3, -25, -116, 11, -11, -11, -93, -122, 8, -10, -64, 66, -14, -11, -9, -119, 11, -18, -123, 79}, new byte[]{-126, -32, 43, -100, -122, -125, -24, 103}));
            }
            this.f5738l = new Model(fileE.getAbsolutePath());
            if (this.f5735i == null) {
                this.f5735i = (AudioManager) context.getSystemService(e0.m.h(new byte[]{-118, 68, 12, -52, 79}, new byte[]{-21, 49, 104, -91, 32, -10, 14, -4}));
            }
            if (Build$VERSION.SDK_INT >= 31) {
                f fVar = V;
                if (fVar != null) {
                    androidx.core.app.c.s(this.f5735i, fVar);
                }
                V = new f(this, 1);
                androidx.core.app.c.t(this.f5735i, Executors.newSingleThreadExecutor(), V);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float A(String str, String str2) {
        String[] strArrW = w(str);
        StringBuilder sb = new StringBuilder();
        if (strArrW.length > 0) {
            sb.append((CharSequence) strArrW[0]);
            for (int i9 = 1; i9 < strArrW.length; i9++) {
                sb.append((CharSequence) " ");
                sb.append((CharSequence) strArrW[i9]);
            }
        }
        String string = sb.toString();
        String[] strArrW2 = w(str2);
        StringBuilder sb2 = new StringBuilder();
        if (strArrW2.length > 0) {
            sb2.append((CharSequence) strArrW2[0]);
            for (int i10 = 1; i10 < strArrW2.length; i10++) {
                sb2.append((CharSequence) " ");
                sb2.append((CharSequence) strArrW2[i10]);
            }
        }
        return B(string, sb2.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float B(String str, String str2) {
        String strO = o(str);
        String strO2 = o(str2);
        float f8 = 0.0f;
        if (!strO.isEmpty() && !strO2.isEmpty()) {
            f8 = 0.0f + (strO.equals(strO2) ? 0.12f : -0.35f);
        }
        boolean zM = m(str, e0.m.h(new byte[]{56, 121, -33, -56, 116, 109, -94, 102, 57, 69}, new byte[]{-23, -8, 15, 112, -92, -39, 114, -45}), e0.m.h(new byte[]{-31, -50, -45, -116}, new byte[]{-110, -85, -78, -8, 29, -12, -16, 49}));
        boolean zM2 = m(str2, e0.m.h(new byte[]{-113, 41, 20, 34, 9, 119, 86, 12, -114, 21}, new byte[]{94, -88, -60, -102, -39, -61, -122, -71}), e0.m.h(new byte[]{-100, 85, -54, -63}, new byte[]{-17, 48, -85, -75, 43, 114, 111, 117}));
        boolean zM3 = m(str, e0.m.h(new byte[]{-97, -72, 83, -34, 84, 98}, new byte[]{78, 56, -126, 93, -124, -39, -120, 21}), e0.m.h(new byte[]{30, -92, 5, -23, 92}, new byte[]{105, -52, 96, -116, 48, 36, -93, 18}));
        boolean zM4 = m(str2, e0.m.h(new byte[]{-64, 107, 81, -122, -46, -22}, new byte[]{17, -21, ByteCompanionObject.MIN_VALUE, 5, 2, 81, 115, -96}), e0.m.h(new byte[]{121, -75, 85, 20, 51}, new byte[]{14, -35, 48, 113, 95, 14, -98, -111}));
        if (zM) {
            f8 += zM2 ? 0.08f : -0.16f;
        }
        if (zM3) {
            f8 += zM4 ? 0.08f : -0.16f;
        }
        boolean zM5 = m(str, e0.m.h(new byte[]{-57, -86, -76, -24, -8, -61, -38, -115, -58, -102, -76, -29, -8, -52}, new byte[]{23, 24, 100, 86, 40, 119, 10, 53}), e0.m.h(new byte[]{-46, 75, -120, -76, 56, ByteCompanionObject.MIN_VALUE}, new byte[]{-74, 57, -31, -62, 93, -14, -100, -73}));
        boolean zM6 = m(str2, e0.m.h(new byte[]{-13, -101, -30, 52, 109, -44, 116, 25, -14, -85, -30, 63, 109, -37}, new byte[]{35, 41, 50, -118, -67, 96, -92, -95}), e0.m.h(new byte[]{50, 39, -53, -11, 30, -118}, new byte[]{86, 85, -94, -125, 123, -8, -4, 85}));
        boolean zM7 = m(str, e0.m.h(new byte[]{58, 14, 73, -96, -11, 77, -36, 20, 58, 1, 73, -90, -12, 116, -36, 21}, new byte[]{-22, -79, -103, 16, 36, -52, 13, -107}), e0.m.h(new byte[]{102, 111, 82, 98, -16, 126, -125, -61, 100}, new byte[]{22, 14, 33, 17, -107, 16, -28, -90}));
        boolean zM8 = m(str2, e0.m.h(new byte[]{-26, 6, -54, -109, 36, -122, 48, -99, -26, 9, -54, -107, 37, -65, 48, -100}, new byte[]{54, -71, 26, 35, -11, 7, -31, 28}), e0.m.h(new byte[]{105, -21, 100, -7, Base64.padSymbol, -64, -72, 56, 107}, new byte[]{25, -118, 23, -118, 88, -82, -33, 93}));
        if (zM5) {
            f8 += zM6 ? 0.08f : -0.16f;
        }
        if (zM7) {
            f8 += zM8 ? 0.08f : -0.16f;
        }
        String strQ = q(str);
        String strQ2 = q(str2);
        if (strQ.isEmpty() || strQ2.isEmpty()) {
            return f8;
        }
        return f8 + (strQ.equals(strQ2) ? 0.08f : -0.1f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String D(String str) {
        String strG = G(str);
        if (strG.isEmpty()) {
            return strG;
        }
        String strTrim = Normalizer.normalize(strG, Normalizer$Form.NFKC).toLowerCase(Locale.ROOT).replaceAll(e0.m.h(new byte[]{-40, -74, -49, -38, -126, -52, -105, 40, -13, -109, -35, -41, -92, -85}, new byte[]{-125, -24, -109, -86, -7, ByteCompanionObject.MIN_VALUE, -22, 116}), " ").trim();
        if (strTrim.isEmpty()) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : strTrim.split(e0.m.h(new byte[]{-120, 27, 59}, new byte[]{-44, 104, 16, 38, 35, -95, -127, -118}))) {
            if (!str2.equals(e0.m.h(new byte[]{-18, 103, 20, -38, 44, -118, -85, 52, -18, 99, 21, -25, 44, -123, -86, 5, -17, 90, 20, -44}, new byte[]{62, -40, -60, 100, -4, 60, 123, -124})) && !str2.equals(e0.m.h(new byte[]{-24, -126, -94, -42, -119, 6, -78, -61, -24, -122, -93, -21, -119, 9}, new byte[]{56, Base64.padSymbol, 114, 104, 89, -80, 98, 115})) && !str2.equals(e0.m.h(new byte[]{57, -55, 17, -60}, new byte[]{-23, 116, -63, 116, -49, -25, 114, 111})) && !str2.equals(e0.m.h(new byte[]{95, -93}, new byte[]{-113, 17, 79, -117, -86, -39, 40, -39})) && !str2.equals(e0.m.h(new byte[]{-30, -127, -90, 115}, new byte[]{50, 62, 118, -51, 19, 30, 46, -76})) && !str2.equals(e0.m.h(new byte[]{115, 74, 63, -65, 48, 88, -8, -1, 114, 126, 62, -115}, new byte[]{-93, -10, -17, 1, -32, -18, 40, 74})) && !str2.equals(e0.m.h(new byte[]{38, 52, -48, -23, -36, 37, -94, Base64.padSymbol, 38, 54}, new byte[]{-10, -120, 0, 87, 12, -109, 114, ByteCompanionObject.MIN_VALUE})) && !str2.equals(e0.m.h(new byte[]{60, -53, -43, -69, -60, -42, -117, 85, 60, -58}, new byte[]{-20, ByteCompanionObject.MAX_VALUE, 5, 11, 20, 100, 91, -27})) && !str2.startsWith(e0.m.h(new byte[]{116, -22, -76, -49, -63, 79, 21, 125, 117, -36, -75, -3}, new byte[]{-92, 93, 100, ByteCompanionObject.MAX_VALUE, 17, -16, -60, -2})) && !str2.startsWith(e0.m.h(new byte[]{-99, ByteCompanionObject.MIN_VALUE, -102, -43, 15, -41, 103, 0, -99, -119, -101, -29}, new byte[]{77, 50, 75, 94, -33, 104, -73, -66})) && !str2.startsWith(e0.m.h(new byte[]{36, 45, -34, 45, 110, -103, 67, 2, 37, 28}, new byte[]{-11, -84, 14, -103, -66, 44, -109, -71})) && !str2.equals(e0.m.h(new byte[]{-108, -71, -119, 43, -9, 58}, new byte[]{-28, -43, -20, 74, -124, 95, 54, -65})) && !str2.equals(e0.m.h(new byte[]{17, 83, -126, 9, 101}, new byte[]{114, 60, -9, 101, 1, -120, 122, 95})) && !str2.equals(e0.m.h(new byte[]{111, -119, -56, -44, 86}, new byte[]{24, -26, -67, -72, 50, 59, -57, 73})) && !str2.equals(e0.m.h(new byte[]{-55, -30, 45}, new byte[]{-86, -125, 67, -108, 78, -119, -7, -100})) && !str2.equals(e0.m.h(new byte[]{-36, -84, -30}, new byte[]{-91, -61, -105, 35, -70, 36, -93, -30})) && !str2.equals(e0.m.h(new byte[]{76, 102, -55, -50, 6}, new byte[]{63, 18, -88, -68, 114, 95, 58, 44})) && !str2.equals(e0.m.h(new byte[]{103, -115, -2, 78, 17, 59}, new byte[]{11, -20, -117, 32, 114, 83, 18, -9})) && !str2.equals(e0.m.h(new byte[]{86, 12, 90}, new byte[]{36, 121, 52, -1, -80, 114, -91, 100}))) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String G(String str) {
        if (str == null) {
            return "";
        }
        h0.b.a();
        h0.b.f().getClass();
        String strF = j0.c.f();
        String strTrim = str.trim();
        if (strF == null || strF.trim().isEmpty()) {
            return strTrim;
        }
        Locale locale = Locale.ROOT;
        String lowerCase = strTrim.toLowerCase(locale);
        String lowerCase2 = strF.trim().toLowerCase(locale);
        if (lowerCase2.startsWith(lowerCase)) {
            return "";
        }
        int iLastIndexOf = lowerCase.lastIndexOf(lowerCase2);
        return iLastIndexOf >= 0 ? strTrim.substring(Math.min(strTrim.length(), strF.trim().length() + iLastIndexOf)).trim() : strTrim;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean f() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = e0.m.f1896j;
        String[] strArr = p3.f1924a;
        com.google.protobuf.q.s(bArr, aVarO, "", sb);
        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = com.google.protobuf.q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = e0.m.f1892f;
        if (com.google.protobuf.q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{68}, new byte[]{116, 2, -16, 11, -25, 124, 107, 101}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(LinkedHashMap linkedHashMap, String str, j0.e eVar, String str2) {
        if (str == null || eVar == null) {
            return;
        }
        String strReplaceAll = str.trim().replaceAll(e0.m.h(new byte[]{123, 66, -48}, new byte[]{39, 49, -5, 85, -2, 109, -122, 105}), " ");
        if (strReplaceAll.isEmpty()) {
            return;
        }
        String str3 = strReplaceAll.toLowerCase(Locale.ROOT) + (char) 0 + j0.f.g(eVar);
        if (linkedHashMap.containsKey(str3)) {
            return;
        }
        l lVar = new l(strReplaceAll, eVar, str2);
        String[] strArrW = w(D(strReplaceAll));
        lVar.f5692f = strArrW;
        StringBuilder sb = new StringBuilder();
        if (strArrW.length > 0) {
            sb.append((CharSequence) strArrW[0]);
            for (int i9 = 1; i9 < strArrW.length; i9++) {
                sb.append((CharSequence) " ");
                sb.append((CharSequence) strArrW[i9]);
            }
        }
        lVar.f5693g = sb.toString();
        linkedHashMap.put(str3, lVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float[] h(float[][] fArr, long[] jArr, int i9, int i10) {
        int length = fArr[0].length;
        float[] fArr2 = new float[length];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (jArr[i9 + i12] != 0) {
                i11++;
                for (int i13 = 0; i13 < length; i13++) {
                    fArr2[i13] = fArr2[i13] + fArr[i12][i13];
                }
            }
        }
        double d = 0.0d;
        for (int i14 = 0; i14 < length; i14++) {
            float fMax = fArr2[i14] / Math.max(1, i11);
            fArr2[i14] = fMax;
            d += (double) (fMax * fMax);
        }
        float fMax2 = (float) Math.max(1.0E-12d, Math.sqrt(d));
        for (int i15 = 0; i15 < length; i15++) {
            fArr2[i15] = fArr2[i15] / fMax2;
        }
        return fArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean m(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String o(String str) {
        for (String str2 : str.split(e0.m.h(new byte[]{54, -56, -45}, new byte[]{106, -69, -8, -127, 58, 51, 18, -53}))) {
            if (str2.equals(e0.m.h(new byte[]{-33, -85, -18, 67, -40, -105, 38, -35}, new byte[]{-80, -37, -117, 45, -82, -14, 84, -65})) || str2.equals(e0.m.h(new byte[]{-35, 80, -91, 116, 97, 108, -68, -114, -35, 84, -71, 118, 109, ByteCompanionObject.MAX_VALUE, -78}, new byte[]{-83, 49, -41, 0, 8, 13, -48, -31})) || str2.equals(e0.m.h(new byte[]{13, -43, 102, 75, 28, 102, -70, 85, 12}, new byte[]{110, -71, 9, 56, 121, 16, -33, 39})) || str2.equals(e0.m.h(new byte[]{118, 12, -19, 70, 42, 20}, new byte[]{25, 98, -101, 35, 88, 118, -113, 44})) || str2.equals(e0.m.h(new byte[]{14, 38, -54, 43, 14, 102, -8}, new byte[]{97, 64, -84, 93, 107, 20, -102, -33})) || str2.equals(e0.m.h(new byte[]{126, 10, 120, -17, -26, -108, 94, -2, 97, 1, 105, -1}, new byte[]{23, 100, 27, -99, -125, -11, 45, -101})) || str2.equals(e0.m.h(new byte[]{-106, -59, 76, -108, 117, 2, 3, 36, -124, -59, 93, -124}, new byte[]{-14, -96, 47, -26, 16, 99, 112, 65}))) {
                return str2;
            }
        }
        return "";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String q(String str) {
        for (String str2 : str.split(e0.m.h(new byte[]{-59, 31, -29}, new byte[]{-103, 108, -56, 91, 77, -1, 24, 79}))) {
            if (str2.equals(e0.m.h(new byte[]{-90}, new byte[]{-106, -42, -108, -63, -21, 80, -61, -94})) || str2.equals(e0.m.h(new byte[]{76}, new byte[]{125, 89, 17, -90, -34, 107, -29, -50})) || str2.equals(e0.m.h(new byte[]{9}, new byte[]{59, 109, 8, ByteCompanionObject.MAX_VALUE, -33, 104, -38, -16})) || str2.equals(e0.m.h(new byte[]{49}, new byte[]{2, 63, 45, -78, 15, 17, -19, -127}))) {
                return str2;
            }
        }
        return "";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean t(String str) {
        if (str != null) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty() && !strTrim.equals(e0.m.h(new byte[]{-32, 114}, new byte[]{-69, 47, 81, -89, 80, 115, 106, -27})) && !strTrim.equals(e0.m.h(new byte[]{108, -48}, new byte[]{23, -83, -72, 88, -110, 92, -118, 69})) && strTrim.length() >= 5 && strTrim.startsWith(e0.m.h(new byte[]{-40}, new byte[]{-125, 30, 35, 36, 74, -60, 108, 115})) && strTrim.endsWith(e0.m.h(new byte[]{114}, new byte[]{47, 120, -124, -51, 58, 68, 62, 63}))) {
                for (char c : strTrim.toCharArray()) {
                    if (Character.isLetterOrDigit(c) || e0.m.h(new byte[]{-124, -76, -87, 86, -78}, new byte[]{-90, -17, -12, 122, -110, -13, -85, 83}).indexOf(c) != -1) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String u(String str, String str2) {
        String strTrim = str == null ? "" : str.trim();
        String strTrim2 = str2 != null ? str2.trim() : "";
        if (strTrim.isEmpty()) {
            return strTrim2;
        }
        if (strTrim2.isEmpty()) {
            return strTrim;
        }
        return strTrim2.startsWith(strTrim) ? strTrim2 : ai.onnxruntime.a.D(strTrim, " ", strTrim2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:51:0x0115  */
    public static float v(String[] strArr, String[] strArr2) {
        float f8;
        float fB;
        float size;
        String[] strArr3 = strArr;
        if (strArr3.length == 0 || strArr2.length == 0) {
            return 0.0f;
        }
        int length = strArr2.length;
        int i9 = 0;
        float f9 = 0.0f;
        while (i9 < length) {
            String str = strArr2[i9];
            int length2 = strArr3.length;
            int i10 = 0;
            float fMax = 0.0f;
            while (i10 < length2) {
                String str2 = strArr3[i10];
                if (str.equals(str2)) {
                    fB = 1.0f;
                } else {
                    int iMax = Math.max(str.length(), str2.length());
                    if (iMax < 4) {
                        fB = 0.0f;
                    } else {
                        int i11 = 0;
                        while (i11 < Math.min(str.length(), str2.length()) && str.charAt(i11) == str2.charAt(i11)) {
                            i11++;
                        }
                        int iMin = Math.min(str.length(), str2.length());
                        if (i11 >= 4) {
                            f8 = 1.0f;
                            if (i11 >= Math.ceil(iMin * 0.6f)) {
                                fB = 0.88f;
                                length = length;
                            }
                        } else {
                            f8 = 1.0f;
                        }
                        int[] iArr = new int[str2.length() + 1];
                        int[] iArr2 = new int[str2.length() + 1];
                        for (int i12 = 0; i12 <= str2.length(); i12++) {
                            iArr[i12] = i12;
                        }
                        int i13 = 1;
                        while (i13 <= str.length()) {
                            iArr2[0] = i13;
                            int i14 = 1;
                            while (i14 <= str2.length()) {
                                int i15 = i14 - 1;
                                int i16 = length;
                                int[] iArr3 = iArr;
                                iArr2[i14] = Math.min(Math.min(iArr3[i14] + 1, iArr2[i15] + 1), iArr[i15] + (str.charAt(i13 + (-1)) == str2.charAt(i15) ? 0 : 1));
                                i14++;
                                length = i16;
                                iArr = iArr3;
                            }
                            int[] iArr4 = iArr;
                            i13++;
                            iArr = iArr2;
                            iArr2 = iArr4;
                        }
                        length = length;
                        float f10 = iMax;
                        fB = f8 - (iArr[str2.length()] / f10);
                        if (fB < 0.72f) {
                            if (iMin >= 5 && iMin / f10 >= 0.65f) {
                                if (str.length() < 2 || str2.length() < 2) {
                                    size = 0.0f;
                                } else {
                                    ArrayList arrayList = new ArrayList();
                                    ArrayList arrayList2 = new ArrayList();
                                    for (int i17 = 0; i17 <= str.length() - 2; i17++) {
                                        arrayList.add(str.substring(i17, i17 + 2));
                                    }
                                    for (int i18 = 0; i18 <= str2.length() - 2; i18++) {
                                        arrayList2.add(str2.substring(i18, i18 + 2));
                                    }
                                    boolean[] zArr = new boolean[arrayList2.size()];
                                    int size2 = arrayList.size();
                                    int i19 = 0;
                                    int i20 = 0;
                                    while (i20 < size2) {
                                        Object obj = arrayList.get(i20);
                                        i20++;
                                        String str3 = (String) obj;
                                        for (int i21 = 0; i21 < arrayList2.size(); i21++) {
                                            if (!zArr[i21] && str3.equals(arrayList2.get(i21))) {
                                                zArr[i21] = true;
                                                i19++;
                                                break;
                                            }
                                        }
                                    }
                                    size = (i19 * 2.0f) / (arrayList2.size() + arrayList.size());
                                }
                                if (size >= 0.62f) {
                                    fB = ai.onnxruntime.a.b(size, 0.62f, 0.4f, 0.75f);
                                } else {
                                    fB = 0.0f;
                                }
                            } else {
                                fB = 0.0f;
                            }
                        }
                    }
                    fMax = Math.max(fMax, fB);
                    i10++;
                    strArr3 = strArr;
                    length = length;
                }
                fMax = Math.max(fMax, fB);
                i10++;
                strArr3 = strArr;
                length = length;
            }
            f9 += fMax;
            i9++;
            strArr3 = strArr;
        }
        return f9 / strArr2.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:128:0x0422  */
    /* JADX WARN: Code duplicated, block: B:131:0x0447  */
    /* JADX WARN: Code duplicated, block: B:134:0x046e  */
    /* JADX WARN: Code duplicated, block: B:143:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:149:0x04f5  */
    public static String[] w(String str) {
        int i9;
        if (str == null) {
            return new String[0];
        }
        String strTrim = Normalizer.normalize(str, Normalizer$Form.NFKC).toLowerCase(Locale.ROOT).replaceAll(e0.m.h(new byte[]{-125, -22, -44, -48, -127, 16, 34, 108, -88, -49, -58, -35, -89, 119}, new byte[]{-40, -76, -120, -96, -6, 92, 95, 48}), " ").trim();
        if (strTrim.isEmpty()) {
            return new String[0];
        }
        String[] strArrSplit = strTrim.split(e0.m.h(new byte[]{75, 105, 55}, new byte[]{23, 26, 28, 75, -56, 115, -71, -52}));
        ArrayList arrayList = new ArrayList(strArrSplit.length);
        int i10 = 0;
        while (i10 < strArrSplit.length) {
            if (strArrSplit[i10].equals(e0.m.h(new byte[]{-12, -41, 114, -91, -6, -50}, new byte[]{36, 104, -93, 37, 42, 118, -33, -12})) && (i9 = i10 + 1) < strArrSplit.length && strArrSplit[i9].startsWith(e0.m.h(new byte[]{62, -54, -125, -81, 2, -100, 94, 67}, new byte[]{-18, 116, 82, 45, -46, 38, -113, -61}))) {
                arrayList.add(e0.m.h(new byte[]{-63, -27, -89, -32, -59, 8, -78, -13, -63, -31, -69, -30, -55, 27, -68}, new byte[]{-79, -124, -43, -108, -84, 105, -34, -100}));
                i10 = i9;
            } else {
                String strH = strArrSplit[i10];
                if (strH.startsWith(e0.m.h(new byte[]{48, 0, -42, -59, 6, -99, -13, -37, 49, Base64.padSymbol, -41, -1, 7, -91}, new byte[]{-32, -65, 7, 69, -42, 37, 35, 101}))) {
                    strH = e0.m.h(new byte[]{-97, -20, -58, 100, 97, 62, -50, -113, -97, -24, -38, 102, 109, 45, -64}, new byte[]{-17, -115, -76, 16, 8, 95, -94, -32});
                } else if (strH.startsWith(e0.m.h(new byte[]{105, 86, 59, 106, -117, -63, -105, 59}, new byte[]{-71, -24, -22, -24, 91, 123, 70, -69})) || strH.equals(e0.m.h(new byte[]{51, 113, 71, -21}, new byte[]{92, 1, 34, -123, 16, -97, 118, 124}))) {
                    strH = e0.m.h(new byte[]{-98, 59, 63, -126, 38, 117, 25, -86}, new byte[]{-15, 75, 90, -20, 80, 16, 107, -56});
                } else if (strH.startsWith(e0.m.h(new byte[]{30, -10, 118, -53, 60, -49, 12, 45}, new byte[]{-50, 65, -90, 123, -20, 117, -35, -83})) || strH.equals(e0.m.h(new byte[]{89, -87, 107, -15, 26}, new byte[]{58, -59, 4, -126, ByteCompanionObject.MAX_VALUE, 56, 36, 3}))) {
                    strH = e0.m.h(new byte[]{25, -6, 24, -44, 118, 83, 115, 96, 24}, new byte[]{122, -106, 119, -89, 19, 37, 22, 18});
                } else if (strH.startsWith(e0.m.h(new byte[]{120, 92, 17, 47, 84, -61, -67, -74, 121, 105}, new byte[]{-88, -18, -63, -107, -124, 120, 108, 56})) || strH.equals(e0.m.h(new byte[]{-91, -87, -27, 5, 91, -58}, new byte[]{-64, -57, -124, 103, 55, -93, 115, -59})) || strH.equals(e0.m.h(new byte[]{46, 35}, new byte[]{65, 77, -108, 50, 77, -100, 2, 31}))) {
                    strH = e0.m.h(new byte[]{120, 6, 2, -26, -113, -75}, new byte[]{23, 104, 116, -125, -3, -41, 115, -18});
                } else if (strH.startsWith(e0.m.h(new byte[]{31, 29, -2, -58, -70, -46, -86, 76, 30, 33, -2, -54}, new byte[]{-49, -81, 47, 77, 106, 104, 122, -9})) || strH.equals(e0.m.h(new byte[]{68, -120, 125, 84, -76, 86, 59}, new byte[]{32, -31, 14, 53, -42, 58, 94, -54})) || strH.equals(e0.m.h(new byte[]{11, 107, 95}, new byte[]{100, 13, 57, -41, 23, 0, -105, 52}))) {
                    strH = e0.m.h(new byte[]{-113, -15, 126, -57, 75, 94, 126}, new byte[]{-32, -105, 24, -79, 46, 44, 28, 47});
                } else if (strH.startsWith(e0.m.h(new byte[]{-75, -100, -86, 57, -76, 79, -8, -95, -76, -89, -85, 12}, new byte[]{100, 31, 122, -117, 100, -6, 40, 26})) || strH.startsWith(e0.m.h(new byte[]{80, -108, 25, 101, 57, -66, 50, -127, 80, -101, 24, 87}, new byte[]{ByteCompanionObject.MIN_VALUE, 43, -56, -27, -23, 6, -30, 48})) || strH.startsWith(e0.m.h(new byte[]{73, 32, 13, 13, 4, 92, 119, -119, 72, 30}, new byte[]{-103, -97, -35, -77, -44, -18, -90, 2})) || strH.equals(e0.m.h(new byte[]{-24, -54, 17, 18, -74, 38, -9, -106}, new byte[]{-127, -92, 114, 96, -45, 71, -124, -13})) || strH.equals(e0.m.h(new byte[]{-7, Base64.padSymbol, -74, 126, 8}, new byte[]{-117, 92, -33, 13, 109, -93, -35, 97}))) {
                    strH = e0.m.h(new byte[]{42, -101, 0, -79, -124, 40, 69, -119, 53, -112, 17, -95}, new byte[]{67, -11, 99, -61, -31, 73, 54, -20});
                } else if (!strH.startsWith(e0.m.h(new byte[]{4, -93, 75, 41, 73, -50, 1, -34, 4, -84, 74, 29}, new byte[]{-43, 32, -101, -107, -103, 123, -47, 99})) && !strH.startsWith(e0.m.h(new byte[]{-56, 70, -118, -56, -23, 31, -108, -50}, new byte[]{25, -59, 90, 121, 57, -81, 68, 124})) && !strH.startsWith(e0.m.h(new byte[]{-97, 19, -49, 15, 0, 46, -99, -118, -97, 27}, new byte[]{79, -84, 31, -79, -48, -109, 77, 50})) && !strH.equals(e0.m.h(new byte[]{-118, -113, -58, -38, -45, 16, -105, 88}, new byte[]{-18, -22, -91, -88, -74, 113, -28, Base64.padSymbol})) && !strH.equals(e0.m.h(new byte[]{-100, 27, 117, 72, -102}, new byte[]{-16, 116, 2, 45, -24, ByteCompanionObject.MAX_VALUE, -48, -54}))) {
                    switch (strH.hashCode()) {
                        case -2116005972:
                            if (strH.equals(e0.m.h(new byte[]{111, -118, 43, -81, 118, 49, -122, 24, 110, -80, 42, -106}, new byte[]{-66, 8, -6, 47, -90, -124, 87, -102}))) {
                                strH = e0.m.h(new byte[]{-109}, new byte[]{-96, -119, -55, -10, -44, -67, 115, 57});
                            }
                            break;
                        case -2116005330:
                            if (strH.equals(e0.m.h(new byte[]{55, -34, -12, -105, 94, -28, 35, -110, 55, -48, -12, -104}, new byte[]{-26, 92, 37, 23, -114, 81, -14, 16}))) {
                                strH = e0.m.h(new byte[]{-109}, new byte[]{-96, -119, -55, -10, -44, -67, 115, 57});
                            }
                            break;
                        case -1683837504:
                            if (strH.equals(e0.m.h(new byte[]{113, 121, 125, 64, 34, -39, 118, -72, 113, 120, 125, 64, 34, -36, 118, -71, 112, 73}, new byte[]{-95, -58, -84, -64, -14, 97, -90, 9}))) {
                                strH = e0.m.h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case -1683837092:
                            if (strH.equals(e0.m.h(new byte[]{-115, 122, -78, 55, 50, 50, -120, 118, -115, 123, -78, 55, 50, 55, -120, 121, -115, 124}, new byte[]{93, -59, 99, -73, -30, -118, 88, -57}))) {
                                strH = e0.m.h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case -1683836916:
                            if (strH.equals(e0.m.h(new byte[]{-86, -103, -117, 46, -32, Base64.padSymbol, -93, -19, -86, -104, -117, 46, -32, 56, -94, -33, -85, -88}, new byte[]{122, 38, 90, -82, 48, -123, 115, 92}))) {
                                strH = e0.m.h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case -1223190035:
                            if (strH.equals(e0.m.h(new byte[]{-60, -82, 98, 109, -69, -3, -10, -14, -60, -95, 99, 80, -69, -1}, new byte[]{20, 19, -77, -18, 107, 70, 38, 71}))) {
                                strH = e0.m.h(new byte[]{-8}, new byte[]{-56, -65, 17, -75, -49, 21, -5, -95});
                            }
                            break;
                        case -906279820:
                            if (strH.equals(e0.m.h(new byte[]{-26, -86, 62, 62, 116, 118}, new byte[]{-107, -49, 93, 81, 26, 18, 60, -42}))) {
                                strH = e0.m.h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 110182:
                            if (strH.equals(e0.m.h(new byte[]{-34, -42, 108}, new byte[]{-79, -72, 9, -12, 94, 123, -49, 117}))) {
                                strH = e0.m.h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                        case 115276:
                            if (strH.equals(e0.m.h(new byte[]{103, -76, 86}, new byte[]{19, -61, 57, -2, 98, 96, 106, -5}))) {
                                strH = e0.m.h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 1068402:
                            if (strH.equals(e0.m.h(new byte[]{68, 15, -48, 110, -105, -98}, new byte[]{-108, -69, 0, -36, 71, 46, 17, 36}))) {
                                strH = e0.m.h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 1068407:
                            if (strH.equals(e0.m.h(new byte[]{107, 78, -74, -37, -56, 76}, new byte[]{-69, -6, 102, 105, 24, -7, 88, 66}))) {
                                strH = e0.m.h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 1082298:
                            if (strH.equals(e0.m.h(new byte[]{113, -86, -46, 6, -127, -34}, new byte[]{-96, 40, 3, -122, 81, 102, 46, -126}))) {
                                strH = e0.m.h(new byte[]{-109}, new byte[]{-96, -119, -55, -10, -44, -67, 115, 57});
                            }
                            break;
                        case 3735208:
                            if (strH.equals(e0.m.h(new byte[]{1, 62, -73, 103}, new byte[]{123, 91, -59, 8, 56, 2, 48, -33}))) {
                                strH = e0.m.h(new byte[]{-8}, new byte[]{-56, -65, 17, -75, -49, 21, -5, -95});
                            }
                            break;
                        case 33401554:
                            if (strH.equals(e0.m.h(new byte[]{-95, -103, 46, 57, -108, -69, 71, 65}, new byte[]{113, 36, -2, -121, 68, 0, -106, -51}))) {
                                strH = e0.m.h(new byte[]{-8}, new byte[]{-56, -65, 17, -75, -49, 21, -5, -95});
                            }
                            break;
                        case 33421627:
                            if (strH.equals(e0.m.h(new byte[]{21, -123, 39, 68, 44, 12, 105, 69}, new byte[]{-59, 59, -9, -16, -4, -76, -71, -8}))) {
                                strH = e0.m.h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                        case 33421769:
                            if (strH.equals(e0.m.h(new byte[]{17, -89, -55, -29, 67, -48, 103, 37}, new byte[]{-63, 25, 25, 87, -109, 109, -73, -107}))) {
                                strH = e0.m.h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                        case 97440432:
                            if (strH.equals(e0.m.h(new byte[]{-59, -14, 79, -111, -120}, new byte[]{-93, -101, Base64.padSymbol, -30, -4, -87, -70, 9}))) {
                                strH = e0.m.h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                        case 110331239:
                            if (strH.equals(e0.m.h(new byte[]{30, 108, 97, 96, -37}, new byte[]{106, 4, 8, 18, -65, 42, 49, 120}))) {
                                strH = e0.m.h(new byte[]{-109}, new byte[]{-96, -119, -55, -10, -44, -67, 115, 57});
                            }
                            break;
                        case 110339486:
                            if (strH.equals(e0.m.h(new byte[]{109, -126, 88, 19, 88}, new byte[]{25, -22, 42, 118, Base64.padSymbol, -82, -127, -25}))) {
                                strH = e0.m.h(new byte[]{-109}, new byte[]{-96, -119, -55, -10, -44, -67, 115, 57});
                            }
                            break;
                        case 1469703191:
                            if (strH.equals(e0.m.h(new byte[]{98, 81, -72, 118, -103, 99, 98, -21, 98, 80, -72, 118, -103, 97, 98, -17}, new byte[]{-78, -18, 105, -10, 73, -37, -78, 90}))) {
                                strH = e0.m.h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case 1469703194:
                            if (strH.equals(e0.m.h(new byte[]{-42, 0, 83, 40, -35, -127, -83, 99, -42, 1, 83, 40, -35, -125, -83, 106}, new byte[]{6, -65, -126, -88, 13, 57, 125, -46}))) {
                                strH = e0.m.h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case 1469703205:
                            if (strH.equals(e0.m.h(new byte[]{97, -34, -109, -98, 124, -94, 20, -39, 97, -33, -109, -98, 124, -96, 21, -21}, new byte[]{-79, 97, 66, 30, -84, 26, -60, 104}))) {
                                strH = e0.m.h(new byte[]{-61, 125, -40, 25, -13, -6, 1, 125, -61, 124, -40, 25}, new byte[]{19, -62, 9, -103, 35, 66, -47, -52});
                            }
                            break;
                        case 1723007921:
                            if (strH.equals(e0.m.h(new byte[]{-52, 120, -17, 40, 8, -21, 18, -78, -52, 122, -17, 37}, new byte[]{28, -54, 62, -86, -40, 85, -61, 50}))) {
                                strH = e0.m.h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 1723008333:
                            if (strH.equals(e0.m.h(new byte[]{-104, -36, 49, -96, -108, -41, -106, 20, -104, -48, 48, -101}, new byte[]{72, 110, -32, 34, 68, 105, 71, -108}))) {
                                strH = e0.m.h(new byte[]{-55}, new byte[]{-5, 7, -32, 37, 92, 114, -121, 12});
                            }
                            break;
                        case 2083227239:
                            if (strH.equals(e0.m.h(new byte[]{-88, -63, 75, -21, 120, 15, 15, -3, -88, -50, 74, -47}, new byte[]{120, 126, -101, 94, -87, -113, -33, 79}))) {
                                strH = e0.m.h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                        case 2083228054:
                            if (strH.equals(e0.m.h(new byte[]{33, -62, 104, -7, -5, -127, -80, 116, 32, -10, 104, -11}, new byte[]{-15, 125, -72, 76, 42, 1, 96, -58}))) {
                                strH = e0.m.h(new byte[]{45}, new byte[]{28, -40, -101, 103, -51, -113, -64, -122});
                            }
                            break;
                    }
                } else {
                    strH = e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, -69, 74, 120, 60, 121, -118, -77, -110, -69, 91, 104}, new byte[]{-28, -34, 41, 10, 89, 24, -7, -42});
                }
                arrayList.add(strH);
            }
            i10++;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void C(ArrayList arrayList) throws IOException {
        int i9;
        String str = a.f5593a;
        File fileD = a.d(new File(this.f5739m.getFilesDir(), a.f5594b));
        if (fileD == null) {
            n0.b.A(e0.m.h(new byte[]{44, -97, 57, -38, 78, -81, -10, 104, 95, -105, 59, -33, 69, -73, -65, 98, 12, -38, 58, -44, 84, -5, -10, 101, 12, -114, 53, -41, 76, -66, -5}, new byte[]{ByteCompanionObject.MAX_VALUE, -6, 84, -69, 32, -37, -97, 11}));
            return;
        }
        File file = new File(fileD, e0.m.h(new byte[]{101, -109, -77, 52, -105, 122, -18, -37, 99, -46, -78, 34, -106, 125}, new byte[]{17, -4, -40, 81, -7, 19, -108, -66}));
        File file2 = new File(fileD, e0.m.h(new byte[]{119, -14, 100, -110, -89, 33, -53, 99, 125, -14, 105, -118, -29, 40, -105, 32, 105, -22, 105, -118, -94, 96, -53, 99, 110, -65, 38, -119, -96, 35, -38}, new byte[]{26, -121, 8, -26, -50, 77, -94, 13}));
        File file3 = new File(fileD, e0.m.h(new byte[]{-7, -118, 89, 36, 90, 51, 78, -10, -89, -116, 85, 43, 80, 46, 67, -12, -2, -118, 71, 107, 87, 38, 68, -3, -17}, new byte[]{-118, -17, 52, 69, 52, 71, 39, -107}));
        if (this.f5742p == null) {
            HashMap map = new HashMap(300000);
            JsonReader jsonReader = new JsonReader(new InputStreamReader(new FileInputStream(file), e0.m.h(new byte[]{-103, -41, 88, -4, 68}, new byte[]{-52, -125, 30, -47, 124, -112, 37, 4})));
            try {
                jsonReader.beginObject();
                int iMax = 1;
                while (jsonReader.hasNext()) {
                    if (e0.m.h(new byte[]{-82, -87, 111, -31, -98}, new byte[]{-61, -58, 11, -124, -14, 27, 80, -46}).equals(jsonReader.nextName())) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            if (e0.m.h(new byte[]{-77, 65, -124, -108, 77}, new byte[]{-59, 46, -25, -11, 47, -80, 41, -53}).equals(jsonReader.nextName())) {
                                jsonReader.beginArray();
                                int i10 = 0;
                                while (jsonReader.hasNext()) {
                                    jsonReader.beginArray();
                                    String strNextString = jsonReader.nextString();
                                    float fNextDouble = (float) jsonReader.nextDouble();
                                    while (jsonReader.hasNext()) {
                                        jsonReader.skipValue();
                                    }
                                    jsonReader.endArray();
                                    map.put(strNextString, new n(i10, fNextDouble));
                                    iMax = Math.max(iMax, strNextString.length());
                                    i10++;
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
                this.f5742p = new m(map, iMax, 0);
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (this.f5743q == null) {
            this.f5743q = OrtEnvironment.getEnvironment();
        }
        if (this.r == null) {
            OrtSession$SessionOptions ortSession$SessionOptions = new OrtSession$SessionOptions();
            ortSession$SessionOptions.setIntraOpNumThreads(1);
            ortSession$SessionOptions.setInterOpNumThreads(1);
            ortSession$SessionOptions.setCPUArenaAllocator(false);
            ortSession$SessionOptions.setMemoryPatternOptimization(false);
            this.r = this.f5743q.createSession(file2.getAbsolutePath(), ortSession$SessionOptions);
        }
        boolean zIsFile = file3.isFile();
        String str2 = this.f5730a;
        if (zIsFile) {
            try {
                DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(file3)));
                try {
                    if (dataInputStream.readInt() == 1245926449 && dataInputStream.readInt() == arrayList.size()) {
                        int size = arrayList.size();
                        int i11 = 0;
                        while (true) {
                            if (i11 >= size) {
                                dataInputStream.close();
                                Log.i(str2, e0.m.h(new byte[]{84, 50, 105, -43, 11, -25, -116, -107, 39, 52, 101, -38, 1, -6, -127, -105, 115, 50, 119, -108, 9, -4, -124, -110, 98, 51, 36, -46, 23, -4, -120, -42, 100, 54, 103, -36, 0, -87, -59}, new byte[]{7, 87, 4, -76, 101, -109, -27, -10}) + arrayList.size());
                                return;
                            }
                            Object obj = arrayList.get(i11);
                            i11++;
                            l lVar = (l) obj;
                            String utf = dataInputStream.readUTF();
                            String utf2 = dataInputStream.readUTF();
                            if (!lVar.f5690a.equals(utf) || !j0.f.g(lVar.f5691b).equals(utf2) || (i9 = dataInputStream.readInt()) < 0 || i9 > 64) {
                                break;
                                break;
                                break;
                                break;
                            }
                            lVar.d = new int[i9];
                            for (int i12 = 0; i12 < i9; i12++) {
                                lVar.d[i12] = dataInputStream.readInt();
                            }
                            int i13 = dataInputStream.readInt();
                            if (i13 != 384) {
                                break;
                            }
                            lVar.e = new float[i13];
                            for (int i14 = 0; i14 < i13; i14++) {
                                lVar.e[i14] = dataInputStream.readFloat();
                            }
                            Log.w(str2, e0.m.h(new byte[]{49, -74, 2, 125, 39, 26, -49, -110, 66, -80, 14, ByteCompanionObject.MAX_VALUE, 33, 11, -122, -104, 17, -13, 1, 115, Base64.padSymbol, 78, -45, -126, 3, -79, 3, 121}, new byte[]{98, -45, 111, 28, 73, 110, -90, -15}), e);
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
                Log.w(str2, e0.m.h(new byte[]{49, -74, 2, 125, 39, 26, -49, -110, 66, -80, 14, ByteCompanionObject.MAX_VALUE, 33, 11, -122, -104, 17, -13, 1, 115, Base64.padSymbol, 78, -45, -126, 3, -79, 3, 121}, new byte[]{98, -45, 111, 28, 73, 110, -90, -15}), e);
            }
        }
        int size2 = arrayList.size();
        int i15 = 0;
        while (i15 < size2) {
            Object obj2 = arrayList.get(i15);
            i15++;
            l lVar2 = (l) obj2;
            lVar2.d = this.f5742p.a(e0.m.h(new byte[]{78, -105, 41, 66, -69, 22, 92, -49, 30}, new byte[]{62, -10, 90, 49, -38, 113, 57, -11}) + lVar2.f5690a);
        }
        for (int i16 = 0; i16 < arrayList.size(); i16 += 8) {
            I(arrayList, i16, Math.min(8, arrayList.size() - i16));
        }
        File parentFile = file3.getParentFile();
        StringBuilder sb = new StringBuilder();
        sb.append(file3.getName());
        File file4 = new File(parentFile, com.google.protobuf.q.i(new byte[]{-91, -53, -43, -87}, new byte[]{-117, -91, -80, -34, -46, 122, 102, 55}, sb));
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(file4)));
            try {
                dataOutputStream.writeInt(1245926449);
                dataOutputStream.writeInt(arrayList.size());
                int size3 = arrayList.size();
                int i17 = 0;
                while (i17 < size3) {
                    Object obj3 = arrayList.get(i17);
                    i17++;
                    l lVar3 = (l) obj3;
                    dataOutputStream.writeUTF(lVar3.f5690a);
                    dataOutputStream.writeUTF(j0.f.g(lVar3.f5691b));
                    dataOutputStream.writeInt(lVar3.d.length);
                    for (int i18 : lVar3.d) {
                        dataOutputStream.writeInt(i18);
                    }
                    dataOutputStream.writeInt(lVar3.e.length);
                    for (float f8 : lVar3.e) {
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
            Log.w(str2, e0.m.h(new byte[]{-107, 100, 60, 34, -80, 31, -119, 78, -94, 43, 62, 60, -67, 75, -126, 1, -91, 110, 36, 47, -70, 75, -114, 66, -10, 104, 40, 45, -68, 90}, new byte[]{-42, 11, 73, 78, -44, 63, -25, 33}), e6);
            file4.delete();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String E(int i9, byte[] bArr) {
        synchronized (this.w) {
            try {
                Recognizer recognizer = this.B ? this.f5748y : this.f5747x;
                if (recognizer == null) {
                    return null;
                }
                return recognizer.acceptWaveForm(bArr, i9) ? recognizer.getResult() : recognizer.getPartialResult();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void F(int i9, byte[] bArr) {
        if (bArr == null || i9 <= 0) {
            return;
        }
        int iMin = Math.min(i9, bArr.length);
        int iMax = Math.max(0, iMin - this.f5746v.length);
        int i10 = iMin - iMax;
        while (i10 > 0) {
            int iMin2 = Math.min(i10, this.f5746v.length - this.A);
            System.arraycopy(bArr, iMax, this.f5746v, this.A, iMin2);
            int i11 = this.A + iMin2;
            byte[] bArr2 = this.f5746v;
            this.A = i11 % bArr2.length;
            this.f5749z = Math.min(this.f5749z + iMin2, bArr2.length);
            iMax += iMin2;
            i10 -= iMin2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void H(String str) {
        l lVarP;
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean z8 = this.B;
            boolean zHas = jSONObject.has(e0.m.h(new byte[]{-112, 14, 115, -52}, new byte[]{-28, 107, 11, -72, -58, 75, 78, -36}));
            String strTrim = zHas ? jSONObject.optString(e0.m.h(new byte[]{-58, 48, -100, -87}, new byte[]{-78, 85, -28, -35, 58, 106, 27, 108}), "").trim() : jSONObject.optString(e0.m.h(new byte[]{104, 91, -12, -102, 78, 95, 79}, new byte[]{24, 58, -122, -18, 39, 62, 35, -58}), "").trim();
            if (z8) {
                if (zHas) {
                    if (strTrim != null && !strTrim.trim().isEmpty()) {
                        this.I = u(this.I, strTrim.trim());
                    }
                    this.J = "";
                } else {
                    this.J = strTrim == null ? "" : strTrim.trim();
                }
                strTrim = u(this.I, this.J);
            }
            if ("".equals(strTrim)) {
                return;
            }
            if (!z8) {
                h0.b.a();
                h0.b.f().getClass();
                String strF = j0.c.f();
                if (strF != null && !strF.trim().isEmpty() && strTrim != null && strTrim.toLowerCase().contains(strF.trim().toLowerCase()) && zHas) {
                    String strN = N();
                    this.R = "";
                    y(strTrim);
                    H(strN);
                    return;
                }
                return;
            }
            if (!strTrim.equals(this.M)) {
                this.M = strTrim;
                Log.d(this.f5730a, e0.m.h(new byte[]{-59, -117, -106, 36, 42, 60, -106, -6, -20, -103, -108, 33, 126, 39, -100, -9, -93, -99, -107, 37, 104, 39, -99, -4, -25, -61, -35}, new byte[]{-125, -2, -6, 72, 10, 78, -13, -103}) + strTrim + e0.m.h(new byte[]{8}, new byte[]{47, -13, -117, 51, 85, 92, -95, 53}));
                y(strTrim);
            }
            String strG = G(strTrim);
            if (strG.isEmpty()) {
                return;
            }
            if (W.equals(Normalizer.normalize(strG, Normalizer$Form.NFKC).toLowerCase(Locale.ROOT).replaceAll(e0.m.h(new byte[]{114, -9, -103, 83, -43, ByteCompanionObject.MIN_VALUE, -92, -56, 89, -46, -117, 94, -13, -25}, new byte[]{41, -87, -59, 35, -82, -52, -39, -108}), " ").trim())) {
                Log.i(this.f5730a, e0.m.h(new byte[]{-106, -121, -19, -54, 51, 92, 95, -112, -65, -107, -17, -49, 103, 71, 85, -99, -16, -111, -32, -56, 112, 75, 86, -97, -75, -106, -95, -60, 106, 14, 76, -100, -71, -111, -28, -122, 112, 65, 87, -98, -79, -100, -27}, new byte[]{-48, -14, -127, -90, 19, 46, 58, -13}));
                a();
                return;
            }
            h0.b.a();
            j0.e eVarD = h0.b.f().d(strG);
            if (j0.f.d(eVarD)) {
                n(eVarD);
                return;
            }
            String strD = D(strG);
            if (strD.isEmpty()) {
                return;
            }
            if (zHas || !strD.equals(this.K)) {
                this.K = strD;
                h0.b.a();
                j0.e eVarD2 = h0.b.f().d(strD);
                if (j0.f.d(eVarD2)) {
                    n(eVarD2);
                    return;
                }
                if (zHas && (lVarP = p(strG)) != null) {
                    Log.i(this.f5730a, e0.m.h(new byte[]{-9, 1, -123, -92, -16, -92, -115, 29, -41, 9, -63, -69, -21, -92, -127, 22, -106, 21, -119, -65, -27, -66, -121, 83, -37, 4, -107, -82, -20, -88, -122, 73, -106}, new byte[]{-74, 101, -31, -51, -124, -51, -30, 115}) + lVarP.f5690a + e0.m.h(new byte[]{99, 73, 97, -18}, new byte[]{67, 100, 95, -50, 83, 22, -65, -94}) + j0.f.g(lVarP.f5691b));
                    n(lVarP.f5691b);
                    return;
                }
                if (!this.f5740n.isEmpty() && !strD.equals(this.L)) {
                    this.L = strD;
                    int i9 = this.N + 1;
                    this.N = i9;
                    this.f5731b.schedule(new h(this, i9, strD, 3), 350L, TimeUnit.MILLISECONDS);
                }
                if (zHas) {
                    O(strD);
                }
            }
        } catch (JSONException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:67:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0117 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:? A[Catch: all -> 0x00f3, SYNTHETIC, TRY_LEAVE, TryCatch #1 {all -> 0x00f3, blocks: (B:13:0x0065, B:29:0x00ef, B:55:0x011f, B:54:0x011c, B:14:0x006f, B:24:0x00e6, B:49:0x0114, B:48:0x0111, B:51:0x0117), top: B:64:0x0065, inners: #4, #5 }] */
    /* JADX WARN: Code duplicated, block: B:86:? A[SYNTHETIC] */
    public final void I(ArrayList arrayList, int i9, int i10) {
        int iMax = 1;
        for (int i11 = 0; i11 < i10; i11++) {
            iMax = Math.max(iMax, ((l) arrayList.get(i9 + i11)).d.length);
        }
        int i12 = i10 * iMax;
        long[] jArr = new long[i12];
        long[] jArr2 = new long[i12];
        long[] jArr3 = new long[i12];
        long j9 = 1;
        Arrays.fill(jArr, 1L);
        for (int i13 = 0; i13 < i10; i13++) {
            int[] iArr = ((l) arrayList.get(i9 + i13)).d;
            int i14 = 0;
            while (i14 < iArr.length) {
                int i15 = (i13 * iMax) + i14;
                long j10 = j9;
                jArr[i15] = iArr[i14];
                jArr2[i15] = j10;
                i14++;
                j9 = j10;
            }
        }
        long[] jArr4 = {i10, iMax};
        OnnxTensor onnxTensorCreateTensor = OnnxTensor.createTensor(this.f5743q, LongBuffer.wrap(jArr), jArr4);
        try {
            OnnxTensor onnxTensorCreateTensor2 = OnnxTensor.createTensor(this.f5743q, LongBuffer.wrap(jArr2), jArr4);
            try {
                OnnxTensor onnxTensorCreateTensor3 = OnnxTensor.createTensor(this.f5743q, LongBuffer.wrap(jArr3), jArr4);
                try {
                    HashMap map = new HashMap();
                    map.put(e0.m.h(new byte[]{104, -56, -86, -102, 54, 66, -5, -32, 114}, new byte[]{1, -90, -38, -17, 66, 29, -110, -124}), onnxTensorCreateTensor);
                    map.put(e0.m.h(new byte[]{-127, 97, 97, -45, 69, -85, ByteCompanionObject.MAX_VALUE, 104, -114, 74, 120, -41, 88, -76}, new byte[]{-32, 21, 21, -74, 43, -33, 22, 7}), onnxTensorCreateTensor2);
                    map.put(e0.m.h(new byte[]{-54, 71, 75, 113, -15, -28, -123, 35, -50, 77, ByteCompanionObject.MAX_VALUE, 125, -5, -56}, new byte[]{-66, 40, 32, 20, -97, -69, -15, 90}), onnxTensorCreateTensor3);
                    OrtSession$Result ortSession$ResultRun = this.r.run(map);
                    try {
                        float[][][] fArr = (float[][][]) ortSession$ResultRun.get(0).getValue();
                        for (int i16 = 0; i16 < i10; i16++) {
                            ((l) arrayList.get(i9 + i16)).e = h(fArr[i16], jArr2, i16 * iMax, iMax);
                        }
                        ortSession$ResultRun.close();
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
                        if (ortSession$ResultRun == null) {
                            throw th;
                        }
                        try {
                            ortSession$ResultRun.close();
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void J() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.S < 1000) {
            return;
        }
        this.S = jCurrentTimeMillis;
        if (j()) {
            L();
            try {
                String string = new JSONArray((Collection) i()).toString();
                if (t(string)) {
                    synchronized (this.w) {
                        Recognizer recognizer = this.f5747x;
                        if (recognizer != null) {
                            recognizer.close();
                            this.f5747x = null;
                        }
                        Recognizer recognizer2 = this.f5748y;
                        if (recognizer2 != null) {
                            recognizer2.close();
                            this.f5748y = null;
                        }
                        float f8 = 16000;
                        this.f5747x = new Recognizer(this.f5738l, f8, string);
                        this.f5748y = new Recognizer(this.f5738l, f8);
                        this.B = false;
                        synchronized (this) {
                            this.f5749z = 0;
                            this.A = 0;
                        }
                    }
                    if (ContextCompat.checkSelfPermission(this.f5739m, e0.m.h(new byte[]{-29, -99, 104, 69, -19, 74, -40, 33, -14, -106, 126, 90, -21, 80, -49, 102, -19, -99, 34, 101, -57, 96, -13, 93, -58, -84, 77, 98, -58, 106, -13}, new byte[]{-126, -13, 12, 55, -126, 35, -68, 15})) != 0) {
                        z(b.f5599b);
                        return;
                    }
                    AudioRecord audioRecord = new AudioRecord(h0.b.o().loadInt(e0.m.h(new byte[]{-111, -104, -106, 8, -92, 13, -39, 7, -77, -113, -106, 4, -73, 113, -3, 17, -72, -108, -99, 50, -86, 42, -50, 7, -71}, new byte[]{-36, -3, -14, 97, -59, 95, -68, 100}), 1), 16000, 16, 2, this.t);
                    this.f5737k = audioRecord;
                    audioRecord.startRecording();
                }
            } catch (Exception e) {
                Log.e(this.f5730a, e0.m.h(new byte[]{-21, 110, 47, 107, -55, -29, 32, 114, -34, 110, 52, 108, -59, -83, 53, 55, -44, 111, 47, 124, -59, -94, 62, 126, -57, 96, 50, 97, -61, -83, 114, 113, -36, 104, 42, 109, -56}, new byte[]{-67, 1, 70, 8, -84, -61, 82, 23}), e);
                L();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void K(int i9, String str) {
        if (i9 == this.E && this.B && !this.D) {
            if (i9 == this.G) {
                this.F = "";
            }
            this.D = true;
            this.c.execute(new h(this, str, i9, 0));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void L() {
        AudioRecord audioRecord = this.f5737k;
        if (audioRecord != null) {
            try {
                if (audioRecord.getState() == 1) {
                    this.f5737k.stop();
                }
            } catch (IllegalStateException unused) {
            }
            this.f5737k.release();
            this.f5737k = null;
        }
        z(b.f5599b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void M() {
        synchronized (this.w) {
            try {
                this.B = false;
                this.f5732f.clear();
                this.E++;
                this.F = "";
                this.C = 0L;
                this.H = "";
                this.I = "";
                this.J = "";
                this.K = "";
                this.L = "";
                this.M = "";
                this.N++;
                Recognizer recognizer = this.f5747x;
                if (recognizer != null) {
                    recognizer.reset();
                }
                Recognizer recognizer2 = this.f5748y;
                if (recognizer2 != null) {
                    recognizer2.reset();
                }
                synchronized (this) {
                    this.f5749z = 0;
                    this.A = 0;
                }
                this.R = "";
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String N() {
        synchronized (this.w) {
            if (this.f5748y == null) {
                try {
                    this.f5748y = new Recognizer(this.f5738l, 16000.0f);
                } catch (Exception unused) {
                    return null;
                }
            }
            this.f5748y.reset();
            this.B = true;
            this.E++;
            this.F = "";
            this.C = System.currentTimeMillis() + 10000;
            this.H = "";
            this.I = "";
            this.J = "";
            this.K = "";
            this.L = "";
            this.M = "";
            this.N++;
            byte[] bArrS = s();
            if (bArrS == null || bArrS.length <= 0) {
                return null;
            }
            this.f5732f.clear();
            boolean zAcceptWaveForm = this.f5748y.acceptWaveForm(bArrS, bArrS.length);
            Recognizer recognizer = this.f5748y;
            return zAcceptWaveForm ? recognizer.getResult() : recognizer.getPartialResult();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void O(String str) {
        String strD = D(str);
        if (strD.length() < 2 || this.f5740n.isEmpty() || strD.equalsIgnoreCase(this.H)) {
            return;
        }
        this.H = strD;
        System.currentTimeMillis();
        int i9 = this.E + 1;
        this.E = i9;
        this.F = strD;
        this.G = i9;
        this.f5731b.schedule(new h(this, strD, i9, 4), 550L, TimeUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void a() {
        AudioFocusRequest audioFocusRequest;
        AudioManager audioManager = this.f5735i;
        if (audioManager != null && (audioFocusRequest = this.f5736j) != null && Build$VERSION.SDK_INT >= 26) {
            org.apache.commons.net.util.a.t(audioManager, audioFocusRequest);
        }
        M();
        z(U);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void b() {
        h0.b.w(e0.m.h(new byte[]{53, -25, -37, -91, -105, -16, -33, 108}, new byte[]{70, -109, -76, -43, -63, -97, -84, 7}), ColorText.RED);
        this.O++;
        this.f5732f.clear();
        ScheduledFuture scheduledFuture = this.f5733g;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f5733g.cancel(true);
            this.f5733g = null;
        }
        L();
        synchronized (this.w) {
            Recognizer recognizer = this.f5747x;
            if (recognizer != null) {
                recognizer.close();
                this.f5747x = null;
            }
            Recognizer recognizer2 = this.f5748y;
            if (recognizer2 != null) {
                recognizer2.close();
                this.f5748y = null;
            }
            this.B = false;
        }
        z(b.f5599b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void c() {
        h0.b.w(e0.m.h(new byte[]{-122, -5, 122, 101, -70, 11, 60, -39, -98}, new byte[]{-11, -113, 27, 23, -50, 93, 83, -86}), ColorText.RED);
        b();
        if (!this.f5741o && this.f5740n.isEmpty()) {
            this.f5741o = true;
            this.c.execute(new j(this, 0));
        }
        this.P = System.currentTimeMillis();
        int i9 = this.O + 1;
        this.O = i9;
        this.f5732f.clear();
        this.e.execute(new i(this, i9, 0));
        this.f5733g = this.f5731b.scheduleWithFixedDelay(new i(this, i9, 1), 0L, 30L, TimeUnit.MILLISECONDS);
        synchronized (this) {
            ScheduledFuture scheduledFuture = this.f5734h;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                this.f5734h = this.f5731b.scheduleWithFixedDelay(new j(this, 1), 3L, 3L, TimeUnit.SECONDS);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void d() {
        U = T;
        if (this.f5736j == null && Build$VERSION.SDK_INT >= 26) {
            this.f5736j = d.f(org.apache.commons.net.util.a.k(d.e(d.d(), new e(this, 1)), new AudioAttributes$Builder().setUsage(1).setContentType(2).build()));
        }
        if (Build$VERSION.SDK_INT >= 26) {
            d.j(this.f5735i, this.f5736j);
        }
        if (!this.B) {
            N();
        }
        z(b.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final b e() {
        return T;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List i() {
        ArrayList arrayList = new ArrayList();
        h0.b.a();
        h0.b.f().getClass();
        String strF = j0.c.f();
        if (strF != null && !strF.trim().isEmpty()) {
            for (String str : strF.trim().toLowerCase(Locale.ROOT).split(e0.m.h(new byte[]{24, 24, -99}, new byte[]{68, 107, -74, 4, -71, -92, 124, 26}))) {
                if (!str.isEmpty() && !arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
            arrayList.add(e0.m.h(new byte[]{-35, Base64.padSymbol, 125, -2, 5}, new byte[]{-122, 72, 19, -107, 88, 123, -79, -55}));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean j() {
        AudioManager audioManager = (AudioManager) this.f5739m.getSystemService(e0.m.h(new byte[]{7, -26, -59, -114, -16}, new byte[]{102, -109, -95, -25, -97, 11, 56, -71}));
        return audioManager.getMode() == 0 && !audioManager.isMicrophoneMute();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k() {
        if (!this.B || this.C <= 0 || System.currentTimeMillis() < this.C) {
            return;
        }
        if (!this.f5732f.isEmpty()) {
            this.C = System.currentTimeMillis() + 1000;
            return;
        }
        if (this.D || (!this.F.isEmpty() && this.G == this.E)) {
            this.C = System.currentTimeMillis() + 1000;
            return;
        }
        Log.i(this.f5730a, e0.m.h(new byte[]{118, -11, 105, 33, 23, -47, 89, 54, 95, -25, 107, 36, 67, -54, 83, 59, 16, -12, 108, 32, 82, -52, 73, 33}, new byte[]{48, ByteCompanionObject.MIN_VALUE, 5, 77, 55, -93, 60, 85}));
        M();
        z(b.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList l() {
        n0.d dVar;
        int i9;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        h0.b.a();
        ArrayList arrayListE = h0.b.f().e();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put(Locale.getDefault().toLanguageTag(), Locale.getDefault());
        Context context = this.f5739m;
        int i10 = 0;
        for (String str : context.getAssets().getLocales()) {
            if (str != null && !str.trim().isEmpty()) {
                Locale localeForLanguageTag = Locale.forLanguageTag(str.replace('_', '-'));
                if (!localeForLanguageTag.getLanguage().isEmpty()) {
                    linkedHashMap2.put(localeForLanguageTag.toLanguageTag(), localeForLanguageTag);
                }
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap2.values());
        int size = arrayListE.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayListE.get(i11);
            i11++;
            j0.e eVar = (j0.e) obj;
            if (j0.f.d(eVar)) {
                if (eVar.f2872a == j0.d.f2870b && (dVar = eVar.f2873b) != null) {
                    try {
                        Field declaredField = n0.d.class.getDeclaredField(e0.m.h(new byte[]{-91, 86, 33, 110, -62, -92, -30, 0, -96, 82, 55}, new byte[]{-63, 63, 82, 30, -82, -59, -101, 78}));
                        declaredField.setAccessible(true);
                        i9 = declaredField.getInt(dVar);
                    } catch (Exception unused) {
                        i9 = 0;
                    }
                    if (i9 != 0) {
                        int size2 = arrayList.size();
                        int i12 = 0;
                        while (i12 < size2) {
                            Object obj2 = arrayList.get(i12);
                            i12++;
                            Configuration configuration = new Configuration(context.getResources().getConfiguration());
                            configuration.setLocale((Locale) obj2);
                            g(linkedHashMap, context.createConfigurationContext(configuration).getString(i9), eVar, "");
                        }
                    }
                }
                g(linkedHashMap, eVar.f2877i, eVar, "");
            }
        }
        h0.b.a();
        ArrayList arrayListI = h0.b.f().i(j0.c.e);
        int size3 = arrayListI.size();
        while (i10 < size3) {
            Object obj3 = arrayListI.get(i10);
            i10++;
            o0 o0Var = (o0) obj3;
            if (o0Var.c && j0.f.d(o0Var.f5751b)) {
                g(linkedHashMap, o0Var.f5750a, o0Var.f5751b, "");
            }
        }
        String str2 = this.f5730a;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        for (l lVar : linkedHashMap.values()) {
            String strG = j0.f.g(lVar.f5691b);
            ((List) linkedHashMap3.computeIfAbsent(strG, new ai.onnxruntime.d(7))).add(lVar.f5690a);
            linkedHashMap4.put(strG, lVar.f5691b);
        }
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(context.getAssets().open(e0.m.h(new byte[]{104, Base64.padSymbol, 71, -107, 41, -64, -113, -65, 106, 59, 65, -104, 19, -2, -126, -75, ByteCompanionObject.MAX_VALUE, 33, 75, -123, 98, -11, -99, -77, 112}, new byte[]{30, 82, 46, -10, 76, -97, -18, -36})), e0.m.h(new byte[]{-63, -125, -47, 108, -108}, new byte[]{-108, -41, -105, 65, -84, -77, 21, -40}));
            try {
                List<c0> listB = d0.c(inputStreamReader).b(linkedHashMap3);
                int size4 = linkedHashMap.size();
                for (c0 c0Var : listB) {
                    g(linkedHashMap, c0Var.f5605b, (j0.e) linkedHashMap4.get(c0Var.f5604a), c0Var.c);
                }
                Log.i(str2, e0.m.h(new byte[]{86, 35, -7, 78, 2, -65, 25, -36, 118, 43, -67, 81, 25, -65, 21, -41, 55, 55, -11, 85, 23, -91, 19, -63, 55, 43, -14, 70, 18, -77, 18, -120, 55}, new byte[]{23, 71, -99, 39, 118, -42, 118, -78}) + (linkedHashMap.size() - size4));
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
            Log.w(str2, e0.m.h(new byte[]{70, -61, 110, 49, -86, -81, -124, 23, 102, -53, 42, 46, -79, -81, -120, 28, 39, -41, 98, 42, -65, -75, -114, 89, 100, -58, 126, 57, -78, -87, -116, 89, 114, -55, 107, 46, -65, -81, -121, 24, 101, -53, 111, 99, -2, -77, -104, 16, 105, -64, 42, 55, -84, -81, -116, 16, 105, -58, 102, 120, -82, -82, -103, 24, 116, -62, 121}, new byte[]{7, -89, 10, 88, -34, -58, -21, 121}), e);
        }
        return new ArrayList(linkedHashMap.values());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(j0.e eVar) {
        a();
        h0.b.a();
        h0.b.f().j(eVar, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l p(String str) {
        String strD = d0.d(str);
        l lVar = null;
        for (l lVar2 : this.f5740n) {
            if (!lVar2.c.isEmpty() && lVar2.c.equals(strD)) {
                if (lVar != null && !j0.f.g(lVar.f5691b).equals(j0.f.g(lVar2.f5691b))) {
                    return null;
                }
                lVar = lVar2;
            }
        }
        return lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l r(String str) {
        l lVar;
        l lVar2 = null;
        l lVar3 = new l(str, null, "");
        lVar3.d = this.f5742p.a(e0.m.h(new byte[]{116, 5, -109, 36, 28, -89, -34}, new byte[]{5, 112, -10, 86, 101, -99, -2, -94}) + str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lVar3);
        int i9 = 0;
        I(arrayList, 0, 1);
        l lVar4 = null;
        float f8 = -1.0f;
        for (l lVar5 : this.f5740n) {
            if (lVar5.c.isEmpty()) {
                float[] fArr = lVar5.e;
                int length = fArr.length;
                lVar = lVar2;
                float[] fArr2 = lVar3.e;
                if (length == fArr2.length) {
                    float f9 = 0.0f;
                    for (int i10 = 0; i10 < fArr2.length; i10++) {
                        f9 += fArr2[i10] * fArr[i10];
                    }
                    float fA = A(str, lVar5.f5690a) + (v(w(str), w(lVar5.f5690a)) * 0.08f) + f9;
                    if (fA > f8) {
                        f8 = fA;
                        lVar4 = lVar5;
                    }
                }
            } else {
                lVar = lVar2;
            }
            lVar2 = lVar;
        }
        l lVar6 = lVar2;
        String strG = lVar4 == null ? "" : j0.f.g(lVar4.f5691b);
        float fMax = -1.0f;
        for (l lVar7 : this.f5740n) {
            if (lVar7.c.isEmpty() && lVar7.e.length == lVar3.e.length && !strG.equals(j0.f.g(lVar7.f5691b))) {
                float[] fArr3 = lVar3.e;
                float[] fArr4 = lVar7.e;
                float f10 = 0.0f;
                while (i9 < fArr3.length) {
                    f10 = (fArr3[i9] * fArr4[i9]) + f10;
                    i9++;
                }
                fMax = Math.max(fMax, A(str, lVar7.f5690a) + (v(w(str), w(lVar7.f5690a)) * 0.08f) + f10);
            }
            i9 = 0;
        }
        float f11 = f8 - fMax;
        String str2 = this.f5730a;
        StringBuilder sb = new StringBuilder();
        com.google.protobuf.q.u(new byte[]{ByteCompanionObject.MIN_VALUE, 83, -53, -61, 99, -16, -35, -68, -13, 71, -45, -57, ByteCompanionObject.MAX_VALUE, -3, -119, -8}, new byte[]{-45, 54, -90, -94, 13, -124, -76, -33}, sb, str);
        sb.append(e0.m.h(new byte[]{-110, -76, 105, 37, -77, 38, -83, 25, -110}, new byte[]{-75, -104, 73, 71, -42, 85, -39, 36}));
        sb.append(lVar4 != null ? lVar4.f5690a : "");
        sb.append(e0.m.h(new byte[]{-49, -44, 88, -36, -104, 59, -10, 63, -43}, new byte[]{-24, -8, 120, -81, -5, 84, -124, 90}));
        sb.append(f8);
        sb.append(e0.m.h(new byte[]{74, -38, 78, 92, -57, 38, 97, -69, 5, -114, 72, 71, -63, 14, 114, -120, 1, -109, 79, 21}, new byte[]{102, -6, 33, 40, -81, 67, 19, -6}));
        sb.append(f11);
        Log.d(str2, sb.toString());
        return (f8 < 0.82f || f11 < 0.016f) ? lVar6 : lVar4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized byte[] s() {
        int i9 = this.f5749z;
        if (i9 <= 0) {
            return null;
        }
        byte[] bArr = new byte[i9];
        int i10 = this.A - i9;
        byte[] bArr2 = this.f5746v;
        int length = (i10 + bArr2.length) % bArr2.length;
        int iMin = Math.min(i9, bArr2.length - length);
        System.arraycopy(this.f5746v, length, bArr, 0, iMin);
        int i11 = this.f5749z;
        if (iMin < i11) {
            System.arraycopy(this.f5746v, 0, bArr, iMin, i11 - iMin);
        }
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void x() {
        String str = this.R;
        if (str == null || str.trim().isEmpty() || System.currentTimeMillis() < 0) {
            return;
        }
        String str2 = this.R;
        this.R = "";
        y(str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void y(String str) {
        if (f().booleanValue()) {
            ArrayList arrayList = a0.e;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                ((b0) obj).i(str);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void z(b bVar) {
        if (f().booleanValue()) {
            T = bVar;
            c.f5603a = bVar;
            ArrayList arrayList = a0.e;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                ((b0) obj).m(bVar);
            }
        }
    }
}
