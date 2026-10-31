package com.google.protobuf;

import p028c3.C0983i;

/* JADX INFO: renamed from: com.google.protobuf.u0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1191u0 implements InterfaceC1134b1 {

    /* JADX INFO: renamed from: a */
    public final AbstractC1128a f2783a;

    /* JADX INFO: renamed from: b */
    public final C1162k1 f2784b;

    /* JADX INFO: renamed from: c */
    public final C1181r f2785c;

    public C1191u0(C1162k1 c1162k1, C1181r c1181r, AbstractC1128a abstractC1128a) {
        this.f2784b = c1162k1;
        c1181r.getClass();
        this.f2785c = c1181r;
        this.f2783a = abstractC1128a;
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: a */
    public final void mo1901a(Object obj, C1164l0 c1164l0) {
        this.f2785c.getClass();
        AbstractC1178q.m2083q(obj);
        throw null;
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: b */
    public final void mo1902b(Object obj, Object obj2) {
        AbstractC1138c1.m1920j(this.f2784b, obj, obj2);
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: c */
    public final void mo1903c(Object obj) {
        this.f2784b.getClass();
        C1159j1 c1159j1 = ((AbstractC1202y) obj).unknownFields;
        if (c1159j1.f2714e) {
            c1159j1.f2714e = false;
        }
        this.f2785c.getClass();
        AbstractC1178q.m2083q(obj);
        throw null;
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: d */
    public final boolean mo1904d(Object obj) {
        this.f2785c.getClass();
        AbstractC1178q.m2083q(obj);
        throw null;
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: e */
    public final int mo1905e(AbstractC1202y abstractC1202y) {
        this.f2784b.getClass();
        return abstractC1202y.unknownFields.hashCode();
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: f */
    public final int mo1906f(AbstractC1202y abstractC1202y) {
        this.f2784b.getClass();
        C1159j1 c1159j1 = abstractC1202y.unknownFields;
        int i10 = c1159j1.f2713d;
        if (i10 != -1) {
            return i10;
        }
        int iM2049d = 0;
        for (int i11 = 0; i11 < c1159j1.f2710a; i11++) {
            int i12 = c1159j1.f2711b[i11] >>> 3;
            C1148g c1148g = (C1148g) c1159j1.f2712c[i11];
            int iM2049d2 = AbstractC1169n.m2049d(i12) + AbstractC1169n.m2048c(2) + (AbstractC1169n.m2048c(1) * 2);
            int iM2048c = AbstractC1169n.m2048c(3);
            int size = c1148g.size();
            iM2049d += AbstractC1169n.m2049d(size) + size + iM2048c + iM2049d2;
        }
        c1159j1.f2713d = iM2049d;
        return iM2049d;
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: g */
    public final boolean mo1907g(AbstractC1202y abstractC1202y, AbstractC1202y abstractC1202y2) {
        this.f2784b.getClass();
        return abstractC1202y.unknownFields.equals(abstractC1202y2.unknownFields);
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: h */
    public final void mo1908h(Object obj, C0983i c0983i, C1175p c1175p) {
        this.f2784b.getClass();
        C1162k1.m2035a(obj);
        this.f2785c.getClass();
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // com.google.protobuf.InterfaceC1134b1
    /* JADX INFO: renamed from: i */
    public final AbstractC1202y mo1909i() {
        AbstractC1128a abstractC1128a = this.f2783a;
        return abstractC1128a instanceof AbstractC1202y ? ((AbstractC1202y) abstractC1128a).m2177k() : ((AbstractC1196w) ((AbstractC1202y) abstractC1128a).mo2174e(5)).m2166b();
    }
}
