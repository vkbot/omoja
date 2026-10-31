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
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
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
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map$Entry;
import java.util.TreeSet;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.vosk.Model;
import org.vosk.Recognizer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x implements y {

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static b f5793l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static b f5794m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final String f5795n0 = e0.m.h(new byte[]{-16, 80, 110, 60, -64, 110, 12, -41, -16, 83, 111, 14}, new byte[]{32, -18, -65, -66, 16, -46, -36, 98});
    public volatile v A;
    public volatile l0 B;
    public volatile boolean C;
    public final b1 D;
    public volatile g1 E;
    public volatile long G;
    public volatile String I;
    public Recognizer P;
    public Recognizer Q;
    public volatile long U;
    public volatile boolean V;
    public volatile int W;
    public volatile int Y;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public volatile int f5804f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ScheduledFuture f5805g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public volatile int f5806g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ScheduledFuture f5807h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public volatile long f5808h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AudioManager f5809i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public volatile boolean f5810i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public AudioFocusRequest f5811j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AudioRecord f5813k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Model f5815l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Context f5816m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public f f5817n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile boolean f5818o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile boolean f5820q;
    public volatile int r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public m f5821s;
    public OrtEnvironment t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public OrtSession f5822u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final d1 f5823v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5796a = e0.m.h(new byte[]{-11, 119, 99, 101, 91, 63, 121, 101, -49, 105, 111, 51}, new byte[]{-90, 7, 10, 6, 51, 122, 23, 2});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f5798b = e0.w.c(-1, e0.m.h(new byte[]{77, 74, -115, 71, 101, -98, -49, -46, 119, 84, -127, 17}, new byte[]{30, 58, -28, 36, 13, -37, -95, -75}));
    public final ExecutorService c = Executors.newSingleThreadExecutor();
    public final ExecutorService d = Executors.newSingleThreadExecutor();
    public final ExecutorService e = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayBlockingQueue f5803f = new ArrayBlockingQueue(128);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile List f5819p = Collections.EMPTY_LIST;
    public x0 w = new x0();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile String f5824x = "";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public volatile String f5825y = e0.m.h(new byte[]{-57, 43, -26, 69, -103, -71, -92, 2, -47, 42, -32, 70, -105, -96, -82}, new byte[]{-78, 69, -115, 43, -10, -50, -54, 93});

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile String f5826z = "";
    public volatile String F = e0.m.h(new byte[]{47, -82, 103, -41, -94, 20, Base64.padSymbol, 47, 37, -92, 101, -47, -76, 47}, new byte[]{73, -63, 4, -94, -47, 75, 79, 74});
    public volatile String H = "";
    public volatile int J = 1;
    public boolean K = false;
    public final int L = AudioRecord.getMinBufferSize(16000, 16, 2);
    public final byte[] M = new byte[4096];
    public final byte[] N = new byte[160000];
    public final Object O = new Object();
    public int R = 0;
    public int S = 0;
    public volatile boolean T = false;
    public volatile String X = "";
    public volatile String Z = "";

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public String f5797a0 = "";

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public String f5799b0 = "";

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public String f5800c0 = "";

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public String f5801d0 = "";

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public String f5802e0 = "";

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f5812j0 = "";

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public long f5814k0 = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        b bVar = b.f5599b;
        f5793l0 = bVar;
        f5794m0 = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x(Context context) {
        this.f5823v = d1.d;
        this.I = "";
        this.f5816m = context;
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(context.getAssets().open(e0.m.h(new byte[]{81, -122, -80, -82, 58, -91, 17, -124, 74, -124, -72, -93, 59, -91, 30, -118, 73, -114, -84, -84, 56, -97, 92, -127, 84, -122, -73}, new byte[]{39, -23, -39, -51, 95, -6, 114, -21})), e0.m.h(new byte[]{11, 110, Base64.padSymbol, 73, 101}, new byte[]{94, 58, 123, 100, 93, -106, 28, -91}));
            try {
                this.f5823v = d1.d(inputStreamReader);
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
            Log.w(e0.m.h(new byte[]{-101, 103, 84, 12, -53, -21, -73, 63, -95, 121, 88, 90}, new byte[]{-56, 23, Base64.padSymbol, 111, -93, -82, -39, 88}), e0.m.h(new byte[]{16, 46, -109, 0, 4, 108, 116, 79, ByteCompanionObject.MAX_VALUE, 40, -120, 0, 8, 103, 53, 85, 48, Base64.padSymbol, -122, 11, 30, 110, 116, 81, 38, 126, -110, 7, 10, 116, 116, 74, 51, 63, -123, 5, 14, 57, 53, 81, 58, 42, -122, 0, 5, 107, 123, 68, ByteCompanionObject.MAX_VALUE, 59, -97, 8, 8, 118, 53, 83, 55, 44, -122, 26, 14, 113}, new byte[]{95, 94, -25, 105, 107, 2, 21, 35}), e);
        }
        System.setProperty(e0.m.h(new byte[]{-84, 80, 107, 68, -7, -107, Base64.padSymbol, -1, -75}, new byte[]{-58, 62, 10, 106, -105, -6, 78, -122}), e0.m.h(new byte[]{-73, 109, 63, 43}, new byte[]{-61, 31, 74, 78, 93, -19, 39, 25}));
        Native.setProtected(true);
        System.setProperty(e0.m.h(new byte[]{-126, 52, -44, -19, -56, -112, 51, 51, -58, 54, -36, -95, -40, -98, 46, 62, -58, 42, -44, -73, -62}, new byte[]{-24, 90, -75, -61, -86, -1, 92, 71}), this.f5816m.getApplicationInfo().nativeLibraryDir);
        System.loadLibrary(e0.m.h(new byte[]{17, 37, 37, 101, 110, 29, 105, 119, 15, 40, 36}, new byte[]{123, 75, 76, 1, 7, 110, 25, 22}));
        System.loadLibrary(e0.m.h(new byte[]{73, 101, 110, -72}, new byte[]{63, 10, 29, -45, 57, -93, -66, -49}));
        try {
            Context context2 = this.f5816m;
            String str = l1.f5708a;
            File filesDir = context2.getFilesDir();
            String str2 = l1.f5708a;
            if (l1.e(new File(filesDir, str2)) == null) {
                l1.f(context2, k1.e, null);
            }
            File fileE = l1.e(new File(this.f5816m.getFilesDir(), str2));
            if (fileE == null) {
                throw new IOException(e0.m.h(new byte[]{108, 48, 86, -1, 89, 78, 71, 113, 95, 51, 5, -3, 10, 3, 70, 122, 78, ByteCompanionObject.MAX_VALUE, 76, -6, 10, 87, 73, 121, 86, 58, 65}, new byte[]{58, 95, 37, -108, 121, 35, 40, 21}));
            }
            this.f5815l = new Model(fileE.getAbsolutePath());
            this.I = fileE.getName();
            r().e(e0.m.h(new byte[]{-80, 13, -56, -62, -100, 64, 50, -123, -68, 6, -43}, new byte[]{-35, 98, -84, -89, -16, 31, 64, -32}), e0.m.h(new byte[]{11, 31, 60, 126, 38}, new byte[]{102, 112, 88, 27, 74, -123, 67, 51}), fileE.getName(), e0.m.h(new byte[]{83, 34, -43, -36, 23, -65, 57, 7, 84, 38}, new byte[]{32, 67, -72, -84, 123, -38, 107, 102}), 16000, e0.m.h(new byte[]{22, 108, -115, -100, -104, -92, 59, 109, 23}, new byte[]{100, 9, -20, -8, -38, -35, 79, 8}), Integer.valueOf(this.M.length), e0.m.h(new byte[]{38, -13, 10, -87, 82, 96, -48, 30, 36, -52, 28}, new byte[]{86, -127, 111, -53, 39, 6, -74, 123}), 5000, e0.m.h(new byte[]{117, 97, 95, 77, 41, 107, 82, -111, 126, 117, 65}, new byte[]{19, 20, 51, 33, 110, 25, 51, -4}), Boolean.FALSE, e0.m.h(new byte[]{6, -78, -91, ByteCompanionObject.MAX_VALUE, -125, 50, -90, 114, 8, -65, -105, ByteCompanionObject.MAX_VALUE, -101, 50, -66}, new byte[]{103, -47, -47, 22, -11, 83, -46, 27}), Boolean.TRUE);
            if (this.f5809i == null) {
                this.f5809i = (AudioManager) this.f5816m.getSystemService(e0.m.h(new byte[]{-9, 106, -60, 83, 70}, new byte[]{-106, 31, -96, 58, 41, -93, 123, -20}));
            }
            if (Build$VERSION.SDK_INT >= 31) {
                f fVar = this.f5817n;
                if (fVar != null) {
                    androidx.core.app.c.u(this.f5809i, fVar);
                }
                f fVar2 = new f(this, 2);
                this.f5817n = fVar2;
                w3.h.b(this.f5809i, this.f5798b, fVar2);
            }
            this.D = new b1(context, e0(), this.f5798b);
        } catch (Exception e6) {
            r().e(e0.m.h(new byte[]{-93, -81, 69, 44, -112}, new byte[]{-58, -35, 55, 67, -30, 110, 10, 58}), e0.m.h(new byte[]{-42, -23, 123, 41, 96}, new byte[]{-91, -99, 26, 78, 5, -28, 126, 90}), e0.m.h(new byte[]{-47, 37, -99, -82, -87, -115, -38, 74, -43, 62}, new byte[]{-68, 74, -7, -53, -59, -46, -77, 36}), e0.m.h(new byte[]{-122, -89, -18, 43}, new byte[]{-14, -34, -98, 78, 90, -104, -39, 36}), e6.getClass().getSimpleName(), e0.m.h(new byte[]{63, 71, -100, -83, 109, -118, -101}, new byte[]{82, 34, -17, -34, 12, -19, -2, 59}), e6.getMessage());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean G(String str) {
        String strB = d1.b(str);
        h0.b.a();
        ArrayList arrayListI = h0.b.f().i(j0.c.e);
        int size = arrayListI.size();
        String str2 = null;
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListI.get(i9);
            i9++;
            o0 o0Var = (o0) obj;
            if (o0Var.c && j0.f.d(o0Var.f5751b) && strB.equals(d1.b(o0Var.f5750a))) {
                String strG = j0.f.g(o0Var.f5751b);
                if (str2 != null && !str2.equals(strG)) {
                    return true;
                }
                str2 = strG;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean H(String str) {
        if (str == null) {
            return false;
        }
        String strC = d1.c(str);
        return f5795n0.equals(strC) || strC.equals(e0.m.h(new byte[]{64, 8, -13, -11, 102, Base64.padSymbol}, new byte[]{35, 105, -99, -106, 3, 81, -39, 74}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean I(String str) {
        if (str != null) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty() && !strTrim.equals(e0.m.h(new byte[]{66, 104}, new byte[]{25, 53, -56, 120, -44, -27, -41, -116})) && !strTrim.equals(e0.m.h(new byte[]{Base64.padSymbol, 86}, new byte[]{70, 43, -60, -48, 4, -73, -39, 125})) && strTrim.length() >= 5 && strTrim.startsWith(e0.m.h(new byte[]{37}, new byte[]{126, 103, 68, -103, -28, 98, 97, -125})) && strTrim.endsWith(e0.m.h(new byte[]{80}, new byte[]{13, 107, 47, 120, -90, -21, -117, 22}))) {
                for (char c : strTrim.toCharArray()) {
                    if (Character.isLetterOrDigit(c) || e0.m.h(new byte[]{-21, 17, -102, 118, -98}, new byte[]{-55, 74, -57, 90, -66, 13, -14, -121}).indexOf(c) != -1) {
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
    public static String J(String str, String str2) {
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
    /* JADX WARN: Code duplicated, block: B:50:0x0128  */
    public static float K(String str, String str2) {
        float f8;
        String[] strArr;
        int i9;
        float fB;
        float size;
        String[] strArrL = L(str);
        String[] strArrL2 = L(str2);
        if (strArrL.length == 0 || strArrL2.length == 0) {
            return 0.0f;
        }
        int length = strArrL2.length;
        float f9 = 0.0f;
        for (int i10 = 0; i10 < length; i10++) {
            String str3 = strArrL2[i10];
            int length2 = strArrL.length;
            int i11 = 0;
            float fMax = 0.0f;
            while (i11 < length2) {
                String str4 = strArrL[i11];
                if (str3.equals(str4)) {
                    strArr = strArrL;
                    i9 = length;
                    fB = 1.0f;
                } else {
                    int iMax = Math.max(str3.length(), str4.length());
                    if (iMax < 4) {
                        strArr = strArrL;
                        i9 = length;
                        fB = 0.0f;
                    } else {
                        int i12 = 0;
                        while (i12 < Math.min(str3.length(), str4.length()) && str3.charAt(i12) == str4.charAt(i12)) {
                            i12++;
                        }
                        int iMin = Math.min(str3.length(), str4.length());
                        if (i12 >= 4) {
                            f8 = 1.0f;
                            if (i12 >= Math.ceil(iMin * 0.6f)) {
                                fB = 0.88f;
                                strArr = strArrL;
                                i9 = length;
                            }
                        } else {
                            f8 = 1.0f;
                        }
                        int[] iArr = new int[str4.length() + 1];
                        int[] iArr2 = new int[str4.length() + 1];
                        for (int i13 = 0; i13 <= str4.length(); i13++) {
                            iArr[i13] = i13;
                        }
                        int i14 = 1;
                        while (i14 <= str3.length()) {
                            iArr2[0] = i14;
                            String[] strArr2 = strArrL;
                            int i15 = 1;
                            while (i15 <= str4.length()) {
                                int i16 = i15 - 1;
                                int i17 = length;
                                int[] iArr3 = iArr;
                                iArr2[i15] = Math.min(Math.min(iArr3[i15] + 1, iArr2[i16] + 1), iArr[i16] + (str3.charAt(i14 + (-1)) == str4.charAt(i16) ? 0 : 1));
                                i15++;
                                length = i17;
                                iArr = iArr3;
                            }
                            int[] iArr4 = iArr;
                            i14++;
                            iArr = iArr2;
                            strArrL = strArr2;
                            iArr2 = iArr4;
                        }
                        strArr = strArrL;
                        i9 = length;
                        float f10 = iMax;
                        fB = f8 - (iArr[str4.length()] / f10);
                        if (fB < 0.72f) {
                            if (iMin >= 5 && iMin / f10 >= 0.65f) {
                                if (str3.length() < 2 || str4.length() < 2) {
                                    size = 0.0f;
                                } else {
                                    ArrayList arrayList = new ArrayList();
                                    ArrayList arrayList2 = new ArrayList();
                                    for (int i18 = 0; i18 <= str3.length() - 2; i18++) {
                                        arrayList.add(str3.substring(i18, i18 + 2));
                                    }
                                    for (int i19 = 0; i19 <= str4.length() - 2; i19++) {
                                        arrayList2.add(str4.substring(i19, i19 + 2));
                                    }
                                    boolean[] zArr = new boolean[arrayList2.size()];
                                    int size2 = arrayList.size();
                                    int i20 = 0;
                                    int i21 = 0;
                                    while (i21 < size2) {
                                        Object obj = arrayList.get(i21);
                                        i21++;
                                        String str5 = (String) obj;
                                        for (int i22 = 0; i22 < arrayList2.size(); i22++) {
                                            if (!zArr[i22] && str5.equals(arrayList2.get(i22))) {
                                                zArr[i22] = true;
                                                i20++;
                                                break;
                                            }
                                        }
                                    }
                                    size = (i20 * 2.0f) / (arrayList2.size() + arrayList.size());
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
                }
                fMax = Math.max(fMax, fB);
                i11++;
                strArrL = strArr;
                length = i9;
            }
            f9 += fMax;
        }
        return f9 / strArrL2.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:128:0x0416  */
    /* JADX WARN: Code duplicated, block: B:131:0x043d  */
    /* JADX WARN: Code duplicated, block: B:134:0x0466  */
    /* JADX WARN: Code duplicated, block: B:143:0x04b7  */
    /* JADX WARN: Code duplicated, block: B:149:0x04f0  */
    public static String[] L(String str) {
        int i9;
        if (str == null) {
            return new String[0];
        }
        String strTrim = Normalizer.normalize(str, Normalizer$Form.NFKC).toLowerCase(Locale.ROOT).replaceAll(e0.m.h(new byte[]{59, 67, 75, 96, 63, 10, -95, 40, 16, 102, 89, 109, 25, 109}, new byte[]{96, 29, 23, 16, 68, 70, -36, 116}), " ").trim();
        if (strTrim.isEmpty()) {
            return new String[0];
        }
        String[] strArrSplit = strTrim.split(e0.m.h(new byte[]{123, -20, 31}, new byte[]{39, -97, 52, -30, 118, -20, 50, 40}));
        ArrayList arrayList = new ArrayList(strArrSplit.length);
        int i10 = 0;
        while (i10 < strArrSplit.length) {
            if (strArrSplit[i10].equals(e0.m.h(new byte[]{42, 4, -1, -114, -121, 18}, new byte[]{-6, -69, 46, 14, 87, -86, -1, -80})) && (i9 = i10 + 1) < strArrSplit.length && strArrSplit[i9].startsWith(e0.m.h(new byte[]{-98, 45, 126, -30, -62, -26, 69, 5}, new byte[]{78, -109, -81, 96, 18, 92, -108, -123}))) {
                arrayList.add(e0.m.h(new byte[]{-70, 29, 68, 18, -41, -58, -99, -56, -70, 25, 88, 16, -37, -43, -109}, new byte[]{-54, 124, 54, 102, -66, -89, -15, -89}));
                i10 = i9;
            } else {
                String strH = strArrSplit[i10];
                if (strH.startsWith(e0.m.h(new byte[]{34, -126, -10, 78, -27, -30, 12, -43, 35, -65, -9, 116, -28, -38}, new byte[]{-14, Base64.padSymbol, 39, -50, 53, 90, -36, 107}))) {
                    strH = e0.m.h(new byte[]{18, ByteCompanionObject.MIN_VALUE, -94, 40, 56, 73, 121, -14, 18, -124, -66, 42, 52, 90, 119}, new byte[]{98, -31, -48, 92, 81, 40, 21, -99});
                } else if (strH.startsWith(e0.m.h(new byte[]{20, -19, 39, 73, 121, 106, 68, 35}, new byte[]{-60, 83, -10, -53, -87, -48, -107, -93})) || strH.equals(e0.m.h(new byte[]{-120, 7, 51, -127}, new byte[]{-25, 119, 86, -17, 6, -8, 12, 110}))) {
                    strH = e0.m.h(new byte[]{116, 93, -81, 69, 124, 18, 5, -13}, new byte[]{27, 45, -54, 43, 10, 119, 119, -111});
                } else if (strH.startsWith(e0.m.h(new byte[]{-9, -78, -124, -93, 75, 107, ByteCompanionObject.MIN_VALUE, -70}, new byte[]{39, 5, 84, 19, -101, -47, 81, 58})) || strH.equals(e0.m.h(new byte[]{96, -90, -33, -90, -127}, new byte[]{3, -54, -80, -43, -28, 59, -62, -107}))) {
                    strH = e0.m.h(new byte[]{95, 18, -113, 32, -90, 104, -60, 19, 94}, new byte[]{60, 126, -32, 83, -61, 30, -95, 97});
                } else if (strH.startsWith(e0.m.h(new byte[]{-15, 120, -85, -44, -124, -4, 80, 116, -16, 77}, new byte[]{33, -54, 123, 110, 84, 71, -127, -6})) || strH.equals(e0.m.h(new byte[]{124, 10, -89, -56, -31, -52}, new byte[]{25, 100, -58, -86, -115, -87, -120, 49})) || strH.equals(e0.m.h(new byte[]{-11, -22}, new byte[]{-102, -124, ByteCompanionObject.MAX_VALUE, -27, -110, -114, -113, 34}))) {
                    strH = e0.m.h(new byte[]{32, 17, -21, -21, -67, 15}, new byte[]{79, ByteCompanionObject.MAX_VALUE, -99, -114, -49, 109, -65, 58});
                } else if (strH.startsWith(e0.m.h(new byte[]{30, -106, 54, -62, -119, -107, -30, 14, 31, -86, 54, -50}, new byte[]{-50, 36, -25, 73, 89, 47, 50, -75})) || strH.equals(e0.m.h(new byte[]{83, -55, ByteCompanionObject.MIN_VALUE, -106, 64, 20, -95}, new byte[]{55, -96, -13, -9, 34, 120, -60, -77})) || strH.equals(e0.m.h(new byte[]{109, -72, 60}, new byte[]{2, -34, 90, -113, -116, 4, -17, -46}))) {
                    strH = e0.m.h(new byte[]{3, -93, 93, -10, -107, -106, 62}, new byte[]{108, -59, 59, ByteCompanionObject.MIN_VALUE, -16, -28, 92, -69});
                } else if (strH.startsWith(e0.m.h(new byte[]{-54, 25, -17, -101, 109, -21, -106, -6, -53, 34, -18, -82}, new byte[]{27, -102, 63, 41, -67, 94, 70, 65})) || strH.startsWith(e0.m.h(new byte[]{77, -59, 51, 52, -114, 43, 28, 124, 77, -54, 50, 6}, new byte[]{-99, 122, -30, -76, 94, -109, -52, -51})) || strH.startsWith(e0.m.h(new byte[]{-26, -60, 15, 4, -17, 36, -71, -83, -25, -6}, new byte[]{54, 123, -33, -70, 63, -106, 104, 38})) || strH.equals(e0.m.h(new byte[]{-52, 84, 15, 52, 99, -52, 55, 35}, new byte[]{-91, 58, 108, 70, 6, -83, 68, 70})) || strH.equals(e0.m.h(new byte[]{-93, -86, 52, 121, -18}, new byte[]{-47, -53, 93, 10, -117, -45, -112, -11}))) {
                    strH = e0.m.h(new byte[]{125, 76, -116, -85, 42, -103, -21, 122, 98, 71, -99, -69}, new byte[]{20, 34, -17, -39, 79, -8, -104, 31});
                } else if (!strH.startsWith(e0.m.h(new byte[]{112, -61, 16, -23, -64, 80, -121, -28, 112, -52, 17, -35}, new byte[]{-95, 64, -64, 85, 16, -27, 87, 89})) && !strH.startsWith(e0.m.h(new byte[]{-116, -87, 19, 41, 40, 40, -40, 67}, new byte[]{93, 42, -61, -104, -8, -104, 8, -15})) && !strH.startsWith(e0.m.h(new byte[]{-14, 39, -21, -113, -24, -82, -113, -62, -14, 47}, new byte[]{34, -104, 59, 49, 56, 19, 95, 122})) && !strH.equals(e0.m.h(new byte[]{123, 78, -82, -11, -55, 73, -51, 94}, new byte[]{31, 43, -51, -121, -84, 40, -66, 59})) && !strH.equals(e0.m.h(new byte[]{-36, 110, 28, 69, 78}, new byte[]{-80, 1, 107, 32, 60, 105, 123, -31}))) {
                    switch (strH.hashCode()) {
                        case -2116005972:
                            if (strH.equals(e0.m.h(new byte[]{-32, -40, -43, -75, 10, -30, -11, 83, -31, -30, -44, -116}, new byte[]{49, 90, 4, 53, -38, 87, 36, -47}))) {
                                strH = e0.m.h(new byte[]{-53}, new byte[]{-8, -51, -30, -10, 112, 102, -104, 82});
                            }
                            break;
                        case -2116005330:
                            if (strH.equals(e0.m.h(new byte[]{-41, -106, -20, -8, -111, -56, -107, 81, -41, -104, -20, -9}, new byte[]{6, 20, Base64.padSymbol, 120, 65, 125, 68, -45}))) {
                                strH = e0.m.h(new byte[]{-53}, new byte[]{-8, -51, -30, -10, 112, 102, -104, 82});
                            }
                            break;
                        case -1683837504:
                            if (strH.equals(e0.m.h(new byte[]{-58, 36, -82, 32, -66, -112, -105, 94, -58, 37, -82, 32, -66, -107, -105, 95, -57, 20}, new byte[]{22, -101, ByteCompanionObject.MAX_VALUE, -96, 110, 40, 71, -17}))) {
                                strH = e0.m.h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case -1683837092:
                            if (strH.equals(e0.m.h(new byte[]{-122, 78, -41, -19, -29, -62, 9, -27, -122, 79, -41, -19, -29, -57, 9, -22, -122, 72}, new byte[]{86, -15, 6, 109, 51, 122, -39, 84}))) {
                                strH = e0.m.h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case -1683836916:
                            if (strH.equals(e0.m.h(new byte[]{125, 121, 73, -117, -46, -106, 12, -126, 125, 120, 73, -117, -46, -109, 13, -80, 124, 72}, new byte[]{-83, -58, -104, 11, 2, 46, -36, 51}))) {
                                strH = e0.m.h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case -1223190035:
                            if (strH.equals(e0.m.h(new byte[]{-1, -53, 52, -74, -11, 109, -79, -53, -1, -60, 53, -117, -11, 111}, new byte[]{47, 118, -27, 53, 37, -42, 97, 126}))) {
                                strH = e0.m.h(new byte[]{11}, new byte[]{59, 19, ByteCompanionObject.MIN_VALUE, 72, -89, -91, -105, 29});
                            }
                            break;
                        case -906279820:
                            if (strH.equals(e0.m.h(new byte[]{-89, -25, 15, 122, -8, 23}, new byte[]{-44, -126, 108, 21, -106, 115, -94, -113}))) {
                                strH = e0.m.h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 110182:
                            if (strH.equals(e0.m.h(new byte[]{-29, 37, -25}, new byte[]{-116, 75, -126, 34, -7, -32, -93, -109}))) {
                                strH = e0.m.h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                        case 115276:
                            if (strH.equals(e0.m.h(new byte[]{-13, 58, -107}, new byte[]{-121, 77, -6, -101, 100, -30, 111, 98}))) {
                                strH = e0.m.h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 1068402:
                            if (strH.equals(e0.m.h(new byte[]{-94, -36, -57, 44, 26, 126}, new byte[]{114, 104, 23, -98, -54, -50, 73, -4}))) {
                                strH = e0.m.h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 1068407:
                            if (strH.equals(e0.m.h(new byte[]{-62, 84, -12, -35, 83, -41}, new byte[]{18, -32, 36, 111, -125, 98, 101, -91}))) {
                                strH = e0.m.h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 1082298:
                            if (strH.equals(e0.m.h(new byte[]{-57, -85, -114, -100, ByteCompanionObject.MIN_VALUE, -106}, new byte[]{22, 41, 95, 28, 80, 46, -113, -118}))) {
                                strH = e0.m.h(new byte[]{-53}, new byte[]{-8, -51, -30, -10, 112, 102, -104, 82});
                            }
                            break;
                        case 3735208:
                            if (strH.equals(e0.m.h(new byte[]{52, -43, 11, -36}, new byte[]{78, -80, 121, -77, -48, -51, -22, 26}))) {
                                strH = e0.m.h(new byte[]{11}, new byte[]{59, 19, ByteCompanionObject.MIN_VALUE, 72, -89, -91, -105, 29});
                            }
                            break;
                        case 33401554:
                            if (strH.equals(e0.m.h(new byte[]{-83, -27, 26, 80, 73, 52, 6, -101}, new byte[]{125, 88, -54, -18, -103, -113, -41, 23}))) {
                                strH = e0.m.h(new byte[]{11}, new byte[]{59, 19, ByteCompanionObject.MIN_VALUE, 72, -89, -91, -105, 29});
                            }
                            break;
                        case 33421627:
                            if (strH.equals(e0.m.h(new byte[]{100, 96, 110, 63, -4, -4, -122, 96}, new byte[]{-76, -34, -66, -117, 44, 68, 86, -35}))) {
                                strH = e0.m.h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                        case 33421769:
                            if (strH.equals(e0.m.h(new byte[]{-53, 103, -5, 71, -19, 123, -4, -96}, new byte[]{27, -39, 43, -13, Base64.padSymbol, -58, 44, 16}))) {
                                strH = e0.m.h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                        case 97440432:
                            if (strH.equals(e0.m.h(new byte[]{23, 51, -71, -15, 105}, new byte[]{113, 90, -53, -126, 29, 104, -31, 112}))) {
                                strH = e0.m.h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                        case 110331239:
                            if (strH.equals(e0.m.h(new byte[]{44, -28, 57, 33, -76}, new byte[]{88, -116, 80, 83, -48, 122, 74, -30}))) {
                                strH = e0.m.h(new byte[]{-53}, new byte[]{-8, -51, -30, -10, 112, 102, -104, 82});
                            }
                            break;
                        case 110339486:
                            if (strH.equals(e0.m.h(new byte[]{45, -85, 119, -118, 68}, new byte[]{89, -61, 5, -17, 33, -86, -115, 9}))) {
                                strH = e0.m.h(new byte[]{-53}, new byte[]{-8, -51, -30, -10, 112, 102, -104, 82});
                            }
                            break;
                        case 1469703191:
                            if (strH.equals(e0.m.h(new byte[]{-90, 95, 124, 50, -71, 38, 107, 1, -90, 94, 124, 50, -71, 36, 107, 5}, new byte[]{118, -32, -83, -78, 105, -98, -69, -80}))) {
                                strH = e0.m.h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case 1469703194:
                            if (strH.equals(e0.m.h(new byte[]{-65, -7, -63, 15, -83, 73, 60, 86, -65, -8, -63, 15, -83, 75, 60, 95}, new byte[]{111, 70, 16, -113, 125, -15, -20, -25}))) {
                                strH = e0.m.h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case 1469703205:
                            if (strH.equals(e0.m.h(new byte[]{79, 16, 27, 43, 60, -18, -127, 97, 79, 17, 27, 43, 60, -20, ByteCompanionObject.MIN_VALUE, 83}, new byte[]{-97, -81, -54, -85, -20, 86, 81, -48}))) {
                                strH = e0.m.h(new byte[]{-92, -48, 123, 54, 81, 30, -83, 88, -92, -47, 123, 54}, new byte[]{116, 111, -86, -74, -127, -90, 125, -23});
                            }
                            break;
                        case 1723007921:
                            if (strH.equals(e0.m.h(new byte[]{68, 83, 31, 72, -5, 116, 47, 75, 68, 81, 31, 69}, new byte[]{-108, -31, -50, -54, 43, -54, -2, -53}))) {
                                strH = e0.m.h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 1723008333:
                            if (strH.equals(e0.m.h(new byte[]{-21, 89, -64, 126, -96, -105, 62, 15, -21, 85, -63, 69}, new byte[]{59, -21, 17, -4, 112, 41, -17, -113}))) {
                                strH = e0.m.h(new byte[]{-23}, new byte[]{-37, 122, 16, 4, -53, -64, -55, -12});
                            }
                            break;
                        case 2083227239:
                            if (strH.equals(e0.m.h(new byte[]{-117, 76, 96, -51, 72, -16, -87, -117, -117, 67, 97, -9}, new byte[]{91, -13, -80, 120, -103, 112, 121, 57}))) {
                                strH = e0.m.h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                        case 2083228054:
                            if (strH.equals(e0.m.h(new byte[]{29, 83, 65, 47, 124, -39, -112, 78, 28, 103, 65, 35}, new byte[]{-51, -20, -111, -102, -83, 89, 64, -4}))) {
                                strH = e0.m.h(new byte[]{-115}, new byte[]{-68, -99, 29, 119, 44, 90, 74, 88});
                            }
                            break;
                    }
                } else {
                    strH = e0.m.h(new byte[]{13, 29, -113, 62, 98, -110, 40, -28, 31, 29, -98, 46}, new byte[]{105, 120, -20, 76, 7, -13, 91, -127});
                }
                arrayList.add(strH);
            }
            i10++;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float P(String str, String str2) {
        String[] strArrL = L(str);
        StringBuilder sb = new StringBuilder();
        if (strArrL.length > 0) {
            sb.append((CharSequence) strArrL[0]);
            for (int i9 = 1; i9 < strArrL.length; i9++) {
                sb.append((CharSequence) " ");
                sb.append((CharSequence) strArrL[i9]);
            }
        }
        String string = sb.toString();
        String[] strArrL2 = L(str2);
        StringBuilder sb2 = new StringBuilder();
        if (strArrL2.length > 0) {
            sb2.append((CharSequence) strArrL2[0]);
            for (int i10 = 1; i10 < strArrL2.length; i10++) {
                sb2.append((CharSequence) " ");
                sb2.append((CharSequence) strArrL2[i10]);
            }
        }
        String string2 = sb2.toString();
        String strW = w(string);
        String strW2 = w(string2);
        float f8 = 0.0f;
        if (!strW.isEmpty() && !strW2.isEmpty()) {
            f8 = 0.0f + (strW.equals(strW2) ? 0.12f : -0.35f);
        }
        boolean zQ = q(string, e0.m.h(new byte[]{107, -116, 120, -81, -113, -101, -91, 112, 106, -80}, new byte[]{-70, 13, -88, 23, 95, 47, 117, -59}), e0.m.h(new byte[]{-44, -62, -74, 122}, new byte[]{-89, -89, -41, 14, -74, -79, -89, 50}));
        boolean zQ2 = q(string2, e0.m.h(new byte[]{121, -103, -26, -41, ByteCompanionObject.MIN_VALUE, 22, 53, -15, 120, -91}, new byte[]{-88, 24, 54, 111, 80, -94, -27, 68}), e0.m.h(new byte[]{85, 87, -71, -37}, new byte[]{38, 50, -40, -81, -63, 94, 70, -2}));
        boolean zQ3 = q(string, e0.m.h(new byte[]{56, 68, -89, -90, -40, -117}, new byte[]{-23, -60, 118, 37, 8, 48, 6, 120}), e0.m.h(new byte[]{62, -97, -112, 54, -28}, new byte[]{73, -9, -11, 83, -120, -78, 57, 51}));
        boolean zQ4 = q(string2, e0.m.h(new byte[]{111, 3, 87, -18, 87, -7}, new byte[]{-66, -125, -122, 109, -121, 66, -56, 109}), e0.m.h(new byte[]{-107, 43, 25, -119, -55}, new byte[]{-30, 67, 124, -20, -91, 95, 124, 89}));
        if (zQ) {
            f8 += zQ2 ? 0.08f : -0.16f;
        }
        if (zQ3) {
            f8 += zQ4 ? 0.08f : -0.16f;
        }
        boolean zQ5 = q(string, e0.m.h(new byte[]{16, 90, 62, -111, 21, -106, -104, -13, 17, 106, 62, -102, 21, -103}, new byte[]{-64, -24, -18, 47, -59, 34, 72, 75}), e0.m.h(new byte[]{-67, 28, -78, 105, -86, 16}, new byte[]{-39, 110, -37, 31, -49, 98, 87, 113}));
        boolean zQ6 = q(string2, e0.m.h(new byte[]{91, 28, -75, -127, 86, -108, 82, -31, 90, 44, -75, -118, 86, -101}, new byte[]{-117, -82, 101, 63, -122, 32, -126, 89}), e0.m.h(new byte[]{44, -74, -32, 57, 110, -124}, new byte[]{72, -60, -119, 79, 11, -10, -98, -54}));
        boolean zQ7 = q(string, e0.m.h(new byte[]{12, -73, -22, -36, -22, -108, 110, 94, 12, -72, -22, -38, -21, -83, 110, 95}, new byte[]{-36, 8, 58, 108, 59, 21, -65, -33}), e0.m.h(new byte[]{97, -59, -106, 113, 98, 63, -95, 79, 99}, new byte[]{17, -92, -27, 2, 7, 81, -58, 42}));
        boolean zQ8 = q(string2, e0.m.h(new byte[]{-122, -84, 42, 123, 96, 101, 59, 111, -122, -93, 42, 125, 97, 92, 59, 110}, new byte[]{86, 19, -6, -53, -79, -28, -22, -18}), e0.m.h(new byte[]{28, -22, -35, -101, 77, 7, -105, 70, 30}, new byte[]{108, -117, -82, -24, 40, 105, -16, 35}));
        if (zQ5) {
            f8 += zQ6 ? 0.08f : -0.16f;
        }
        if (zQ7) {
            f8 += zQ8 ? 0.08f : -0.16f;
        }
        String strZ = z(string);
        String strZ2 = z(string2);
        if (strZ.isEmpty() || strZ2.isEmpty()) {
            return f8;
        }
        return f8 + (strZ.equals(strZ2) ? 0.08f : -0.1f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(x xVar, String str) {
        if (!xVar.T || xVar.f5818o) {
            return;
        }
        xVar.s().b(System.currentTimeMillis(), "", e0.m.h(new byte[]{-92, -8, -98, -54, 82}, new byte[]{-44, -112, -15, -92, 55, 95, 32, -55}));
        xVar.U = xVar.s().e();
        if (str == null) {
            str = "";
        }
        xVar.f5824x = str;
        xVar.r().e(e0.m.h(new byte[]{96, 89, 15, -20, 22, -64, -77, 124, 98, 65, 7, -15, 17}, new byte[]{3, 53, 110, -98, ByteCompanionObject.MAX_VALUE, -90, -38, 31}), e0.m.h(new byte[]{111, -103, -97, 26, 79}, new byte[]{29, -10, -22, 110, 42, 113, 31, -54}), e0.m.h(new byte[]{-92, -25, -59, 54, 31}, new byte[]{-44, -113, -86, 88, 122, -25, -106, 108}), e0.m.h(new byte[]{99, -97, 77, 96, -123, -48}, new byte[]{19, -19, 34, 13, -11, -92, 11, 40}), xVar.f5824x, e0.m.h(new byte[]{3, -107, 2, 74, 81, -39, -127, -2, 12, -97, 30, 74, 121, -40}, new byte[]{98, -5, 113, Base64.padSymbol, 52, -85, -42, -105}), Long.valueOf(Math.max(0L, xVar.U - System.currentTimeMillis())));
        xVar.N(xVar.f5824x);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean g() {
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
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-22}, new byte[]{-38, -62, -74, -68, -60, -108, 18, 112}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float[] j(float[][] fArr, long[] jArr, int i9, int i10) {
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
    public static boolean q(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double u(long j9) {
        if (j9 == 0) {
            return 0.0d;
        }
        return Math.max(0L, System.nanoTime() - j9) / 1000000.0d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String w(String str) {
        for (String str2 : str.split(e0.m.h(new byte[]{-87, 67, 112}, new byte[]{-11, 48, 91, 76, 70, -21, 62, -82}))) {
            if (str2.equals(e0.m.h(new byte[]{16, 89, 58, -40, 80, -97, 91, 39}, new byte[]{ByteCompanionObject.MAX_VALUE, 41, 95, -74, 38, -6, 41, 69})) || str2.equals(e0.m.h(new byte[]{-95, -77, 62, 36, 56, -104, 78, 89, -95, -73, 34, 38, 52, -117, 64}, new byte[]{-47, -46, 76, 80, 81, -7, 34, 54})) || str2.equals(e0.m.h(new byte[]{123, -65, 14, 3, -122, 92, -105, 124, 122}, new byte[]{24, -45, 97, 112, -29, 42, -14, 14})) || str2.equals(e0.m.h(new byte[]{95, 8, 27, 101, -26, 76}, new byte[]{48, 102, 109, 0, -108, 46, 31, 88})) || str2.equals(e0.m.h(new byte[]{28, 60, -12, -2, 54, 13, 21}, new byte[]{115, 90, -110, -120, 83, ByteCompanionObject.MAX_VALUE, 119, -47})) || str2.equals(e0.m.h(new byte[]{64, -126, 75, 5, 11, 117, -78, -116, 95, -119, 90, 21}, new byte[]{41, -20, 40, 119, 110, 20, -63, -23})) || str2.equals(e0.m.h(new byte[]{-35, 48, 124, -91, -45, -69, 44, -122, -49, 48, 109, -75}, new byte[]{-71, 85, 31, -41, -74, -38, 95, -29}))) {
                return str2;
            }
        }
        return "";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String z(String str) {
        for (String str2 : str.split(e0.m.h(new byte[]{105, -77, 22}, new byte[]{53, -64, Base64.padSymbol, -17, -21, 94, 29, 7}))) {
            if (str2.equals(e0.m.h(new byte[]{38}, new byte[]{22, 8, -105, -94, -64, 45, -18, 5})) || str2.equals(e0.m.h(new byte[]{-82}, new byte[]{-97, 126, -108, -12, -12, 114, 35, -54})) || str2.equals(e0.m.h(new byte[]{70}, new byte[]{116, -9, -46, -71, -20, -11, 8, -70})) || str2.equals(e0.m.h(new byte[]{16}, new byte[]{35, 14, 95, -45, 106, Base64.padSymbol, 99, 62}))) {
                return str2;
            }
        }
        return "";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:20:0x006b  */
    /* JADX WARN: Code duplicated, block: B:21:0x006d  */
    /* JADX WARN: Code duplicated, block: B:47:0x008d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0033 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x009b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x001d A[SYNTHETIC] */
    public final j0.e A(String str, boolean z8) {
        String strG;
        String strB = d1.b(str);
        h0.b.a();
        ArrayList arrayListI = h0.b.f().i(j0.c.e);
        int size = arrayListI.size();
        String str2 = "";
        int length = -1;
        j0.e eVar = null;
        boolean z9 = false;
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListI.get(i9);
            i9++;
            o0 o0Var = (o0) obj;
            if (o0Var.c && j0.f.d(o0Var.f5751b)) {
                String strB2 = d1.b(o0Var.f5750a);
                if (!strB2.isEmpty()) {
                    boolean zEquals = strB.equals(strB2);
                    if (zEquals) {
                        if (zEquals) {
                            if (a.a.f(j0.f.g(o0Var.f5751b)) != null) {
                                if (this.f5823v.f5610b.containsKey(j0.f.g(o0Var.f5751b))) {
                                }
                            }
                        }
                        strG = j0.f.g(o0Var.f5751b);
                        if (strB2.length() > length) {
                            j0.e eVar2 = o0Var.f5751b;
                            length = strB2.length();
                            eVar = eVar2;
                            z9 = false;
                            str2 = strG;
                        } else if (strB2.length() != length && !strG.equals(str2)) {
                            z9 = true;
                        }
                    } else if (!z8 && !o0Var.d) {
                        if (ai.onnxruntime.a.m(" ", strB, " ").contains(" " + strB2 + " ")) {
                            if (zEquals) {
                                if (a.a.f(j0.f.g(o0Var.f5751b)) != null) {
                                    if (this.f5823v.f5610b.containsKey(j0.f.g(o0Var.f5751b))) {
                                    }
                                }
                            }
                            strG = j0.f.g(o0Var.f5751b);
                            if (strB2.length() > length) {
                                j0.e eVar3 = o0Var.f5751b;
                                length = strB2.length();
                                eVar = eVar3;
                                z9 = false;
                                str2 = strG;
                            } else if (strB2.length() != length) {
                            }
                        }
                    }
                }
            }
        }
        if (z9) {
            return null;
        }
        return eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:76:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:79:0x01f3  */
    public final u B(int i9, String str, long j9) {
        boolean z8;
        int i10;
        String strH;
        String strH2;
        boolean zA;
        u uVar;
        x xVar = this;
        String str2 = str;
        xVar.f5826z = e0.m.h(new byte[]{112, -118, -86, -6, 118, -59, 106, 32, 106, -116, -105, -11, 124, -9, 121, 32, 112, -127, -100, -3, 120, -36, ByteCompanionObject.MAX_VALUE}, new byte[]{30, -27, -11, -103, 25, -88, 26, 65});
        v vVarY = xVar.Y(str2);
        Iterator it = vVarY.f5775b.iterator();
        while (it.hasNext()) {
            if (vVarY.a((u) it.next())) {
                u uVar2 = new u(str2, null, "");
                uVar2.f5769f = xVar.f5821s.a(e0.m.h(new byte[]{-57, 94, 103, -71, -15, 105, 82}, new byte[]{-74, 43, 2, -53, -120, 83, 114, 36}) + str2);
                ArrayList arrayList = new ArrayList();
                arrayList.add(uVar2);
                xVar.W(arrayList, 0, 1);
                Iterator it2 = vVarY.f5775b.iterator();
                u uVar3 = null;
                int i11 = 0;
                float f8 = -1.0f;
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    u uVar4 = (u) it2.next();
                    if (vVarY.a(uVar4)) {
                        float[] fArr = uVar4.f5770g;
                        int length = fArr.length;
                        float[] fArr2 = uVar2.f5770g;
                        if (length == fArr2.length) {
                            i11++;
                            float f9 = 0.0f;
                            for (int i12 = 0; i12 < fArr2.length; i12++) {
                                f9 += fArr2[i12] * fArr[i12];
                            }
                            float fK = (K(str2, uVar4.f5767a) * 0.08f) + f9 + (vVarY.f5777g ? 0.0f : P(str2, uVar4.f5767a));
                            if (fK > f8) {
                                f8 = fK;
                                uVar3 = uVar4;
                            }
                        }
                    }
                }
                String strG = uVar3 == null ? "" : j0.f.g(uVar3.f5768b);
                float f10 = -1.0f;
                u uVar5 = null;
                for (u uVar6 : vVarY.f5775b) {
                    if (vVarY.a(uVar6) && uVar6.f5770g.length == uVar2.f5770g.length && !strG.equals(j0.f.g(uVar6.f5768b))) {
                        float[] fArr3 = uVar2.f5770g;
                        float[] fArr4 = uVar6.f5770g;
                        uVar = uVar2;
                        float f11 = 0.0f;
                        for (int i13 = 0; i13 < fArr3.length; i13++) {
                            f11 = (fArr3[i13] * fArr4[i13]) + f11;
                        }
                        float fK2 = (K(str2, uVar6.f5767a) * 0.08f) + f11 + (vVarY.f5777g ? 0.0f : P(str2, uVar6.f5767a));
                        if (fK2 > f10) {
                            f10 = fK2;
                            uVar5 = uVar6;
                        }
                    } else {
                        uVar = uVar2;
                    }
                    uVar2 = uVar;
                }
                float f12 = f8 - f10;
                String str3 = xVar.f5796a;
                StringBuilder sb = new StringBuilder();
                com.google.protobuf.q.u(new byte[]{-37, 117, 121, 9, 57, 33, -126, -32, -88, 97, 97, 13, 37, 44, -42, -92}, new byte[]{-120, 16, 20, 104, 87, 85, -21, -125}, sb, str2);
                sb.append(e0.m.h(new byte[]{60, 11, 117, -12, 108, 85, -91, 90, 60}, new byte[]{27, 39, 85, -106, 9, 38, -47, 103}));
                sb.append(uVar3 == null ? "" : uVar3.f5767a);
                sb.append(e0.m.h(new byte[]{31, 4, -122, 78, -1, 70, -86, -14, 5}, new byte[]{56, 40, -90, Base64.padSymbol, -100, 41, -40, -105}));
                sb.append(f8);
                sb.append(e0.m.h(new byte[]{-49, -66, -22, 18, -103, -46, -110, -42, ByteCompanionObject.MIN_VALUE, -22, -20, 9, -97, -6, -127, -27, -124, -9, -21, 91}, new byte[]{-29, -98, -123, 102, -15, -73, -32, -105}));
                sb.append(f12);
                Log.d(str3, sb.toString());
                if (uVar3 == null) {
                    z8 = false;
                } else {
                    if (vVarY.f5777g) {
                        zA = vVarY.a(uVar3);
                    } else {
                        a5.h hVar = vVarY.e;
                        String strG2 = j0.f.g(uVar3.f5768b);
                        boolean z9 = uVar3.d;
                        Pattern pattern = j1.f5664a;
                        if (hVar.i()) {
                            zA = false;
                        } else {
                            z0 z0Var = (z0) hVar.c;
                            if (!z9 ? z0Var != z0.c : !(z0Var == z0.f5832b && strG2.equals((String) hVar.d))) {
                                zA = false;
                            } else {
                                zA = true;
                            }
                        }
                    }
                    if (zA) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                }
                boolean z10 = !vVarY.f5777g || f10 > -1.0f;
                boolean z11 = z8 && z10 && f8 >= 0.88f && f12 >= 0.035f;
                if (z11) {
                    i10 = 8;
                    strH = e0.m.h(new byte[]{-75, -34, 78, 88}, new byte[]{-37, -79, 32, Base64.padSymbol, 57, -7, -35, -127});
                } else {
                    i10 = 8;
                    if (!z8) {
                        strH = e0.m.h(new byte[]{-27, -43, -19, 14, -43, 46, -61, 69, -25, -57}, new byte[]{-107, -76, -97, 111, -72, 75, -73, 32});
                    } else if (z10) {
                        strH = f8 < 0.88f ? e0.m.h(new byte[]{-64, 26, -63, 18, -50, 36, 84, 51, -55}, new byte[]{-84, 117, -74, 77, -67, 71, 59, 65}) : e0.m.h(new byte[]{-14, 54, -119, -34, -123, 73, -41, 25, -32, 4, -104, -44, -115, 78, -35}, new byte[]{-109, 91, -21, -73, -30, 60, -72, 108});
                    } else {
                        strH = e0.m.h(new byte[]{107, -51, -57, 19, 66, -91, 26, 63, 113, -53, -9, 18, 109, -95, 4, 42, 96, -48, -10, 29, 70, -87, 30, 59}, new byte[]{5, -94, -104, 124, 50, -64, 104, 94});
                    }
                }
                StringBuilder sbU = ai.onnxruntime.a.u(strG);
                byte[] bArr = new byte[i10];
                // fill-array-data instruction
                bArr[0] = -45;
                bArr[1] = 12;
                bArr[2] = -17;
                bArr[3] = 26;
                bArr[4] = 43;
                bArr[5] = 117;
                bArr[6] = -113;
                bArr[7] = 88;
                byte[] bArr2 = new byte[i10];
                // fill-array-data instruction
                bArr2[0] = -23;
                bArr2[1] = 44;
                bArr2[2] = -100;
                bArr2[3] = 121;
                bArr2[4] = 68;
                bArr2[5] = 7;
                bArr2[6] = -22;
                bArr2[7] = 101;
                sbU.append(e0.m.h(bArr, bArr2));
                sbU.append(f8);
                byte[] bArr3 = new byte[i10];
                // fill-array-data instruction
                bArr3[0] = 37;
                bArr3[1] = -28;
                bArr3[2] = 62;
                bArr3[3] = -123;
                bArr3[4] = -66;
                bArr3[5] = 34;
                bArr3[6] = -59;
                bArr3[7] = 95;
                sbU.append(e0.m.h(new byte[]{9, -60, 83, -28, -52, 69, -84, 49, 24}, bArr3));
                sbU.append(f12);
                byte[] bArr4 = new byte[i10];
                // fill-array-data instruction
                bArr4[0] = 43;
                bArr4[1] = -72;
                bArr4[2] = -109;
                bArr4[3] = 87;
                bArr4[4] = 26;
                bArr4[5] = -46;
                bArr4[6] = 35;
                bArr4[7] = 93;
                sbU.append(e0.m.h(new byte[]{7, -104, -14, 59, 118, -67, 84, 56, 79, -123}, bArr4));
                sbU.append(z8);
                byte[] bArr5 = new byte[i10];
                // fill-array-data instruction
                bArr5[0] = 113;
                bArr5[1] = 43;
                bArr5[2] = 103;
                bArr5[3] = 74;
                bArr5[4] = 73;
                bArr5[5] = -63;
                bArr5[6] = 53;
                bArr5[7] = -26;
                sbU.append(e0.m.h(new byte[]{93, 11, 6, 41, 42, -92, 69, -110, 20, 79, 90}, bArr5));
                sbU.append(z11);
                byte[] bArr6 = new byte[i10];
                // fill-array-data instruction
                bArr6[0] = -82;
                bArr6[1] = -67;
                bArr6[2] = 110;
                bArr6[3] = -49;
                bArr6[4] = -118;
                bArr6[5] = -59;
                bArr6[6] = 90;
                bArr6[7] = -71;
                com.google.protobuf.q.u(new byte[]{-126, -99, 28, -86, -32, -96, 57, -51, -57, -46, 0, -14}, bArr6, sbU, strH);
                byte[] bArr7 = new byte[i10];
                // fill-array-data instruction
                bArr7[0] = 24;
                bArr7[1] = 117;
                bArr7[2] = -96;
                bArr7[3] = 112;
                bArr7[4] = 32;
                bArr7[5] = -20;
                bArr7[6] = 27;
                bArr7[7] = 23;
                byte[] bArr8 = new byte[i10];
                // fill-array-data instruction
                bArr8[0] = 52;
                bArr8[1] = 85;
                bArr8[2] = -46;
                bArr8[3] = 31;
                bArr8[4] = 85;
                bArr8[5] = -104;
                bArr8[6] = 126;
                bArr8[7] = 42;
                sbU.append(e0.m.h(bArr7, bArr8));
                if (vVarY.f5777g) {
                    byte[] bArr9 = new byte[i10];
                    // fill-array-data instruction
                    bArr9[0] = -14;
                    bArr9[1] = 4;
                    bArr9[2] = 111;
                    bArr9[3] = -57;
                    bArr9[4] = -46;
                    bArr9[5] = -3;
                    bArr9[6] = 74;
                    bArr9[7] = 97;
                    strH2 = e0.m.h(new byte[]{-122, 125, 31, -94, -74, -94, 56, 4, -111, 107, 25, -94, -96, -124}, bArr9);
                } else {
                    byte[] bArr10 = new byte[i10];
                    // fill-array-data instruction
                    bArr10[0] = 6;
                    bArr10[1] = -2;
                    bArr10[2] = 109;
                    bArr10[3] = -64;
                    bArr10[4] = 88;
                    bArr10[5] = 115;
                    bArr10[6] = 32;
                    bArr10[7] = -56;
                    strH2 = e0.m.h(new byte[]{101, -97, 25, -95, 52, 28, 71}, bArr10);
                }
                sbU.append(strH2);
                byte[] bArr11 = new byte[i10];
                // fill-array-data instruction
                bArr11[0] = -103;
                bArr11[1] = 109;
                bArr11[2] = 30;
                bArr11[3] = 118;
                bArr11[4] = -26;
                bArr11[5] = -82;
                bArr11[6] = 82;
                bArr11[7] = -3;
                sbU.append(e0.m.h(new byte[]{-75, 77, 123, 0, -113, -54, 55, -109, -6, 8, 35}, bArr11));
                sbU.append((String) vVarY.e.e);
                xVar.f5826z = sbU.toString();
                Log.d(xVar.f5796a, e0.m.h(new byte[]{-96, 46, -52, 2, -118, -122, 18, -26, -45, 47, -60, 0, -115, -127, 18, -22, -99, 113, -127}, new byte[]{-13, 75, -95, 99, -28, -14, 123, -123}) + xVar.f5826z);
                u uVar7 = uVar3;
                boolean z12 = z11;
                xVar.r().e(e0.m.h(new byte[]{92, -106, -28, 94, -126, 59, -35, 58, 112, -127, -24, 81, -121}, new byte[]{47, -13, -119, 63, -20, 79, -76, 89}), e0.m.h(new byte[]{95, 79, 21, -121, -106, -5, -56, -102, 95, 83, 9, -102, -101}, new byte[]{44, 32, 96, -11, -11, -98, -101, -1}), Long.valueOf(j9), e0.m.h(new byte[]{-11, -15, 14, -97, 31, -62, 22, -64, -3, -6}, new byte[]{-110, -108, 96, -6, 109, -93, 98, -87}), Integer.valueOf(i9), e0.m.h(new byte[]{77, 83, 94, -9, -13}, new byte[]{60, 38, 59, -123, -118, -10, 97, -107}), str, e0.m.h(new byte[]{-30, 100, 11}, new byte[]{-119, 1, 114, 0, -91, -105, 19, -55}), strG, e0.m.h(new byte[]{-125, 123, 113, -24, 88, 118}, new byte[]{-13, 19, 3, -119, 43, 19, 84, 94}), uVar3 == null ? "" : uVar3.f5767a, e0.m.h(new byte[]{-2, -7, 88, -87, -110}, new byte[]{-115, -102, 55, -37, -9, 107, 23, -110}), Float.valueOf(f8), e0.m.h(new byte[]{110, -10, -9, -17, 48, 8, 104, 33, 79, -32, -10, -13, 48}, new byte[]{28, -125, -103, -127, 85, 122, Base64.padSymbol, 81}), Float.valueOf(f10), e0.m.h(new byte[]{116, 46, -33, 25, 85, -113}, new byte[]{25, 79, -83, 126, 60, -31, -64, 54}), Float.valueOf(f12), e0.m.h(new byte[]{105, 95, -35, -117, -82, -80, 106, 3, 80, 79, -54}, new byte[]{27, 42, -77, -27, -53, -62, 63, 115}), uVar5 == null ? "" : j0.f.g(uVar5.f5768b), e0.m.h(new byte[]{-71, 35, -122, 112, -61, 85, -66, 82, -101, 62, -102, ByteCompanionObject.MAX_VALUE, -43, 66}, new byte[]{-53, 86, -24, 30, -90, 39, -21, 34}), uVar5 == null ? "" : uVar5.f5767a, e0.m.h(new byte[]{34, -23, -118, 51, 34, ByteCompanionObject.MIN_VALUE, 20}, new byte[]{67, -123, -26, 92, 85, -27, 112, 125}), Boolean.valueOf(z8), e0.m.h(new byte[]{-115, -124, 3, 10, -110, -48, -89, 98}, new byte[]{-20, -25, 96, 111, -30, -92, -62, 6}), Boolean.valueOf(z11), e0.m.h(new byte[]{55, -122, 25, 97, 57, 56, 115, 17, 43}, new byte[]{69, -29, 115, 4, 90, 76, 26, 126}), strH, e0.m.h(new byte[]{115, 52, 103, -37, 41}, new byte[]{1, 91, 18, -81, 76, 53, -45, -48}), vVarY.f5777g ? e0.m.h(new byte[]{66, -87, 52, Base64.padSymbol, 16, 87, -119, -28, 85, -65, 50, Base64.padSymbol, 6, 113}, new byte[]{54, -48, 68, 88, 116, 8, -5, -127}) : e0.m.h(new byte[]{-114, 106, -91, -3, -37, -52, -39}, new byte[]{-19, 11, -47, -100, -73, -93, -66, 25}), e0.m.h(new byte[]{-33, 70, -23, 77, 119, -126, 79, -127}, new byte[]{-70, 48, ByteCompanionObject.MIN_VALUE, 41, 18, -20, 44, -28}), (String) vVarY.e.e, e0.m.h(new byte[]{74, -23, -42, 23, -70, 70, -43, 82}, new byte[]{41, -122, -69, 103, -37, 52, -80, 54}), Integer.valueOf(i11));
                if (z12) {
                    return uVar7;
                }
                return null;
            }
            xVar = this;
            str2 = str;
        }
        this.f5826z = e0.m.h(new byte[]{-114, 121, -63, 124, 21, -65, -40, 47, -108, ByteCompanionObject.MAX_VALUE, -4, 115, 31, -115, -53, 47, -114, 114, -9, 123, 27, -90, -51, 116, -64}, new byte[]{-32, 22, -98, 31, 122, -46, -88, 78}) + ((String) vVarY.e.e) + e0.m.h(new byte[]{-86, -91, -127, -71, -64, -114, -116, 111}, new byte[]{-122, -123, -14, -43, -81, -6, -1, 82}) + ((String) vVarY.f5776f.d) + e0.m.h(new byte[]{51, 38, -56, 23, -44, 45, 5, 68, 107, 59}, new byte[]{31, 6, -70, 114, -91, 88, 96, 55}) + vVarY.f5778h;
        r().e(e0.m.h(new byte[]{85, 40, -125, -82, -39, -18, -126, -34, 121, 63, -113, -95, -36}, new byte[]{38, 77, -18, -49, -73, -102, -21, -67}), e0.m.h(new byte[]{-113, -23, -54, -97, 28, -55, 82, -19, -113, -11, -42, -126, 17}, new byte[]{-4, -122, -65, -19, ByteCompanionObject.MAX_VALUE, -84, 1, -120}), Long.valueOf(j9), e0.m.h(new byte[]{-38, 44, 39, 42, -8, -124, -109, 124, -46, 39}, new byte[]{-67, 73, 73, 79, -118, -27, -25, 21}), Integer.valueOf(i9), e0.m.h(new byte[]{89, 65, 116, -8, 75}, new byte[]{40, 52, 17, -118, 50, 81, -97, 54}), str, e0.m.h(new byte[]{-84, -49, -45, 68, -5, -8, 31, -114}, new byte[]{-51, -84, -80, 33, -117, -116, 122, -22}), Boolean.FALSE, e0.m.h(new byte[]{-9, -6, 9, -96, -113, 74}, new byte[]{-123, -97, 104, -45, -32, 36, 103, -49}), e0.m.h(new byte[]{101, -20, -79, -90, -56, -47, -114, 52, ByteCompanionObject.MAX_VALUE, -22, -116, -87, -62, -29, -99, 52, 101, -25, -121, -95, -58, -56, -101}, new byte[]{11, -125, -18, -59, -89, -68, -2, 85}), e0.m.h(new byte[]{121, 31, ByteCompanionObject.MAX_VALUE, 66, 107, 77, -44, 33}, new byte[]{28, 105, 22, 38, 14, 35, -73, 68}), (String) vVarY.e.e, e0.m.h(new byte[]{-57, ByteCompanionObject.MAX_VALUE, -82, 31, -107}, new byte[]{-76, 19, -63, 107, -26, -125, 110, 98}), (String) vVarY.f5776f.d);
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void C(String str) {
        this.F = str;
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized byte[] D() {
        int i9 = this.R;
        if (i9 <= 0) {
            return null;
        }
        byte[] bArr = new byte[i9];
        int i10 = this.S - i9;
        byte[] bArr2 = this.N;
        int length = (i10 + bArr2.length) % bArr2.length;
        int iMin = Math.min(i9, bArr2.length - length);
        System.arraycopy(this.N, length, bArr, 0, iMin);
        int i11 = this.R;
        if (iMin < i11) {
            System.arraycopy(this.N, 0, bArr, iMin, i11 - iMin);
        }
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean E(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        h0.b.a();
        ArrayList arrayListE = h0.b.f().e();
        int size = arrayListE.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListE.get(i9);
            i9++;
            j0.e eVar = (j0.e) obj;
            if (j0.f.d(eVar)) {
                linkedHashMap.put(j0.f.g(eVar), eVar);
            }
        }
        Pattern pattern = j1.f5664a;
        a5.h hVarP = a.a.p(d1.a(str), linkedHashMap.keySet(), this.f5823v.f5610b);
        r().e(e0.m.h(new byte[]{93, -24, 92, -72, 49, -11, -64, 41, 90, -25, 68, -92, 44, -24, -20}, new byte[]{52, -122, 40, -35, 95, -127, -97, 72}), e0.m.h(new byte[]{-13, -4, 66}, new byte[]{-127, -99, 53, 116, -35, 103, -43, 85}), str, e0.m.h(new byte[]{50, 10, 120, 77, 30}, new byte[]{67, ByteCompanionObject.MAX_VALUE, 29, 63, 103, -36, 83, 76}), d1.a(str), e0.m.h(new byte[]{32, 122, -42, 115, -46, 79}, new byte[]{83, 14, -73, 7, -89, 60, 123, -117}), ((z0) hVarP.c).name(), e0.m.h(new byte[]{91, 124, -12, -107, 39, -98}, new byte[]{41, 25, -107, -26, 72, -16, -107, -117}), (String) hVarP.e, e0.m.h(new byte[]{-79, -112, -92}, new byte[]{-38, -11, -35, 58, -114, -27, -121, ByteCompanionObject.MAX_VALUE}), (String) hVarP.d, e0.m.h(new byte[]{-88, -115, -21, 11, 5, 120, -36, 89, -84, -70, -23, 22, 0, 118, -48, 70}, new byte[]{-55, -5, -118, 98, 105, 25, -66, 53}), Integer.valueOf(linkedHashMap.size()), e0.m.h(new byte[]{-48, -114, -108, -17, ByteCompanionObject.MAX_VALUE, 47, -13, -28}, new byte[]{-72, -17, -26, -117, 41, 74, -121, -117}), Boolean.valueOf(hVarP.i()));
        if (((String) hVarP.e).equals(e0.m.h(new byte[]{48, 9, -71, 52, 68, 29, 26, 114, 50, 16, -81, 53, 76, 7, 20, 66, 51}, new byte[]{93, 96, -54, 71, 45, 115, 125, 45})) || ((String) hVarP.e).matches(e0.m.h(new byte[]{-115, -38, -1, -6, 95, -21, 102, -73, -46, -103, -95, -30, 89, -9, 126, -84, -41, -112, -85, -26, 74, -30, 110, -73, -45, ByteCompanionObject.MIN_VALUE, -89, -30, 78, -84, 56, -10, -113}, new byte[]{-91, -27, -59, -115, 54, -123, 2, -40}))) {
            HashSet hashSet = new HashSet();
            for (String str2 : d1.a(str).split(e0.m.h(new byte[]{125, 85, 49}, new byte[]{33, 38, 26, -16, 21, -44, 84, -70}))) {
                if (j1.f5667g.matcher(str2).matches() || j1.g(str2)) {
                    hashSet.add(str2);
                }
            }
            if (hashSet.size() > 1) {
                i(str, e0.m.h(new byte[]{-77, -99, -44, 82, 6, 95, -30, 112, -71, -100, -35, 107, 5, 70, -28, 118, -79, -122, -45, 91, 4}, new byte[]{-48, -14, -70, 52, 106, 54, -127, 4}));
                return true;
            }
        }
        if (!hVarP.i()) {
            if (G(str)) {
                Log.w(this.f5796a, e0.m.h(new byte[]{22, -30, -108, 6, 18, -126, 105, 121, 60, -29, -99, 64, 27, -109, 107, 110, 33, -83, -113, 19, 27, -103, 42, 125, Base64.padSymbol, -1, -101, 19, 27, -104, 49, 45, 39, -24, -100, 21, 13, -126, 100, 106, 117, -7, -107, 64, 25, -98, 111, 126, 38}, new byte[]{85, -115, -6, 96, 126, -21, 10, 13}));
                i(str, e0.m.h(new byte[]{106, 81, -65, -117, -42, -123, -43, -60, 104, 94, -73, -110, -34, -118, -2}, new byte[]{7, 48, -47, -2, -73, -23, -118, -89}));
                return true;
            }
            j0.e eVarA = A(str, true);
            if (eVarA != null) {
                c0(e0.m.h(new byte[]{47, -25, -115, -118, 113, -124, -21, -35, 58, -25, ByteCompanionObject.MIN_VALUE, -117}, new byte[]{66, -122, -29, -1, 16, -24, -76, -72}), j0.f.g(eVarA), "", e0.m.h(new byte[]{-2, 116, 89, -34, 63, -61, 4, 46, -17, 110, 82, -53}, new byte[]{-117, 7, 60, -84, 96, -95, 109, 64}));
                Log.i(this.f5796a, e0.m.h(new byte[]{11, -62, -28, -9, 79, -69, -88, -3, 32, -49, -28, -8, 27, -8, -86, -15, 35, -37, -21, -16, 27, -10, -92, -24, 45, -46, -32, -16, 1, -69}, new byte[]{78, -70, -123, -108, 59, -101, -59, -100}) + j0.f.g(eVarA));
                v(eVarA, -1);
                return true;
            }
            u uVarY = y(str);
            if (uVarY != null) {
                c0(e0.m.h(new byte[]{81, -78, 91, 24, 88, 9, -121, 94, 87, -85, 78, 26, 64}, new byte[]{50, -45, 47, 121, 52, 102, -32, 1}), j0.f.g(uVarY.f5768b), uVarY.f5767a, e0.m.h(new byte[]{114, 103, 114, 126, 63, 112, -108, 87, 97, 110, 116, 126, 32, 122}, new byte[]{17, 6, 6, 31, 83, 31, -13, 8}));
                Log.i(this.f5796a, e0.m.h(new byte[]{42, -27, 10, 50, -12, 16, 90, -63, 25, -20, 12, 50, -21, 26, 29, -116, 8, -16, 29, 59, -3, 27, 7, -63}, new byte[]{105, -124, 126, 83, -104, ByteCompanionObject.MAX_VALUE, Base64.padSymbol, -31}) + uVarY.f5767a);
                v(uVarY.f5768b, -1);
                return true;
            }
            u uVarX = x(str);
            if (uVarX != null) {
                c0(e0.m.h(new byte[]{104, -38, 38, -81, -39, 99, -73, -57, 104, -43, 59}, new byte[]{9, -74, 79, -50, -86, 60, -46, -65}), j0.f.g(uVarX.f5768b), uVarX.f5767a, e0.m.h(new byte[]{40, 57, -83, -101, 92, 24, 5, -39, 59, 36, -83, -101, 91, 24}, new byte[]{75, 76, -33, -6, 40, 125, 97, -122}));
                Log.i(this.f5796a, e0.m.h(new byte[]{98, 58, 62, -44, 76, 119, 19, -55, 67, 43, 43, -34, 87, 57, 19, -63, 7, 50, 55, -59, 89, 36, 23, -115, 74, 35, 43, -44, 80, 50, 22, -105, 7}, new byte[]{39, 66, 95, -73, 56, 87, 114, -83}) + uVarX.f5767a);
                v(uVarX.f5768b, -1);
                return true;
            }
        }
        z0 z0Var = (z0) hVarP.c;
        z0 z0Var2 = z0.c;
        if (z0Var == z0Var2) {
            return false;
        }
        if (z0Var == z0Var2 || (z0Var == z0.d && ((String) hVarP.e).equals(e0.m.h(new byte[]{-57, 70, -126, 30, 76, 39, -109, -30, -59, 95, -108, 31, 68, Base64.padSymbol, -99, -46, -60}, new byte[]{-86, 47, -15, 109, 37, 73, -12, -67})))) {
            r().e(e0.m.h(new byte[]{12, 18, -83, 32, 65, 47, -13, -41, 32, 17, -95, 45, 67, 57, -5, -41, 20}, new byte[]{ByteCompanionObject.MAX_VALUE, 119, -64, 65, 47, 91, -102, -76}), e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 78, -70, 49, 73}, new byte[]{-15, 59, -33, 67, 48, -85, -10, -42}), d1.a(str), e0.m.h(new byte[]{25, 114, 50, 92, 63, -17}, new byte[]{107, 23, 83, 47, 80, -127, 92, -40}), (String) hVarP.e, e0.m.h(new byte[]{-68, -108, 70, 108, 17, -29, 13, 91}, new byte[]{-44, -11, 52, 8, 71, -122, 121, 52}), Boolean.FALSE);
            this.f5825y = (String) hVarP.e;
            Log.d(this.f5796a, e0.m.h(new byte[]{-39, 53, -5, -11, 27, -51, -71, -53, -2, 56, -32, -3, 5, -43, -4, -42, -11, 96, -81, -13, 29, -36, -6, -55, -7, 53, -24, -80, 6, -36, -12, -61, -2, 47, -26, -13, 85, -38, -8, -52, -12, 50, -21, -15, 1, -36, -22, -126, -14, 62, -23, -1, 7, -36, -71, -63, -4, 58, -3, -7, 19, -48, -6, -61, -28, 50, -32, -2, 79, -103}, new byte[]{-112, 91, -113, -112, 117, -71, -103, -94}).concat((String) hVarP.e));
            return false;
        }
        if (((z0) hVarP.c) != z0.f5832b) {
            String str3 = this.f5796a;
            StringBuilder sb = new StringBuilder();
            com.google.protobuf.q.u(new byte[]{106, 87, -99, 109, -115, 70, 37, 41, 70, 83, -116, 107, -105, 87, 97, 123, 82, 76, -116, 122, -102, 15, 34}, new byte[]{35, 57, -23, 8, -29, 50, 5, 91}, sb, str);
            sb.append(e0.m.h(new byte[]{-122, -35, -28, 95, -90, 98, 88, -102, -49, -52}, new byte[]{-95, -15, -60, 45, -61, 3, 43, -11}));
            sb.append((String) hVarP.e);
            Log.i(str3, sb.toString());
            i(str, (String) hVarP.e);
            return true;
        }
        c0(e0.m.h(new byte[]{56, -63, 65, 14, 55, 100}, new byte[]{81, -81, 53, 107, 89, 16, 99, -27}), (String) hVarP.d, "", (String) hVarP.e);
        j0.e eVar2 = (j0.e) linkedHashMap.get((String) hVarP.d);
        String str4 = this.f5796a;
        StringBuilder sb2 = new StringBuilder();
        com.google.protobuf.q.u(new byte[]{1, -117, 37, -1, -2, 116, -79, 110, Base64.padSymbol, ByteCompanionObject.MIN_VALUE, 35, -29, -83, 39}, new byte[]{72, -27, 81, -102, -112, 0, -111, 31}, sb2, str);
        sb2.append(e0.m.h(new byte[]{-84, 122, -110, 8, 8, 110, -41, -69, -18, 50, -113}, new byte[]{-117, 86, -78, 101, 105, 26, -76, -45}));
        sb2.append((String) hVarP.d);
        sb2.append(e0.m.h(new byte[]{-26, -10, 40, 60, 87, 38, -9, -78}, new byte[]{-54, -42, 91, 80, 56, 82, -124, -113}));
        sb2.append((String) hVarP.e);
        Log.i(str4, sb2.toString());
        if (eVar2 != null) {
            v(eVar2, -1);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public final boolean F(String str) {
        String strSubstring;
        char cCharAt;
        long jI;
        boolean z8;
        boolean z9;
        boolean z10;
        c1.a aVarC;
        int i9;
        String string;
        if (str != null) {
            Matcher matcher = a1.f5597a.matcher(str);
            if (matcher.find()) {
                int iEnd = matcher.end();
                while (iEnd < str.length() && ((cCharAt = str.charAt(iEnd)) == ',' || cCharAt == ':' || Character.isWhitespace(cCharAt) || Character.isSpaceChar(cCharAt))) {
                    iEnd++;
                }
                strSubstring = str.substring(iEnd);
                if (a1.f5598b.matcher(strSubstring).matches() || a1.c.matcher(strSubstring).matches()) {
                    strSubstring = "";
                }
            }
            if (strSubstring != null && !this.C) {
                return false;
            }
            jI = r().i();
            synchronized (this.O) {
                try {
                    if (this.T && !this.f5818o) {
                        if (A(str, true) == null || G(str)) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        if (strSubstring == null || z8) {
                            z9 = false;
                        } else {
                            ArrayList arrayList = new ArrayList();
                            h0.b.a();
                            ArrayList arrayListE = h0.b.f().e();
                            int size = arrayListE.size();
                            int i10 = 0;
                            while (i10 < size) {
                                Object obj = arrayListE.get(i10);
                                i10++;
                                j0.e eVar = (j0.e) obj;
                                if (j0.f.d(eVar)) {
                                    arrayList.add(j0.f.g(eVar));
                                }
                            }
                            if (n0.i(str) || m(str, arrayList)) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                        }
                        if (!z8 && !z9) {
                            if (strSubstring == null) {
                                strSubstring = str.trim();
                            }
                            if (this.B != null) {
                                this.B.i0();
                            }
                            this.f5804f0++;
                            this.W++;
                            this.X = "";
                            this.Z = "";
                            if (strSubstring != null) {
                                if (a1.f5598b.matcher(strSubstring).matches() && !a1.c.matcher(strSubstring).matches()) {
                                    z10 = false;
                                }
                                if (z10) {
                                    this.C = true;
                                    s().b(System.currentTimeMillis(), "", e0.m.h(new byte[]{36, 97, -38, 99, 102, 99, -40, -72, 37, 110, -13, 107, 101, 102, -34, -76, 57, 115}, new byte[]{74, 0, -84, 10, 1, 2, -84, -47}));
                                    this.U = s().e();
                                    string = this.f5816m.getString(2131952818);
                                    if (string == null) {
                                        string = "";
                                    }
                                    this.f5824x = string;
                                    r().e(e0.m.h(new byte[]{-72, 5, 23, -63, 45, 94, 111, -102, -70, 29, 31, -36, 42}, new byte[]{-37, 105, 118, -77, 68, 56, 6, -7}), e0.m.h(new byte[]{74, 100, -47, -90, -21}, new byte[]{56, 11, -92, -46, -114, -56, 52, -111}), e0.m.h(new byte[]{-1, 102, -75, Base64.padSymbol, 102, -100, -25, -2, -2, 105}, new byte[]{-111, 7, -61, 84, 1, -3, -109, -105}), e0.m.h(new byte[]{99, -100, 20}, new byte[]{17, -3, 99, 67, 36, 89, -101, 36}), str, e0.m.h(new byte[]{-125, 40, 114, -51, 10, 120}, new byte[]{-15, 77, 19, -66, 101, 22, 94, -102}), e0.m.h(new byte[]{47, 102, 103, ByteCompanionObject.MAX_VALUE, 98, 56, -106, -97, 46, 105, 78, 119, 97, Base64.padSymbol, -112, -109, 50, 116}, new byte[]{65, 7, 17, 22, 5, 89, -30, -10}), e0.m.h(new byte[]{-64, 75, -96, -37, 40, 78}, new byte[]{-80, 57, -49, -74, 88, 58, -55, 17}), this.f5824x, e0.m.h(new byte[]{91, -47, 71, 25, 74, -72, 37, 102, 84, -37, 91, 25, 98, -71}, new byte[]{58, -65, 52, 110, 47, -54, 114, 15}), Long.valueOf(Math.max(0L, this.U - System.currentTimeMillis())));
                                    N(this.f5824x);
                                    return true;
                                }
                                this.C = false;
                                c0(e0.m.h(new byte[]{56, -89, 123, -127, 35, -44, 80, 32, 57, -88}, new byte[]{86, -58, 13, -24, 68, -75, 36, 73}), e0.m.h(new byte[]{88, 91, -87, 52, -86, -36, -5, 73, 69, 94, -75, 53, -68, -41, -5, 91, 68, 91, -75, 51, -89}, new byte[]{33, 58, -57, 80, -49, -92, -92, 40}), strSubstring, e0.m.h(new byte[]{106, 70, -96, -111, -44, -69, 32, -59, 80, 95, -76, -103, -49, -67, 58, -62}, new byte[]{15, 62, -48, -3, -67, -40, 73, -79}));
                                C(e0.m.h(new byte[]{2, -122, 55, 55, 6, 10, 57, -27, 3, -119}, new byte[]{108, -25, 65, 94, 97, 107, 77, -116}));
                                aVarC = c1.c.c(this.f5816m, strSubstring);
                                r().e(e0.m.h(new byte[]{-19, 2, 96, -28, 118, 57, -97, 72, -20, 13, 73, -1, 116, 43, -98, 77, -9}, new byte[]{-125, 99, 22, -115, 17, 88, -21, 33}), e0.m.h(new byte[]{124, -69, 97, -99, 53, -20, 114, 6, 124, -89, 125, ByteCompanionObject.MIN_VALUE, 56}, new byte[]{15, -44, 20, -17, 86, -119, 33, 99}), Long.valueOf(jI), e0.m.h(new byte[]{-82, -118, 30, 125, 17, 74}, new byte[]{-36, -17, 109, 8, 125, 62, -102, -13}), aVarC.name());
                                if (aVarC != c1.a.f413b) {
                                    if (aVarC == c1.a.c) {
                                        i9 = 2131952820;
                                    } else {
                                        i9 = 2131952819;
                                    }
                                    new Handler(Looper.getMainLooper()).post(new q(this, i9, 1));
                                }
                                return true;
                            }
                            Pattern pattern = a1.f5597a;
                            z10 = true;
                            if (z10) {
                                this.C = true;
                                s().b(System.currentTimeMillis(), "", e0.m.h(new byte[]{36, 97, -38, 99, 102, 99, -40, -72, 37, 110, -13, 107, 101, 102, -34, -76, 57, 115}, new byte[]{74, 0, -84, 10, 1, 2, -84, -47}));
                                this.U = s().e();
                                string = this.f5816m.getString(2131952818);
                                if (string == null) {
                                    string = "";
                                }
                                this.f5824x = string;
                                r().e(e0.m.h(new byte[]{-72, 5, 23, -63, 45, 94, 111, -102, -70, 29, 31, -36, 42}, new byte[]{-37, 105, 118, -77, 68, 56, 6, -7}), e0.m.h(new byte[]{74, 100, -47, -90, -21}, new byte[]{56, 11, -92, -46, -114, -56, 52, -111}), e0.m.h(new byte[]{-1, 102, -75, Base64.padSymbol, 102, -100, -25, -2, -2, 105}, new byte[]{-111, 7, -61, 84, 1, -3, -109, -105}), e0.m.h(new byte[]{99, -100, 20}, new byte[]{17, -3, 99, 67, 36, 89, -101, 36}), str, e0.m.h(new byte[]{-125, 40, 114, -51, 10, 120}, new byte[]{-15, 77, 19, -66, 101, 22, 94, -102}), e0.m.h(new byte[]{47, 102, 103, ByteCompanionObject.MAX_VALUE, 98, 56, -106, -97, 46, 105, 78, 119, 97, Base64.padSymbol, -112, -109, 50, 116}, new byte[]{65, 7, 17, 22, 5, 89, -30, -10}), e0.m.h(new byte[]{-64, 75, -96, -37, 40, 78}, new byte[]{-80, 57, -49, -74, 88, 58, -55, 17}), this.f5824x, e0.m.h(new byte[]{91, -47, 71, 25, 74, -72, 37, 102, 84, -37, 91, 25, 98, -71}, new byte[]{58, -65, 52, 110, 47, -54, 114, 15}), Long.valueOf(Math.max(0L, this.U - System.currentTimeMillis())));
                                N(this.f5824x);
                                return true;
                            }
                            this.C = false;
                            c0(e0.m.h(new byte[]{56, -89, 123, -127, 35, -44, 80, 32, 57, -88}, new byte[]{86, -58, 13, -24, 68, -75, 36, 73}), e0.m.h(new byte[]{88, 91, -87, 52, -86, -36, -5, 73, 69, 94, -75, 53, -68, -41, -5, 91, 68, 91, -75, 51, -89}, new byte[]{33, 58, -57, 80, -49, -92, -92, 40}), strSubstring, e0.m.h(new byte[]{106, 70, -96, -111, -44, -69, 32, -59, 80, 95, -76, -103, -49, -67, 58, -62}, new byte[]{15, 62, -48, -3, -67, -40, 73, -79}));
                            C(e0.m.h(new byte[]{2, -122, 55, 55, 6, 10, 57, -27, 3, -119}, new byte[]{108, -25, 65, 94, 97, 107, 77, -116}));
                            aVarC = c1.c.c(this.f5816m, strSubstring);
                            r().e(e0.m.h(new byte[]{-19, 2, 96, -28, 118, 57, -97, 72, -20, 13, 73, -1, 116, 43, -98, 77, -9}, new byte[]{-125, 99, 22, -115, 17, 88, -21, 33}), e0.m.h(new byte[]{124, -69, 97, -99, 53, -20, 114, 6, 124, -89, 125, ByteCompanionObject.MIN_VALUE, 56}, new byte[]{15, -44, 20, -17, 86, -119, 33, 99}), Long.valueOf(jI), e0.m.h(new byte[]{-82, -118, 30, 125, 17, 74}, new byte[]{-36, -17, 109, 8, 125, 62, -102, -13}), aVarC.name());
                            if (aVarC != c1.a.f413b) {
                                if (aVarC == c1.a.c) {
                                    i9 = 2131952820;
                                } else {
                                    i9 = 2131952819;
                                }
                                new Handler(Looper.getMainLooper()).post(new q(this, i9, 1));
                            }
                            return true;
                        }
                        if (this.C) {
                            this.C = false;
                            s().a(str, true);
                            this.f5824x = "";
                        }
                        return false;
                    }
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Pattern pattern2 = a1.f5597a;
        strSubstring = null;
        if (strSubstring != null) {
        }
        jI = r().i();
        synchronized (this.O) {
            if (this.T) {
                if (A(str, true) == null) {
                    z8 = true;
                } else {
                    z8 = true;
                }
                if (strSubstring == null) {
                    z9 = false;
                } else {
                    z9 = false;
                }
                if (!z8) {
                    if (strSubstring == null) {
                        strSubstring = str.trim();
                    }
                    if (this.B != null) {
                        this.B.i0();
                    }
                    this.f5804f0++;
                    this.W++;
                    this.X = "";
                    this.Z = "";
                    if (strSubstring != null) {
                        if (a1.f5598b.matcher(strSubstring).matches()) {
                        }
                        if (z10) {
                            this.C = true;
                            s().b(System.currentTimeMillis(), "", e0.m.h(new byte[]{36, 97, -38, 99, 102, 99, -40, -72, 37, 110, -13, 107, 101, 102, -34, -76, 57, 115}, new byte[]{74, 0, -84, 10, 1, 2, -84, -47}));
                            this.U = s().e();
                            string = this.f5816m.getString(2131952818);
                            if (string == null) {
                                string = "";
                            }
                            this.f5824x = string;
                            r().e(e0.m.h(new byte[]{-72, 5, 23, -63, 45, 94, 111, -102, -70, 29, 31, -36, 42}, new byte[]{-37, 105, 118, -77, 68, 56, 6, -7}), e0.m.h(new byte[]{74, 100, -47, -90, -21}, new byte[]{56, 11, -92, -46, -114, -56, 52, -111}), e0.m.h(new byte[]{-1, 102, -75, Base64.padSymbol, 102, -100, -25, -2, -2, 105}, new byte[]{-111, 7, -61, 84, 1, -3, -109, -105}), e0.m.h(new byte[]{99, -100, 20}, new byte[]{17, -3, 99, 67, 36, 89, -101, 36}), str, e0.m.h(new byte[]{-125, 40, 114, -51, 10, 120}, new byte[]{-15, 77, 19, -66, 101, 22, 94, -102}), e0.m.h(new byte[]{47, 102, 103, ByteCompanionObject.MAX_VALUE, 98, 56, -106, -97, 46, 105, 78, 119, 97, Base64.padSymbol, -112, -109, 50, 116}, new byte[]{65, 7, 17, 22, 5, 89, -30, -10}), e0.m.h(new byte[]{-64, 75, -96, -37, 40, 78}, new byte[]{-80, 57, -49, -74, 88, 58, -55, 17}), this.f5824x, e0.m.h(new byte[]{91, -47, 71, 25, 74, -72, 37, 102, 84, -37, 91, 25, 98, -71}, new byte[]{58, -65, 52, 110, 47, -54, 114, 15}), Long.valueOf(Math.max(0L, this.U - System.currentTimeMillis())));
                            N(this.f5824x);
                            return true;
                        }
                        this.C = false;
                        c0(e0.m.h(new byte[]{56, -89, 123, -127, 35, -44, 80, 32, 57, -88}, new byte[]{86, -58, 13, -24, 68, -75, 36, 73}), e0.m.h(new byte[]{88, 91, -87, 52, -86, -36, -5, 73, 69, 94, -75, 53, -68, -41, -5, 91, 68, 91, -75, 51, -89}, new byte[]{33, 58, -57, 80, -49, -92, -92, 40}), strSubstring, e0.m.h(new byte[]{106, 70, -96, -111, -44, -69, 32, -59, 80, 95, -76, -103, -49, -67, 58, -62}, new byte[]{15, 62, -48, -3, -67, -40, 73, -79}));
                        C(e0.m.h(new byte[]{2, -122, 55, 55, 6, 10, 57, -27, 3, -119}, new byte[]{108, -25, 65, 94, 97, 107, 77, -116}));
                        aVarC = c1.c.c(this.f5816m, strSubstring);
                        r().e(e0.m.h(new byte[]{-19, 2, 96, -28, 118, 57, -97, 72, -20, 13, 73, -1, 116, 43, -98, 77, -9}, new byte[]{-125, 99, 22, -115, 17, 88, -21, 33}), e0.m.h(new byte[]{124, -69, 97, -99, 53, -20, 114, 6, 124, -89, 125, ByteCompanionObject.MIN_VALUE, 56}, new byte[]{15, -44, 20, -17, 86, -119, 33, 99}), Long.valueOf(jI), e0.m.h(new byte[]{-82, -118, 30, 125, 17, 74}, new byte[]{-36, -17, 109, 8, 125, 62, -102, -13}), aVarC.name());
                        if (aVarC != c1.a.f413b) {
                            if (aVarC == c1.a.c) {
                                i9 = 2131952820;
                            } else {
                                i9 = 2131952819;
                            }
                            new Handler(Looper.getMainLooper()).post(new q(this, i9, 1));
                        }
                        return true;
                    }
                    Pattern pattern3 = a1.f5597a;
                    z10 = true;
                    if (z10) {
                        this.C = true;
                        s().b(System.currentTimeMillis(), "", e0.m.h(new byte[]{36, 97, -38, 99, 102, 99, -40, -72, 37, 110, -13, 107, 101, 102, -34, -76, 57, 115}, new byte[]{74, 0, -84, 10, 1, 2, -84, -47}));
                        this.U = s().e();
                        string = this.f5816m.getString(2131952818);
                        if (string == null) {
                            string = "";
                        }
                        this.f5824x = string;
                        r().e(e0.m.h(new byte[]{-72, 5, 23, -63, 45, 94, 111, -102, -70, 29, 31, -36, 42}, new byte[]{-37, 105, 118, -77, 68, 56, 6, -7}), e0.m.h(new byte[]{74, 100, -47, -90, -21}, new byte[]{56, 11, -92, -46, -114, -56, 52, -111}), e0.m.h(new byte[]{-1, 102, -75, Base64.padSymbol, 102, -100, -25, -2, -2, 105}, new byte[]{-111, 7, -61, 84, 1, -3, -109, -105}), e0.m.h(new byte[]{99, -100, 20}, new byte[]{17, -3, 99, 67, 36, 89, -101, 36}), str, e0.m.h(new byte[]{-125, 40, 114, -51, 10, 120}, new byte[]{-15, 77, 19, -66, 101, 22, 94, -102}), e0.m.h(new byte[]{47, 102, 103, ByteCompanionObject.MAX_VALUE, 98, 56, -106, -97, 46, 105, 78, 119, 97, Base64.padSymbol, -112, -109, 50, 116}, new byte[]{65, 7, 17, 22, 5, 89, -30, -10}), e0.m.h(new byte[]{-64, 75, -96, -37, 40, 78}, new byte[]{-80, 57, -49, -74, 88, 58, -55, 17}), this.f5824x, e0.m.h(new byte[]{91, -47, 71, 25, 74, -72, 37, 102, 84, -37, 91, 25, 98, -71}, new byte[]{58, -65, 52, 110, 47, -54, 114, 15}), Long.valueOf(Math.max(0L, this.U - System.currentTimeMillis())));
                        N(this.f5824x);
                        return true;
                    }
                    this.C = false;
                    c0(e0.m.h(new byte[]{56, -89, 123, -127, 35, -44, 80, 32, 57, -88}, new byte[]{86, -58, 13, -24, 68, -75, 36, 73}), e0.m.h(new byte[]{88, 91, -87, 52, -86, -36, -5, 73, 69, 94, -75, 53, -68, -41, -5, 91, 68, 91, -75, 51, -89}, new byte[]{33, 58, -57, 80, -49, -92, -92, 40}), strSubstring, e0.m.h(new byte[]{106, 70, -96, -111, -44, -69, 32, -59, 80, 95, -76, -103, -49, -67, 58, -62}, new byte[]{15, 62, -48, -3, -67, -40, 73, -79}));
                    C(e0.m.h(new byte[]{2, -122, 55, 55, 6, 10, 57, -27, 3, -119}, new byte[]{108, -25, 65, 94, 97, 107, 77, -116}));
                    aVarC = c1.c.c(this.f5816m, strSubstring);
                    r().e(e0.m.h(new byte[]{-19, 2, 96, -28, 118, 57, -97, 72, -20, 13, 73, -1, 116, 43, -98, 77, -9}, new byte[]{-125, 99, 22, -115, 17, 88, -21, 33}), e0.m.h(new byte[]{124, -69, 97, -99, 53, -20, 114, 6, 124, -89, 125, ByteCompanionObject.MIN_VALUE, 56}, new byte[]{15, -44, 20, -17, 86, -119, 33, 99}), Long.valueOf(jI), e0.m.h(new byte[]{-82, -118, 30, 125, 17, 74}, new byte[]{-36, -17, 109, 8, 125, 62, -102, -13}), aVarC.name());
                    if (aVarC != c1.a.f413b) {
                        if (aVarC == c1.a.c) {
                            i9 = 2131952820;
                        } else {
                            i9 = 2131952819;
                        }
                        new Handler(Looper.getMainLooper()).post(new q(this, i9, 1));
                    }
                    return true;
                }
                if (this.C) {
                    this.C = false;
                    s().a(str, true);
                    this.f5824x = "";
                }
                return false;
            }
            return true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void M() {
        String str = this.f5812j0;
        if (str == null || str.trim().isEmpty() || System.currentTimeMillis() < 0) {
            return;
        }
        String str2 = this.f5812j0;
        this.f5812j0 = "";
        N(str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void N(String str) {
        if (g().booleanValue()) {
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
    public final void O(b bVar) {
        if (g().booleanValue()) {
            f5793l0 = bVar;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void Q(ArrayList arrayList) throws IOException {
        int i9;
        String str = a.f5593a;
        File fileD = a.d(new File(this.f5816m.getFilesDir(), a.f5594b));
        if (fileD == null) {
            n0.b.A(e0.m.h(new byte[]{11, 94, -32, 5, 20, 0, 111, 90, 120, 86, -30, 0, 31, 24, 38, 80, 43, 27, -29, 11, 14, 84, 111, 87, 43, 79, -20, 8, 22, 17, 98}, new byte[]{88, 59, -115, 100, 122, 116, 6, 57}));
            return;
        }
        File file = new File(fileD, e0.m.h(new byte[]{49, 52, 88, -64, 54, 30, 41, 74, 55, 117, 89, -42, 55, 25}, new byte[]{69, 91, 51, -91, 88, 119, 83, 47}));
        File file2 = new File(fileD, e0.m.h(new byte[]{-91, -123, -78, -112, 3, -100, -49, -87, -81, -123, -65, -120, 71, -107, -109, -22, -69, -99, -65, -120, 6, -35, -49, -87, -68, -56, -16, -117, 4, -98, -34}, new byte[]{-56, -16, -34, -28, 106, -16, -90, -57}));
        File file3 = new File(fileD, e0.m.h(new byte[]{-80, 25, 118, 70, 24, -83, 53, -103, -18, 31, 122, 73, 18, -80, 56, -101, -73, 25, 104, 10, 67, -9, 63, -101, -96, 20, 126}, new byte[]{-61, 124, 27, 39, 118, -39, 92, -6}));
        if (this.f5821s == null) {
            HashMap map = new HashMap(300000);
            JsonReader jsonReader = new JsonReader(new InputStreamReader(new FileInputStream(file), e0.m.h(new byte[]{-74, -14, -15, -104, 13}, new byte[]{-29, -90, -73, -75, 53, -39, 66, -115})));
            try {
                jsonReader.beginObject();
                int iMax = 1;
                while (jsonReader.hasNext()) {
                    if (e0.m.h(new byte[]{-115, -11, 7, -121, -23}, new byte[]{-32, -102, 99, -30, -123, -70, 85, 13}).equals(jsonReader.nextName())) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            if (e0.m.h(new byte[]{-78, 17, -97, -53, 123}, new byte[]{-60, 126, -4, -86, 25, -99, -89, -67}).equals(jsonReader.nextName())) {
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
                                    map.put(strNextString, new w(i10, fNextDouble));
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
                this.f5821s = new m(map, iMax, 1);
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (this.t == null) {
            this.t = OrtEnvironment.getEnvironment();
        }
        if (this.f5822u == null) {
            OrtSession$SessionOptions ortSession$SessionOptions = new OrtSession$SessionOptions();
            ortSession$SessionOptions.setIntraOpNumThreads(1);
            ortSession$SessionOptions.setInterOpNumThreads(1);
            ortSession$SessionOptions.setCPUArenaAllocator(false);
            ortSession$SessionOptions.setMemoryPatternOptimization(false);
            this.f5822u = this.t.createSession(file2.getAbsolutePath(), ortSession$SessionOptions);
        }
        boolean zIsFile = file3.isFile();
        String str2 = this.f5796a;
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
                                Log.i(str2, e0.m.h(new byte[]{-101, 115, -31, -32, -2, 100, -80, 104, -24, 117, -19, -17, -12, 121, -67, 106, -68, 115, -1, -95, -4, ByteCompanionObject.MAX_VALUE, -72, 111, -83, 114, -84, -25, -30, ByteCompanionObject.MAX_VALUE, -76, 43, -85, 119, -17, -23, -11, 42, -7}, new byte[]{-56, 22, -116, -127, -112, 16, -39, 11}) + arrayList.size());
                                return;
                            }
                            Object obj = arrayList.get(i11);
                            i11++;
                            u uVar = (u) obj;
                            String utf = dataInputStream.readUTF();
                            String utf2 = dataInputStream.readUTF();
                            if (!uVar.f5767a.equals(utf) || !j0.f.g(uVar.f5768b).equals(utf2) || (i9 = dataInputStream.readInt()) < 0 || i9 > 64) {
                                break;
                                break;
                                break;
                                break;
                            }
                            uVar.f5769f = new int[i9];
                            for (int i12 = 0; i12 < i9; i12++) {
                                uVar.f5769f[i12] = dataInputStream.readInt();
                            }
                            int i13 = dataInputStream.readInt();
                            if (i13 != 384) {
                                break;
                            }
                            uVar.f5770g = new float[i13];
                            for (int i14 = 0; i14 < i13; i14++) {
                                uVar.f5770g[i14] = dataInputStream.readFloat();
                            }
                            Log.w(str2, e0.m.h(new byte[]{30, -53, 46, -13, 2, 69, -46, -57, 109, -51, 34, -15, 4, 84, -101, -51, 62, -114, 45, -3, 24, 17, -50, -41, 44, -52, 47, -9}, new byte[]{77, -82, 67, -110, 108, 49, -69, -92}), e);
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
                Log.w(str2, e0.m.h(new byte[]{30, -53, 46, -13, 2, 69, -46, -57, 109, -51, 34, -15, 4, 84, -101, -51, 62, -114, 45, -3, 24, 17, -50, -41, 44, -52, 47, -9}, new byte[]{77, -82, 67, -110, 108, 49, -69, -92}), e);
            }
        }
        int size2 = arrayList.size();
        int i15 = 0;
        while (i15 < size2) {
            Object obj2 = arrayList.get(i15);
            i15++;
            u uVar2 = (u) obj2;
            uVar2.f5769f = this.f5821s.a(e0.m.h(new byte[]{79, -115, -64, -31, 43, 103, 125, 5, 31}, new byte[]{63, -20, -77, -110, 74, 0, 24, 63}) + uVar2.f5767a);
        }
        for (int i16 = 0; i16 < arrayList.size(); i16 += 8) {
            W(arrayList, i16, Math.min(8, arrayList.size() - i16));
        }
        File parentFile = file3.getParentFile();
        StringBuilder sb = new StringBuilder();
        sb.append(file3.getName());
        File file4 = new File(parentFile, com.google.protobuf.q.i(new byte[]{-62, 26, -126, -99}, new byte[]{-20, 116, -25, -22, 57, -75, -69, -115}, sb));
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
                    u uVar3 = (u) obj3;
                    dataOutputStream.writeUTF(uVar3.f5767a);
                    dataOutputStream.writeUTF(j0.f.g(uVar3.f5768b));
                    dataOutputStream.writeInt(uVar3.f5769f.length);
                    for (int i18 : uVar3.f5769f) {
                        dataOutputStream.writeInt(i18);
                    }
                    dataOutputStream.writeInt(uVar3.f5770g.length);
                    for (float f8 : uVar3.f5770g) {
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
            Log.w(str2, e0.m.h(new byte[]{-59, 93, 107, -112, -20, -56, 65, -60, -14, 18, 105, -114, -31, -100, 74, -117, -11, 87, 115, -99, -26, -100, 70, -56, -90, 81, ByteCompanionObject.MAX_VALUE, -97, -32, -115}, new byte[]{-122, 50, 30, -4, -120, -24, 47, -85}), e6);
            file4.delete();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void R(String str) {
        boolean zM;
        String str2;
        String str3 = str;
        if (!this.T || this.f5818o || str3 == null || str3.trim().isEmpty()) {
            return;
        }
        this.G = System.nanoTime();
        this.f5802e0 = str3;
        this.H = "";
        r().e(e0.m.h(new byte[]{-15, -99, -13, 96, 120, 27, -127, 48, -12, -101, -16, 108, 117}, new byte[]{-110, -14, -98, 13, 25, 117, -27, 111}), e0.m.h(new byte[]{95, 66, 43}, new byte[]{45, 35, 92, 88, -49, -89, 99, 97}), str3, e0.m.h(new byte[]{46, -72, 9, 39, -120, -7, 15, -126, 37, -77}, new byte[]{64, -41, 123, 74, -23, -107, 102, -8}), d1.b(str3), e0.m.h(new byte[]{58, 114, -75, 14, -63, 39, -30, -87, 26, 107, -89, 16, -48, 60}, new byte[]{91, 5, -44, 103, -75, 78, -116, -50}), Boolean.valueOf(s().c()));
        if (H(str3)) {
            r().e(e0.m.h(new byte[]{-89, ByteCompanionObject.MIN_VALUE, -115, -114, -97, 14}, new byte[]{-60, -31, -29, -19, -6, 98, 60, -48}), e0.m.h(new byte[]{111, -7, 85, 122}, new byte[]{27, -100, 45, 14, 31, -104, 84, 86}), str3);
            C(e0.m.h(new byte[]{-29, 104, -26, -44, 41, 14}, new byte[]{ByteCompanionObject.MIN_VALUE, 9, -120, -73, 76, 98, -18, -108}));
            return;
        }
        if (F(str)) {
            return;
        }
        boolean z8 = true;
        boolean z9 = this.B != null && this.B.f5698i;
        if (z9 || n0.i(str3)) {
            if (A(str3, true) == null && !G(str3)) {
                l0 l0VarE0 = e0();
                synchronized (l0VarE0) {
                    try {
                        boolean zI = n0.i(str3);
                        if (!l0VarE0.f5699j && (zI || l0VarE0.f5698i)) {
                            if (zI || !n0.d(str3)) {
                                l0VarE0.f5698i = true;
                                l0VarE0.d.execute(new androidx.activity.f(l0VarE0, str3, l0VarE0.f5696g.get(), 13));
                                r().e(e0.m.h(new byte[]{-106, 81, -70, 101, -104, -98, -53, -7, -121, 81, -94, 124, -100, -108}, new byte[]{-11, 62, -41, 8, -7, -16, -81, -90}), e0.m.h(new byte[]{8, 124, -50, -61, -53}, new byte[]{122, 19, -69, -73, -82, 126, -78, -17}), e0.m.h(new byte[]{60, 122, 30, 9, -87}, new byte[]{76, 18, 113, 103, -52, -26, -13, -35}), e0.m.h(new byte[]{64, -29, 7}, new byte[]{50, -126, 112, -119, -108, 29, -87, 47}), str3);
                                this.f5804f0++;
                                this.W++;
                                this.X = "";
                                return;
                            }
                            l0VarE0.i0();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z9) {
                this.B.i0();
            }
        }
        if (s().c()) {
            ArrayList arrayList = new ArrayList();
            h0.b.a();
            ArrayList arrayListE = h0.b.f().e();
            int size = arrayListE.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayListE.get(i9);
                i9++;
                j0.e eVar = (j0.e) obj;
                if (j0.f.d(eVar)) {
                    arrayList.add(j0.f.g(eVar));
                }
                z8 = z8;
            }
            boolean z10 = z8;
            zM = m(str3, arrayList);
            x0 x0VarS = s();
            synchronized (x0VarS) {
                try {
                    if (x0VarS.d.equals(e0.m.h(new byte[]{53, -55, 80, -101, 114, -26, 10, -32, 35, -56, 86, -104, 124, -1, 0}, new byte[]{64, -89, 59, -11, 29, -111, 100, -65}))) {
                        str2 = x0VarS.c + " " + str3;
                    } else {
                        str2 = "";
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (!zM && !str2.isEmpty() && m(str2, arrayList)) {
                str3 = str2;
                zM = z10;
            }
        } else {
            zM = false;
        }
        String strA = s().a(str3, zM);
        this.f5824x = "";
        this.f5804f0++;
        this.W++;
        this.X = "";
        this.Z = "";
        this.f5802e0 = strA;
        g1 g1VarR = r();
        String strH = e0.m.h(new byte[]{105, 37, -24, -34, -38, 96, -106, 46, 122, 56, -32, -61, -38, 124, -105, 21}, new byte[]{10, 74, -123, -77, -69, 14, -14, 113});
        String strH2 = e0.m.h(new byte[]{79, -29, 115}, new byte[]{Base64.padSymbol, -126, 4, -58, 103, -100, 91, 40});
        String strH3 = e0.m.h(new byte[]{-23, 7, 17, -118, 47, 59, -34, -69, -39, 11, 8, -110}, new byte[]{-115, 110, 112, -26, 64, 92, -85, -34});
        String strH4 = e0.m.h(new byte[]{5, 84, 74, 110, 65}, new byte[]{116, 33, 47, 28, 56, 13, -103, -41});
        Pattern pattern = j1.f5664a;
        g1VarR.e(strH, strH2, str3, strH3, strA, strH4, d1.a(strA), e0.m.h(new byte[]{109, 23, 22, 4, Base64.padSymbol, -51, 73, -38, 97, 23, 6}, new byte[]{4, 121, 114, 97, 77, -88, 39, -66}), Boolean.valueOf(zM));
        this.f5825y = e0.m.h(new byte[]{Base64.padSymbol, -52, 112, -53, -125, 74, 9, 101, 43, -51, 118, -56, -115, 83, 3}, new byte[]{72, -94, 27, -91, -20, Base64.padSymbol, 103, 58});
        if (E(strA)) {
            return;
        }
        j0.e eVarA = A(strA, false);
        if (eVarA != null) {
            c0(e0.m.h(new byte[]{33, 41, 23, -91, 24, 114, 15, 97, 35, 38, 13, -79, 16, 112, 35}, new byte[]{76, 72, 121, -48, 121, 30, 80, 2}), j0.f.g(eVarA), "", e0.m.h(new byte[]{-78, 52, -70, 124, -69, -114, 111, 21, -93, 46, -79, 105}, new byte[]{-57, 71, -33, 14, -28, -20, 6, 123}));
            v(eVarA, -1);
            return;
        }
        u uVarX = x(strA);
        if (uVarX != null) {
            c0(e0.m.h(new byte[]{112, 57, -57, -65, 118}, new byte[]{17, 85, -82, -34, 5, 47, -113, -46}), j0.f.g(uVarX.f5768b), uVarX.f5767a, e0.m.h(new byte[]{-8, 93, -95, -81, -69, -101, 116, -37, -60, 66, -92, -83, -74, -115, 101}, new byte[]{-101, 50, -52, -33, -41, -2, 0, -66}));
            v(uVarX.f5768b, -1);
            return;
        }
        String strA2 = d1.a(strA);
        v vVarY = Y(strA2);
        Iterator it = vVarY.f5775b.iterator();
        while (it.hasNext()) {
            if (vVarY.a((u) it.next())) {
                Pattern pattern2 = j1.f5664a;
                String strA3 = d1.a(strA2);
                if (strA3.length() < 2 || this.f5819p.isEmpty()) {
                    r().e(e0.m.h(new byte[]{-28, -55, -36, 6, -80, -99, 0, -92, -56, -33, -38, 14, -82, -103, 12, -93}, new byte[]{-105, -84, -79, 103, -34, -23, 105, -57}), e0.m.h(new byte[]{-107, -117, -61, 3, -102}, new byte[]{-28, -2, -90, 113, -29, -124, -80, -65}), strA3, e0.m.h(new byte[]{58, -1, -59, 23, -105, -6}, new byte[]{72, -102, -92, 100, -8, -108, 114, 29}), strA3.length() < 2 ? e0.m.h(new byte[]{121, 52, 106, 36, -17, -87, 75, 58, 111, 46, 124}, new byte[]{10, 92, 5, 86, -101, -10, 58, 79}) : e0.m.h(new byte[]{5, -100, 99, -7, 26, -33, -101, 71, 20, -112, ByteCompanionObject.MAX_VALUE, -30, 4}, new byte[]{96, -15, 19, -115, 99, ByteCompanionObject.MIN_VALUE, -8, 38}), e0.m.h(new byte[]{-28, 112, -21, -12, 87, 70, -21, -12, -13}, new byte[]{-108, 2, -114, -124, 54, 52, -126, -102}), Boolean.valueOf(this.f5820q));
                    return;
                }
                if (strA3.equalsIgnoreCase(this.Z)) {
                    return;
                }
                this.Z = strA3;
                System.currentTimeMillis();
                int i10 = this.W + 1;
                this.W = i10;
                this.X = strA3;
                this.Y = i10;
                r().e(e0.m.h(new byte[]{38, -100, -89, -9, -109, -63, -21, 24, 10, -118, -87, -2, -104, -47, -9, 23, 48, -99}, new byte[]{85, -7, -54, -106, -3, -75, -126, 123}), e0.m.h(new byte[]{-17, 124, -5, -14, 70}, new byte[]{-98, 9, -98, ByteCompanionObject.MIN_VALUE, 63, -54, 107, -75}), strA3, e0.m.h(new byte[]{3, -95, 13, -119, -106, 74, -62, -116, 11, -86}, new byte[]{100, -60, 99, -20, -28, 43, -74, -27}), Integer.valueOf(i10), e0.m.h(new byte[]{-124, 46, -24, -21, -11, -36, 3, -101, -83, 56}, new byte[]{-32, 75, -118, -124, ByteCompanionObject.MIN_VALUE, -78, 96, -2}), 100L);
                this.f5798b.schedule(new r(this, strA3, i10, 0), 100L, TimeUnit.MILLISECONDS);
                return;
            }
        }
        v vVarY2 = Y(strA2);
        if (vVarY2.f5777g && ((String) vVarY2.f5776f.d).equals(e0.m.h(new byte[]{28, -106, 17, -2, -28, 60, -108, 70, 3, -125, 2, -8, -31}, new byte[]{111, -26, 116, -99, -115, 90, -19, 25}))) {
            this.f5825y = e0.m.h(new byte[]{-14, -28, -82, 25, 83, 44, 62, -50, -19, -15, -67, 31, 86}, new byte[]{-127, -108, -53, 122, 58, 74, 71, -111});
        }
        Log.d(this.f5796a, e0.m.h(new byte[]{49, -44, -109, 48, 48, -119, 112, 122, 66, -63, -116, 52, Base64.padSymbol, -107, 124, 122, 9, -111, -116, 52, 52, -104, 122, 109, 7, -43, -60, 113, 59, -117, 112, 125, 7, -33, -99, 52, 99}, new byte[]{98, -79, -2, 81, 94, -3, 25, 25}) + ((String) vVarY2.e.e) + e0.m.h(new byte[]{-126, 23, 80, -31, 43, 62, 65, 39}, new byte[]{-82, 55, 35, -115, 68, 74, 50, 26}) + ((String) vVarY2.f5776f.d) + e0.m.h(new byte[]{32, -44, 25, -50, -10, -118, -109, 27, 120, -55}, new byte[]{12, -12, 107, -85, -121, -1, -10, 104}) + vVarY2.f5778h);
        r().e(e0.m.h(new byte[]{-84, 37, 85, 3, -15, 97, 3, -121, ByteCompanionObject.MIN_VALUE, 48, 74, 7, -4, 125, 15, -121, -76}, new byte[]{-33, 64, 56, 98, -97, 21, 106, -28}), e0.m.h(new byte[]{113, 3, -109, 63, -67}, new byte[]{0, 118, -10, 77, -60, -108, -125, -88}), strA2, e0.m.h(new byte[]{18, -13, 23, 78, 107, -25, 100, -42}, new byte[]{115, -112, 116, 43, 27, -109, 1, -78}), Boolean.FALSE, e0.m.h(new byte[]{105, -62, 101, 19, -46, ByteCompanionObject.MIN_VALUE, 28, -71}, new byte[]{12, -76, 12, 119, -73, -18, ByteCompanionObject.MAX_VALUE, -36}), (String) vVarY2.e.e, e0.m.h(new byte[]{103, 81, 79, -36, -59}, new byte[]{20, Base64.padSymbol, 32, -88, -74, -21, 94, -83}), (String) vVarY2.f5776f.d, e0.m.h(new byte[]{115, 59, -43, -50, -30, -112, ByteCompanionObject.MIN_VALUE, 8, 83, 59, -57, -44, -15, -122, -122}, new byte[]{1, 94, -74, -95, -108, -11, -14, 113}), Boolean.valueOf(vVarY2.f5778h), e0.m.h(new byte[]{3, -123, -85, 59, -16, -46, 124, 90, 5, -105}, new byte[]{96, -28, -59, 95, -103, -74, 29, 46}), Integer.valueOf(this.f5819p.size()), e0.m.h(new byte[]{-107, 7, 108, 78, 121, 107, 10, 104, -126}, new byte[]{-27, 117, 9, 62, 24, 25, 99, 6}), Boolean.valueOf(this.f5820q));
        i(strA, this.f5825y);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String S(int i9, byte[] bArr) {
        synchronized (this.O) {
            try {
                Recognizer recognizer = this.T ? this.Q : this.P;
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
    public final synchronized void T(int i9, byte[] bArr) {
        if (bArr == null || i9 <= 0) {
            return;
        }
        int iMin = Math.min(i9, bArr.length);
        int iMax = Math.max(0, iMin - this.N.length);
        int i10 = iMin - iMax;
        while (i10 > 0) {
            int iMin2 = Math.min(i10, this.N.length - this.S);
            System.arraycopy(bArr, iMax, this.N, this.S, iMin2);
            int i11 = this.S + iMin2;
            byte[] bArr2 = this.N;
            this.S = i11 % bArr2.length;
            this.R = Math.min(this.R + iMin2, bArr2.length);
            iMax += iMin2;
            i10 -= iMin2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String U(String str) {
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
        Pattern pattern = a1.f5597a;
        if (pattern.matcher(strTrim).find()) {
            return strTrim;
        }
        boolean z8 = lowerCase.startsWith(lowerCase2) && (strTrim.length() == lowerCase2.length() || Character.isWhitespace(strTrim.charAt(lowerCase2.length())));
        if (this.C && !z8) {
            return strTrim;
        }
        if (z8) {
            String strTrim2 = strTrim.substring(strF.trim().length()).trim();
            if (this.C || (strTrim2 != null && pattern.matcher(strTrim2).find())) {
                return strTrim2;
            }
        }
        if (lowerCase2.startsWith(lowerCase)) {
            return "";
        }
        int iLastIndexOf = lowerCase.lastIndexOf(lowerCase2);
        return iLastIndexOf >= 0 ? strTrim.substring(Math.min(strTrim.length(), strF.trim().length() + iLastIndexOf)).trim() : strTrim;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void V(String str) {
        String strTrim;
        String str2;
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean z8 = this.T;
            boolean zHas = jSONObject.has(e0.m.h(new byte[]{28, 103, 22, 33}, new byte[]{104, 2, 110, 85, 59, 42, 97, -38}));
            String strTrim2 = zHas ? jSONObject.optString(e0.m.h(new byte[]{62, 68, -97, -39}, new byte[]{74, 33, -25, -83, -12, -13, 90, -42}), "").trim() : jSONObject.optString(e0.m.h(new byte[]{118, 43, -77, 57, -79, -45, -11}, new byte[]{6, 74, -63, 77, -40, -78, -103, -83}), "").trim();
            if (z8) {
                String str3 = this.f5797a0;
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
            if (z8) {
                String strTrim4 = "";
                if (zHas) {
                    if (strTrim2 != null && !strTrim2.trim().isEmpty()) {
                        this.f5797a0 = J(this.f5797a0, strTrim2.trim());
                    }
                    this.f5799b0 = "";
                } else {
                    if (strTrim2 != null) {
                        strTrim4 = strTrim2.trim();
                    }
                    this.f5799b0 = strTrim4;
                }
                strTrim2 = J(this.f5797a0, this.f5799b0);
                r().j(zHas ? e0.m.h(new byte[]{42, 109, 4, 108, 100}, new byte[]{76, 4, 106, 13, 8, 126, 26, 64}) : e0.m.h(new byte[]{-80, -107, -65, -6, -63, -71, -65}, new byte[]{-64, -12, -51, -114, -88, -40, -45, -97}), strTrim, strTrim2);
            }
            if ("".equals(strTrim2)) {
                return;
            }
            boolean z9 = true;
            if (!z8) {
                h0.b.a();
                h0.b.f().getClass();
                String strF = j0.c.f();
                if (strF == null || strF.trim().isEmpty() || strTrim2 == null || !strTrim2.toLowerCase().contains(strF.trim().toLowerCase())) {
                    z9 = false;
                }
                if (z9 && zHas) {
                    k(e0.m.h(new byte[]{-9, 33, -65, 23}, new byte[]{ByteCompanionObject.MIN_VALUE, 64, -44, 114, -31, 104, 17, 65}));
                    r().e(e0.m.h(new byte[]{65, 28, 55, 54, ByteCompanionObject.MIN_VALUE, 12, 36, 43, 79, 17}, new byte[]{32, ByteCompanionObject.MAX_VALUE, 67, 95, -10, 109, 80, 66}), e0.m.h(new byte[]{21, 110, -102, 43}, new byte[]{97, 11, -30, 95, 70, -67, 13, -28}), strTrim2, e0.m.h(new byte[]{-8, 16, Base64.padSymbol, 88, 39}, new byte[]{-98, 121, 83, 57, 75, 21, 63, 81}), Boolean.valueOf(zHas));
                    String strB0 = b0();
                    if (!this.T) {
                        r().d(e0.m.h(new byte[]{-90, 28, 115, 33, -10, -113, -83, -4, -88, 17, 88, 46, -31, -121, -75, -16, -93}, new byte[]{-57, ByteCompanionObject.MAX_VALUE, 7, 72, ByteCompanionObject.MIN_VALUE, -18, -39, -107}));
                        return;
                    }
                    d();
                    this.f5812j0 = "";
                    N(strTrim2);
                    V(strB0);
                    return;
                }
                return;
            }
            if (!strTrim2.equals(this.f5800c0)) {
                this.f5800c0 = strTrim2;
                Log.d(this.f5796a, e0.m.h(new byte[]{64, -1, 43, 124, -54, -28, -49, -43, 105, -19, 41, 121, -98, -1, -59, -40, 38, -23, 40, 125, -120, -1, -60, -45, 98, -73, 96}, new byte[]{6, -118, 71, 16, -22, -106, -86, -74}) + strTrim2 + e0.m.h(new byte[]{-10}, new byte[]{-47, -7, -34, 60, -39, 102, -122, 31}));
                if (this.f5824x.isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "\n" + this.f5824x;
                }
                N(strTrim2.concat(str2));
                x0 x0VarS = s();
                long jCurrentTimeMillis = System.currentTimeMillis();
                synchronized (x0VarS) {
                    long j9 = x0VarS.f5828b;
                    if (j9 != 0) {
                        x0VarS.f5827a = Math.min(j9, Math.max(x0VarS.f5827a, jCurrentTimeMillis + 5000));
                    }
                }
                this.U = s().e();
            }
            String strU = U(strTrim2);
            if (strU.isEmpty()) {
                return;
            }
            synchronized (this.O) {
                try {
                    if (!strU.equals(this.f5801d0)) {
                        this.f5801d0 = strU;
                        this.f5802e0 = "";
                        this.f5804f0++;
                        this.W++;
                        this.X = "";
                        this.Z = "";
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (H(U(strTrim))) {
                Log.i(this.f5796a, e0.m.h(new byte[]{28, 107, -76, 28, 121, -5, 24, 58, 53, 121, -74, 25, 45, -32, 18, 55, 122, 125, -71, 30, 58, -20, 17, 53, 63, 122, -8, 18, 32, -87, 11, 54, 51, 125, -67, 80, 58, -26, 16, 52, 59, 112, -68}, new byte[]{90, 30, -40, 112, 89, -119, 125, 89}));
                r().e(e0.m.h(new byte[]{-71, 108, 46, 69, -89, 20}, new byte[]{-38, 13, 64, 38, -62, 120, 74, -56}), e0.m.h(new byte[]{75, -28, 38, 96}, new byte[]{63, -127, 94, 20, 52, 35, 79, 31}), strTrim);
                C(e0.m.h(new byte[]{-89, 116, 47, 44, 101, -104}, new byte[]{-60, 21, 65, 79, 0, -12, -69, -49}));
            } else {
                if (zHas && !strTrim.isEmpty()) {
                    R(U(strTrim));
                }
            }
        } catch (JSONException e) {
            r().e(e0.m.h(new byte[]{34, 67, -113, 17, 27}, new byte[]{71, 49, -3, 126, 105, 8, -71, -87}), e0.m.h(new byte[]{57, -25, -97, -76, 38}, new byte[]{74, -109, -2, -45, 67, 21, -123, 57}), e0.m.h(new byte[]{-55, -73, 50, -58, 75, -50, -63, -77, -46, -67, 63, -10, 70, -45, -57, -87}, new byte[]{-69, -46, 81, -87, 44, -96, -88, -57}), e0.m.h(new byte[]{96, 58, 101, -71}, new byte[]{20, 67, 21, -36, 97, -115, 105, 30}), e.getClass().getSimpleName(), e0.m.h(new byte[]{67, 37, 33, -117, -6, 119, 7}, new byte[]{46, 64, 82, -8, -101, 16, 98, 106}), e.getMessage());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:67:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0117 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:? A[Catch: all -> 0x00f3, SYNTHETIC, TRY_LEAVE, TryCatch #1 {all -> 0x00f3, blocks: (B:13:0x0065, B:29:0x00ef, B:55:0x011f, B:54:0x011c, B:14:0x006f, B:24:0x00e6, B:49:0x0114, B:48:0x0111, B:51:0x0117), top: B:64:0x0065, inners: #4, #5 }] */
    /* JADX WARN: Code duplicated, block: B:86:? A[SYNTHETIC] */
    public final void W(ArrayList arrayList, int i9, int i10) {
        int iMax = 1;
        for (int i11 = 0; i11 < i10; i11++) {
            iMax = Math.max(iMax, ((u) arrayList.get(i9 + i11)).f5769f.length);
        }
        int i12 = i10 * iMax;
        long[] jArr = new long[i12];
        long[] jArr2 = new long[i12];
        long[] jArr3 = new long[i12];
        long j9 = 1;
        Arrays.fill(jArr, 1L);
        for (int i13 = 0; i13 < i10; i13++) {
            int[] iArr = ((u) arrayList.get(i9 + i13)).f5769f;
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
        OnnxTensor onnxTensorCreateTensor = OnnxTensor.createTensor(this.t, LongBuffer.wrap(jArr), jArr4);
        try {
            OnnxTensor onnxTensorCreateTensor2 = OnnxTensor.createTensor(this.t, LongBuffer.wrap(jArr2), jArr4);
            try {
                OnnxTensor onnxTensorCreateTensor3 = OnnxTensor.createTensor(this.t, LongBuffer.wrap(jArr3), jArr4);
                try {
                    HashMap map = new HashMap();
                    map.put(e0.m.h(new byte[]{-37, -99, -28, -122, -37, 106, 76, -32, -63}, new byte[]{-78, -13, -108, -13, -81, 53, 37, -124}), onnxTensorCreateTensor);
                    map.put(e0.m.h(new byte[]{-123, -120, -119, 56, -116, 30, -64, 42, -118, -93, -112, 60, -111, 1}, new byte[]{-28, -4, -3, 93, -30, 106, -87, 69}), onnxTensorCreateTensor2);
                    map.put(e0.m.h(new byte[]{-127, -73, -52, 91, -106, -32, -73, -48, -123, -67, -8, 87, -100, -52}, new byte[]{-11, -40, -89, 62, -8, -65, -61, -87}), onnxTensorCreateTensor3);
                    OrtSession$Result ortSession$ResultRun = this.f5822u.run(map);
                    try {
                        float[][][] fArr = (float[][][]) ortSession$ResultRun.get(0).getValue();
                        for (int i16 = 0; i16 < i10; i16++) {
                            ((u) arrayList.get(i9 + i16)).f5770g = j(fArr[i16], jArr2, i16 * iMax, iMax);
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
    public final void X() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f5814k0 < 1000) {
            return;
        }
        this.f5814k0 = jCurrentTimeMillis;
        if (n()) {
            a0();
            try {
                String string = new JSONArray((Collection) l()).toString();
                if (I(string)) {
                    synchronized (this.O) {
                        Recognizer recognizer = this.P;
                        if (recognizer != null) {
                            recognizer.close();
                            this.P = null;
                        }
                        Recognizer recognizer2 = this.Q;
                        if (recognizer2 != null) {
                            recognizer2.close();
                            this.Q = null;
                        }
                        float f8 = 16000;
                        this.P = new Recognizer(this.f5815l, f8, string);
                        this.Q = new Recognizer(this.f5815l, f8);
                        this.T = false;
                        synchronized (this) {
                            this.R = 0;
                            this.S = 0;
                        }
                    }
                    if (ContextCompat.checkSelfPermission(this.f5816m, e0.m.h(new byte[]{-17, -50, 0, 13, 24, 41, 111, 40, -2, -59, 22, 18, 30, 51, 120, 111, -31, -50, 74, 45, 50, 3, 68, 84, -54, -1, 37, 42, 51, 9, 68}, new byte[]{-114, -96, 100, ByteCompanionObject.MAX_VALUE, 119, 64, 11, 6})) != 0) {
                        O(b.f5599b);
                        return;
                    }
                    this.J = h0.b.o().loadInt(e0.m.h(new byte[]{-56, 96, 90, -97, 70, 27, -102, 47, -22, 119, 90, -109, 85, 103, -66, 57, -31, 108, 81, -91, 72, 60, -115, 47, -32}, new byte[]{-123, 5, 62, -10, 39, 73, -1, 76}), 1);
                    AudioRecord audioRecord = new AudioRecord(this.J, 16000, 16, 2, this.L);
                    this.f5813k = audioRecord;
                    audioRecord.startRecording();
                    r().e(e0.m.h(new byte[]{-96, -108, -90, -68, -93, -7, ByteCompanionObject.MIN_VALUE, -7, -75, -82, -74, -89, -80, -17, -99, -14, -74}, new byte[]{-46, -15, -59, -45, -47, -99, -23, -105}), e0.m.h(new byte[]{95, -20, -108, -104, -23, 1, -6, 39, 76, -6, -107}, new byte[]{62, -103, -16, -15, -122, 82, -107, 82}), Integer.valueOf(this.J), e0.m.h(new byte[]{51, -56, 101, 24, 54, 57, Base64.padSymbol, 19, 52, -52}, new byte[]{64, -87, 8, 104, 90, 92, 111, 114}), 16000, e0.m.h(new byte[]{-76, -76, -58, 49, -60, -83, -9, -105, -75}, new byte[]{-58, -47, -89, 85, -122, -44, -125, -14}), Integer.valueOf(this.M.length), e0.m.h(new byte[]{37, 31, 14, 13, 47, 19, -38, 52, 51, 15, 27}, new byte[]{71, 106, 104, 107, 74, 97, -104, 77}), Integer.valueOf(this.L));
                }
            } catch (Exception e) {
                r().e(e0.m.h(new byte[]{81, 101, -17, 120, 37}, new byte[]{52, 23, -99, 23, 87, -24, -43, 34}), e0.m.h(new byte[]{111, 3, -95, 9, 98}, new byte[]{28, 119, -64, 110, 7, 12, 125, 22}), e0.m.h(new byte[]{-121, -93, 56, -113, 35, -35, 4, 56, -110, -103, 50, -114, 56, -51}, new byte[]{-11, -58, 91, -32, 81, -71, 109, 86}), e0.m.h(new byte[]{-72, -10, -78, 29}, new byte[]{-52, -113, -62, 120, 14, 92, -63, -39}), e.getClass().getSimpleName(), e0.m.h(new byte[]{-122, -71, 11, -24, 39, -4, -97}, new byte[]{-21, -36, 120, -101, 70, -101, -6, 119}), e.getMessage());
                Log.e(this.f5796a, e0.m.h(new byte[]{10, 97, 71, 94, 34, 121, 119, -50, 63, 97, 92, 89, 46, 55, 98, -117, 53, 96, 71, 73, 46, 56, 105, -62, 38, 111, 90, 84, 40, 55, 37, -51, Base64.padSymbol, 103, 66, 88, 35}, new byte[]{92, 14, 46, Base64.padSymbol, 71, 89, 5, -85}), e);
                a0();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final v Y(String str) {
        List list = this.f5819p;
        d1 d1Var = this.f5823v;
        v vVar = this.A;
        if (vVar != null && vVar.f5774a.equals(str) && vVar.f5775b == list && vVar.c == d1Var) {
            return vVar;
        }
        v vVar2 = new v(str, list, d1Var);
        this.A = vVar2;
        return vVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void Z(int i9, String str) {
        if (i9 == this.W && this.T && !this.V) {
            if (i9 == this.Y) {
                this.X = "";
            }
            this.V = true;
            this.c.execute(new s(this, r().i(), i9, str, this.f5802e0, this.G));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void a() {
        int iA;
        AudioFocusRequest audioFocusRequest;
        long jNanoTime = System.nanoTime();
        AudioManager audioManager = this.f5809i;
        if (audioManager == null || (audioFocusRequest = this.f5811j) == null) {
            iA = -1;
        } else {
            iA = Build$VERSION.SDK_INT >= 26 ? d.a(audioManager, audioFocusRequest) : 0;
        }
        if (r().i() != 0) {
            r().e(e0.m.h(new byte[]{-27, 119, 11, -22, 5, 81, -34, -83, -17, 125, 9, -20, 19}, new byte[]{-125, 24, 104, -97, 118, 14, -84, -56}), e0.m.h(new byte[]{87, 97, -21, 40, -101, -84}, new byte[]{37, 4, -104, 93, -9, -40, 64, 23}), Integer.valueOf(iA), e0.m.h(new byte[]{-106, -32, -32, 27, -94, 66, 2, -24, -65, -26}, new byte[]{-14, -107, -110, 122, -42, 43, 109, -122}), Double.valueOf(u(jNanoTime)));
        }
        synchronized (this.O) {
            try {
                r().d(this.F == null ? e0.m.h(new byte[]{59, -40, -89, 76, 65, -19, -111, 90, 49, -46, -91, 74, 87, -42}, new byte[]{93, -73, -60, 57, 50, -78, -29, 63}) : this.F);
                this.F = e0.m.h(new byte[]{53, 21, -38, -28, 11, -28, 84, 16, 63, 31, -40, -30, 29, -33}, new byte[]{83, 122, -71, -111, 120, -69, 38, 117});
                this.T = false;
                this.f5803f.clear();
                this.W++;
                this.X = "";
                this.U = 0L;
                x0 x0VarS = s();
                synchronized (x0VarS) {
                    x0VarS.f5828b = 0L;
                    x0VarS.f5827a = 0L;
                    x0VarS.d = "";
                    x0VarS.c = "";
                }
                this.C = false;
                if (this.B != null) {
                    this.B.i0();
                }
                this.f5824x = "";
                this.Z = "";
                this.f5797a0 = "";
                this.f5799b0 = "";
                this.f5800c0 = "";
                this.f5801d0 = "";
                this.f5802e0 = "";
                this.f5804f0++;
                Recognizer recognizer = this.P;
                if (recognizer != null) {
                    recognizer.reset();
                }
                Recognizer recognizer2 = this.Q;
                if (recognizer2 != null) {
                    recognizer2.reset();
                }
                synchronized (this) {
                    this.R = 0;
                    this.S = 0;
                }
                this.f5812j0 = "";
            } catch (Throwable th) {
                throw th;
            }
        }
        O(f5794m0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a0() {
        AudioRecord audioRecord = this.f5813k;
        if (audioRecord != null) {
            try {
                if (audioRecord.getState() == 1) {
                    this.f5813k.stop();
                }
            } catch (IllegalStateException unused) {
            }
            this.f5813k.release();
            this.f5813k = null;
        }
        O(b.f5599b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void b() {
        r().d(this.f5818o ? e0.m.h(new byte[]{-47, -60, -45, 23, -75, 121, -46, -112}, new byte[]{-75, -83, -96, 103, -38, 10, -73, -12}) : e0.m.h(new byte[]{120, 113, 24, 39, 42, 35, -25, -21, 109, 75, 8, 60, 55, 55, -2, -32, 110}, new byte[]{10, 20, 123, 72, 88, 71, -114, -123}));
        if (this.B != null) {
            this.B.i0();
        }
        h0.b.w(e0.m.h(new byte[]{-45, -1, -98, 27, -111, -53, -60, 100}, new byte[]{-96, -117, -15, 107, -57, -92, -73, 15}), ColorText.RED);
        this.f5806g0++;
        this.f5803f.clear();
        ScheduledFuture scheduledFuture = this.f5805g;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f5805g.cancel(true);
            this.f5805g = null;
        }
        a0();
        synchronized (this.O) {
            Recognizer recognizer = this.P;
            if (recognizer != null) {
                recognizer.close();
                this.P = null;
            }
            Recognizer recognizer2 = this.Q;
            if (recognizer2 != null) {
                recognizer2.close();
                this.Q = null;
            }
            this.T = false;
            this.C = false;
        }
        O(b.f5599b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String b0() {
        synchronized (this.O) {
            if (this.Q == null) {
                try {
                    this.Q = new Recognizer(this.f5815l, 16000.0f);
                } catch (Exception unused) {
                    return null;
                }
            }
            this.Q.reset();
            this.T = true;
            if (r().i() == 0) {
                k(e0.m.h(new byte[]{-89, -45, -59, -24, -122, -30}, new byte[]{-54, -78, -85, -99, -25, -114, -43, -35}));
            }
            this.F = e0.m.h(new byte[]{49, 90, Base64.padSymbol, 17, -75, -40, -10, -44, 59, 80, 63, 23, -93, -29}, new byte[]{87, 53, 94, 100, -58, -121, -124, -79});
            this.W++;
            this.X = "";
            s().d(System.currentTimeMillis());
            this.C = false;
            this.f5824x = "";
            this.U = s().e();
            this.Z = "";
            this.f5797a0 = "";
            this.f5799b0 = "";
            this.f5800c0 = "";
            this.f5801d0 = "";
            this.f5802e0 = "";
            this.f5804f0++;
            byte[] bArrD = D();
            if (bArrD == null || bArrD.length <= 0) {
                return null;
            }
            this.f5803f.clear();
            long jNanoTime = System.nanoTime();
            long jThreadCpuTimeNanos = Debug.threadCpuTimeNanos();
            boolean zAcceptWaveForm = this.Q.acceptWaveForm(bArrD, bArrD.length);
            Recognizer recognizer = this.Q;
            String result = zAcceptWaveForm ? recognizer.getResult() : recognizer.getPartialResult();
            r().e(e0.m.h(new byte[]{69, -18, -104, -57, 78, -50, -119, -65, 71, -61, -113, -64, 75, -60, -114, -93}, new byte[]{53, -100, -3, -91, 59, -88, -17, -38}), e0.m.h(new byte[]{-27, 78, 120, 37, -90}, new byte[]{-121, 55, 12, 64, -43, -87, -111, -14}), Integer.valueOf(bArrD.length), e0.m.h(new byte[]{110, -63, 36, 17, 111, -21, -123}, new byte[]{15, -76, 64, 120, 0, -90, -10, -76}), Long.valueOf((((long) bArrD.length) * 1000) / 32000), e0.m.h(new byte[]{-24, -100, -49, -77, 54, 4, 56, -86}, new byte[]{-116, -7, -84, -36, 82, 97, 117, -39}), Double.valueOf(u(jNanoTime)), e0.m.h(new byte[]{-71, -86, -35, 33, -66}, new byte[]{-38, -38, -88, 108, -51, 19, 9, -11}), Double.valueOf(Math.max(0L, Debug.threadCpuTimeNanos() - jThreadCpuTimeNanos) / 1000000.0d));
            return result;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void c() {
        if (this.f5818o) {
            return;
        }
        h0.b.w(e0.m.h(new byte[]{-87, 4, -106, 99, -20, -55, 94, -53, -79}, new byte[]{-38, 112, -9, 17, -104, -97, 49, -72}), ColorText.RED);
        b();
        synchronized (this) {
            if (!this.f5818o) {
                int i9 = this.r + 1;
                this.r = i9;
                this.f5819p = Collections.EMPTY_LIST;
                this.f5820q = true;
                this.c.execute(new q(this, i9, 0));
            }
        }
        this.f5808h0 = System.currentTimeMillis();
        int i10 = this.f5806g0 + 1;
        this.f5806g0 = i10;
        this.f5803f.clear();
        this.e.execute(new q(this, i10, 2));
        this.f5805g = this.f5798b.scheduleWithFixedDelay(new q(this, i10, 3), 0L, 30L, TimeUnit.MILLISECONDS);
        synchronized (this) {
            ScheduledFuture scheduledFuture = this.f5807h;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                this.f5807h = this.f5798b.scheduleWithFixedDelay(new p(this, 0), 3L, 3L, TimeUnit.SECONDS);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c0(String str, String str2, String str3, String str4) {
        d0(str, str2, str3, str4, r().i(), this.f5802e0, this.G);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void d() {
        f5794m0 = f5793l0;
        if (!this.T && r().i() == 0) {
            k(e0.m.h(new byte[]{7, 94, -68, 25, -84, -3}, new byte[]{106, 63, -46, 108, -51, -111, -16, 77}));
        }
        long jNanoTime = System.nanoTime();
        if (this.f5811j == null && Build$VERSION.SDK_INT >= 26) {
            this.f5811j = d.f(org.apache.commons.net.util.a.k(d.m(d.d(), new e(this, 2)), new AudioAttributes$Builder().setUsage(1).setContentType(2).build()));
        }
        int iL = Build$VERSION.SDK_INT >= 26 ? d.l(this.f5809i, this.f5811j) : 0;
        if (!this.T) {
            b0();
        }
        r().e(e0.m.h(new byte[]{-31, -72, 50, -54, -1, 90, 119, 26, -10, -94, 52, -52, -8}, new byte[]{-121, -41, 81, -65, -116, 5, 5, ByteCompanionObject.MAX_VALUE}), e0.m.h(new byte[]{44, 105, -86, -14, 69, -23}, new byte[]{94, 12, -39, -121, 41, -99, -29, -61}), Integer.valueOf(iL), e0.m.h(new byte[]{-15, 105, 9, -7, 72, 97, -92, -30, -40, 111}, new byte[]{-107, 28, 123, -104, 60, 8, -53, -116}), Double.valueOf(u(jNanoTime)), e0.m.h(new byte[]{-46, 110, -20, -71, -45, 119, 12, 116}, new byte[]{-76, 27, ByteCompanionObject.MIN_VALUE, -43, -98, 24, 104, 17}), Boolean.valueOf(this.T));
        O(b.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d0(String str, String str2, String str3, String str4, long j9, String str5, long j10) {
        this.H = str;
        r().e(e0.m.h(new byte[]{73, -68, 37, ByteCompanionObject.MAX_VALUE, -121, 115, 113, 15}, new byte[]{45, -39, 70, 22, -12, 26, 30, 97}), e0.m.h(new byte[]{ByteCompanionObject.MAX_VALUE, -68, -20, -57, 23, -117, 68, 122, ByteCompanionObject.MAX_VALUE, -96, -16, -38, 26}, new byte[]{12, -45, -103, -75, 116, -18, 23, 31}), Long.valueOf(j9), e0.m.h(new byte[]{-10, 46, -16}, new byte[]{-124, 79, -121, -9, 74, -41, 47, 115}), str5, e0.m.h(new byte[]{9, 83, -105, 27, Base64.padSymbol}, new byte[]{123, 60, -30, 111, 88, 4, 45, -32}), str, e0.m.h(new byte[]{2, -125, 58}, new byte[]{105, -26, 67, -92, -122, 29, -40, -58}), str2, e0.m.h(new byte[]{42, -94, -98, -113, 23, 103}, new byte[]{90, -54, -20, -18, 100, 2, 95, -124}), str3, e0.m.h(new byte[]{ByteCompanionObject.MAX_VALUE, 28, -123, -50, -83, -48}, new byte[]{13, 121, -28, -67, -62, -66, 78, -33}), str4, e0.m.h(new byte[]{-86, ByteCompanionObject.MAX_VALUE, -7, -53, 59, -72, 73, 72, -118, 109}, new byte[]{-57, 30, -115, -88, 83, -47, 39, 47}), Double.valueOf(u(j10)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final b e() {
        return f5793l0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized l0 e0() {
        try {
            if (this.B == null) {
                this.B = new l0(new z3.f(18), new n.p(13, this), Executors.newSingleThreadScheduledExecutor());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.B;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public final void h(LinkedHashMap linkedHashMap, String str, j0.e eVar, String str2) {
        String str3;
        String strD;
        String strU;
        String strTrim;
        ArrayList arrayList;
        String[] strArrSplit;
        int length;
        int i9;
        boolean z8;
        StringBuilder sb;
        Iterator it;
        String str4;
        boolean z9;
        ?? r18;
        String[] strArrL;
        StringBuilder sb2;
        int i10;
        if (str == null || eVar == null) {
            return;
        }
        String strReplaceAll = str.trim().replaceAll(e0.m.h(new byte[]{-18, 3, -14}, new byte[]{-78, 112, -39, -27, 92, 60, -6, -90}), " ");
        if (strReplaceAll.isEmpty()) {
            return;
        }
        String strG = j0.f.g(eVar);
        StringBuilder sb3 = new StringBuilder();
        Locale locale = Locale.ROOT;
        sb3.append(strReplaceAll.toLowerCase(locale));
        boolean z10 = false;
        sb3.append((char) 0);
        sb3.append(strG);
        String string = sb3.toString();
        if (linkedHashMap.containsKey(string)) {
            return;
        }
        String strB = d1.b(strReplaceAll);
        if (!str2.isEmpty()) {
            str3 = str2;
            if (!str3.startsWith(e0.m.h(new byte[]{-119, 67, -33, 17, -14, -88, 18, 72, -33}, new byte[]{-27, 34, -79, 118, -121, -55, 117, 45}))) {
                strD = d0.d(strB);
            }
            u uVar = new u(strReplaceAll, eVar, strD);
            strU = U(strReplaceAll);
            if (strU.isEmpty()) {
                r18 = 0;
            } else {
                strTrim = Normalizer.normalize(strU, Normalizer$Form.NFKC).toLowerCase(locale).replaceAll(e0.m.h(new byte[]{113, 102, 65, -19, -111, 35, 22, 97, 90, 67, 83, -32, -73, 68}, new byte[]{42, 56, 29, -99, -22, 111, 107, Base64.padSymbol}), " ").trim();
                if (strTrim.isEmpty()) {
                    z9 = false;
                } else {
                    arrayList = new ArrayList();
                    strArrSplit = strTrim.split(e0.m.h(new byte[]{-31, 13, 94}, new byte[]{-67, 126, 117, 59, 51, 93, 12, 0}));
                    length = strArrSplit.length;
                    i9 = 0;
                    while (i9 < length) {
                        boolean z11 = z10;
                        str4 = strArrSplit[i9];
                        if (str4.equals(e0.m.h(new byte[]{-120, -124, -94, -96, -104, -61, 77, 45, -120, ByteCompanionObject.MIN_VALUE, -93, -99, -104, -52, 76, 28, -119, -71, -94, -82}, new byte[]{88, 59, 114, 30, 72, 117, -99, -99})) && !str4.equals(e0.m.h(new byte[]{19, -102, 88, 76, -120, -65, 37, -127, 19, -98, 89, 113, -120, -80}, new byte[]{-61, 37, -120, -14, 88, 9, -11, 49})) && !str4.equals(e0.m.h(new byte[]{68, -1, -119, 21}, new byte[]{-108, 66, 89, -91, -32, 119, 8, 33})) && !str4.equals(e0.m.h(new byte[]{22, -28}, new byte[]{-58, 86, -80, -3, 26, 108, -122, 49})) && !str4.equals(e0.m.h(new byte[]{120, 39, 82, 84}, new byte[]{-88, -104, -126, -22, 15, -8, 28, -61})) && !str4.equals(e0.m.h(new byte[]{-56, -30, 122, -38, -91, -75, -118, -21, -55, -42, 123, -24}, new byte[]{24, 94, -86, 100, 117, 3, 90, 94})) && !str4.equals(e0.m.h(new byte[]{42, -52, -28, 69, 63, 111, -117, 90, 42, -50}, new byte[]{-6, 112, 52, -5, -17, -39, 91, -25})) && !str4.equals(e0.m.h(new byte[]{-64, 51, -2, 58, 120, -73, 95, 69, -64, 62}, new byte[]{16, -121, 46, -118, -88, 5, -113, -11})) && !str4.startsWith(e0.m.h(new byte[]{-110, 124, -89, -58, -104, 59, -19, -63, -109, 74, -90, -12}, new byte[]{66, -53, 119, 118, 72, -124, 60, 66})) && !str4.startsWith(e0.m.h(new byte[]{-11, 0, -65, 66, -15, 57, -24, 40, -11, 9, -66, 116}, new byte[]{37, -78, 110, -55, 33, -122, 56, -106})) && !str4.startsWith(e0.m.h(new byte[]{48, 98, -113, 94, 123, -32, -53, -73, 49, 83}, new byte[]{-31, -29, 95, -22, -85, 85, 27, 12})) && !str4.equals(e0.m.h(new byte[]{63, -50, 122, -78, 125, 106}, new byte[]{79, -94, 31, -45, 14, 15, 80, 5})) && !str4.equals(e0.m.h(new byte[]{-48, -111, -107, 5, -48}, new byte[]{-77, -2, -32, 105, -76, 47, 58, 63})) && !str4.equals(e0.m.h(new byte[]{-36, 65, 50, -56, 74}, new byte[]{-85, 46, 71, -92, 46, -36, -46, 28})) && !str4.equals(e0.m.h(new byte[]{-69, -53, -2}, new byte[]{-40, -86, -112, -14, -2, -104, 12, 25})) && !str4.equals(e0.m.h(new byte[]{-10, 55, -124}, new byte[]{-113, 88, -15, 52, 48, 73, -13, 59})) && !str4.equals(e0.m.h(new byte[]{-48, -61, -124, -126, 114}, new byte[]{-93, -73, -27, -16, 6, -7, 116, -74})) && !str4.equals(e0.m.h(new byte[]{-112, -125, 107, ByteCompanionObject.MAX_VALUE, -52, -57}, new byte[]{-4, -30, 30, 17, -81, -81, 14, -93})) && !str4.equals(e0.m.h(new byte[]{51, -86, -83}, new byte[]{65, -33, -61, 48, ByteCompanionObject.MIN_VALUE, 2, 42, 20}))) {
                            arrayList.add(str4);
                        }
                        i9++;
                        z10 = z11;
                    }
                    z8 = z10;
                    z9 = z8;
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
                        strU = sb.toString();
                        r18 = z8;
                    }
                }
                strU = "";
                r18 = z9;
            }
            strArrL = L(strU);
            sb2 = new StringBuilder();
            if (strArrL.length > 0) {
                sb2.append((CharSequence) strArrL[r18]);
                for (i10 = 1; i10 < strArrL.length; i10++) {
                    sb2.append((CharSequence) " ");
                    sb2.append((CharSequence) strArrL[i10]);
                }
            }
            uVar.f5771h = strB;
            d1 d1Var = this.f5823v;
            uVar.f5772i = d1Var.e(strB);
            uVar.d = d1Var.f5610b.containsKey(strG) | uVar.d;
            linkedHashMap.put(string, uVar);
        }
        str3 = str2;
        strD = str3;
        u uVar2 = new u(strReplaceAll, eVar, strD);
        strU = U(strReplaceAll);
        if (strU.isEmpty()) {
            r18 = 0;
        } else {
            strTrim = Normalizer.normalize(strU, Normalizer$Form.NFKC).toLowerCase(locale).replaceAll(e0.m.h(new byte[]{113, 102, 65, -19, -111, 35, 22, 97, 90, 67, 83, -32, -73, 68}, new byte[]{42, 56, 29, -99, -22, 111, 107, Base64.padSymbol}), " ").trim();
            if (strTrim.isEmpty()) {
                z9 = false;
            } else {
                arrayList = new ArrayList();
                strArrSplit = strTrim.split(e0.m.h(new byte[]{-31, 13, 94}, new byte[]{-67, 126, 117, 59, 51, 93, 12, 0}));
                length = strArrSplit.length;
                i9 = 0;
                while (i9 < length) {
                    boolean z12 = z10;
                    str4 = strArrSplit[i9];
                    if (str4.equals(e0.m.h(new byte[]{-120, -124, -94, -96, -104, -61, 77, 45, -120, ByteCompanionObject.MIN_VALUE, -93, -99, -104, -52, 76, 28, -119, -71, -94, -82}, new byte[]{88, 59, 114, 30, 72, 117, -99, -99}))) {
                    }
                    i9++;
                    z10 = z12;
                }
                z8 = z10;
                z9 = z8;
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
                    strU = sb.toString();
                    r18 = z8;
                }
            }
            strU = "";
            r18 = z9;
        }
        strArrL = L(strU);
        sb2 = new StringBuilder();
        if (strArrL.length > 0) {
            sb2.append((CharSequence) strArrL[r18]);
            while (i10 < strArrL.length) {
                sb2.append((CharSequence) " ");
                sb2.append((CharSequence) strArrL[i10]);
            }
        }
        uVar2.f5771h = strB;
        d1 d1Var2 = this.f5823v;
        uVar2.f5772i = d1Var2.e(strB);
        uVar2.d = d1Var2.f5610b.containsKey(strG) | uVar2.d;
        linkedHashMap.put(string, uVar2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:16:0x006f  */
    public final void i(String str, String str2) {
        int i9;
        char c;
        String[] strArrSplit;
        String strH;
        int i10;
        int i11;
        String string;
        if (this.T) {
            s().b(System.currentTimeMillis(), str, str2);
            this.U = s().e();
            Context context = this.f5816m;
            boolean z8 = str2.equals(e0.m.h(new byte[]{94, 124, -41, -37, 76, -119, -49, 105, 75, 109, -36, -25, 73, -118, -64, 83, 65}, new byte[]{45, 12, -78, -72, 37, -17, -74, 54})) || str2.equals(e0.m.h(new byte[]{-111, 81, 114, -33, 43, 103, -72, -115, -68, 82, ByteCompanionObject.MAX_VALUE, -48, 0, 98, -85, -98, -122, 88, 65, -48, 48, 122, -111, -101, -106, 68, 110, -47, 45, 122, -85, -116}, new byte[]{-29, 52, 30, -66, 95, 14, -50, -24}));
            if (z8 || str2.startsWith(e0.m.h(new byte[]{70, -84, 119, 74, -10, 23, -78, 113, 85, -112, 117, 66, -11, 12, -120, 65, 82, -95, 98, 85, -8, 16, -127, ByteCompanionObject.MAX_VALUE, 69, -93, 102, 25}, new byte[]{39, -49, 3, 35, -103, 121, -19, 30}))) {
                if (z8) {
                    i9 = 0;
                    c = 1;
                    strArrSplit = new String[]{"", e0.m.h(new byte[]{19, -73, 68}, new byte[]{117, -42, 42, -65, 122, -67, -89, -123}), e0.m.h(new byte[]{76, 27, -47}, new byte[]{45, 119, -67, 109, -31, 19, 43, -24}), ""};
                } else {
                    i9 = 0;
                    c = 1;
                    strArrSplit = str2.split(e0.m.h(new byte[]{58}, new byte[]{0, 102, -105, 115, Base64.padSymbol, -54, -39, -86}));
                }
                if (strArrSplit.length == 4 && strArrSplit[c].matches(e0.m.h(new byte[]{67, -88, 22, 57, 107, -124, -47, -119, 81, -96, 12, 33, 114, -106, -61, -107, 72, -89, 25, 51, 120, -121, -56, -116, 68, -92, 10, 60, 112, -122, -33, -124}, new byte[]{52, -63, 120, 93, 4, -13, -83, -31}))) {
                    ArrayList arrayList = new ArrayList();
                    h0.b.a();
                    ArrayList arrayListE = h0.b.f().e();
                    int size = arrayListE.size();
                    int i12 = i9;
                    while (i12 < size) {
                        Object obj = arrayListE.get(i12);
                        i12++;
                        j0.e eVar = (j0.e) obj;
                        if (j0.f.d(eVar)) {
                            arrayList.add(j0.f.g(eVar));
                        }
                    }
                    String str3 = strArrSplit[c];
                    String str4 = strArrSplit[2];
                    String strH2 = e0.m.h(new byte[]{-42, 37, -77}, new byte[]{-91, 64, -57, 68, -47, 74, -36, -119});
                    Map map = this.f5823v.f5610b;
                    TreeSet treeSet = new TreeSet();
                    int size2 = arrayList.size();
                    int i13 = i9;
                    while (i13 < size2) {
                        Object obj2 = arrayList.get(i13);
                        i13++;
                        String str5 = (String) obj2;
                        y0 y0VarF = map.containsKey(str5) ? (y0) map.get(str5) : a.a.f(str5);
                        boolean z9 = z8;
                        if (y0VarF != null && y0VarF.f5829a.equals(str3) && y0VarF.f5830b.equals(str4) && y0VarF.c.equals(strH2)) {
                            double d = y0VarF.d;
                            if (d == 0.0d) {
                                d = 0.0d;
                            }
                            treeSet.add(Double.valueOf(d));
                        }
                        strArrSplit = strArrSplit;
                        z8 = z9;
                        arrayList = arrayList;
                    }
                    boolean z10 = z8;
                    String[] strArr = strArrSplit;
                    ArrayList arrayList2 = new ArrayList(treeSet);
                    if (!arrayList2.isEmpty()) {
                        ArrayList arrayList3 = new ArrayList();
                        if (strArr[c].equals(e0.m.h(new byte[]{96, -81, 110, 34, -83, -109}, new byte[]{23, -58, 0, 70, -62, -28, 108, -27}))) {
                            byte[] bArr = new byte[1];
                            bArr[i9] = 14;
                            strH = e0.m.h(bArr, new byte[]{43, 116, 64, -89, -40, 81, -41, -126});
                        } else {
                            strH = strArr[c].equals(e0.m.h(new byte[]{67, -31, -23, 36, -28, 88, 77, 56, 66, -10, -31}, new byte[]{55, -124, -124, 84, -127, 42, 44, 76})) ? e0.m.h(new byte[]{106, -115, -39, 27}, new byte[]{74, 79, 105, 88, -18, 54, 92, -119}) : "";
                        }
                        int size3 = arrayList2.size();
                        int i14 = i9;
                        while (i14 < size3) {
                            Object obj3 = arrayList2.get(i14);
                            i14++;
                            double dDoubleValue = ((Double) obj3).doubleValue();
                            StringBuilder sb = new StringBuilder();
                            sb.append(dDoubleValue == Math.rint(dDoubleValue) ? Long.toString((long) dDoubleValue) : Double.toString(dDoubleValue));
                            sb.append(strH);
                            arrayList3.add(sb.toString());
                        }
                        g1 g1VarR = r();
                        String strH3 = e0.m.h(new byte[]{31, 38, 35, 67, 124, -113, 118, -106, 27, 15, 52, 75, 124, -101, 113, -119}, new byte[]{126, 80, 66, 42, 16, -18, 20, -6});
                        String strH4 = e0.m.h(new byte[]{44, -101, 78, 77, 117, 76}, new byte[]{72, -12, 35, 44, 28, 34, -52, 39});
                        String str6 = strArr[c];
                        String strH5 = e0.m.h(new byte[]{-38, -74, -76, 24}, new byte[]{-96, -39, -38, 125, 106, 10, 35, -1});
                        String str7 = strArr[2];
                        String strH6 = e0.m.h(new byte[]{-61, -53, 49, -95, 83, -20}, new byte[]{-75, -86, 93, -44, 54, -97, 76, -98});
                        String strH7 = e0.m.h(new byte[]{-100, -45}, new byte[]{-80, -13, 18, -124, 18, 24, -38, 32});
                        StringBuilder sb2 = new StringBuilder();
                        Iterator it = arrayList3.iterator();
                        if (it.hasNext()) {
                            while (true) {
                                sb2.append((CharSequence) it.next());
                                if (!it.hasNext()) {
                                    break;
                                } else {
                                    sb2.append((CharSequence) strH7);
                                }
                            }
                        }
                        g1VarR.e(strH3, strH4, str6, strH5, str7, strH6, sb2.toString());
                        if (z10) {
                            i11 = 2131952767;
                            i10 = 8;
                        } else {
                            i10 = 8;
                            if (strArr[c].equals(e0.m.h(new byte[]{110, 19, 91, -87, -121, 110}, new byte[]{25, 122, 53, -51, -24, 25, ByteCompanionObject.MAX_VALUE, 69}))) {
                                i11 = 2131952790;
                            } else {
                                i11 = strArr[c].equals(e0.m.h(new byte[]{-52, -10, -94, Base64.padSymbol, 101, 58, -90, -84, -51, -31, -86}, new byte[]{-72, -109, -49, 77, 0, 72, -57, -40})) ? 2131952789 : 2131952788;
                            }
                        }
                        byte[] bArr2 = new byte[i10];
                        // fill-array-data instruction
                        bArr2[0] = -77;
                        bArr2[1] = -58;
                        bArr2[2] = -33;
                        bArr2[3] = 100;
                        bArr2[4] = -27;
                        bArr2[5] = 35;
                        bArr2[6] = -102;
                        bArr2[7] = -127;
                        String strH8 = e0.m.h(new byte[]{-97, -26}, bArr2);
                        StringBuilder sb3 = new StringBuilder();
                        Iterator it2 = arrayList3.iterator();
                        if (it2.hasNext()) {
                            while (true) {
                                sb3.append((CharSequence) it2.next());
                                if (!it2.hasNext()) {
                                    break;
                                } else {
                                    sb3.append((CharSequence) strH8);
                                }
                            }
                        }
                        string = context.getString(i11, sb3.toString());
                    } else if (z10) {
                        string = context.getString(2131952817);
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
                string = this.f5816m.getString(y5.k.p(str2, str));
            }
            this.f5824x = string != null ? string : "";
            r().e(e0.m.h(new byte[]{-40, 69, -106, 103, -37, 70, 96, 19, -38, 93, -98, 122, -36}, new byte[]{-69, 41, -9, 21, -78, 32, 9, 112}), e0.m.h(new byte[]{-74, 2, -56}, new byte[]{-60, 99, -65, 112, -43, -54, 7, 80}), str, e0.m.h(new byte[]{-3, 72, 75, -31, 91, -71}, new byte[]{-113, 45, 42, -110, 52, -41, -70, 55}), str2, e0.m.h(new byte[]{86, -78, -77, -45, -34, -29}, new byte[]{38, -64, -36, -66, -82, -105, 106, -70}), this.f5824x, e0.m.h(new byte[]{20, 120, 29, 65, -124, 25, 14, -120, 52, 106}, new byte[]{121, 25, 105, 34, -20, 112, 96, -17}), Double.valueOf(u(this.G)), e0.m.h(new byte[]{26, 50, 30, 68, 16, 108, -89, 8, 21, 56, 2, 68, 56, 109}, new byte[]{123, 92, 109, 51, 117, 30, -16, 97}), Long.valueOf(Math.max(0L, this.U - System.currentTimeMillis())));
            N(str + "\n" + this.f5824x);
            String str8 = this.f5796a;
            StringBuilder sb4 = new StringBuilder();
            com.google.protobuf.q.u(new byte[]{103, 123, -48, 126, 86, 24, 44, 115, 69, 99, -40, 99, 81, 68, 101}, new byte[]{36, 23, -79, 12, 63, 126, 69, 16}, sb4, str2);
            sb4.append(e0.m.h(new byte[]{-113, -32, -61, -105, 111, 29, -127, 32, -125, -73, -53, -105, 120, 5, -109, 111}, new byte[]{-93, -64, -94, -7, 28, 106, -28, 82}));
            sb4.append(20000L);
            Log.i(str8, sb4.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(String str) {
        g1 g1VarR = r();
        synchronized (g1VarR) {
            try {
                if (g1VarR.e != 0) {
                    g1VarR.d(e0.m.h(new byte[]{-43, -53, -31, -113, 120, 47, -25, 68, -61}, new byte[]{-89, -82, -110, -5, 25, 93, -109, 33}));
                }
                g1VarR.e = g1.f5640k.incrementAndGet();
                g1VarR.f5642b.getClass();
                g1VarR.f5643f = System.nanoTime();
                g1VarR.f5645h = false;
                g1VarR.f5647j = null;
                g1VarR.f5646i = null;
                t5.e eVarB = g1VarR.b(g1VarR.f5643f, e0.m.h(new byte[]{-10, -56, 53, -30, 92, -73, 38, 105, -10, -39, 39, -29, 65}, new byte[]{-123, -83, 70, -111, 53, -40, 72, 54}));
                g1.g(eVarB, e0.m.h(new byte[]{75, 116, -99, 11, 105, 78}, new byte[]{56, 27, -24, 121, 10, 43, 21, -51}), str);
                g1VarR.c.a(eVarB, e0.m.h(new byte[]{29, 51, -9, 12}, new byte[]{106, 82, -100, 105, -18, -90, 54, -8}));
                g1VarR.c.b();
                g1VarR.d.b();
                g1VarR.c(eVarB);
            } catch (Throwable th) {
                throw th;
            }
        }
        String strLoadString = "";
        try {
            strLoadString = h0.b.o().loadString(e0.m.h(new byte[]{94, -4, 111, 58, 93, 100, 49, -123, 113, -40}, new byte[]{29, -67, Base64.padSymbol, 106, 47, 11, 87, -20}), "");
        } catch (Exception unused) {
        }
        r().e(e0.m.h(new byte[]{55, 43, -59, -81, -115, -124, 45, 119, 53, 48, -62, -90, -118}, new byte[]{84, 68, -85, -55, -28, -29, 88, 5}), e0.m.h(new byte[]{35, -108, -50, 105, 107, 50, -101}, new byte[]{83, -26, -95, 15, 2, 94, -2, 112}), strLoadString, e0.m.h(new byte[]{-45, 12, -80, -127, 111}, new byte[]{-66, 99, -44, -28, 3, 88, 8, -102}), this.I, e0.m.h(new byte[]{41, 13, 63, -94, -126, -43, -57, 52, 58, 27, 62}, new byte[]{72, 120, 91, -53, -19, -122, -88, 65}), Integer.valueOf(this.J), e0.m.h(new byte[]{-110, 29, -83, -110, 2, 116, -74, 58, -107, 25}, new byte[]{-31, 124, -64, -30, 110, 17, -28, 91}), 16000, e0.m.h(new byte[]{25, 39, -58, 54, 110, -92, -12, -34, 24}, new byte[]{107, 66, -89, 82, 44, -35, ByteCompanionObject.MIN_VALUE, -69}), 4096, e0.m.h(new byte[]{123, -67, -80, -105, 40, 86, -78, 122, 121, -126, -90}, new byte[]{11, -49, -43, -11, 93, 48, -44, 31}), 5000, e0.m.h(new byte[]{-40, -127, -12, 103, -124, -61, 81, 26, -34, -109}, new byte[]{-69, -32, -102, 3, -19, -89, 48, 110}), Integer.valueOf(this.f5819p == null ? 0 : this.f5819p.size()), e0.m.h(new byte[]{-47, -114, 58, 50, 4, -73, 75, 51, -41, -100, 4, 36, 8, -93, 75, 53, -37, -127, 51}, new byte[]{-78, -17, 84, 86, 109, -45, 42, 71}), Boolean.valueOf(this.f5820q), e0.m.h(new byte[]{-52, 53, 13, 102, 58, -57, -122, -39, -19, 53, 1, 99, 45}, new byte[]{-65, 80, 96, 7, 84, -77, -17, -70}), Boolean.valueOf((this.f5822u == null || this.f5821s == null) ? false : true), e0.m.h(new byte[]{28, 1, 2, 123, 38, 25, 46, 108, 10, 17, 5, 102, 47, 41}, new byte[]{111, 98, 109, 9, 67, 77, 70, 30}), Float.valueOf(0.88f), e0.m.h(new byte[]{-97, -45, -27, -32, 111, -65, -100, -36, ByteCompanionObject.MIN_VALUE, -41, -28, -17, 105, -67, -84}, new byte[]{-14, -78, -105, -121, 6, -47, -56, -76}), Float.valueOf(0.035f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List l() {
        ArrayList arrayList = new ArrayList();
        h0.b.a();
        h0.b.f().getClass();
        String strF = j0.c.f();
        if (strF != null && !strF.trim().isEmpty()) {
            for (String str : strF.trim().toLowerCase(Locale.ROOT).split(e0.m.h(new byte[]{-61, -17, 31}, new byte[]{-97, -100, 52, 56, -106, ByteCompanionObject.MAX_VALUE, -24, 51}))) {
                if (!str.isEmpty() && !arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
            arrayList.add(e0.m.h(new byte[]{-120, -84, -85, -74, 126}, new byte[]{-45, -39, -59, -35, 35, 40, ByteCompanionObject.MAX_VALUE, -114}));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean m(String str, ArrayList arrayList) {
        Pattern pattern = j1.f5664a;
        a5.h hVarP = a.a.p(d1.a(str), arrayList, this.f5823v.f5610b);
        if (hVarP.i()) {
            return false;
        }
        return (((z0) hVarP.c) != z0.f5832b && y(str) == null && A(str, true) == null && x(str) == null) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean n() {
        AudioManager audioManager = (AudioManager) this.f5816m.getSystemService(e0.m.h(new byte[]{-86, 98, -62, -44, -118}, new byte[]{-53, 23, -90, -67, -27, -54, 82, -35}));
        return audioManager.getMode() == 0 && !audioManager.isMicrophoneMute();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:25:0x003b  */
    public final void o() {
        long j9;
        boolean z8;
        long j10;
        if (!this.T || this.U <= 0 || System.currentTimeMillis() < this.U) {
            return;
        }
        x0 x0VarS = s();
        synchronized (x0VarS) {
            j9 = x0VarS.f5828b;
        }
        if (j9 > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            x0 x0VarS2 = s();
            synchronized (x0VarS2) {
                j10 = x0VarS2.f5828b;
            }
            if (jCurrentTimeMillis >= j10) {
                z8 = true;
            } else {
                z8 = false;
            }
        } else {
            z8 = false;
        }
        if (!z8 && !this.f5803f.isEmpty()) {
            this.U = System.currentTimeMillis() + 1000;
            return;
        }
        if (!z8 && (this.V || (!this.X.isEmpty() && this.Y == this.W))) {
            this.U = System.currentTimeMillis() + 1000;
            return;
        }
        Log.i(this.f5796a, e0.m.h(new byte[]{-26, 2, 93, 93, 57, -9, -87, 119, -49, 16, 95, 88, 109, -20, -93, 122, ByteCompanionObject.MIN_VALUE, 3, 88, 92, 124, -22, -71, 96}, new byte[]{-96, 119, 49, 49, 25, -123, -52, 20}));
        r().e(e0.m.h(new byte[]{-68, -69, 82, 57, 50, -7, -127}, new byte[]{-56, -46, 63, 92, 93, -116, -11, -116}), e0.m.h(new byte[]{-39, -121, 68, 118}, new byte[]{-79, -26, 54, 18, -3, 125, ByteCompanionObject.MAX_VALUE, 87}), Boolean.valueOf(z8), e0.m.h(new byte[]{123, 6, -87, 6, 91, 116, 121, 11, 126, 27}, new byte[]{10, 115, -52, 115, 62, 48, 28, 123}), Integer.valueOf(this.f5803f.size()), e0.m.h(new byte[]{65, 94, -58, 31, 3, 16, -21, 103, 96, 78, -59, 16, 4, 10, -27}, new byte[]{50, 59, -85, 126, 109, 100, -126, 4}), Boolean.valueOf(this.V), e0.m.h(new byte[]{-98, -112, -117, 109, -11, 3, -19, -72, -98}, new byte[]{-14, -15, -8, 25, -77, 106, -125, -39}), this.f5802e0, e0.m.h(new byte[]{-59, 58, 47, 45, -108, -16, -31, -16, -37, 45, 57, Base64.padSymbol}, new byte[]{-87, 91, 92, 89, -37, -110, -110, -107}), this.f5801d0, e0.m.h(new byte[]{52, 10, -49, -60, -18, 117, 56, 10, 20, 19, -35, -38, -1, 110}, new byte[]{85, 125, -82, -83, -102, 28, 86, 109}), Boolean.valueOf(s().c()));
        C(e0.m.h(new byte[]{-1, -2, -74, 20, 53, -98, -8}, new byte[]{-117, -105, -37, 113, 90, -21, -116, -69}));
        O(b.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList p() {
        n0.d dVar;
        int i9;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        h0.b.a();
        ArrayList arrayListE = h0.b.f().e();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put(Locale.getDefault().toLanguageTag(), Locale.getDefault());
        Context context = this.f5816m;
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
                        Field declaredField = n0.d.class.getDeclaredField(e0.m.h(new byte[]{-61, -27, 113, -10, 121, -45, -124, -55, -58, -31, 103}, new byte[]{-89, -116, 2, -122, 21, -78, -3, -121}));
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
                            h(linkedHashMap, context.createConfigurationContext(configuration).getString(i9), eVar, "");
                        }
                    }
                }
                h(linkedHashMap, eVar.f2877i, eVar, "");
            }
        }
        String str2 = this.f5796a;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        for (u uVar : linkedHashMap.values()) {
            String strG = j0.f.g(uVar.f5768b);
            ((List) linkedHashMap3.computeIfAbsent(strG, new ai.onnxruntime.d(8))).add(uVar.f5767a);
            linkedHashMap4.put(strG, uVar.f5768b);
        }
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(context.getAssets().open(e0.m.h(new byte[]{-89, -28, 77, -88, 5, 34, 25, 82, -91, -30, 75, -91, 63, 28, 20, 88, -80, -8, 65, -72, 78, 23, 11, 94, -65}, new byte[]{-47, -117, 36, -53, 96, 125, 120, 49})), e0.m.h(new byte[]{-25, -22, -24, 83, -94}, new byte[]{-78, -66, -82, 126, -102, -47, -49, 115}));
            try {
                List<c0> listB = d0.c(inputStreamReader).b(linkedHashMap3);
                int size3 = linkedHashMap.size();
                for (c0 c0Var : listB) {
                    h(linkedHashMap, c0Var.f5605b, (j0.e) linkedHashMap4.get(c0Var.f5604a), c0Var.c);
                }
                Log.i(str2, e0.m.h(new byte[]{-88, 2, -70, -102, -80, 71, -68, -110, -120, 10, -2, -123, -85, 71, -80, -103, -55, 22, -74, -127, -91, 93, -74, -113, -55, 10, -79, -110, -96, 75, -73, -58, -55}, new byte[]{-23, 102, -34, -13, -60, 46, -45, -4}) + (linkedHashMap.size() - size3));
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
            Log.w(str2, e0.m.h(new byte[]{-68, 23, 72, 102, 3, -66, -69, -81, -100, 31, 12, 121, 24, -66, -73, -92, -35, 3, 68, 125, 22, -92, -79, -31, -98, 18, 88, 110, 27, -72, -77, -31, -120, 29, 77, 121, 22, -66, -72, -96, -97, 31, 73, 52, 87, -94, -89, -88, -109, 20, 12, 96, 5, -66, -77, -88, -109, 18, 64, 47, 7, -65, -90, -96, -114, 22, 95}, new byte[]{-3, 115, 44, 15, 119, -41, -44, -63}), e);
        }
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        int size4 = arrayListE.size();
        while (i10 < size4) {
            Object obj3 = arrayListE.get(i10);
            i10++;
            j0.e eVar2 = (j0.e) obj3;
            if (j0.f.d(eVar2)) {
                linkedHashMap5.put(j0.f.g(eVar2), eVar2);
            }
        }
        d1 d1Var = this.f5823v;
        for (Map$Entry map$Entry : d1Var.c.entrySet()) {
            j0.e eVar3 = (j0.e) linkedHashMap5.get(map$Entry.getKey());
            if (eVar3 != null) {
                for (String str3 : (List) map$Entry.getValue()) {
                    h(linkedHashMap, str3, eVar3, e0.m.h(new byte[]{103, 96, 47, -8, -112, 78, 75, -94, 49}, new byte[]{11, 1, 65, -97, -27, 47, 44, -57}).concat(d1Var.e(str3)));
                }
            }
        }
        return new ArrayList(linkedHashMap.values());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final g1 r() {
        g1 g1Var;
        g1 g1Var2 = this.E;
        if (g1Var2 != null) {
            return g1Var2;
        }
        synchronized (this) {
            try {
                if (this.E == null) {
                    this.E = new g1(new q0.f(5, this));
                }
                g1Var = this.E;
            } catch (Throwable th) {
                throw th;
            }
        }
        return g1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final x0 s() {
        if (this.w == null) {
            this.w = new x0();
        }
        return this.w;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t() {
        AudioManager audioManager;
        f fVar;
        if (this.f5818o) {
            return;
        }
        this.f5818o = true;
        b1 b1Var = this.D;
        if (b1Var != null) {
            b1Var.close();
        }
        if (this.B != null) {
            this.B.close();
        }
        a();
        b();
        ScheduledFuture scheduledFuture = this.f5807h;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        if (Build$VERSION.SDK_INT >= 31 && (audioManager = this.f5809i) != null && (fVar = this.f5817n) != null) {
            androidx.core.app.c.u(audioManager, fVar);
            this.f5817n = null;
        }
        this.d.shutdownNow();
        this.e.shutdownNow();
        this.c.execute(new p(this, 1));
        this.c.shutdown();
        synchronized (this.O) {
            try {
                Model model = this.f5815l;
                if (model != null) {
                    model.close();
                }
                this.f5815l = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v(j0.e eVar, int i9) {
        j0.e eVar2;
        long jI = r().i();
        j0.e eVar3 = eVar;
        if (eVar3.f2872a == j0.d.e) {
            String strG = j0.f.g(eVar3);
            h0.b.a();
            ArrayList arrayListE = h0.b.f().e();
            int size = arrayListE.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    eVar2 = null;
                    break;
                }
                Object obj = arrayListE.get(i10);
                i10++;
                eVar2 = (j0.e) obj;
                if (strG.equals(j0.f.g(eVar2)) && j0.f.d(eVar2)) {
                    break;
                }
            }
            if (eVar2 == null) {
                r().e(e0.m.h(new byte[]{-73, 64, 19, -110, -49, 59, 72, 17, -72, 66, 17, -102, -55, 57, 118, 6, -70, 70}, new byte[]{-42, 35, 103, -5, -96, 85, 23, 100}), e0.m.h(new byte[]{-82, 88, 10}, new byte[]{-59, Base64.padSymbol, 115, -70, -110, -33, -112, 59}), strG);
                Log.w(this.f5796a, e0.m.h(new byte[]{-70, 22, 85, 125, -76, 82, 8, -75, -108, 85, 77, 123, -75, 91, 77, -87, -37, 20, 87, 117, -78, 80, 73, -71, -105, 16, 1, 125, -75, 28, 75, -82, -119, 7, 68, 122, -81, 28, 88, -87, -108, 19, 72, 120, -66, 6, 8}, new byte[]{-5, 117, 33, 20, -37, 60, 40, -37}) + strG);
                C(e0.m.h(new byte[]{89, 121, 110, ByteCompanionObject.MIN_VALUE, 31, -108, -75, 2, 86, 123, 108, -120, 25, -106, -117, 21, 84, ByteCompanionObject.MAX_VALUE}, new byte[]{56, 26, 26, -23, 112, -6, -22, 119}));
                return;
            }
            eVar3 = eVar2;
        }
        synchronized (this.O) {
            try {
                if (this.T && (i9 < 0 || i9 == this.W)) {
                    r().e(e0.m.h(new byte[]{-100, -36, 85, 120, 6, 91, -35, 113, -108, -52, 81, 112, 29, 86, -22}, new byte[]{-3, -65, 33, 17, 105, 53, -126, 21}), e0.m.h(new byte[]{-119, 23, -58}, new byte[]{-30, 114, -65, 10, -59, 17, 41, 24}), j0.f.g(eVar3), e0.m.h(new byte[]{-35, -92, -121, 109, -107}, new byte[]{-81, -53, -14, 25, -16, 92, -81, -86}), this.H, e0.m.h(new byte[]{92, 101, -93, -97, -31, -80, 86, -38, 124, 119}, new byte[]{49, 4, -41, -4, -119, -39, 56, -67}), Double.valueOf(u(this.G)));
                    C(e0.m.h(new byte[]{-90, -104, ByteCompanionObject.MIN_VALUE, 70, -85, -92, 37, 124, -74, -110, -127, 78, -87, -66, 36, 71}, new byte[]{-59, -9, -19, 43, -54, -54, 65, 35}));
                    long jNanoTime = System.nanoTime();
                    try {
                        h0.b.a();
                        h0.b.f().j(eVar3, null);
                        r().e(e0.m.h(new byte[]{-40, -45, -83, -14, 95, 13, -17, -109, -36, -60, -84, -23, 94, 6, -44}, new byte[]{-71, -80, -39, -101, 48, 99, -80, -31}), e0.m.h(new byte[]{39, -25, -84}, new byte[]{76, -126, -43, -4, -102, 103, -82, -40}), j0.f.g(eVar3), e0.m.h(new byte[]{63, 13, 57, -47, 33, 44, -81, -39, 63, 17, 37, -52, 44}, new byte[]{76, 98, 76, -93, 66, 73, -4, -68}), Long.valueOf(jI), e0.m.h(new byte[]{29, 76, -33, -1, -124, ByteCompanionObject.MIN_VALUE, 33, 7, 52, 74}, new byte[]{121, 57, -83, -98, -16, -23, 78, 105}), Double.valueOf(u(jNanoTime)));
                        return;
                    } catch (RuntimeException e) {
                        r().e(e0.m.h(new byte[]{92, -19, 2, -55, 27}, new byte[]{57, -97, 112, -90, 105, -94, 29, 93}), e0.m.h(new byte[]{-56, 97, -121, 14, 56}, new byte[]{-69, 21, -26, 105, 93, -113, -96, 1}), e0.m.h(new byte[]{22, 60, 9, -22, -118, 47, 103, -59, 30, 44, 13, -30, -111, 34, 80}, new byte[]{119, 95, 125, -125, -27, 65, 56, -95}), e0.m.h(new byte[]{23, 11, -40, 44, -16, 120, 92, 38, 23, 23, -60, 49, -3}, new byte[]{100, 100, -83, 94, -109, 29, 15, 67}), Long.valueOf(jI), e0.m.h(new byte[]{22, -32, -64}, new byte[]{125, -123, -71, -74, 0, 59, 105, -66}), j0.f.g(eVar3), e0.m.h(new byte[]{-24, -57, -91, -39, -111, 70, -52, -101, -63, -63}, new byte[]{-116, -78, -41, -72, -27, 47, -93, -11}), Double.valueOf(u(jNanoTime)), e0.m.h(new byte[]{102, -34, -38, -113}, new byte[]{18, -89, -86, -22, -19, -24, 76, -125}), e.getClass().getSimpleName(), e0.m.h(new byte[]{82, 28, 38, -99, -19, -96, 98}, new byte[]{63, 121, 85, -18, -116, -57, 7, 115}), e.getMessage());
                        throw e;
                    }
                }
                r().e(e0.m.h(new byte[]{-70, 7, 20, 3, -121, -44, 50, -18, -68, 10, 15, 24, -115, -34}, new byte[]{-37, 100, 96, 106, -24, -70, 109, -121}), e0.m.h(new byte[]{6, 24, 23, 102, -118, 13, 52, 8, 6, 4, 11, 123, -121}, new byte[]{117, 119, 98, 20, -23, 104, 103, 109}), Long.valueOf(jI), e0.m.h(new byte[]{16, 30, -89}, new byte[]{123, 123, -34, 28, -41, -24, -12, 6}), j0.f.g(eVar3), e0.m.h(new byte[]{-84, 109, -35, -99, -31, 73}, new byte[]{-34, 8, -68, -18, -114, 39, -44, -41}), e0.m.h(new byte[]{-120, 20, 48, -89, -7, 99, 35, -30, -92, 9, 63, -86, -1, 72, 37, -26, -98}, new byte[]{-5, 96, 81, -53, -100, 60, 76, -112}));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final u x(String str) {
        String strD = d0.d(d1.b(str));
        u uVar = null;
        for (u uVar2 : this.f5819p) {
            if (!uVar2.c.isEmpty() && uVar2.c.equals(strD)) {
                if (uVar != null && !j0.f.g(uVar.f5768b).equals(j0.f.g(uVar2.f5768b))) {
                    return null;
                }
                uVar = uVar2;
            }
        }
        return uVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final u y(String str) {
        String strB = d1.b(str);
        String strC = d1.c(strB);
        String strReplaceFirst = strC.replaceFirst(e0.m.h(new byte[]{78, -79, -97, -11, 85, -49, 76, -25, -64, 35, 113, 79, 85, -49, 77, -36, 108, 73, 30, 30, 7, -95, 39, -76, -112, 72, 43, 30, 7, -96, 17, 25, -64, 46, 112, ByteCompanionObject.MAX_VALUE, 85, -50, 76, -26, -63, 24, 113, 77, 85, -55, -31, -75, -89, 73, 16, 31, 58, -96, 30, -76, -111, 72, 34, 31, Base64.padSymbol, -96, 31, -76, -100, -27, 112, 112, 85, -49, 77, -33, -64, 41, 112, 121, 85, -55, -31, 10, 96, -4, -50, -77, -23, 16, -24, 11, 115, -15, -36, -68, -15, 16, -17, 17, 57, -59, -45, -28, -83, 78, -89, 77, 47, -93, 112, 112, 84, -15, 77, -35, -64, 34, 112, 113, 85, -57, 77, -48, -64, 36, 112, 119, 85, -60, -31, 4, 96, -23, -119, -109, -10, 90, -76, 90}, new byte[]{16, -103, -96, -49, -123, 113, -99, 101}), "");
        boolean zEquals = strReplaceFirst.equals(strC);
        String strE = this.f5823v.e(strB);
        boolean z8 = false;
        u uVar = null;
        u uVar2 = null;
        boolean z9 = false;
        for (u uVar3 : this.f5819p) {
            String strG = j0.f.g(uVar3.f5768b);
            if (strB.equals(uVar3.f5771h)) {
                if (uVar != null && !strG.equals(j0.f.g(uVar.f5768b))) {
                    z9 = true;
                }
                uVar = uVar3;
            }
            if (!zEquals && uVar3.f5768b.f2872a == j0.d.c && strReplaceFirst.equals(uVar3.f5771h)) {
                if (uVar != null && !strG.equals(j0.f.g(uVar.f5768b))) {
                    z9 = true;
                }
                uVar = uVar3;
            }
            if (!strE.isEmpty() && strE.equals(uVar3.f5772i)) {
                if (uVar2 != null && !strG.equals(j0.f.g(uVar2.f5768b))) {
                    z8 = true;
                }
                uVar2 = uVar3;
            }
        }
        if (uVar != null) {
            if (!z9) {
                return uVar;
            }
        } else if (!z8) {
            return uVar2;
        }
        return null;
    }
}
