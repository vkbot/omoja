package com.google.protobuf;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import p142n0.C2467b;

/* JADX INFO: renamed from: com.google.protobuf.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1187t {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f2756c = 0;

    /* JADX INFO: renamed from: a */
    public final C1141d1 f2757a = new C1141d1(16);

    /* JADX INFO: renamed from: b */
    public boolean f2758b;

    static {
        new C1187t(0);
    }

    public C1187t(int i10) {
        m2123a();
        m2123a();
    }

    /* JADX INFO: renamed from: b */
    public static void m2122b(AbstractC1169n abstractC1169n, EnumC1131a2 enumC1131a2, int i10, Object obj) {
        if (enumC1131a2 == EnumC1131a2.f2628e) {
            abstractC1169n.mo2029w(i10, 3);
            ((AbstractC1128a) obj).mo1895c(abstractC1169n);
            abstractC1169n.mo2029w(i10, 4);
        }
        abstractC1169n.mo2029w(i10, enumC1131a2.f2632c);
        switch (enumC1131a2.ordinal()) {
            case 0:
                abstractC1169n.mo2021o(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                abstractC1169n.mo2019m(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                abstractC1169n.mo2010A(((Long) obj).longValue());
                break;
            case 3:
                abstractC1169n.mo2010A(((Long) obj).longValue());
                break;
            case 4:
                abstractC1169n.mo2023q(((Integer) obj).intValue());
                break;
            case 5:
                abstractC1169n.mo2021o(((Long) obj).longValue());
                break;
            case 6:
                abstractC1169n.mo2019m(((Integer) obj).intValue());
                break;
            case 7:
                abstractC1169n.mo2013g(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof C1148g)) {
                    abstractC1169n.mo2028v((String) obj);
                } else {
                    abstractC1169n.mo2017k((C1148g) obj);
                }
                break;
            case 9:
                ((AbstractC1128a) obj).mo1895c(abstractC1169n);
                break;
            case 10:
                abstractC1169n.mo2026t((AbstractC1128a) obj);
                break;
            case 11:
                if (!(obj instanceof C1148g)) {
                    byte[] bArr = (byte[]) obj;
                    abstractC1169n.mo2015i(bArr.length, bArr);
                } else {
                    abstractC1169n.mo2017k((C1148g) obj);
                }
                break;
            case 12:
                abstractC1169n.mo2031y(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof InterfaceC1205z)) {
                    abstractC1169n.mo2023q(((Integer) obj).intValue());
                } else {
                    abstractC1169n.mo2023q(((InterfaceC1205z) obj).mo2180a());
                }
                break;
            case 14:
                abstractC1169n.mo2019m(((Integer) obj).intValue());
                break;
            case 15:
                abstractC1169n.mo2021o(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                abstractC1169n.mo2031y((iIntValue >> 31) ^ (iIntValue << 1));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                abstractC1169n.mo2010A((jLongValue >> 63) ^ (jLongValue << 1));
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2123a() {
        C1141d1 c1141d1;
        if (this.f2758b) {
            return;
        }
        int i10 = 0;
        while (true) {
            c1141d1 = this.f2757a;
            if (i10 >= c1141d1.f2657c.size()) {
                break;
            }
            Map.Entry entryM1943c = c1141d1.m1943c(i10);
            if (entryM1943c.getValue() instanceof AbstractC1202y) {
                AbstractC1202y abstractC1202y = (AbstractC1202y) entryM1943c.getValue();
                abstractC1202y.getClass();
                C1203y0 c1203y0 = C1203y0.f2795c;
                c1203y0.getClass();
                c1203y0.m2179a(abstractC1202y.getClass()).mo1903c(abstractC1202y);
                abstractC1202y.m2176j();
            }
            i10++;
        }
        if (!c1141d1.f2659e) {
            if (c1141d1.f2657c.size() > 0) {
                c1141d1.m1943c(0).getKey().getClass();
                C2467b.m3822a();
                return;
            } else {
                Iterator it = c1141d1.m1944d().iterator();
                if (it.hasNext()) {
                    ((Map.Entry) it.next()).getKey().getClass();
                    C2467b.m3822a();
                    return;
                }
            }
        }
        if (!c1141d1.f2659e) {
            c1141d1.f2658d = c1141d1.f2658d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(c1141d1.f2658d);
            c1141d1.f2661g = c1141d1.f2661g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(c1141d1.f2661g);
            c1141d1.f2659e = true;
        }
        this.f2758b = true;
    }

    public final Object clone() {
        C1187t c1187t = new C1187t();
        C1141d1 c1141d1 = this.f2757a;
        if (c1141d1.f2657c.size() > 0) {
            Map.Entry entryM1943c = c1141d1.m1943c(0);
            if (entryM1943c.getKey() != null) {
                C2467b.m3822a();
                return null;
            }
            entryM1943c.getValue();
            throw null;
        }
        Iterator it = c1141d1.m1944d().iterator();
        if (!it.hasNext()) {
            return c1187t;
        }
        Map.Entry entry = (Map.Entry) it.next();
        if (entry.getKey() != null) {
            C2467b.m3822a();
            return null;
        }
        entry.getValue();
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1187t) {
            return this.f2757a.equals(((C1187t) obj).f2757a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2757a.hashCode();
    }

    public C1187t() {
    }
}
