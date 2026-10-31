package com.google.protobuf;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t {
    public static final /* synthetic */ int c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d1 f1554a = new d1(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1555b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        new t(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(int i9) {
        a();
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(n nVar, a2 a2Var, int i9, Object obj) {
        if (a2Var == a2.e) {
            nVar.w(i9, 3);
            ((a) obj).c(nVar);
            nVar.w(i9, 4);
        }
        nVar.w(i9, a2Var.c);
        switch (a2Var.ordinal()) {
            case 0:
                nVar.o(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                nVar.m(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                nVar.A(((Long) obj).longValue());
                break;
            case 3:
                nVar.A(((Long) obj).longValue());
                break;
            case 4:
                nVar.q(((Integer) obj).intValue());
                break;
            case 5:
                nVar.o(((Long) obj).longValue());
                break;
            case 6:
                nVar.m(((Integer) obj).intValue());
                break;
            case 7:
                nVar.g(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof g)) {
                    nVar.v((String) obj);
                } else {
                    nVar.k((g) obj);
                }
                break;
            case 9:
                ((a) obj).c(nVar);
                break;
            case 10:
                nVar.t((a) obj);
                break;
            case 11:
                if (!(obj instanceof g)) {
                    byte[] bArr = (byte[]) obj;
                    nVar.i(bArr.length, bArr);
                } else {
                    nVar.k((g) obj);
                }
                break;
            case 12:
                nVar.y(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof z)) {
                    nVar.q(((Integer) obj).intValue());
                } else {
                    nVar.q(((z) obj).a());
                }
                break;
            case 14:
                nVar.m(((Integer) obj).intValue());
                break;
            case 15:
                nVar.o(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                nVar.y((iIntValue >> 31) ^ (iIntValue << 1));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                nVar.A((jLongValue >> 63) ^ (jLongValue << 1));
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        d1 d1Var;
        if (this.f1555b) {
            return;
        }
        int i9 = 0;
        while (true) {
            d1Var = this.f1554a;
            if (i9 >= d1Var.c.size()) {
                break;
            }
            Map$Entry map$EntryC = d1Var.c(i9);
            if (map$EntryC.getValue() instanceof y) {
                y yVar = (y) map$EntryC.getValue();
                yVar.getClass();
                y0 y0Var = y0.c;
                y0Var.getClass();
                y0Var.a(yVar.getClass()).c(yVar);
                yVar.j();
            }
            i9++;
        }
        if (!d1Var.e) {
            if (d1Var.c.size() > 0) {
                d1Var.c(0).getKey().getClass();
                n0.b.a();
                return;
            } else {
                Iterator it = d1Var.d().iterator();
                if (it.hasNext()) {
                    ((Map$Entry) it.next()).getKey().getClass();
                    n0.b.a();
                    return;
                }
            }
        }
        if (!d1Var.e) {
            d1Var.d = d1Var.d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(d1Var.d);
            d1Var.f1491g = d1Var.f1491g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(d1Var.f1491g);
            d1Var.e = true;
        }
        this.f1555b = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object clone() {
        t tVar = new t();
        d1 d1Var = this.f1554a;
        if (d1Var.c.size() > 0) {
            Map$Entry map$EntryC = d1Var.c(0);
            if (map$EntryC.getKey() != null) {
                n0.b.a();
                return null;
            }
            map$EntryC.getValue();
            throw null;
        }
        Iterator it = d1Var.d().iterator();
        if (!it.hasNext()) {
            return tVar;
        }
        Map$Entry map$Entry = (Map$Entry) it.next();
        if (map$Entry.getKey() != null) {
            n0.b.a();
            return null;
        }
        map$Entry.getValue();
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            return this.f1554a.equals(((t) obj).f1554a);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f1554a.hashCode();
    }

    public t() {
    }
}
