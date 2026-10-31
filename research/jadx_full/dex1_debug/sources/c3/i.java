package c3;

import android.view.View;
import androidx.core.view.ViewCompat;
import com.google.protobuf.a2;
import com.google.protobuf.b0;
import com.google.protobuf.b1;
import com.google.protobuf.c0;
import com.google.protobuf.d0;
import com.google.protobuf.g0;
import com.google.protobuf.p;
import com.google.protobuf.y;
import com.google.protobuf.y0;
import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f488b;
    public int c = 0;
    public Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(com.google.protobuf.j jVar) {
        Charset charset = b0.f1473a;
        this.d = jVar;
        jVar.c = this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean A() {
        int i9;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        if (jVar.c() || (i9 = this.f487a) == this.f488b) {
            return false;
        }
        return jVar.y(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(z7.a aVar) {
        Object obj;
        Object obj2;
        Object[] objArr = (Object[]) this.d;
        int i9 = this.f487a;
        int iHashCode = aVar.hashCode() * (-1640531527);
        int i10 = (iHashCode ^ (iHashCode >>> 16)) & i9;
        Object obj3 = objArr[i10];
        if (obj3 != null) {
            if (obj3.equals(aVar)) {
                return;
            }
            do {
                i10 = (i10 + 1) & i9;
                obj2 = objArr[i10];
                if (obj2 == null) {
                }
            } while (!obj2.equals(aVar));
            return;
        }
        objArr[i10] = aVar;
        int i11 = this.f488b + 1;
        this.f488b = i11;
        if (i11 < this.c) {
            return;
        }
        Object[] objArr2 = (Object[]) this.d;
        int length = objArr2.length;
        int i12 = length << 1;
        int i13 = i12 - 1;
        Object[] objArr3 = new Object[i12];
        while (true) {
            int i14 = i11 - 1;
            if (i11 == 0) {
                this.f487a = i13;
                this.c = (int) (i12 * 0.75f);
                this.d = objArr3;
                return;
            }
            do {
                length--;
                obj = objArr2[length];
            } while (obj == null);
            int iHashCode2 = obj.hashCode() * (-1640531527);
            int i15 = (iHashCode2 ^ (iHashCode2 >>> 16)) & i13;
            if (objArr3[i15] != null) {
                do {
                    i15 = (i15 + 1) & i13;
                } while (objArr3[i15] != null);
            }
            objArr3[i15] = objArr2[length];
            i11 = i14;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void b() {
        View view = (View) this.d;
        ViewCompat.offsetTopAndBottom(view, this.c - (view.getTop() - this.f487a));
        ViewCompat.offsetLeftAndRight(view, 0 - (view.getLeft() - this.f488b));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int c() {
        int i9 = this.c;
        if (i9 != 0) {
            this.f487a = i9;
            this.c = 0;
        } else {
            this.f487a = ((com.google.protobuf.j) this.d).v();
        }
        int i10 = this.f487a;
        if (i10 == 0 || i10 == this.f488b) {
            return Integer.MAX_VALUE;
        }
        return i10 >>> 3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d(Object obj, b1 b1Var, p pVar) {
        int i9 = this.f488b;
        this.f488b = ((this.f487a >>> 3) << 3) | 4;
        try {
            b1Var.h(obj, this, pVar);
            if (this.f487a != this.f488b) {
                throw new d0("Failed to parse the message.");
            }
            this.f488b = i9;
        } catch (Throwable th) {
            this.f488b = i9;
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void e(Object obj, b1 b1Var, p pVar) throws d0 {
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int iW = jVar.w();
        if (jVar.f1517a >= jVar.f1518b) {
            throw new d0("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iF = jVar.f(iW);
        jVar.f1517a++;
        b1Var.h(obj, this, pVar);
        jVar.a(0);
        jVar.f1517a--;
        jVar.e(iF);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void f(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 0) {
            do {
                list.add(Boolean.valueOf(jVar.g()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iB = jVar.b() + jVar.w();
        do {
            list.add(Boolean.valueOf(jVar.g()));
        } while (jVar.b() < iB);
        y(iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public com.google.protobuf.g g() throws c0 {
        z(2);
        return ((com.google.protobuf.j) this.d).h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void h(List list) throws c0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        if ((this.f487a & 7) != 2) {
            throw d0.b();
        }
        do {
            list.add(g());
            if (jVar.c()) {
                return;
            } else {
                iV = jVar.v();
            }
        } while (iV == this.f487a);
        this.c = iV;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void i(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 1) {
            do {
                list.add(Double.valueOf(jVar.i()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iW = jVar.w();
        if ((iW & 7) != 0) {
            throw new d0("Failed to parse the message.");
        }
        int iB = jVar.b() + iW;
        do {
            list.add(Double.valueOf(jVar.i()));
        } while (jVar.b() < iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void j(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 0) {
            do {
                list.add(Integer.valueOf(jVar.j()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iB = jVar.b() + jVar.w();
        do {
            list.add(Integer.valueOf(jVar.j()));
        } while (jVar.b() < iB);
        y(iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object k(a2 a2Var, Class cls, p pVar) throws d0 {
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        switch (a2Var.ordinal()) {
            case 0:
                z(1);
                return Double.valueOf(jVar.i());
            case 1:
                z(5);
                return Float.valueOf(jVar.m());
            case 2:
                z(0);
                return Long.valueOf(jVar.o());
            case 3:
                z(0);
                return Long.valueOf(jVar.x());
            case 4:
                z(0);
                return Integer.valueOf(jVar.n());
            case 5:
                z(1);
                return Long.valueOf(jVar.l());
            case 6:
                z(5);
                return Integer.valueOf(jVar.k());
            case 7:
                z(0);
                return Boolean.valueOf(jVar.g());
            case 8:
                z(2);
                return jVar.u();
            case 9:
            default:
                j1.i.k("unsupported field type.");
                return null;
            case 10:
                z(2);
                b1 b1VarA = y0.c.a(cls);
                y yVarI = b1VarA.i();
                e(yVarI, b1VarA, pVar);
                b1VarA.c(yVarI);
                return yVarI;
            case 11:
                return g();
            case 12:
                z(0);
                return Integer.valueOf(jVar.w());
            case 13:
                z(0);
                return Integer.valueOf(jVar.j());
            case 14:
                z(5);
                return Integer.valueOf(jVar.p());
            case 15:
                z(1);
                return Long.valueOf(jVar.q());
            case 16:
                z(0);
                return Integer.valueOf(jVar.r());
            case 17:
                z(0);
                return Long.valueOf(jVar.s());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void l(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 2) {
            int iW = jVar.w();
            if ((iW & 3) != 0) {
                throw new d0("Failed to parse the message.");
            }
            int iB = jVar.b() + iW;
            do {
                list.add(Integer.valueOf(jVar.k()));
            } while (jVar.b() < iB);
            return;
        }
        if (i9 != 5) {
            throw d0.b();
        }
        do {
            list.add(Integer.valueOf(jVar.k()));
            if (jVar.c()) {
                return;
            } else {
                iV = jVar.v();
            }
        } while (iV == this.f487a);
        this.c = iV;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void m(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 1) {
            do {
                list.add(Long.valueOf(jVar.l()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iW = jVar.w();
        if ((iW & 7) != 0) {
            throw new d0("Failed to parse the message.");
        }
        int iB = jVar.b() + iW;
        do {
            list.add(Long.valueOf(jVar.l()));
        } while (jVar.b() < iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void n(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 2) {
            int iW = jVar.w();
            if ((iW & 3) != 0) {
                throw new d0("Failed to parse the message.");
            }
            int iB = jVar.b() + iW;
            do {
                list.add(Float.valueOf(jVar.m()));
            } while (jVar.b() < iB);
            return;
        }
        if (i9 != 5) {
            throw d0.b();
        }
        do {
            list.add(Float.valueOf(jVar.m()));
            if (jVar.c()) {
                return;
            } else {
                iV = jVar.v();
            }
        } while (iV == this.f487a);
        this.c = iV;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void o(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 0) {
            do {
                list.add(Integer.valueOf(jVar.n()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iB = jVar.b() + jVar.w();
        do {
            list.add(Integer.valueOf(jVar.n()));
        } while (jVar.b() < iB);
        y(iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void p(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 0) {
            do {
                list.add(Long.valueOf(jVar.o()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iB = jVar.b() + jVar.w();
        do {
            list.add(Long.valueOf(jVar.o()));
        } while (jVar.b() < iB);
        y(iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void q(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 2) {
            int iW = jVar.w();
            if ((iW & 3) != 0) {
                throw new d0("Failed to parse the message.");
            }
            int iB = jVar.b() + iW;
            do {
                list.add(Integer.valueOf(jVar.p()));
            } while (jVar.b() < iB);
            return;
        }
        if (i9 != 5) {
            throw d0.b();
        }
        do {
            list.add(Integer.valueOf(jVar.p()));
            if (jVar.c()) {
                return;
            } else {
                iV = jVar.v();
            }
        } while (iV == this.f487a);
        this.c = iV;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void r(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 1) {
            do {
                list.add(Long.valueOf(jVar.q()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iW = jVar.w();
        if ((iW & 7) != 0) {
            throw new d0("Failed to parse the message.");
        }
        int iB = jVar.b() + iW;
        do {
            list.add(Long.valueOf(jVar.q()));
        } while (jVar.b() < iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void s(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 0) {
            do {
                list.add(Integer.valueOf(jVar.r()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iB = jVar.b() + jVar.w();
        do {
            list.add(Integer.valueOf(jVar.r()));
        } while (jVar.b() < iB);
        y(iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void t(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 0) {
            do {
                list.add(Long.valueOf(jVar.s()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iB = jVar.b() + jVar.w();
        do {
            list.add(Long.valueOf(jVar.s()));
        } while (jVar.b() < iB);
        y(iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void u(List list, boolean z8) throws c0 {
        String strT;
        int iV;
        int iV2;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        if ((this.f487a & 7) != 2) {
            throw d0.b();
        }
        if ((list instanceof g0) && !z8) {
            g0 g0Var = (g0) list;
            do {
                g0Var.b(g());
                if (jVar.c()) {
                    return;
                } else {
                    iV2 = jVar.v();
                }
            } while (iV2 == this.f487a);
            this.c = iV2;
            return;
        }
        do {
            if (z8) {
                z(2);
                strT = jVar.u();
            } else {
                z(2);
                strT = jVar.t();
            }
            list.add(strT);
            if (jVar.c()) {
                return;
            } else {
                iV = jVar.v();
            }
        } while (iV == this.f487a);
        this.c = iV;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void v(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 0) {
            do {
                list.add(Integer.valueOf(jVar.w()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iB = jVar.b() + jVar.w();
        do {
            list.add(Integer.valueOf(jVar.w()));
        } while (jVar.b() < iB);
        y(iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void w(List list) throws d0 {
        int iV;
        com.google.protobuf.j jVar = (com.google.protobuf.j) this.d;
        int i9 = this.f487a & 7;
        if (i9 == 0) {
            do {
                list.add(Long.valueOf(jVar.x()));
                if (jVar.c()) {
                    return;
                } else {
                    iV = jVar.v();
                }
            } while (iV == this.f487a);
            this.c = iV;
            return;
        }
        if (i9 != 2) {
            throw d0.b();
        }
        int iB = jVar.b() + jVar.w();
        do {
            list.add(Long.valueOf(jVar.x()));
        } while (jVar.b() < iB);
        y(iB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void x(int i9, int i10, Object[] objArr) {
        int i11;
        Object obj;
        this.f488b--;
        while (true) {
            int i12 = i9 + 1;
            while (true) {
                i11 = i12 & i10;
                obj = objArr[i11];
                if (obj != null) {
                    int iHashCode = obj.hashCode() * (-1640531527);
                    int i13 = (iHashCode ^ (iHashCode >>> 16)) & i10;
                    if (i9 > i11) {
                        if (i9 >= i13 && i13 > i11) {
                            break;
                        } else {
                            i12 = i11 + 1;
                        }
                    } else if (i9 >= i13 || i13 > i11) {
                        break;
                    } else {
                        i12 = i11 + 1;
                    }
                } else {
                    objArr[i9] = null;
                    return;
                }
            }
            objArr[i9] = obj;
            i9 = i11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void y(int i9) throws d0 {
        if (((com.google.protobuf.j) this.d).b() != i9) {
            throw d0.e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void z(int i9) throws c0 {
        if ((this.f487a & 7) != i9) {
            throw d0.b();
        }
    }
}
