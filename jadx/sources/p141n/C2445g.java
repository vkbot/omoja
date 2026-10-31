package p141n;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;
import p025c0.AbstractC0938g;
import p077h.InterfaceC1643e;
import p099j1.C1929i;

/* JADX INFO: renamed from: n.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2445g implements InterfaceC1643e {

    /* JADX INFO: renamed from: b */
    public final InterfaceC2447h f6625b;

    /* JADX INFO: renamed from: c */
    public final URL f6626c;

    /* JADX INFO: renamed from: d */
    public final String f6627d;

    /* JADX INFO: renamed from: e */
    public String f6628e;

    /* JADX INFO: renamed from: f */
    public URL f6629f;

    /* JADX INFO: renamed from: g */
    public volatile byte[] f6630g;

    /* JADX INFO: renamed from: h */
    public int f6631h;

    public C2445g(String str) {
        C2450k c2450k = InterfaceC2447h.f6634a;
        this.f6626c = null;
        if (TextUtils.isEmpty(str)) {
            C1929i.m3029k("Must not be null or empty");
            throw null;
        }
        this.f6627d = str;
        AbstractC0938g.m1072c(c2450k, "Argument must not be null");
        this.f6625b = c2450k;
    }

    @Override // p077h.InterfaceC1643e
    /* JADX INFO: renamed from: b */
    public final void mo917b(MessageDigest messageDigest) {
        if (this.f6630g == null) {
            this.f6630g = m3798c().getBytes(InterfaceC1643e.f4176a);
        }
        messageDigest.update(this.f6630g);
    }

    /* JADX INFO: renamed from: c */
    public final String m3798c() {
        String str = this.f6627d;
        if (str != null) {
            return str;
        }
        URL url = this.f6626c;
        AbstractC0938g.m1072c(url, "Argument must not be null");
        return url.toString();
    }

    /* JADX INFO: renamed from: d */
    public final URL m3799d() {
        if (this.f6629f == null) {
            if (TextUtils.isEmpty(this.f6628e)) {
                String string = this.f6627d;
                if (TextUtils.isEmpty(string)) {
                    URL url = this.f6626c;
                    AbstractC0938g.m1072c(url, "Argument must not be null");
                    string = url.toString();
                }
                this.f6628e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$");
            }
            this.f6629f = new URL(this.f6628e);
        }
        return this.f6629f;
    }

    @Override // p077h.InterfaceC1643e
    public final boolean equals(Object obj) {
        if (obj instanceof C2445g) {
            C2445g c2445g = (C2445g) obj;
            if (m3798c().equals(c2445g.m3798c()) && this.f6625b.equals(c2445g.f6625b)) {
                return true;
            }
        }
        return false;
    }

    @Override // p077h.InterfaceC1643e
    public final int hashCode() {
        if (this.f6631h == 0) {
            int iHashCode = m3798c().hashCode();
            this.f6631h = iHashCode;
            this.f6631h = this.f6625b.hashCode() + (iHashCode * 31);
        }
        return this.f6631h;
    }

    public final String toString() {
        return m3798c();
    }

    public C2445g(URL url) {
        C2450k c2450k = InterfaceC2447h.f6634a;
        AbstractC0938g.m1072c(url, "Argument must not be null");
        this.f6626c = url;
        this.f6627d = null;
        AbstractC0938g.m1072c(c2450k, "Argument must not be null");
        this.f6625b = c2450k;
    }
}
