package com.google.protobuf;

import p028c3.C0983i;

/* JADX INFO: renamed from: com.google.protobuf.k1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1162k1 {
    /* JADX INFO: renamed from: a */
    public static C1159j1 m2035a(Object obj) {
        AbstractC1202y abstractC1202y = (AbstractC1202y) obj;
        C1159j1 c1159j1 = abstractC1202y.unknownFields;
        if (c1159j1 != C1159j1.f2709f) {
            return c1159j1;
        }
        C1159j1 c1159j2 = new C1159j1(0, new int[8], new Object[8], true);
        abstractC1202y.unknownFields = c1159j2;
        return c1159j2;
    }

    /* JADX INFO: renamed from: b */
    public static boolean m2036b(Object obj, C0983i c0983i) throws C1140d0 {
        int i10 = c0983i.f929a;
        AbstractC1157j abstractC1157j = (AbstractC1157j) c0983i.f932d;
        int i11 = i10 >>> 3;
        int i12 = i10 & 7;
        if (i12 == 0) {
            c0983i.m1129z(0);
            ((C1159j1) obj).m2008c(i11 << 3, Long.valueOf(abstractC1157j.mo1976o()));
            return true;
        }
        if (i12 == 1) {
            c0983i.m1129z(1);
            ((C1159j1) obj).m2008c((i11 << 3) | 1, Long.valueOf(abstractC1157j.mo1973l()));
            return true;
        }
        if (i12 == 2) {
            ((C1159j1) obj).m2008c((i11 << 3) | 2, c0983i.m1110g());
            return true;
        }
        if (i12 != 3) {
            if (i12 == 4) {
                return false;
            }
            if (i12 != 5) {
                throw C1140d0.m1937b();
            }
            c0983i.m1129z(5);
            ((C1159j1) obj).m2008c((i11 << 3) | 5, Integer.valueOf(abstractC1157j.mo1972k()));
            return true;
        }
        C1159j1 c1159j1 = new C1159j1(0, new int[8], new Object[8], true);
        int i13 = i11 << 3;
        int i14 = i13 | 4;
        while (c0983i.m1106c() != Integer.MAX_VALUE && m2036b(c1159j1, c0983i)) {
        }
        if (i14 != c0983i.f929a) {
            throw new C1140d0("Protocol message end-group tag did not match expected tag.");
        }
        if (c1159j1.f2714e) {
            c1159j1.f2714e = false;
        }
        ((C1159j1) obj).m2008c(i13 | 3, c1159j1);
        return true;
    }
}
