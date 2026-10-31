package p225w0;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.example.navistart.cores.ColorText;
import com.google.protobuf.AbstractC1178q;
import com.sun.jna.Native;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
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
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p098j0.C1917c;
import p206u0.C3277a;

/* JADX INFO: renamed from: w0.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3458g implements InterfaceC3500y {

    /* JADX INFO: renamed from: u */
    public static EnumC3443b f9967u;

    /* JADX INFO: renamed from: v */
    public static EnumC3443b f9968v;

    /* JADX INFO: renamed from: w */
    public static C3455f f9969w;

    /* JADX INFO: renamed from: a */
    public final ScheduledThreadPoolExecutor f9970a;

    /* JADX INFO: renamed from: b */
    public ScheduledFuture f9971b;

    /* JADX INFO: renamed from: c */
    public final AudioManager f9972c;

    /* JADX INFO: renamed from: d */
    public AudioFocusRequest f9973d;

    /* JADX INFO: renamed from: e */
    public AudioRecord f9974e;

    /* JADX INFO: renamed from: f */
    public final Model f9975f;

    /* JADX INFO: renamed from: g */
    public final Context f9976g;

    /* JADX INFO: renamed from: h */
    public boolean f9977h;

    /* JADX INFO: renamed from: i */
    public final int f9978i;

    /* JADX INFO: renamed from: j */
    public final byte[] f9979j;

    /* JADX INFO: renamed from: k */
    public final byte[] f9980k;

    /* JADX INFO: renamed from: l */
    public final Object f9981l;

    /* JADX INFO: renamed from: m */
    public Recognizer f9982m;

    /* JADX INFO: renamed from: n */
    public Recognizer f9983n;

    /* JADX INFO: renamed from: o */
    public int f9984o;

    /* JADX INFO: renamed from: p */
    public int f9985p;

    /* JADX INFO: renamed from: q */
    public boolean f9986q;

    /* JADX INFO: renamed from: r */
    public String f9987r;

    /* JADX INFO: renamed from: s */
    public long f9988s;

    /* JADX INFO: renamed from: t */
    public long f9989t;

    static {
        EnumC3443b enumC3443b = EnumC3443b.f9929b;
        f9967u = enumC3443b;
        f9968v = enumC3443b;
    }

    public C3458g(Context context) {
        AbstractC1387m.m2421h(new byte[]{63, -46, 125, 48, 114, 114, 8, -2, 5, -52, 113, 96}, new byte[]{108, -94, 20, 83, 26, 55, 102, -103});
        this.f9970a = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-118, -35, 50, 122, 32, 105, 93, -12, -80, -61, 62, 42}, new byte[]{-39, -83, 91, 25, 72, 44, 51, -109}));
        this.f9977h = false;
        this.f9978i = AudioRecord.getMinBufferSize(16000, 16, 2);
        this.f9979j = new byte[8192];
        this.f9980k = new byte[160000];
        this.f9981l = new Object();
        this.f9984o = 0;
        this.f9985p = 0;
        this.f9986q = false;
        this.f9987r = "";
        this.f9988s = 0L;
        this.f9989t = 0L;
        this.f9976g = context;
        System.setProperty(AbstractC1387m.m2421h(new byte[]{-43, -37, 80, -120, 10, -71, 121, 43, -52}, new byte[]{-65, -75, 49, -90, 100, -42, 10, 82}), AbstractC1387m.m2421h(new byte[]{7, -28, 88, -75}, new byte[]{115, -106, 45, -48, 36, 38, -14, 126}));
        Native.setProtected(true);
        System.setProperty(AbstractC1387m.m2421h(new byte[]{119, -43, 54, 94, -64, 104, -50, 88, 51, -41, 62, 18, -48, 102, -45, 85, 51, -53, 54, 4, -54}, new byte[]{29, -69, 87, 112, -94, 7, -95, 44}), context.getApplicationInfo().nativeLibraryDir);
        System.loadLibrary(AbstractC1387m.m2421h(new byte[]{-107, 108, -79, 86, 124, 46, -114, 107, -117, 97, -80}, new byte[]{-1, 2, -40, 50, 21, 93, -2, 10}));
        System.loadLibrary(AbstractC1387m.m2421h(new byte[]{-96, -23, -91, 100}, new byte[]{-42, -122, -42, 15, 121, 112, -90, -53}));
        try {
            String str = AbstractC3475l1.f10099a;
            File filesDir = context.getFilesDir();
            String str2 = AbstractC3475l1.f10099a;
            if (AbstractC3475l1.m5451e(new File(filesDir, str2)) == null) {
                AbstractC3475l1.m5452f(context, EnumC3472k1.f10049e, null);
            }
            File fileM5451e = AbstractC3475l1.m5451e(new File(context.getFilesDir(), str2));
            if (fileM5451e == null) {
                throw new IOException(AbstractC1387m.m2421h(new byte[]{-54, -76, -20, 37, 33, -50, -118, 12, -7, -73, -65, 39, 114, -125, -117, 7, -24, -5, -10, 32, 114, -41, -124, 4, -16, -66, -5}, new byte[]{-100, -37, -97, 78, 1, -93, -27, 104}));
            }
            this.f9975f = new Model(fileM5451e.getAbsolutePath());
            if (this.f9972c == null) {
                this.f9972c = (AudioManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{-122, 94, 14, -95, 60}, new byte[]{-25, 43, 106, -56, 83, 30, -19, -36}));
            }
            if (Build.VERSION.SDK_INT >= 31) {
                C3455f c3455f = f9969w;
                if (c3455f != null) {
                    this.f9972c.removeOnModeChangedListener(c3455f);
                }
                f9969w = new C3455f(this, 0);
                this.f9972c.addOnModeChangedListener(Executors.newSingleThreadExecutor(), f9969w);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: f */
    public static Boolean m5399f() {
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
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-3}, new byte[]{-51, -35, 88, -92, -69, -108, 124, -3}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: g */
    public static boolean m5400g(String str) {
        C1652b.m2734a();
        C1652b.m2737f().getClass();
        String strM2986f = C1917c.m2986f();
        return (strM2986f == null || strM2986f.trim().isEmpty() || str == null || !str.toLowerCase().contains(strM2986f.trim().toLowerCase())) ? false : true;
    }

    /* JADX INFO: renamed from: h */
    public static boolean m5401h(String str) {
        if (str != null) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty() && !strTrim.equals(AbstractC1387m.m2421h(new byte[]{117, -41}, new byte[]{46, -118, 2, -101, 92, 112, -82, 81})) && !strTrim.equals(AbstractC1387m.m2421h(new byte[]{79, 4}, new byte[]{52, 121, 59, -97, 55, 63, 12, -90})) && strTrim.length() >= 5 && strTrim.startsWith(AbstractC1387m.m2421h(new byte[]{-111}, new byte[]{-54, -99, 53, -101, -119, -29, -83, 76})) && strTrim.endsWith(AbstractC1387m.m2421h(new byte[]{86}, new byte[]{11, -106, 13, -82, 43, -86, -9, -77}))) {
                for (char c : strTrim.toCharArray()) {
                    if (Character.isLetterOrDigit(c) || AbstractC1387m.m2421h(new byte[]{46, 104, -62, -55, -78}, new byte[]{12, 51, -97, -27, -110, -105, -54, 58}).indexOf(c) != -1) {
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

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: a */
    public final void mo5402a() {
        AudioFocusRequest audioFocusRequest;
        AudioManager audioManager = this.f9972c;
        if (audioManager != null && (audioFocusRequest = this.f9973d) != null && Build.VERSION.SDK_INT >= 26) {
            audioManager.abandonAudioFocusRequest(audioFocusRequest);
        }
        synchronized (this.f9981l) {
            try {
                this.f9986q = false;
                Recognizer recognizer = this.f9982m;
                if (recognizer != null) {
                    recognizer.reset();
                }
                Recognizer recognizer2 = this.f9983n;
                if (recognizer2 != null) {
                    recognizer2.reset();
                }
                this.f9984o = 0;
                this.f9985p = 0;
                this.f9987r = "";
                this.f9988s = 0L;
            } catch (Throwable th) {
                throw th;
            }
        }
        m5408j(f9968v);
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: b */
    public final void mo5403b() {
        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{47, -24, 112, -80, 18, -89, -126, -49}, new byte[]{92, -100, 31, -64, 68, -56, -15, -92}), ColorText.RED);
        ScheduledFuture scheduledFuture = this.f9971b;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f9971b.cancel(true);
            this.f9971b = null;
        }
        m5413o();
        m5408j(EnumC3443b.f9929b);
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: c */
    public final void mo5404c() {
        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -122, 22, -125, 53, -127, -79, 15, -104}, new byte[]{-13, -14, 119, -15, 65, -41, -34, 124}), ColorText.RED);
        mo5403b();
        this.f9971b = this.f9970a.scheduleWithFixedDelay(new RunnableC1556j(20, this), 0L, 30L, TimeUnit.MILLISECONDS);
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: d */
    public final void mo5405d() {
        f9968v = f9967u;
        if (this.f9973d == null && Build.VERSION.SDK_INT >= 26) {
            this.f9973d = AbstractC3449d.m5378d().setOnAudioFocusChangeListener(new C3452e(this, 0)).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(2).build()).build();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f9972c.requestAudioFocus(this.f9973d);
        }
        m5414p();
        m5408j(EnumC3443b.f9931d);
    }

    @Override // p225w0.InterfaceC3500y
    /* JADX INFO: renamed from: e */
    public final EnumC3443b mo5406e() {
        return f9967u;
    }

    /* JADX INFO: renamed from: i */
    public final synchronized void m5407i(String str) {
        if (m5399f().booleanValue()) {
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

    /* JADX INFO: renamed from: j */
    public final void m5408j(EnumC3443b enumC3443b) {
        if (m5399f().booleanValue()) {
            f9967u = enumC3443b;
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

    /* JADX INFO: renamed from: k */
    public final String m5409k(int i10) {
        synchronized (this.f9981l) {
            try {
                m5410l(i10, this.f9979j);
                Recognizer recognizer = this.f9986q ? this.f9983n : this.f9982m;
                if (recognizer == null) {
                    return null;
                }
                return recognizer.acceptWaveForm(this.f9979j, i10) ? recognizer.getResult() : recognizer.getPartialResult();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public final void m5410l(int i10, byte[] bArr) {
        if (bArr == null || i10 <= 0) {
            return;
        }
        int iMin = Math.min(i10, bArr.length);
        byte[] bArr2 = this.f9980k;
        int iMax = Math.max(0, iMin - bArr2.length);
        int i11 = iMin - iMax;
        while (i11 > 0) {
            int iMin2 = Math.min(i11, bArr2.length - this.f9985p);
            System.arraycopy(bArr, iMax, bArr2, this.f9985p, iMin2);
            this.f9985p = (this.f9985p + iMin2) % bArr2.length;
            this.f9984o = Math.min(this.f9984o + iMin2, bArr2.length);
            iMax += iMin2;
            i11 -= iMin2;
        }
    }

    /* JADX INFO: renamed from: m */
    public final void m5411m(String str) {
        String strTrim = "";
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean z9 = this.f9986q;
            String strTrim2 = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{57, -65, 32, -77}, new byte[]{77, -38, 88, -57, -76, -119, 10, -61}), "").trim();
            if (!z9 && strTrim2.isEmpty()) {
                strTrim2 = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-120, -47, 41, -75, ByteCompanionObject.MIN_VALUE, 18, -24}, new byte[]{-8, -80, 91, -63, -23, 115, -124, -43}), "").trim();
            }
            if ("".equals(strTrim2)) {
                return;
            }
            long jCurrentTimeMillis = 0;
            if (!z9) {
                if (m5400g(strTrim2)) {
                    String strM5414p = m5414p();
                    if (strTrim2 != null) {
                        strTrim = strTrim2.trim();
                    }
                    this.f9987r = strTrim;
                    if (!strTrim.isEmpty()) {
                        jCurrentTimeMillis = System.currentTimeMillis() + 450;
                    }
                    this.f9988s = jCurrentTimeMillis;
                    m5411m(strM5414p);
                    return;
                }
                return;
            }
            String str2 = this.f9987r;
            boolean z10 = false;
            if ((str2 == null || str2.trim().isEmpty()) ? false : true) {
                String str3 = this.f9987r;
                if (str3 != null && !str3.trim().isEmpty()) {
                    z10 = true;
                }
                if (z10 && strTrim2 != null && m5400g(strTrim2) && strTrim2.trim().length() <= this.f9987r.trim().length() + 2) {
                    return;
                }
                if (!m5400g(strTrim2)) {
                    strTrim2 = this.f9987r + " " + strTrim2;
                }
                this.f9987r = "";
                this.f9988s = 0L;
            }
            m5407i(strTrim2);
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: renamed from: n */
    public final void m5412n() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f9989t < 1000) {
            return;
        }
        this.f9989t = jCurrentTimeMillis;
        AudioManager audioManager = (AudioManager) this.f9976g.getSystemService(AbstractC1387m.m2421h(new byte[]{-98, -61, -52, -103, 77}, new byte[]{-1, -74, -88, -16, 34, 89, -74, 36}));
        if (audioManager.getMode() != 0 || audioManager.isMicrophoneMute()) {
            return;
        }
        m5413o();
        try {
            ArrayList arrayList = new ArrayList();
            C1652b.m2734a();
            C1652b.m2737f().getClass();
            String strM2986f = C1917c.m2986f();
            if (strM2986f != null && !strM2986f.trim().isEmpty()) {
                arrayList.add(strM2986f.trim().toLowerCase());
            }
            String string = new JSONArray((Collection) arrayList).toString();
            if (m5401h(string)) {
                synchronized (this.f9981l) {
                    float f8 = 16000;
                    this.f9982m = new Recognizer(this.f9975f, f8, string);
                    this.f9983n = new Recognizer(this.f9975f, f8);
                    this.f9986q = f9967u == EnumC3443b.f9931d;
                    this.f9984o = 0;
                    this.f9985p = 0;
                }
                if (ContextCompat.checkSelfPermission(this.f9976g, AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -98, -84, 21, 44, -94, 42, 47, 110, -107, -70, 10, 42, -72, Base64.padSymbol, 104, 113, -98, -26, 53, 6, -120, 1, 83, 90, -81, -119, 50, 7, -126, 1}, new byte[]{30, -16, -56, 103, 67, -53, 78, 1})) != 0) {
                    m5408j(EnumC3443b.f9929b);
                    return;
                }
                AudioRecord audioRecord = new AudioRecord(C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-30, -115, 106, 11, -18, 103, -44, -6, -64, -102, 106, 7, -3, 27, -16, -20, -53, -127, 97, 49, -32, 64, -61, -6, -54}, new byte[]{-81, -24, 14, 98, -113, 53, -79, -103}), 1), 16000, 16, 2, this.f9978i);
                this.f9974e = audioRecord;
                audioRecord.startRecording();
            }
        } catch (Exception unused) {
            m5413o();
        }
    }

    /* JADX INFO: renamed from: o */
    public final void m5413o() {
        AudioRecord audioRecord = this.f9974e;
        if (audioRecord != null) {
            try {
                if (audioRecord.getState() == 1) {
                    this.f9974e.stop();
                }
            } catch (IllegalStateException unused) {
            }
            this.f9974e.release();
            this.f9974e = null;
        }
        m5408j(EnumC3443b.f9929b);
    }

    /* JADX INFO: renamed from: p */
    public final String m5414p() {
        byte[] bArr;
        synchronized (this.f9981l) {
            if (this.f9983n == null) {
                try {
                    this.f9983n = new Recognizer(this.f9975f, 16000.0f);
                } catch (Exception unused) {
                    return null;
                }
            }
            this.f9983n.reset();
            this.f9986q = true;
            byte[] bArr2 = this.f9980k;
            int i10 = this.f9984o;
            if (i10 <= 0) {
                bArr = null;
            } else {
                bArr = new byte[i10];
                int length = ((this.f9985p - i10) + bArr2.length) % bArr2.length;
                int iMin = Math.min(i10, bArr2.length - length);
                System.arraycopy(bArr2, length, bArr, 0, iMin);
                int i11 = this.f9984o;
                if (iMin < i11) {
                    System.arraycopy(bArr2, 0, bArr, iMin, i11 - iMin);
                }
            }
            if (bArr == null || bArr.length <= 0) {
                return null;
            }
            boolean zAcceptWaveForm = this.f9983n.acceptWaveForm(bArr, bArr.length);
            Recognizer recognizer = this.f9983n;
            return zAcceptWaveForm ? recognizer.getResult() : recognizer.getPartialResult();
        }
    }
}
