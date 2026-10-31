package p126l5;

import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.AbstractC1034g;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import p017b2.C0882b;
import p032c7.C1008l;
import p099j1.C1929i;
import p114k5.InterfaceC2050b;
import p120l.C2187d;
import p136m5.C2398a;
import p136m5.C2399b;
import p136m5.C2400c;
import p141n.C2455p;
import p146n5.C2477a;
import p146n5.C2478b;
import p146n5.C2479c;
import p155o4.C2591f;
import p157o7.C2599a;
import p181r2.AbstractC3093a;
import p200t4.C3251l;
import p211u4.ExecutorC3296i;
import p232w7.C3537c;

/* JADX INFO: renamed from: l5.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2209d implements InterfaceC2210e {

    /* JADX INFO: renamed from: m */
    public static final Object f5803m = new Object();

    /* JADX INFO: renamed from: a */
    public final C2591f f5804a;

    /* JADX INFO: renamed from: b */
    public final C2479c f5805b;

    /* JADX INFO: renamed from: c */
    public final C2187d f5806c;

    /* JADX INFO: renamed from: d */
    public final C2216k f5807d;

    /* JADX INFO: renamed from: e */
    public final C3251l f5808e;

    /* JADX INFO: renamed from: f */
    public final C2214i f5809f;

    /* JADX INFO: renamed from: g */
    public final Object f5810g;

    /* JADX INFO: renamed from: h */
    public final ExecutorService f5811h;

    /* JADX INFO: renamed from: i */
    public final ExecutorC3296i f5812i;

    /* JADX INFO: renamed from: j */
    public String f5813j;

    /* JADX INFO: renamed from: k */
    public final HashSet f5814k;

    /* JADX INFO: renamed from: l */
    public final ArrayList f5815l;

    static {
        new AtomicInteger(1);
    }

    public C2209d(C2591f c2591f, InterfaceC2050b interfaceC2050b, ExecutorService executorService, ExecutorC3296i executorC3296i) {
        c2591f.m4064a();
        C2479c c2479c = new C2479c(c2591f.f7208a, interfaceC2050b);
        C2187d c2187d = new C2187d(c2591f);
        if (C3537c.f10508c == null) {
            C3537c.f10508c = new C3537c(15);
        }
        C3537c c3537c = C3537c.f10508c;
        if (C2216k.f5822c == null) {
            C2216k.f5822c = new C2216k(c3537c);
        }
        C2216k c2216k = C2216k.f5822c;
        C3251l c3251l = new C3251l(new C2207b(0, c2591f));
        C2214i c2214i = new C2214i();
        this.f5810g = new Object();
        this.f5814k = new HashSet();
        this.f5815l = new ArrayList();
        this.f5804a = c2591f;
        this.f5805b = c2479c;
        this.f5806c = c2187d;
        this.f5807d = c2216k;
        this.f5808e = c3251l;
        this.f5809f = c2214i;
        this.f5811h = executorService;
        this.f5812i = executorC3296i;
    }

    /* JADX INFO: renamed from: a */
    public final void m3538a() {
        C2399b c2399bM3469J;
        synchronized (f5803m) {
            try {
                C2591f c2591f = this.f5804a;
                c2591f.m4064a();
                C2187d c2187dM3458a = C2187d.m3458a(c2591f.f7208a);
                try {
                    c2399bM3469J = this.f5806c.m3469J();
                    int i10 = c2399bM3469J.f6492b;
                    boolean z9 = true;
                    if (i10 != 2 && i10 != 1) {
                        z9 = false;
                    }
                    if (z9) {
                        String strM3542e = m3542e(c2399bM3469J);
                        C2187d c2187d = this.f5806c;
                        C2398a c2398aM3763a = c2399bM3469J.m3763a();
                        c2398aM3763a.f6485c = strM3542e;
                        c2398aM3763a.f6484b = 3;
                        c2399bM3469J = c2398aM3763a.m3762a();
                        c2187d.m3496y(c2399bM3469J);
                    }
                    if (c2187dM3458a != null) {
                        c2187dM3458a.m3471L();
                    }
                } catch (Throwable th) {
                    if (c2187dM3458a != null) {
                        c2187dM3458a.m3471L();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        m3545h(c2399bM3469J);
        this.f5812i.execute(new RunnableC2208c(this, 1));
    }

    /* JADX INFO: renamed from: b */
    public final C2399b m3539b(C2399b c2399b) {
        HttpURLConnection httpURLConnectionM3855c;
        C2478b c2478bM3851f;
        C2479c c2479c = this.f5805b;
        C2591f c2591f = this.f5804a;
        c2591f.m4064a();
        String str = c2591f.f7210c.f7222a;
        String str2 = c2399b.f6491a;
        C2591f c2591f2 = this.f5804a;
        c2591f2.m4064a();
        String str3 = c2591f2.f7210c.f7228g;
        String str4 = c2399b.f6494d;
        C0882b c0882b = c2479c.f6832c;
        if (!c0882b.m1012a()) {
            throw new C2211f("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlM3847a = C2479c.m3847a("projects/" + str3 + "/installations/" + str2 + "/authTokens:generate");
        int i10 = 0;
        while (true) {
            if (i10 > 1) {
                throw new C2211f("Firebase Installations Service is unavailable. Please try again later.");
            }
            TrafficStats.setThreadStatsTag(32771);
            httpURLConnectionM3855c = c2479c.m3855c(urlM3847a, str);
            try {
                try {
                    httpURLConnectionM3855c.setRequestMethod("POST");
                    httpURLConnectionM3855c.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    httpURLConnectionM3855c.setDoOutput(true);
                    C2479c.m3853h(httpURLConnectionM3855c);
                    int responseCode = httpURLConnectionM3855c.getResponseCode();
                    c0882b.m1013b(responseCode);
                    if (responseCode >= 200 && responseCode < 300) {
                        c2478bM3851f = C2479c.m3851f(httpURLConnectionM3855c);
                        break;
                    }
                    C2479c.m3848b(httpURLConnectionM3855c, null, str, str3);
                    if (responseCode == 401 || responseCode == 404) {
                        C1008l c1008lM3846a = C2478b.m3846a();
                        c1008lM3846a.f1008b = 3;
                        c2478bM3851f = c1008lM3846a.m1214a();
                        break;
                    }
                    if (responseCode == 429) {
                        throw new C2211f("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                        C1008l c1008lM3846a2 = C2478b.m3846a();
                        c1008lM3846a2.f1008b = 2;
                        c2478bM3851f = c1008lM3846a2.m1214a();
                        break;
                    }
                    httpURLConnectionM3855c.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    i10++;
                } catch (IOException | AssertionError unused) {
                }
            } catch (Throwable th) {
                httpURLConnectionM3855c.disconnect();
                TrafficStats.clearThreadStatsTag();
                throw th;
            }
        }
        httpURLConnectionM3855c.disconnect();
        TrafficStats.clearThreadStatsTag();
        int iM1296c = AbstractC1034g.m1296c(c2478bM3851f.f6827c);
        if (iM1296c == 0) {
            String str5 = c2478bM3851f.f6825a;
            long j10 = c2478bM3851f.f6826b;
            this.f5807d.f5823a.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            C2398a c2398aM3763a = c2399b.m3763a();
            c2398aM3763a.f6486d = str5;
            c2398aM3763a.f6489g = Long.valueOf(j10);
            c2398aM3763a.f6490h = Long.valueOf(jCurrentTimeMillis);
            return c2398aM3763a.m3762a();
        }
        if (iM1296c == 1) {
            C2398a c2398aM3763a2 = c2399b.m3763a();
            c2398aM3763a2.f6488f = "BAD CONFIG";
            c2398aM3763a2.f6484b = 5;
            return c2398aM3763a2.m3762a();
        }
        if (iM1296c != 2) {
            throw new C2211f("Firebase Installations Service is unavailable. Please try again later.");
        }
        synchronized (this) {
            this.f5813j = null;
        }
        C2398a c2398aM3763a3 = c2399b.m3763a();
        c2398aM3763a3.f6484b = 2;
        return c2398aM3763a3.m3762a();
    }

    /* JADX INFO: renamed from: c */
    public final C2599a m3540c() {
        String str;
        m3541d();
        synchronized (this) {
            str = this.f5813j;
        }
        if (str != null) {
            C2599a c2599a = new C2599a();
            c2599a.m4082g(str);
            return c2599a;
        }
        C2455p c2455p = new C2455p(17);
        C2213h c2213h = new C2213h(c2455p);
        synchronized (this.f5810g) {
            this.f5815l.add(c2213h);
        }
        C2599a c2599a2 = (C2599a) c2455p.f6648c;
        this.f5811h.execute(new RunnableC2208c(this, 0));
        return c2599a2;
    }

    /* JADX INFO: renamed from: d */
    public final void m3541d() {
        C2591f c2591f = this.f5804a;
        c2591f.m4064a();
        AbstractC3093a.m4925a(c2591f.f7210c.f7223b, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        c2591f.m4064a();
        AbstractC3093a.m4925a(c2591f.f7210c.f7228g, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        c2591f.m4064a();
        AbstractC3093a.m4925a(c2591f.f7210c.f7222a, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        c2591f.m4064a();
        String str = c2591f.f7210c.f7223b;
        Pattern pattern = C2216k.f5821b;
        if (!str.contains(":")) {
            C1929i.m3029k("Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
            return;
        }
        c2591f.m4064a();
        if (C2216k.f5821b.matcher(c2591f.f7210c.f7222a).matches()) {
            return;
        }
        C1929i.m3029k("Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003d A[Catch: all -> 0x003f, DONT_GENERATE, TRY_ENTER, TryCatch #1 {all -> 0x003f, blocks: (B:10:0x002e, B:11:0x0030, B:15:0x003d, B:19:0x0041, B:20:0x0045, B:28:0x0059, B:12:0x0031, B:13:0x003a), top: B:35:0x002e, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0041 A[Catch: all -> 0x003f, TryCatch #1 {all -> 0x003f, blocks: (B:10:0x002e, B:11:0x0030, B:15:0x003d, B:19:0x0041, B:20:0x0045, B:28:0x0059, B:12:0x0031, B:13:0x003a), top: B:35:0x002e, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x004c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0056 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:6:0x001e  */
    /* JADX WARN: Code duplicated, block: B:8:0x0023  */
    /* JADX INFO: renamed from: e */
    public final String m3542e(C2399b c2399b) {
        C2400c c2400c;
        String string;
        C2591f c2591f = this.f5804a;
        c2591f.m4064a();
        if (!c2591f.f7209b.equals("CHIME_ANDROID_SDK")) {
            C2591f c2591f2 = this.f5804a;
            c2591f2.m4064a();
            if ("[DEFAULT]".equals(c2591f2.f7209b)) {
                if (c2399b.f6492b == 1) {
                    c2400c = (C2400c) this.f5808e.get();
                    synchronized (c2400c.f6499a) {
                        try {
                            synchronized (c2400c.f6499a) {
                                string = c2400c.f6499a.getString("|S|id", null);
                            }
                            if (string != null) {
                                string = c2400c.m3764a();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (TextUtils.isEmpty(string)) {
                        return string;
                    }
                    this.f5809f.getClass();
                    return C2214i.m3548a();
                }
            }
        } else if (c2399b.f6492b == 1) {
            c2400c = (C2400c) this.f5808e.get();
            synchronized (c2400c.f6499a) {
                synchronized (c2400c.f6499a) {
                    string = c2400c.f6499a.getString("|S|id", null);
                    if (string != null) {
                        string = c2400c.m3764a();
                    }
                    if (TextUtils.isEmpty(string)) {
                        return string;
                    }
                    this.f5809f.getClass();
                    return C2214i.m3548a();
                }
            }
        }
        this.f5809f.getClass();
        return C2214i.m3548a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [n5.c] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [n5.a] */
    /* JADX INFO: renamed from: f */
    public final C2399b m3543f(C2399b c2399b) {
        String str = c2399b.f6491a;
        String string = null;
        if (str != null && str.length() == 11) {
            C2400c c2400c = (C2400c) this.f5808e.get();
            synchronized (c2400c.f6499a) {
                try {
                    String[] strArr = C2400c.f6498c;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= 4) {
                            break;
                        }
                        String str2 = strArr[i10];
                        String string2 = c2400c.f6499a.getString("|T|" + c2400c.f6500b + "|" + str2, null);
                        if (string2 != null && !string2.isEmpty()) {
                            if (string2.startsWith("{")) {
                                try {
                                    string = new JSONObject(string2).getString("token");
                                } catch (JSONException unused) {
                                }
                            } else {
                                string = string2;
                            }
                            break;
                        }
                        i10++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        C2479c c2479c = this.f5805b;
        C2591f c2591f = this.f5804a;
        c2591f.m4064a();
        String str3 = c2591f.f7210c.f7222a;
        String str4 = c2399b.f6491a;
        C2591f c2591f2 = this.f5804a;
        c2591f2.m4064a();
        String str5 = c2591f2.f7210c.f7228g;
        C2591f c2591f3 = this.f5804a;
        c2591f3.m4064a();
        String str6 = c2591f3.f7210c.f7223b;
        C0882b c0882b = c2479c.f6832c;
        if (!c0882b.m1012a()) {
            throw new C2211f("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlM3847a = C2479c.m3847a("projects/" + str5 + "/installations");
        int i11 = 0;
        C2477a c2477a = c2479c;
        while (i11 <= 1) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection httpURLConnectionM3855c = c2477a.m3855c(urlM3847a, str3);
            try {
                try {
                    httpURLConnectionM3855c.setRequestMethod("POST");
                    httpURLConnectionM3855c.setDoOutput(true);
                    if (string != null) {
                        httpURLConnectionM3855c.addRequestProperty("x-goog-fis-android-iid-migration-auth", string);
                    }
                    C2479c.m3852g(httpURLConnectionM3855c, str4, str6);
                    int responseCode = httpURLConnectionM3855c.getResponseCode();
                    c0882b.m1013b(responseCode);
                    if (responseCode >= 200 && responseCode < 300) {
                        C2477a c2477aM3850e = C2479c.m3850e(httpURLConnectionM3855c);
                        httpURLConnectionM3855c.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        c2477a = c2477aM3850e;
                    } else {
                        try {
                            C2479c.m3848b(httpURLConnectionM3855c, str6, str3, str5);
                            if (responseCode == 429) {
                                throw new C2211f("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                            }
                            if (responseCode < 500 || responseCode >= 600) {
                                Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                                C2477a c2477a2 = new C2477a(null, null, null, null, 2);
                                httpURLConnectionM3855c.disconnect();
                                TrafficStats.clearThreadStatsTag();
                                c2477a = c2477a2;
                            } else {
                                httpURLConnectionM3855c.disconnect();
                                TrafficStats.clearThreadStatsTag();
                                i11++;
                                c2477a = c2477a;
                            }
                        } catch (IOException | AssertionError unused2) {
                            httpURLConnectionM3855c.disconnect();
                            TrafficStats.clearThreadStatsTag();
                        }
                    }
                    int iM1296c = AbstractC1034g.m1296c(c2477a.f6824e);
                    if (iM1296c != 0) {
                        if (iM1296c != 1) {
                            throw new C2211f("Firebase Installations Service is unavailable. Please try again later.");
                        }
                        C2398a c2398aM3763a = c2399b.m3763a();
                        c2398aM3763a.f6488f = "BAD CONFIG";
                        c2398aM3763a.f6484b = 5;
                        return c2398aM3763a.m3762a();
                    }
                    String str7 = c2477a.f6821b;
                    String str8 = c2477a.f6822c;
                    this.f5807d.f5823a.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                    C2478b c2478b = c2477a.f6823d;
                    String str9 = c2478b.f6825a;
                    long j10 = c2478b.f6826b;
                    C2398a c2398aM3763a2 = c2399b.m3763a();
                    c2398aM3763a2.f6485c = str7;
                    c2398aM3763a2.f6484b = 4;
                    c2398aM3763a2.f6486d = str9;
                    c2398aM3763a2.f6487e = str8;
                    c2398aM3763a2.f6489g = Long.valueOf(j10);
                    c2398aM3763a2.f6490h = Long.valueOf(jCurrentTimeMillis);
                    return c2398aM3763a2.m3762a();
                } catch (IOException | AssertionError unused3) {
                }
            } catch (Throwable th2) {
                httpURLConnectionM3855c.disconnect();
                TrafficStats.clearThreadStatsTag();
                throw th2;
            }
        }
        throw new C2211f("Firebase Installations Service is unavailable. Please try again later.");
    }

    /* JADX INFO: renamed from: g */
    public final void m3544g(Exception exc) {
        synchronized (this.f5810g) {
            try {
                Iterator it = this.f5815l.iterator();
                while (it.hasNext()) {
                    if (((InterfaceC2215j) it.next()).mo3547b(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m3545h(C2399b c2399b) {
        synchronized (this.f5810g) {
            try {
                Iterator it = this.f5815l.iterator();
                while (it.hasNext()) {
                    if (((InterfaceC2215j) it.next()).mo3546a(c2399b)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
