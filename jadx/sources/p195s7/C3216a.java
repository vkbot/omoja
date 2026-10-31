package p195s7;

import p173q0.C3043g;

/* JADX INFO: renamed from: s7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3216a {

    /* JADX INFO: renamed from: a */
    public final String f9398a;

    /* JADX INFO: renamed from: b */
    public final int f9399b;

    /* JADX INFO: renamed from: c */
    public final String f9400c;

    public C3216a(C3043g c3043g) {
        String str = c3043g.f8558b;
        this.f9398a = c3043g.f8559c;
        int i10 = c3043g.f8560d;
        this.f9399b = i10 == -1 ? str.equals("http") ? 80 : str.equals("https") ? 443 : -1 : i10;
        this.f9400c = c3043g.toString();
    }

    /* JADX INFO: renamed from: a */
    public static int m5154a(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'a' && c <= 'f') {
            return c - 'W';
        }
        if (c < 'A' || c > 'F') {
            return -1;
        }
        return c - '7';
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C3216a) && ((C3216a) obj).f9400c.equals(this.f9400c);
    }

    public final int hashCode() {
        return this.f9400c.hashCode();
    }

    public final String toString() {
        return this.f9400c;
    }
}
