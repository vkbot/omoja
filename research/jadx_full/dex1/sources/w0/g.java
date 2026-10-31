package w0;

import android.content.Context;
import android.media.AudioAttributes$Builder;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.os.Build$VERSION;
import androidx.core.content.ContextCompat;
import com.example.navistart.cores.ColorText;
import com.sun.jna.Native;
import e0.p3;
import e0.x1;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
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
public final class g implements y {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static b f5622u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static b f5623v;
    public static f w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f5624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ScheduledFuture f5625b;
    public final AudioManager c;
    public AudioFocusRequest d;
    public AudioRecord e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Model f5626f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Context f5627g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5628h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5629i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final byte[] f5630j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f5631k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Object f5632l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Recognizer f5633m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Recognizer f5634n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5635o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5636p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f5637q;
    public String r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f5638s;
    public long t;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        b bVar = b.f5599b;
        f5622u = bVar;
        f5623v = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(Context context) {
        e0.m.h(new byte[]{63, -46, 125, 48, 114, 114, 8, -2, 5, -52, 113, 96}, new byte[]{108, -94, 20, 83, 26, 55, 102, -103});
        this.f5624a = e0.w.c(-1, e0.m.h(new byte[]{-118, -35, 50, 122, 32, 105, 93, -12, -80, -61, 62, 42}, new byte[]{-39, -83, 91, 25, 72, 44, 51, -109}));
        this.f5628h = false;
        this.f5629i = AudioRecord.getMinBufferSize(16000, 16, 2);
        this.f5630j = new byte[8192];
        this.f5631k = new byte[160000];
        this.f5632l = new Object();
        this.f5635o = 0;
        this.f5636p = 0;
        this.f5637q = false;
        this.r = "";
        this.f5638s = 0L;
        this.t = 0L;
        this.f5627g = context;
        System.setProperty(e0.m.h(new byte[]{-43, -37, 80, -120, 10, -71, 121, 43, -52}, new byte[]{-65, -75, 49, -90, 100, -42, 10, 82}), e0.m.h(new byte[]{7, -28, 88, -75}, new byte[]{115, -106, 45, -48, 36, 38, -14, 126}));
        Native.setProtected(true);
        System.setProperty(e0.m.h(new byte[]{119, -43, 54, 94, -64, 104, -50, 88, 51, -41, 62, 18, -48, 102, -45, 85, 51, -53, 54, 4, -54}, new byte[]{29, -69, 87, 112, -94, 7, -95, 44}), context.getApplicationInfo().nativeLibraryDir);
        System.loadLibrary(e0.m.h(new byte[]{-107, 108, -79, 86, 124, 46, -114, 107, -117, 97, -80}, new byte[]{-1, 2, -40, 50, 21, 93, -2, 10}));
        System.loadLibrary(e0.m.h(new byte[]{-96, -23, -91, 100}, new byte[]{-42, -122, -42, 15, 121, 112, -90, -53}));
        try {
            String str = l1.f5708a;
            File filesDir = context.getFilesDir();
            String str2 = l1.f5708a;
            if (l1.e(new File(filesDir, str2)) == null) {
                l1.f(context, k1.e, null);
            }
            File fileE = l1.e(new File(context.getFilesDir(), str2));
            if (fileE == null) {
                throw new IOException(e0.m.h(new byte[]{-54, -76, -20, 37, 33, -50, -118, 12, -7, -73, -65, 39, 114, -125, -117, 7, -24, -5, -10, 32, 114, -41, -124, 4, -16, -66, -5}, new byte[]{-100, -37, -97, 78, 1, -93, -27, 104}));
            }
            this.f5626f = new Model(fileE.getAbsolutePath());
            if (this.c == null) {
                this.c = (AudioManager) context.getSystemService(e0.m.h(new byte[]{-122, 94, 14, -95, 60}, new byte[]{-25, 43, 106, -56, 83, 30, -19, -36}));
            }
            if (Build$VERSION.SDK_INT >= 31) {
                f fVar = w;
                if (fVar != null) {
                    androidx.core.app.c.s(this.c, fVar);
                }
                w = new f(this, 0);
                androidx.core.app.c.t(this.c, Executors.newSingleThreadExecutor(), w);
            }
        } catch (Exception unused) {
        }
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
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-3}, new byte[]{-51, -35, 88, -92, -69, -108, 124, -3}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean g(String str) {
        h0.b.a();
        h0.b.f().getClass();
        String strF = j0.c.f();
        return (strF == null || strF.trim().isEmpty() || str == null || !str.toLowerCase().contains(strF.trim().toLowerCase())) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean h(String str) {
        if (str != null) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty() && !strTrim.equals(e0.m.h(new byte[]{117, -41}, new byte[]{46, -118, 2, -101, 92, 112, -82, 81})) && !strTrim.equals(e0.m.h(new byte[]{79, 4}, new byte[]{52, 121, 59, -97, 55, 63, 12, -90})) && strTrim.length() >= 5 && strTrim.startsWith(e0.m.h(new byte[]{-111}, new byte[]{-54, -99, 53, -101, -119, -29, -83, 76})) && strTrim.endsWith(e0.m.h(new byte[]{86}, new byte[]{11, -106, 13, -82, 43, -86, -9, -77}))) {
                for (char c : strTrim.toCharArray()) {
                    if (Character.isLetterOrDigit(c) || e0.m.h(new byte[]{46, 104, -62, -55, -78}, new byte[]{12, 51, -97, -27, -110, -105, -54, 58}).indexOf(c) != -1) {
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
    @Override // w0.y
    public final void a() {
        AudioFocusRequest audioFocusRequest;
        AudioManager audioManager = this.c;
        if (audioManager != null && (audioFocusRequest = this.d) != null && Build$VERSION.SDK_INT >= 26) {
            org.apache.commons.net.util.a.t(audioManager, audioFocusRequest);
        }
        synchronized (this.f5632l) {
            try {
                this.f5637q = false;
                Recognizer recognizer = this.f5633m;
                if (recognizer != null) {
                    recognizer.reset();
                }
                Recognizer recognizer2 = this.f5634n;
                if (recognizer2 != null) {
                    recognizer2.reset();
                }
                this.f5635o = 0;
                this.f5636p = 0;
                this.r = "";
                this.f5638s = 0L;
            } catch (Throwable th) {
                throw th;
            }
        }
        j(f5623v);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void b() {
        h0.b.w(e0.m.h(new byte[]{47, -24, 112, -80, 18, -89, -126, -49}, new byte[]{92, -100, 31, -64, 68, -56, -15, -92}), ColorText.RED);
        ScheduledFuture scheduledFuture = this.f5625b;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f5625b.cancel(true);
            this.f5625b = null;
        }
        o();
        j(b.f5599b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void c() {
        h0.b.w(e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, -122, 22, -125, 53, -127, -79, 15, -104}, new byte[]{-13, -14, 119, -15, 65, -41, -34, 124}), ColorText.RED);
        b();
        this.f5625b = this.f5624a.scheduleWithFixedDelay(new f5.j(20, this), 0L, 30L, TimeUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final void d() {
        f5623v = f5622u;
        if (this.d == null && Build$VERSION.SDK_INT >= 26) {
            this.d = d.f(org.apache.commons.net.util.a.k(org.apache.commons.net.util.a.l(d.d(), new e(this, 0)), new AudioAttributes$Builder().setUsage(1).setContentType(2).build()));
        }
        if (Build$VERSION.SDK_INT >= 26) {
            d.j(this.c, this.d);
        }
        p();
        j(b.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w0.y
    public final b e() {
        return f5622u;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void i(String str) {
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
    public final void j(b bVar) {
        if (f().booleanValue()) {
            f5622u = bVar;
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
    public final String k(int i9) {
        synchronized (this.f5632l) {
            try {
                l(i9, this.f5630j);
                Recognizer recognizer = this.f5637q ? this.f5634n : this.f5633m;
                if (recognizer == null) {
                    return null;
                }
                return recognizer.acceptWaveForm(this.f5630j, i9) ? recognizer.getResult() : recognizer.getPartialResult();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(int i9, byte[] bArr) {
        if (bArr == null || i9 <= 0) {
            return;
        }
        int iMin = Math.min(i9, bArr.length);
        byte[] bArr2 = this.f5631k;
        int iMax = Math.max(0, iMin - bArr2.length);
        int i10 = iMin - iMax;
        while (i10 > 0) {
            int iMin2 = Math.min(i10, bArr2.length - this.f5636p);
            System.arraycopy(bArr, iMax, bArr2, this.f5636p, iMin2);
            this.f5636p = (this.f5636p + iMin2) % bArr2.length;
            this.f5635o = Math.min(this.f5635o + iMin2, bArr2.length);
            iMax += iMin2;
            i10 -= iMin2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(String str) {
        String strTrim = "";
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean z8 = this.f5637q;
            String strTrim2 = jSONObject.optString(e0.m.h(new byte[]{57, -65, 32, -77}, new byte[]{77, -38, 88, -57, -76, -119, 10, -61}), "").trim();
            if (!z8 && strTrim2.isEmpty()) {
                strTrim2 = jSONObject.optString(e0.m.h(new byte[]{-120, -47, 41, -75, ByteCompanionObject.MIN_VALUE, 18, -24}, new byte[]{-8, -80, 91, -63, -23, 115, -124, -43}), "").trim();
            }
            if ("".equals(strTrim2)) {
                return;
            }
            long jCurrentTimeMillis = 0;
            if (!z8) {
                if (g(strTrim2)) {
                    String strP = p();
                    if (strTrim2 != null) {
                        strTrim = strTrim2.trim();
                    }
                    this.r = strTrim;
                    if (!strTrim.isEmpty()) {
                        jCurrentTimeMillis = System.currentTimeMillis() + 450;
                    }
                    this.f5638s = jCurrentTimeMillis;
                    m(strP);
                    return;
                }
                return;
            }
            String str2 = this.r;
            boolean z9 = false;
            if ((str2 == null || str2.trim().isEmpty()) ? false : true) {
                String str3 = this.r;
                if (str3 != null && !str3.trim().isEmpty()) {
                    z9 = true;
                }
                if (z9 && strTrim2 != null && g(strTrim2) && strTrim2.trim().length() <= this.r.trim().length() + 2) {
                    return;
                }
                if (!g(strTrim2)) {
                    strTrim2 = this.r + " " + strTrim2;
                }
                this.r = "";
                this.f5638s = 0L;
            }
            i(strTrim2);
        } catch (JSONException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.t < 1000) {
            return;
        }
        this.t = jCurrentTimeMillis;
        AudioManager audioManager = (AudioManager) this.f5627g.getSystemService(e0.m.h(new byte[]{-98, -61, -52, -103, 77}, new byte[]{-1, -74, -88, -16, 34, 89, -74, 36}));
        if (audioManager.getMode() != 0 || audioManager.isMicrophoneMute()) {
            return;
        }
        o();
        try {
            ArrayList arrayList = new ArrayList();
            h0.b.a();
            h0.b.f().getClass();
            String strF = j0.c.f();
            if (strF != null && !strF.trim().isEmpty()) {
                arrayList.add(strF.trim().toLowerCase());
            }
            String string = new JSONArray((Collection) arrayList).toString();
            if (h(string)) {
                synchronized (this.f5632l) {
                    float f8 = 16000;
                    this.f5633m = new Recognizer(this.f5626f, f8, string);
                    this.f5634n = new Recognizer(this.f5626f, f8);
                    this.f5637q = f5622u == b.d;
                    this.f5635o = 0;
                    this.f5636p = 0;
                }
                if (ContextCompat.checkSelfPermission(this.f5627g, e0.m.h(new byte[]{ByteCompanionObject.MAX_VALUE, -98, -84, 21, 44, -94, 42, 47, 110, -107, -70, 10, 42, -72, Base64.padSymbol, 104, 113, -98, -26, 53, 6, -120, 1, 83, 90, -81, -119, 50, 7, -126, 1}, new byte[]{30, -16, -56, 103, 67, -53, 78, 1})) != 0) {
                    j(b.f5599b);
                    return;
                }
                AudioRecord audioRecord = new AudioRecord(h0.b.o().loadInt(e0.m.h(new byte[]{-30, -115, 106, 11, -18, 103, -44, -6, -64, -102, 106, 7, -3, 27, -16, -20, -53, -127, 97, 49, -32, 64, -61, -6, -54}, new byte[]{-81, -24, 14, 98, -113, 53, -79, -103}), 1), 16000, 16, 2, this.f5629i);
                this.e = audioRecord;
                audioRecord.startRecording();
            }
        } catch (Exception unused) {
            o();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o() {
        AudioRecord audioRecord = this.e;
        if (audioRecord != null) {
            try {
                if (audioRecord.getState() == 1) {
                    this.e.stop();
                }
            } catch (IllegalStateException unused) {
            }
            this.e.release();
            this.e = null;
        }
        j(b.f5599b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String p() {
        byte[] bArr;
        synchronized (this.f5632l) {
            if (this.f5634n == null) {
                try {
                    this.f5634n = new Recognizer(this.f5626f, 16000.0f);
                } catch (Exception unused) {
                    return null;
                }
            }
            this.f5634n.reset();
            this.f5637q = true;
            byte[] bArr2 = this.f5631k;
            int i9 = this.f5635o;
            if (i9 <= 0) {
                bArr = null;
            } else {
                bArr = new byte[i9];
                int length = ((this.f5636p - i9) + bArr2.length) % bArr2.length;
                int iMin = Math.min(i9, bArr2.length - length);
                System.arraycopy(bArr2, length, bArr, 0, iMin);
                int i10 = this.f5635o;
                if (iMin < i10) {
                    System.arraycopy(bArr2, 0, bArr, iMin, i10 - iMin);
                }
            }
            if (bArr == null || bArr.length <= 0) {
                return null;
            }
            boolean zAcceptWaveForm = this.f5634n.acceptWaveForm(bArr, bArr.length);
            Recognizer recognizer = this.f5634n;
            return zAcceptWaveForm ? recognizer.getResult() : recognizer.getPartialResult();
        }
    }
}
