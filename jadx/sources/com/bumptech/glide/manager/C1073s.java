package com.bumptech.glide.manager;

import com.bumptech.glide.AbstractC1034g;
import java.io.File;
import java.util.Arrays;
import p006a5.C0023h;
import p025c0.C0939h;
import p056f.C1518b;
import p056f.C1519c;
import p063f6.C1578b;
import p091i4.C1745c;
import p231w6.AbstractC3530b;
import p231w6.C3531c;
import p231w6.C3534f;
import p260z5.C3749e;

/* JADX INFO: renamed from: com.bumptech.glide.manager.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1073s {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1176a;

    /* JADX INFO: renamed from: b */
    public boolean f1177b;

    /* JADX INFO: renamed from: c */
    public final Object f1178c;

    /* JADX INFO: renamed from: d */
    public Object f1179d;

    /* JADX INFO: renamed from: e */
    public Object f1180e;

    public C1073s(C1578b c1578b) throws C3749e {
        this.f1176a = 3;
        int i10 = c1578b.f3901c;
        if (i10 < 21 || (i10 & 3) != 1) {
            throw C3749e.m5980a();
        }
        this.f1178c = c1578b;
    }

    /* JADX INFO: renamed from: a */
    public void m1345a() {
        C1519c.m2586b((C1519c) this.f1180e, this, false);
    }

    /* JADX INFO: renamed from: b */
    public void m1346b(long j10, String str) {
        m1349e(str, String.valueOf(j10));
    }

    /* JADX INFO: renamed from: c */
    public void m1347c(Object obj, String str) {
        C0023h c0023h = new C0023h(10);
        ((C0023h) this.f1180e).f83e = c0023h;
        this.f1180e = c0023h;
        c0023h.f82d = obj;
        c0023h.f81c = str;
    }

    /* JADX INFO: renamed from: d */
    public void m1348d(String str, boolean z9) {
        m1349e(str, String.valueOf(z9));
    }

    /* JADX INFO: renamed from: e */
    public void m1349e(String str, String str2) {
        C1745c c1745c = new C1745c(10);
        ((C0023h) this.f1180e).f83e = c1745c;
        this.f1180e = c1745c;
        c1745c.f82d = str2;
        c1745c.f81c = str;
    }

    /* JADX INFO: renamed from: f */
    public int m1350f(int i10, int i11, int i12) {
        boolean z9 = this.f1177b;
        C1578b c1578b = (C1578b) this.f1178c;
        return z9 ? c1578b.m2658b(i11, i10) : c1578b.m2658b(i10, i11) ? (i12 << 1) | 1 : i12 << 1;
    }

    /* JADX INFO: renamed from: g */
    public File m1351g() {
        File file;
        synchronized (((C1519c) this.f1180e)) {
            try {
                C1518b c1518b = (C1518b) this.f1178c;
                if (c1518b.f3716f != this) {
                    throw new IllegalStateException();
                }
                if (!c1518b.f3715e) {
                    ((boolean[]) this.f1179d)[0] = true;
                }
                file = c1518b.f3714d[0];
                ((C1519c) this.f1180e).f3718b.mkdirs();
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }

    /* JADX INFO: renamed from: h */
    public C3531c m1352h() throws C3749e {
        C3531c c3531c = (C3531c) this.f1180e;
        if (c3531c != null) {
            return c3531c;
        }
        int iM1350f = 0;
        int iM1350f2 = 0;
        for (int i10 = 0; i10 < 6; i10++) {
            iM1350f2 = m1350f(i10, 8, iM1350f2);
        }
        int iM1350f3 = m1350f(8, 7, m1350f(8, 8, m1350f(7, 8, iM1350f2)));
        for (int i11 = 5; i11 >= 0; i11--) {
            iM1350f3 = m1350f(8, i11, iM1350f3);
        }
        int i12 = ((C1578b) this.f1178c).f3901c;
        int i13 = i12 - 7;
        for (int i14 = i12 - 1; i14 >= i13; i14--) {
            iM1350f = m1350f(8, i14, iM1350f);
        }
        for (int i15 = i12 - 8; i15 < i12; i15++) {
            iM1350f = m1350f(i15, 8, iM1350f);
        }
        C3531c c3531cM5635a = C3531c.m5635a(iM1350f3, iM1350f);
        if (c3531cM5635a == null) {
            c3531cM5635a = C3531c.m5635a(iM1350f3 ^ 21522, iM1350f ^ 21522);
        }
        this.f1180e = c3531cM5635a;
        if (c3531cM5635a != null) {
            return c3531cM5635a;
        }
        throw C3749e.m5980a();
    }

    /* JADX INFO: renamed from: i */
    public C3534f m1353i() throws C3749e {
        C3534f c3534f = (C3534f) this.f1179d;
        if (c3534f != null) {
            return c3534f;
        }
        int i10 = ((C1578b) this.f1178c).f3901c;
        int i11 = (i10 - 17) / 4;
        if (i11 <= 6) {
            return C3534f.m5639c(i11);
        }
        int i12 = i10 - 11;
        int iM1350f = 0;
        int iM1350f2 = 0;
        for (int i13 = 5; i13 >= 0; i13--) {
            for (int i14 = i10 - 9; i14 >= i12; i14--) {
                iM1350f2 = m1350f(i14, i13, iM1350f2);
            }
        }
        C3534f c3534fM5638b = C3534f.m5638b(iM1350f2);
        if (c3534fM5638b != null && (c3534fM5638b.f10501a * 4) + 17 == i10) {
            this.f1179d = c3534fM5638b;
            return c3534fM5638b;
        }
        for (int i15 = 5; i15 >= 0; i15--) {
            for (int i16 = i10 - 9; i16 >= i12; i16--) {
                iM1350f = m1350f(i15, i16, iM1350f);
            }
        }
        C3534f c3534fM5638b2 = C3534f.m5638b(iM1350f);
        if (c3534fM5638b2 == null || (c3534fM5638b2.f10501a * 4) + 17 != i10) {
            throw C3749e.m5980a();
        }
        this.f1179d = c3534fM5638b2;
        return c3534fM5638b2;
    }

    /* JADX INFO: renamed from: j */
    public void m1354j() {
        if (((C3531c) this.f1180e) == null) {
            return;
        }
        int i10 = AbstractC1034g.m1297d(8)[((C3531c) this.f1180e).f10485b];
        C1578b c1578b = (C1578b) this.f1178c;
        int i11 = c1578b.f3901c;
        for (int i12 = 0; i12 < i11; i12++) {
            for (int i13 = 0; i13 < i11; i13++) {
                if (AbstractC3530b.m5634a(i10, i12, i13)) {
                    c1578b.m2657a(i13, i12);
                }
            }
        }
    }

    public String toString() {
        switch (this.f1176a) {
            case 2:
                boolean z9 = this.f1177b;
                StringBuilder sb = new StringBuilder(32);
                sb.append((String) this.f1178c);
                sb.append('{');
                String str = "";
                for (C0023h c0023h = (C0023h) ((C0023h) this.f1179d).f83e; c0023h != null; c0023h = (C0023h) c0023h.f83e) {
                    Object obj = c0023h.f82d;
                    if ((c0023h instanceof C1745c) || obj != null || !z9) {
                        sb.append(str);
                        String str2 = (String) c0023h.f81c;
                        if (str2 != null) {
                            sb.append(str2);
                            sb.append('=');
                        }
                        if (obj == null || !obj.getClass().isArray()) {
                            sb.append(obj);
                        } else {
                            String strDeepToString = Arrays.deepToString(new Object[]{obj});
                            sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                        }
                        str = ", ";
                    }
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public C1073s(String str) {
        this.f1176a = 2;
        C0023h c0023h = new C0023h(10);
        this.f1179d = c0023h;
        this.f1180e = c0023h;
        this.f1177b = false;
        this.f1178c = str;
    }

    public C1073s(C0939h c0939h, C1070p c1070p) {
        this.f1176a = 0;
        this.f1180e = new C1072r(0, this);
        this.f1179d = c0939h;
        this.f1178c = c1070p;
    }

    public C1073s(C1519c c1519c, C1518b c1518b) {
        this.f1176a = 1;
        this.f1180e = c1519c;
        this.f1178c = c1518b;
        this.f1179d = c1518b.f3715e ? null : new boolean[c1519c.f3724h];
    }
}
