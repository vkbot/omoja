package n;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g implements h.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f3744b;
    public final URL c;
    public final String d;
    public String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public URL f3745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile byte[] f3746g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3747h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(String str) {
        k kVar = h.f3750a;
        this.c = null;
        if (TextUtils.isEmpty(str)) {
            j1.i.k("Must not be null or empty");
            throw null;
        }
        this.d = str;
        c0.g.c(kVar, "Argument must not be null");
        this.f3744b = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final void b(MessageDigest messageDigest) {
        if (this.f3746g == null) {
            this.f3746g = c().getBytes(h.e.f2409a);
        }
        messageDigest.update(this.f3746g);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String c() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        URL url = this.c;
        c0.g.c(url, "Argument must not be null");
        return url.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final URL d() {
        if (this.f3745f == null) {
            if (TextUtils.isEmpty(this.e)) {
                String string = this.d;
                if (TextUtils.isEmpty(string)) {
                    URL url = this.c;
                    c0.g.c(url, "Argument must not be null");
                    string = url.toString();
                }
                this.e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$");
            }
            this.f3745f = new URL(this.e);
        }
        return this.f3745f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (c().equals(gVar.c()) && this.f3744b.equals(gVar.f3744b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final int hashCode() {
        if (this.f3747h == 0) {
            int iHashCode = c().hashCode();
            this.f3747h = iHashCode;
            this.f3747h = this.f3744b.hashCode() + (iHashCode * 31);
        }
        return this.f3747h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return c();
    }

    public g(URL url) {
        k kVar = h.f3750a;
        c0.g.c(url, "Argument must not be null");
        this.c = url;
        this.d = null;
        c0.g.c(kVar, "Argument must not be null");
        this.f3744b = kVar;
    }
}
