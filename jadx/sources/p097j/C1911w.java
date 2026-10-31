package p097j;

import java.security.MessageDigest;
import java.util.Map;
import p025c0.AbstractC0938g;
import p077h.C1646h;
import p077h.InterfaceC1643e;

/* JADX INFO: renamed from: j.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1911w implements InterfaceC1643e {

    /* JADX INFO: renamed from: b */
    public final Object f5022b;

    /* JADX INFO: renamed from: c */
    public final int f5023c;

    /* JADX INFO: renamed from: d */
    public final int f5024d;

    /* JADX INFO: renamed from: e */
    public final Class f5025e;

    /* JADX INFO: renamed from: f */
    public final Class f5026f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC1643e f5027g;

    /* JADX INFO: renamed from: h */
    public final Map f5028h;

    /* JADX INFO: renamed from: i */
    public final C1646h f5029i;

    /* JADX INFO: renamed from: j */
    public int f5030j;

    public C1911w(Object obj, InterfaceC1643e interfaceC1643e, int i10, int i11, Map map, Class cls, Class cls2, C1646h c1646h) {
        AbstractC0938g.m1072c(obj, "Argument must not be null");
        this.f5022b = obj;
        this.f5027g = interfaceC1643e;
        this.f5023c = i10;
        this.f5024d = i11;
        AbstractC0938g.m1072c(map, "Argument must not be null");
        this.f5028h = map;
        AbstractC0938g.m1072c(cls, "Resource class must not be null");
        this.f5025e = cls;
        AbstractC0938g.m1072c(cls2, "Transcode class must not be null");
        this.f5026f = cls2;
        AbstractC0938g.m1072c(c1646h, "Argument must not be null");
        this.f5029i = c1646h;
    }

    @Override // p077h.InterfaceC1643e
    /* JADX INFO: renamed from: b */
    public final void mo917b(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // p077h.InterfaceC1643e
    public final boolean equals(Object obj) {
        if (obj instanceof C1911w) {
            C1911w c1911w = (C1911w) obj;
            if (this.f5022b.equals(c1911w.f5022b) && this.f5027g.equals(c1911w.f5027g) && this.f5024d == c1911w.f5024d && this.f5023c == c1911w.f5023c && this.f5028h.equals(c1911w.f5028h) && this.f5025e.equals(c1911w.f5025e) && this.f5026f.equals(c1911w.f5026f) && this.f5029i.equals(c1911w.f5029i)) {
                return true;
            }
        }
        return false;
    }

    @Override // p077h.InterfaceC1643e
    public final int hashCode() {
        if (this.f5030j == 0) {
            int iHashCode = this.f5022b.hashCode();
            this.f5030j = iHashCode;
            int iHashCode2 = ((((this.f5027g.hashCode() + (iHashCode * 31)) * 31) + this.f5023c) * 31) + this.f5024d;
            this.f5030j = iHashCode2;
            int iHashCode3 = this.f5028h.hashCode() + (iHashCode2 * 31);
            this.f5030j = iHashCode3;
            int iHashCode4 = this.f5025e.hashCode() + (iHashCode3 * 31);
            this.f5030j = iHashCode4;
            int iHashCode5 = this.f5026f.hashCode() + (iHashCode4 * 31);
            this.f5030j = iHashCode5;
            this.f5030j = this.f5029i.f4182b.hashCode() + (iHashCode5 * 31);
        }
        return this.f5030j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f5022b + ", width=" + this.f5023c + ", height=" + this.f5024d + ", resourceClass=" + this.f5025e + ", transcodeClass=" + this.f5026f + ", signature=" + this.f5027g + ", hashCode=" + this.f5030j + ", transformations=" + this.f5028h + ", options=" + this.f5029i + '}';
    }
}
