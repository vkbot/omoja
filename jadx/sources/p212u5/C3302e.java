package p212u5;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Set;
import p142n0.C2467b;
import p192s3.C3199m;

/* JADX INFO: renamed from: u5.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3302e extends AbstractMap implements Serializable {

    /* JADX INFO: renamed from: i */
    public static final C3199m f9669i = new C3199m(1);

    /* JADX INFO: renamed from: c */
    public C3301d f9671c;

    /* JADX INFO: renamed from: g */
    public C3300c f9675g;

    /* JADX INFO: renamed from: h */
    public C3300c f9676h;

    /* JADX INFO: renamed from: d */
    public int f9672d = 0;

    /* JADX INFO: renamed from: e */
    public int f9673e = 0;

    /* JADX INFO: renamed from: b */
    public final Comparator f9670b = f9669i;

    /* JADX INFO: renamed from: f */
    public final C3301d f9674f = new C3301d();

    /* JADX INFO: renamed from: a */
    public final C3301d m5223a(Object obj, boolean z9) {
        int iCompareTo;
        C3301d c3301d;
        C3301d c3301d2 = this.f9671c;
        C3199m c3199m = f9669i;
        Comparator comparator = this.f9670b;
        if (c3301d2 != null) {
            Comparable comparable = comparator == c3199m ? (Comparable) obj : null;
            while (true) {
                Object obj2 = c3301d2.f9666g;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return c3301d2;
                }
                C3301d c3301d3 = iCompareTo < 0 ? c3301d2.f9662c : c3301d2.f9663d;
                if (c3301d3 == null) {
                    break;
                }
                c3301d2 = c3301d3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z9) {
            return null;
        }
        C3301d c3301d4 = this.f9674f;
        if (c3301d2 != null) {
            c3301d = new C3301d(c3301d2, obj, c3301d4, c3301d4.f9665f);
            if (iCompareTo < 0) {
                c3301d2.f9662c = c3301d;
            } else {
                c3301d2.f9663d = c3301d;
            }
            m5224b(c3301d2, true);
        } else {
            if (comparator == c3199m && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            c3301d = new C3301d(c3301d2, obj, c3301d4, c3301d4.f9665f);
            this.f9671c = c3301d;
        }
        this.f9672d++;
        this.f9673e++;
        return c3301d;
    }

    /* JADX INFO: renamed from: b */
    public final void m5224b(C3301d c3301d, boolean z9) {
        while (c3301d != null) {
            C3301d c3301d2 = c3301d.f9662c;
            C3301d c3301d3 = c3301d.f9663d;
            int i10 = c3301d2 != null ? c3301d2.f9668i : 0;
            int i11 = c3301d3 != null ? c3301d3.f9668i : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                C3301d c3301d4 = c3301d3.f9662c;
                C3301d c3301d5 = c3301d3.f9663d;
                int i13 = (c3301d4 != null ? c3301d4.f9668i : 0) - (c3301d5 != null ? c3301d5.f9668i : 0);
                if (i13 == -1 || (i13 == 0 && !z9)) {
                    m5227e(c3301d);
                } else {
                    m5228f(c3301d3);
                    m5227e(c3301d);
                }
                if (z9) {
                    return;
                }
            } else if (i12 == 2) {
                C3301d c3301d6 = c3301d2.f9662c;
                C3301d c3301d7 = c3301d2.f9663d;
                int i14 = (c3301d6 != null ? c3301d6.f9668i : 0) - (c3301d7 != null ? c3301d7.f9668i : 0);
                if (i14 == 1 || (i14 == 0 && !z9)) {
                    m5228f(c3301d);
                } else {
                    m5227e(c3301d2);
                    m5228f(c3301d);
                }
                if (z9) {
                    return;
                }
            } else if (i12 == 0) {
                c3301d.f9668i = i10 + 1;
                if (z9) {
                    return;
                }
            } else {
                c3301d.f9668i = Math.max(i10, i11) + 1;
                if (!z9) {
                    return;
                }
            }
            c3301d = c3301d.f9661b;
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m5225c(C3301d c3301d, boolean z9) {
        C3301d c3301d2;
        C3301d c3301d3;
        int i10;
        if (z9) {
            C3301d c3301d4 = c3301d.f9665f;
            c3301d4.f9664e = c3301d.f9664e;
            c3301d.f9664e.f9665f = c3301d4;
        }
        C3301d c3301d5 = c3301d.f9662c;
        C3301d c3301d6 = c3301d.f9663d;
        C3301d c3301d7 = c3301d.f9661b;
        int i11 = 0;
        if (c3301d5 == null || c3301d6 == null) {
            if (c3301d5 != null) {
                m5226d(c3301d, c3301d5);
                c3301d.f9662c = null;
            } else if (c3301d6 != null) {
                m5226d(c3301d, c3301d6);
                c3301d.f9663d = null;
            } else {
                m5226d(c3301d, null);
            }
            m5224b(c3301d7, false);
            this.f9672d--;
            this.f9673e++;
            return;
        }
        if (c3301d5.f9668i > c3301d6.f9668i) {
            C3301d c3301d8 = c3301d5.f9663d;
            while (true) {
                C3301d c3301d9 = c3301d8;
                c3301d3 = c3301d5;
                c3301d5 = c3301d9;
                if (c3301d5 == null) {
                    break;
                } else {
                    c3301d8 = c3301d5.f9663d;
                }
            }
        } else {
            C3301d c3301d10 = c3301d6.f9662c;
            while (true) {
                c3301d2 = c3301d6;
                c3301d6 = c3301d10;
                if (c3301d6 == null) {
                    break;
                } else {
                    c3301d10 = c3301d6.f9662c;
                }
            }
            c3301d3 = c3301d2;
        }
        m5225c(c3301d3, false);
        C3301d c3301d11 = c3301d.f9662c;
        if (c3301d11 != null) {
            i10 = c3301d11.f9668i;
            c3301d3.f9662c = c3301d11;
            c3301d11.f9661b = c3301d3;
            c3301d.f9662c = null;
        } else {
            i10 = 0;
        }
        C3301d c3301d12 = c3301d.f9663d;
        if (c3301d12 != null) {
            i11 = c3301d12.f9668i;
            c3301d3.f9663d = c3301d12;
            c3301d12.f9661b = c3301d3;
            c3301d.f9663d = null;
        }
        c3301d3.f9668i = Math.max(i10, i11) + 1;
        m5226d(c3301d, c3301d3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f9671c = null;
        this.f9672d = 0;
        this.f9673e++;
        C3301d c3301d = this.f9674f;
        c3301d.f9665f = c3301d;
        c3301d.f9664e = c3301d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        C3301d c3301dM5223a = null;
        if (obj != null) {
            try {
                c3301dM5223a = m5223a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return c3301dM5223a != null;
    }

    /* JADX INFO: renamed from: d */
    public final void m5226d(C3301d c3301d, C3301d c3301d2) {
        C3301d c3301d3 = c3301d.f9661b;
        c3301d.f9661b = null;
        if (c3301d2 != null) {
            c3301d2.f9661b = c3301d3;
        }
        if (c3301d3 == null) {
            this.f9671c = c3301d2;
        } else if (c3301d3.f9662c == c3301d) {
            c3301d3.f9662c = c3301d2;
        } else {
            c3301d3.f9663d = c3301d2;
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m5227e(C3301d c3301d) {
        C3301d c3301d2 = c3301d.f9662c;
        C3301d c3301d3 = c3301d.f9663d;
        C3301d c3301d4 = c3301d3.f9662c;
        C3301d c3301d5 = c3301d3.f9663d;
        c3301d.f9663d = c3301d4;
        if (c3301d4 != null) {
            c3301d4.f9661b = c3301d;
        }
        m5226d(c3301d, c3301d3);
        c3301d3.f9662c = c3301d;
        c3301d.f9661b = c3301d3;
        int iMax = Math.max(c3301d2 != null ? c3301d2.f9668i : 0, c3301d4 != null ? c3301d4.f9668i : 0) + 1;
        c3301d.f9668i = iMax;
        c3301d3.f9668i = Math.max(iMax, c3301d5 != null ? c3301d5.f9668i : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        C3300c c3300c = this.f9675g;
        if (c3300c != null) {
            return c3300c;
        }
        C3300c c3300c2 = new C3300c(this, 0);
        this.f9675g = c3300c2;
        return c3300c2;
    }

    /* JADX INFO: renamed from: f */
    public final void m5228f(C3301d c3301d) {
        C3301d c3301d2 = c3301d.f9662c;
        C3301d c3301d3 = c3301d.f9663d;
        C3301d c3301d4 = c3301d2.f9662c;
        C3301d c3301d5 = c3301d2.f9663d;
        c3301d.f9662c = c3301d5;
        if (c3301d5 != null) {
            c3301d5.f9661b = c3301d;
        }
        m5226d(c3301d, c3301d2);
        c3301d2.f9663d = c3301d;
        c3301d.f9661b = c3301d2;
        int iMax = Math.max(c3301d3 != null ? c3301d3.f9668i : 0, c3301d5 != null ? c3301d5.f9668i : 0) + 1;
        c3301d.f9668i = iMax;
        c3301d2.f9668i = Math.max(iMax, c3301d4 != null ? c3301d4.f9668i : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        C3301d c3301dM5223a;
        if (obj != null) {
            try {
                c3301dM5223a = m5223a(obj, false);
            } catch (ClassCastException unused) {
                c3301dM5223a = null;
            }
        } else {
            c3301dM5223a = null;
        }
        if (c3301dM5223a != null) {
            return c3301dM5223a.f9667h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        C3300c c3300c = this.f9676h;
        if (c3300c != null) {
            return c3300c;
        }
        C3300c c3300c2 = new C3300c(this, 1);
        this.f9676h = c3300c2;
        return c3300c2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            C2467b.m3828n("key == null");
            return null;
        }
        if (obj2 == null) {
            C2467b.m3828n("value == null");
            return null;
        }
        C3301d c3301dM5223a = m5223a(obj, true);
        Object obj3 = c3301dM5223a.f9667h;
        c3301dM5223a.f9667h = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        C3301d c3301dM5223a;
        if (obj != null) {
            try {
                c3301dM5223a = m5223a(obj, false);
            } catch (ClassCastException unused) {
                c3301dM5223a = null;
            }
        } else {
            c3301dM5223a = null;
        }
        if (c3301dM5223a != null) {
            m5225c(c3301dM5223a, true);
        }
        if (c3301dM5223a != null) {
            return c3301dM5223a.f9667h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f9672d;
    }
}
