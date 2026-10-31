package l5;

import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import n.p;
import org.json.JSONException;
import org.json.JSONObject;
import t4.l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements e {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Object f3292m = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o4.f f3293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n5.c f3294b;
    public final l.d c;
    public final k d;
    public final l e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final i f3295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f3296g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ExecutorService f3297h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final u4.i f3298i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f3299j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashSet f3300k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList f3301l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        new AtomicInteger(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(o4.f fVar, k5.b bVar, ExecutorService executorService, u4.i iVar) {
        fVar.a();
        n5.c cVar = new n5.c(fVar.f4088a, bVar);
        l.d dVar = new l.d(fVar);
        if (w7.c.c == null) {
            w7.c.c = new w7.c(15);
        }
        w7.c cVar2 = w7.c.c;
        if (k.c == null) {
            k.c = new k(cVar2);
        }
        k kVar = k.c;
        l lVar = new l(new b(0, fVar));
        i iVar2 = new i();
        this.f3296g = new Object();
        this.f3300k = new HashSet();
        this.f3301l = new ArrayList();
        this.f3293a = fVar;
        this.f3294b = cVar;
        this.c = dVar;
        this.d = kVar;
        this.e = lVar;
        this.f3295f = iVar2;
        this.f3297h = executorService;
        this.f3298i = iVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        m5.b bVarJ;
        synchronized (f3292m) {
            try {
                o4.f fVar = this.f3293a;
                fVar.a();
                l.d dVarA = l.d.a(fVar.f4088a);
                try {
                    bVarJ = this.c.J();
                    int i9 = bVarJ.f3671b;
                    boolean z8 = true;
                    if (i9 != 2 && i9 != 1) {
                        z8 = false;
                    }
                    if (z8) {
                        String strE = e(bVarJ);
                        l.d dVar = this.c;
                        m5.a aVarA = bVarJ.a();
                        aVarA.c = strE;
                        aVarA.f3666b = 3;
                        bVarJ = aVarA.a();
                        dVar.y(bVarJ);
                    }
                    if (dVarA != null) {
                        dVarA.L();
                    }
                } catch (Throwable th) {
                    if (dVarA != null) {
                        dVarA.L();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        h(bVarJ);
        this.f3298i.execute(new c(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final m5.b b(m5.b bVar) {
        HttpURLConnection httpURLConnectionC;
        n5.b bVarF;
        n5.c cVar = this.f3294b;
        o4.f fVar = this.f3293a;
        fVar.a();
        String str = fVar.c.f4096a;
        String str2 = bVar.f3670a;
        o4.f fVar2 = this.f3293a;
        fVar2.a();
        String str3 = fVar2.c.f4099g;
        String str4 = bVar.d;
        b2.b bVar2 = cVar.c;
        if (!bVar2.a()) {
            throw new f("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = n5.c.a("projects/" + str3 + "/installations/" + str2 + "/authTokens:generate");
        int i9 = 0;
        while (true) {
            if (i9 > 1) {
                throw new f("Firebase Installations Service is unavailable. Please try again later.");
            }
            TrafficStats.setThreadStatsTag(32771);
            httpURLConnectionC = cVar.c(urlA, str);
            try {
                try {
                    httpURLConnectionC.setRequestMethod("POST");
                    httpURLConnectionC.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    httpURLConnectionC.setDoOutput(true);
                    n5.c.h(httpURLConnectionC);
                    int responseCode = httpURLConnectionC.getResponseCode();
                    bVar2.b(responseCode);
                    if (responseCode >= 200 && responseCode < 300) {
                        bVarF = n5.c.f(httpURLConnectionC);
                        break;
                    }
                    n5.c.b(httpURLConnectionC, null, str, str3);
                    if (responseCode == 401 || responseCode == 404) {
                        c7.l lVarA = n5.b.a();
                        lVarA.f540b = 3;
                        bVarF = lVarA.a();
                        break;
                    }
                    if (responseCode == 429) {
                        throw new f("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                        c7.l lVarA2 = n5.b.a();
                        lVarA2.f540b = 2;
                        bVarF = lVarA2.a();
                        break;
                    }
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    i9++;
                } catch (Throwable th) {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    throw th;
                }
            } catch (IOException | AssertionError unused) {
            }
        }
        httpURLConnectionC.disconnect();
        TrafficStats.clearThreadStatsTag();
        int iC = com.bumptech.glide.g.c(bVarF.c);
        if (iC == 0) {
            String str5 = bVarF.f3854a;
            long j9 = bVarF.f3855b;
            this.d.f3308a.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            m5.a aVarA = bVar.a();
            aVarA.d = str5;
            aVarA.f3668g = Long.valueOf(j9);
            aVarA.f3669h = Long.valueOf(jCurrentTimeMillis);
            return aVarA.a();
        }
        if (iC == 1) {
            m5.a aVarA2 = bVar.a();
            aVarA2.f3667f = "BAD CONFIG";
            aVarA2.f3666b = 5;
            return aVarA2.a();
        }
        if (iC != 2) {
            throw new f("Firebase Installations Service is unavailable. Please try again later.");
        }
        synchronized (this) {
            this.f3299j = null;
        }
        m5.a aVarA3 = bVar.a();
        aVarA3.f3666b = 2;
        return aVarA3.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o7.a c() {
        String str;
        d();
        synchronized (this) {
            str = this.f3299j;
        }
        if (str != null) {
            o7.a aVar = new o7.a();
            aVar.g(str);
            return aVar;
        }
        p pVar = new p(17);
        h hVar = new h(pVar);
        synchronized (this.f3296g) {
            this.f3301l.add(hVar);
        }
        o7.a aVar2 = (o7.a) pVar.c;
        this.f3297h.execute(new c(this, 0));
        return aVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        o4.f fVar = this.f3293a;
        fVar.a();
        r2.a.a(fVar.c.f4097b, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        fVar.a();
        r2.a.a(fVar.c.f4099g, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        fVar.a();
        r2.a.a(fVar.c.f4096a, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        fVar.a();
        String str = fVar.c.f4097b;
        Pattern pattern = k.f3307b;
        if (!str.contains(":")) {
            j1.i.k("Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
            return;
        }
        fVar.a();
        if (k.f3307b.matcher(fVar.c.f4096a).matches()) {
            return;
        }
        j1.i.k("Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:15:0x003d A[Catch: all -> 0x003f, DONT_GENERATE, TRY_ENTER, TryCatch #1 {all -> 0x003f, blocks: (B:10:0x002e, B:11:0x0030, B:15:0x003d, B:19:0x0041, B:20:0x0045, B:28:0x0059, B:12:0x0031, B:13:0x003a), top: B:35:0x002e, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0041 A[Catch: all -> 0x003f, TryCatch #1 {all -> 0x003f, blocks: (B:10:0x002e, B:11:0x0030, B:15:0x003d, B:19:0x0041, B:20:0x0045, B:28:0x0059, B:12:0x0031, B:13:0x003a), top: B:35:0x002e, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x004c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0056 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:6:0x001e  */
    /* JADX WARN: Code duplicated, block: B:8:0x0023  */
    public final String e(m5.b bVar) {
        m5.c cVar;
        String string;
        o4.f fVar = this.f3293a;
        fVar.a();
        if (!fVar.f4089b.equals("CHIME_ANDROID_SDK")) {
            o4.f fVar2 = this.f3293a;
            fVar2.a();
            if ("[DEFAULT]".equals(fVar2.f4089b)) {
                if (bVar.f3671b == 1) {
                    cVar = (m5.c) this.e.get();
                    synchronized (cVar.f3674a) {
                        try {
                            synchronized (cVar.f3674a) {
                                string = cVar.f3674a.getString("|S|id", null);
                            }
                            if (string != null) {
                                string = cVar.a();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (TextUtils.isEmpty(string)) {
                        return string;
                    }
                    this.f3295f.getClass();
                    return i.a();
                }
            }
        } else if (bVar.f3671b == 1) {
            cVar = (m5.c) this.e.get();
            synchronized (cVar.f3674a) {
                synchronized (cVar.f3674a) {
                    string = cVar.f3674a.getString("|S|id", null);
                    if (string != null) {
                        string = cVar.a();
                    }
                    if (TextUtils.isEmpty(string)) {
                        return string;
                    }
                    this.f3295f.getClass();
                    return i.a();
                }
            }
        }
        this.f3295f.getClass();
        return i.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:81:0x018e */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:83:0x00f0 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:96:0x0194 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v5, resolved type: n5.a */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [n5.c] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [n5.a] */
    public final m5.b f(m5.b bVar) {
        String str = bVar.f3670a;
        String string = null;
        if (str != null && str.length() == 11) {
            m5.c cVar = (m5.c) this.e.get();
            synchronized (cVar.f3674a) {
                try {
                    String[] strArr = m5.c.c;
                    int i9 = 0;
                    while (true) {
                        if (i9 >= 4) {
                            break;
                        }
                        String str2 = strArr[i9];
                        String string2 = cVar.f3674a.getString("|T|" + cVar.f3675b + "|" + str2, null);
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
                        i9++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        n5.c cVar2 = this.f3294b;
        o4.f fVar = this.f3293a;
        fVar.a();
        String str3 = fVar.c.f4096a;
        String str4 = bVar.f3670a;
        o4.f fVar2 = this.f3293a;
        fVar2.a();
        String str5 = fVar2.c.f4099g;
        o4.f fVar3 = this.f3293a;
        fVar3.a();
        String str6 = fVar3.c.f4097b;
        b2.b bVar2 = cVar2.c;
        if (!bVar2.a()) {
            throw new f("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = n5.c.a("projects/" + str5 + "/installations");
        int i10 = 0;
        n5.a aVar = cVar2;
        while (i10 <= 1) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection httpURLConnectionC = aVar.c(urlA, str3);
            try {
                try {
                    httpURLConnectionC.setRequestMethod("POST");
                    httpURLConnectionC.setDoOutput(true);
                    if (string != null) {
                        httpURLConnectionC.addRequestProperty("x-goog-fis-android-iid-migration-auth", string);
                    }
                    n5.c.g(httpURLConnectionC, str4, str6);
                    int responseCode = httpURLConnectionC.getResponseCode();
                    bVar2.b(responseCode);
                    if (responseCode >= 200 && responseCode < 300) {
                        n5.a aVarE = n5.c.e(httpURLConnectionC);
                        httpURLConnectionC.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        aVar = aVarE;
                    } else {
                        try {
                            n5.c.b(httpURLConnectionC, str6, str3, str5);
                            if (responseCode == 429) {
                                throw new f("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                            }
                            if (responseCode < 500 || responseCode >= 600) {
                                Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                                n5.a aVar2 = new n5.a(null, null, null, null, 2);
                                httpURLConnectionC.disconnect();
                                TrafficStats.clearThreadStatsTag();
                                aVar = aVar2;
                            } else {
                                httpURLConnectionC.disconnect();
                                TrafficStats.clearThreadStatsTag();
                                i10++;
                                aVar = aVar;
                            }
                        } catch (IOException | AssertionError unused2) {
                            httpURLConnectionC.disconnect();
                            TrafficStats.clearThreadStatsTag();
                        }
                    }
                    int iC = com.bumptech.glide.g.c(aVar.e);
                    if (iC != 0) {
                        if (iC != 1) {
                            throw new f("Firebase Installations Service is unavailable. Please try again later.");
                        }
                        m5.a aVarA = bVar.a();
                        aVarA.f3667f = "BAD CONFIG";
                        aVarA.f3666b = 5;
                        return aVarA.a();
                    }
                    String str7 = aVar.f3853b;
                    String str8 = aVar.c;
                    this.d.f3308a.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                    n5.b bVar3 = aVar.d;
                    String str9 = bVar3.f3854a;
                    long j9 = bVar3.f3855b;
                    m5.a aVarA2 = bVar.a();
                    aVarA2.c = str7;
                    aVarA2.f3666b = 4;
                    aVarA2.d = str9;
                    aVarA2.e = str8;
                    aVarA2.f3668g = Long.valueOf(j9);
                    aVarA2.f3669h = Long.valueOf(jCurrentTimeMillis);
                    return aVarA2.a();
                } catch (Throwable th2) {
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    throw th2;
                }
            } catch (IOException | AssertionError unused3) {
            }
        }
        throw new f("Firebase Installations Service is unavailable. Please try again later.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(Exception exc) {
        synchronized (this.f3296g) {
            try {
                Iterator it = this.f3301l.iterator();
                while (it.hasNext()) {
                    if (((j) it.next()).b(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(m5.b bVar) {
        synchronized (this.f3296g) {
            try {
                Iterator it = this.f3301l.iterator();
                while (it.hasNext()) {
                    if (((j) it.next()).a(bVar)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
