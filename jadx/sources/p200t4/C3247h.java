package p200t4;

import ai.onnxruntime.AbstractC0074a;
import p050e3.C1461d;
import p099j1.C1929i;

/* JADX INFO: renamed from: t4.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3247h {

    /* JADX INFO: renamed from: a */
    public final C3255p f9529a;

    /* JADX INFO: renamed from: b */
    public final int f9530b;

    /* JADX INFO: renamed from: c */
    public final int f9531c;

    public C3247h(C3255p c3255p, int i10, int i11) {
        C1461d.m2504c(c3255p, "Null dependency anInterface.");
        this.f9529a = c3255p;
        this.f9530b = i10;
        this.f9531c = i11;
    }

    /* JADX INFO: renamed from: a */
    public static C3247h m5187a(Class cls) {
        return new C3247h(1, 0, cls);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3247h)) {
            return false;
        }
        C3247h c3247h = (C3247h) obj;
        return this.f9529a.equals(c3247h.f9529a) && this.f9530b == c3247h.f9530b && this.f9531c == c3247h.f9531c;
    }

    public final int hashCode() {
        return ((((this.f9529a.hashCode() ^ 1000003) * 1000003) ^ this.f9530b) * 1000003) ^ this.f9531c;
    }

    public final String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f9529a);
        sb.append(", type=");
        int i10 = this.f9530b;
        if (i10 == 1) {
            str = "required";
        } else {
            str = i10 == 0 ? "optional" : "set";
        }
        sb.append(str);
        sb.append(", injection=");
        int i11 = this.f9531c;
        if (i11 == 0) {
            str2 = "direct";
        } else if (i11 == 1) {
            str2 = "provider";
        } else {
            if (i11 != 2) {
                C1929i.m3023e(AbstractC0074a.m154e(i11, "Unsupported injection: "));
                return null;
            }
            str2 = "deferred";
        }
        return AbstractC0074a.m165p(sb, str2, "}");
    }

    public C3247h(int i10, int i11, Class cls) {
        this(C3255p.m5189a(cls), i10, i11);
    }
}
