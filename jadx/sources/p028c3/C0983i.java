package p028c3;

import android.view.View;
import androidx.core.view.ViewCompat;
import com.google.protobuf.AbstractC1133b0;
import com.google.protobuf.AbstractC1157j;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1137c0;
import com.google.protobuf.C1140d0;
import com.google.protobuf.C1148g;
import com.google.protobuf.C1175p;
import com.google.protobuf.C1203y0;
import com.google.protobuf.EnumC1131a2;
import com.google.protobuf.InterfaceC1134b1;
import com.google.protobuf.InterfaceC1149g0;
import java.nio.charset.Charset;
import java.util.List;
import p099j1.C1929i;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: c3.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0983i {

    /* JADX INFO: renamed from: a */
    public int f929a;

    /* JADX INFO: renamed from: b */
    public int f930b;

    /* JADX INFO: renamed from: c */
    public int f931c = 0;

    /* JADX INFO: renamed from: d */
    public Object f932d;

    public C0983i(AbstractC1157j abstractC1157j) {
        Charset charset = AbstractC1133b0.f2634a;
        this.f932d = abstractC1157j;
        abstractC1157j.f2706c = this;
    }

    /* JADX INFO: renamed from: A */
    public boolean m1103A() {
        int i10;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        if (abstractC1157j.mo1965c() || (i10 = this.f929a) == this.f930b) {
            return false;
        }
        return abstractC1157j.mo1986y(i10);
    }

    /* JADX INFO: renamed from: a */
    public void m1104a(InterfaceC3762a interfaceC3762a) {
        Object obj;
        Object obj2;
        Object[] objArr = (Object[]) this.f932d;
        int i10 = this.f929a;
        int iHashCode = interfaceC3762a.hashCode() * (-1640531527);
        int i11 = (iHashCode ^ (iHashCode >>> 16)) & i10;
        Object obj3 = objArr[i11];
        if (obj3 != null) {
            if (obj3.equals(interfaceC3762a)) {
                return;
            }
            do {
                i11 = (i11 + 1) & i10;
                obj2 = objArr[i11];
                if (obj2 == null) {
                }
            } while (!obj2.equals(interfaceC3762a));
            return;
        }
        objArr[i11] = interfaceC3762a;
        int i12 = this.f930b + 1;
        this.f930b = i12;
        if (i12 < this.f931c) {
            return;
        }
        Object[] objArr2 = (Object[]) this.f932d;
        int length = objArr2.length;
        int i13 = length << 1;
        int i14 = i13 - 1;
        Object[] objArr3 = new Object[i13];
        while (true) {
            int i15 = i12 - 1;
            if (i12 == 0) {
                this.f929a = i14;
                this.f931c = (int) (i13 * 0.75f);
                this.f932d = objArr3;
                return;
            }
            do {
                length--;
                obj = objArr2[length];
            } while (obj == null);
            int iHashCode2 = obj.hashCode() * (-1640531527);
            int i16 = (iHashCode2 ^ (iHashCode2 >>> 16)) & i14;
            if (objArr3[i16] != null) {
                do {
                    i16 = (i16 + 1) & i14;
                } while (objArr3[i16] != null);
            }
            objArr3[i16] = objArr2[length];
            i12 = i15;
        }
    }

    /* JADX INFO: renamed from: b */
    public void m1105b() {
        View view = (View) this.f932d;
        ViewCompat.offsetTopAndBottom(view, this.f931c - (view.getTop() - this.f929a));
        ViewCompat.offsetLeftAndRight(view, 0 - (view.getLeft() - this.f930b));
    }

    /* JADX INFO: renamed from: c */
    public int m1106c() {
        int i10 = this.f931c;
        if (i10 != 0) {
            this.f929a = i10;
            this.f931c = 0;
        } else {
            this.f929a = ((AbstractC1157j) this.f932d).mo1983v();
        }
        int i11 = this.f929a;
        if (i11 == 0 || i11 == this.f930b) {
            return Integer.MAX_VALUE;
        }
        return i11 >>> 3;
    }

    /* JADX INFO: renamed from: d */
    public void m1107d(Object obj, InterfaceC1134b1 interfaceC1134b1, C1175p c1175p) {
        int i10 = this.f930b;
        this.f930b = ((this.f929a >>> 3) << 3) | 4;
        try {
            interfaceC1134b1.mo1908h(obj, this, c1175p);
            if (this.f929a != this.f930b) {
                throw new C1140d0("Failed to parse the message.");
            }
            this.f930b = i10;
        } catch (Throwable th) {
            this.f930b = i10;
            throw th;
        }
    }

    /* JADX INFO: renamed from: e */
    public void m1108e(Object obj, InterfaceC1134b1 interfaceC1134b1, C1175p c1175p) throws C1140d0 {
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int iMo1984w = abstractC1157j.mo1984w();
        if (abstractC1157j.f2704a >= abstractC1157j.f2705b) {
            throw new C1140d0("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iMo1967f = abstractC1157j.mo1967f(iMo1984w);
        abstractC1157j.f2704a++;
        interfaceC1134b1.mo1908h(obj, this, c1175p);
        abstractC1157j.mo1963a(0);
        abstractC1157j.f2704a--;
        abstractC1157j.mo1966e(iMo1967f);
    }

    /* JADX INFO: renamed from: f */
    public void m1109f(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 0) {
            do {
                list.add(Boolean.valueOf(abstractC1157j.mo1968g()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1964b = abstractC1157j.mo1964b() + abstractC1157j.mo1984w();
        do {
            list.add(Boolean.valueOf(abstractC1157j.mo1968g()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
        m1128y(iMo1964b);
    }

    /* JADX INFO: renamed from: g */
    public C1148g m1110g() throws C1137c0 {
        m1129z(2);
        return ((AbstractC1157j) this.f932d).mo1969h();
    }

    /* JADX INFO: renamed from: h */
    public void m1111h(List list) throws C1137c0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        if ((this.f929a & 7) != 2) {
            throw C1140d0.m1937b();
        }
        do {
            list.add(m1110g());
            if (abstractC1157j.mo1965c()) {
                return;
            } else {
                iMo1983v = abstractC1157j.mo1983v();
            }
        } while (iMo1983v == this.f929a);
        this.f931c = iMo1983v;
    }

    /* JADX INFO: renamed from: i */
    public void m1112i(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 1) {
            do {
                list.add(Double.valueOf(abstractC1157j.mo1970i()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1984w = abstractC1157j.mo1984w();
        if ((iMo1984w & 7) != 0) {
            throw new C1140d0("Failed to parse the message.");
        }
        int iMo1964b = abstractC1157j.mo1964b() + iMo1984w;
        do {
            list.add(Double.valueOf(abstractC1157j.mo1970i()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
    }

    /* JADX INFO: renamed from: j */
    public void m1113j(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 0) {
            do {
                list.add(Integer.valueOf(abstractC1157j.mo1971j()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1964b = abstractC1157j.mo1964b() + abstractC1157j.mo1984w();
        do {
            list.add(Integer.valueOf(abstractC1157j.mo1971j()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
        m1128y(iMo1964b);
    }

    /* JADX INFO: renamed from: k */
    public Object m1114k(EnumC1131a2 enumC1131a2, Class cls, C1175p c1175p) throws C1140d0 {
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        switch (enumC1131a2.ordinal()) {
            case 0:
                m1129z(1);
                return Double.valueOf(abstractC1157j.mo1970i());
            case 1:
                m1129z(5);
                return Float.valueOf(abstractC1157j.mo1974m());
            case 2:
                m1129z(0);
                return Long.valueOf(abstractC1157j.mo1976o());
            case 3:
                m1129z(0);
                return Long.valueOf(abstractC1157j.mo1985x());
            case 4:
                m1129z(0);
                return Integer.valueOf(abstractC1157j.mo1975n());
            case 5:
                m1129z(1);
                return Long.valueOf(abstractC1157j.mo1973l());
            case 6:
                m1129z(5);
                return Integer.valueOf(abstractC1157j.mo1972k());
            case 7:
                m1129z(0);
                return Boolean.valueOf(abstractC1157j.mo1968g());
            case 8:
                m1129z(2);
                return abstractC1157j.mo1982u();
            case 9:
            default:
                C1929i.m3029k("unsupported field type.");
                return null;
            case 10:
                m1129z(2);
                InterfaceC1134b1 interfaceC1134b1M2179a = C1203y0.f2795c.m2179a(cls);
                AbstractC1202y abstractC1202yMo1909i = interfaceC1134b1M2179a.mo1909i();
                m1108e(abstractC1202yMo1909i, interfaceC1134b1M2179a, c1175p);
                interfaceC1134b1M2179a.mo1903c(abstractC1202yMo1909i);
                return abstractC1202yMo1909i;
            case 11:
                return m1110g();
            case 12:
                m1129z(0);
                return Integer.valueOf(abstractC1157j.mo1984w());
            case 13:
                m1129z(0);
                return Integer.valueOf(abstractC1157j.mo1971j());
            case 14:
                m1129z(5);
                return Integer.valueOf(abstractC1157j.mo1977p());
            case 15:
                m1129z(1);
                return Long.valueOf(abstractC1157j.mo1978q());
            case 16:
                m1129z(0);
                return Integer.valueOf(abstractC1157j.mo1979r());
            case 17:
                m1129z(0);
                return Long.valueOf(abstractC1157j.mo1980s());
        }
    }

    /* JADX INFO: renamed from: l */
    public void m1115l(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 2) {
            int iMo1984w = abstractC1157j.mo1984w();
            if ((iMo1984w & 3) != 0) {
                throw new C1140d0("Failed to parse the message.");
            }
            int iMo1964b = abstractC1157j.mo1964b() + iMo1984w;
            do {
                list.add(Integer.valueOf(abstractC1157j.mo1972k()));
            } while (abstractC1157j.mo1964b() < iMo1964b);
            return;
        }
        if (i10 != 5) {
            throw C1140d0.m1937b();
        }
        do {
            list.add(Integer.valueOf(abstractC1157j.mo1972k()));
            if (abstractC1157j.mo1965c()) {
                return;
            } else {
                iMo1983v = abstractC1157j.mo1983v();
            }
        } while (iMo1983v == this.f929a);
        this.f931c = iMo1983v;
    }

    /* JADX INFO: renamed from: m */
    public void m1116m(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 1) {
            do {
                list.add(Long.valueOf(abstractC1157j.mo1973l()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1984w = abstractC1157j.mo1984w();
        if ((iMo1984w & 7) != 0) {
            throw new C1140d0("Failed to parse the message.");
        }
        int iMo1964b = abstractC1157j.mo1964b() + iMo1984w;
        do {
            list.add(Long.valueOf(abstractC1157j.mo1973l()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
    }

    /* JADX INFO: renamed from: n */
    public void m1117n(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 2) {
            int iMo1984w = abstractC1157j.mo1984w();
            if ((iMo1984w & 3) != 0) {
                throw new C1140d0("Failed to parse the message.");
            }
            int iMo1964b = abstractC1157j.mo1964b() + iMo1984w;
            do {
                list.add(Float.valueOf(abstractC1157j.mo1974m()));
            } while (abstractC1157j.mo1964b() < iMo1964b);
            return;
        }
        if (i10 != 5) {
            throw C1140d0.m1937b();
        }
        do {
            list.add(Float.valueOf(abstractC1157j.mo1974m()));
            if (abstractC1157j.mo1965c()) {
                return;
            } else {
                iMo1983v = abstractC1157j.mo1983v();
            }
        } while (iMo1983v == this.f929a);
        this.f931c = iMo1983v;
    }

    /* JADX INFO: renamed from: o */
    public void m1118o(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 0) {
            do {
                list.add(Integer.valueOf(abstractC1157j.mo1975n()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1964b = abstractC1157j.mo1964b() + abstractC1157j.mo1984w();
        do {
            list.add(Integer.valueOf(abstractC1157j.mo1975n()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
        m1128y(iMo1964b);
    }

    /* JADX INFO: renamed from: p */
    public void m1119p(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 0) {
            do {
                list.add(Long.valueOf(abstractC1157j.mo1976o()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1964b = abstractC1157j.mo1964b() + abstractC1157j.mo1984w();
        do {
            list.add(Long.valueOf(abstractC1157j.mo1976o()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
        m1128y(iMo1964b);
    }

    /* JADX INFO: renamed from: q */
    public void m1120q(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 2) {
            int iMo1984w = abstractC1157j.mo1984w();
            if ((iMo1984w & 3) != 0) {
                throw new C1140d0("Failed to parse the message.");
            }
            int iMo1964b = abstractC1157j.mo1964b() + iMo1984w;
            do {
                list.add(Integer.valueOf(abstractC1157j.mo1977p()));
            } while (abstractC1157j.mo1964b() < iMo1964b);
            return;
        }
        if (i10 != 5) {
            throw C1140d0.m1937b();
        }
        do {
            list.add(Integer.valueOf(abstractC1157j.mo1977p()));
            if (abstractC1157j.mo1965c()) {
                return;
            } else {
                iMo1983v = abstractC1157j.mo1983v();
            }
        } while (iMo1983v == this.f929a);
        this.f931c = iMo1983v;
    }

    /* JADX INFO: renamed from: r */
    public void m1121r(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 1) {
            do {
                list.add(Long.valueOf(abstractC1157j.mo1978q()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1984w = abstractC1157j.mo1984w();
        if ((iMo1984w & 7) != 0) {
            throw new C1140d0("Failed to parse the message.");
        }
        int iMo1964b = abstractC1157j.mo1964b() + iMo1984w;
        do {
            list.add(Long.valueOf(abstractC1157j.mo1978q()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
    }

    /* JADX INFO: renamed from: s */
    public void m1122s(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 0) {
            do {
                list.add(Integer.valueOf(abstractC1157j.mo1979r()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1964b = abstractC1157j.mo1964b() + abstractC1157j.mo1984w();
        do {
            list.add(Integer.valueOf(abstractC1157j.mo1979r()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
        m1128y(iMo1964b);
    }

    /* JADX INFO: renamed from: t */
    public void m1123t(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 0) {
            do {
                list.add(Long.valueOf(abstractC1157j.mo1980s()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1964b = abstractC1157j.mo1964b() + abstractC1157j.mo1984w();
        do {
            list.add(Long.valueOf(abstractC1157j.mo1980s()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
        m1128y(iMo1964b);
    }

    /* JADX INFO: renamed from: u */
    public void m1124u(List list, boolean z9) throws C1137c0 {
        String strMo1981t;
        int iMo1983v;
        int iMo1983v2;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        if ((this.f929a & 7) != 2) {
            throw C1140d0.m1937b();
        }
        if ((list instanceof InterfaceC1149g0) && !z9) {
            InterfaceC1149g0 interfaceC1149g0 = (InterfaceC1149g0) list;
            do {
                interfaceC1149g0.mo1953b(m1110g());
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v2 = abstractC1157j.mo1983v();
                }
            } while (iMo1983v2 == this.f929a);
            this.f931c = iMo1983v2;
            return;
        }
        do {
            if (z9) {
                m1129z(2);
                strMo1981t = abstractC1157j.mo1982u();
            } else {
                m1129z(2);
                strMo1981t = abstractC1157j.mo1981t();
            }
            list.add(strMo1981t);
            if (abstractC1157j.mo1965c()) {
                return;
            } else {
                iMo1983v = abstractC1157j.mo1983v();
            }
        } while (iMo1983v == this.f929a);
        this.f931c = iMo1983v;
    }

    /* JADX INFO: renamed from: v */
    public void m1125v(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 0) {
            do {
                list.add(Integer.valueOf(abstractC1157j.mo1984w()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1964b = abstractC1157j.mo1964b() + abstractC1157j.mo1984w();
        do {
            list.add(Integer.valueOf(abstractC1157j.mo1984w()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
        m1128y(iMo1964b);
    }

    /* JADX INFO: renamed from: w */
    public void m1126w(List list) throws C1140d0 {
        int iMo1983v;
        AbstractC1157j abstractC1157j = (AbstractC1157j) this.f932d;
        int i10 = this.f929a & 7;
        if (i10 == 0) {
            do {
                list.add(Long.valueOf(abstractC1157j.mo1985x()));
                if (abstractC1157j.mo1965c()) {
                    return;
                } else {
                    iMo1983v = abstractC1157j.mo1983v();
                }
            } while (iMo1983v == this.f929a);
            this.f931c = iMo1983v;
            return;
        }
        if (i10 != 2) {
            throw C1140d0.m1937b();
        }
        int iMo1964b = abstractC1157j.mo1964b() + abstractC1157j.mo1984w();
        do {
            list.add(Long.valueOf(abstractC1157j.mo1985x()));
        } while (abstractC1157j.mo1964b() < iMo1964b);
        m1128y(iMo1964b);
    }

    /* JADX INFO: renamed from: x */
    public void m1127x(int i10, int i11, Object[] objArr) {
        int i12;
        Object obj;
        this.f930b--;
        while (true) {
            int i13 = i10 + 1;
            while (true) {
                i12 = i13 & i11;
                obj = objArr[i12];
                if (obj != null) {
                    int iHashCode = obj.hashCode() * (-1640531527);
                    int i14 = (iHashCode ^ (iHashCode >>> 16)) & i11;
                    if (i10 > i12) {
                        if (i10 >= i14 && i14 > i12) {
                            break;
                        } else {
                            i13 = i12 + 1;
                        }
                    } else if (i10 >= i14 || i14 > i12) {
                        break;
                    } else {
                        i13 = i12 + 1;
                    }
                } else {
                    objArr[i10] = null;
                    return;
                }
            }
            objArr[i10] = obj;
            i10 = i12;
        }
    }

    /* JADX INFO: renamed from: y */
    public void m1128y(int i10) throws C1140d0 {
        if (((AbstractC1157j) this.f932d).mo1964b() != i10) {
            throw C1140d0.m1940e();
        }
    }

    /* JADX INFO: renamed from: z */
    public void m1129z(int i10) throws C1137c0 {
        if ((this.f929a & 7) != i10) {
            throw C1140d0.m1937b();
        }
    }
}
