package u5;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Set;
import s3.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends AbstractMap implements Serializable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final m f5481i = new m(1);
    public d c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c f5484g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f5485h;
    public int d = 0;
    public int e = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Comparator f5482b = f5481i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final d f5483f = new d();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d a(Object obj, boolean z8) {
        int iCompareTo;
        d dVar;
        d dVar2 = this.c;
        m mVar = f5481i;
        Comparator comparator = this.f5482b;
        if (dVar2 != null) {
            Comparable comparable = comparator == mVar ? (Comparable) obj : null;
            while (true) {
                Object obj2 = dVar2.f5478g;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return dVar2;
                }
                d dVar3 = iCompareTo < 0 ? dVar2.c : dVar2.d;
                if (dVar3 == null) {
                    break;
                }
                dVar2 = dVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z8) {
            return null;
        }
        d dVar4 = this.f5483f;
        if (dVar2 != null) {
            dVar = new d(dVar2, obj, dVar4, dVar4.f5477f);
            if (iCompareTo < 0) {
                dVar2.c = dVar;
            } else {
                dVar2.d = dVar;
            }
            b(dVar2, true);
        } else {
            if (comparator == mVar && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            dVar = new d(dVar2, obj, dVar4, dVar4.f5477f);
            this.c = dVar;
        }
        this.d++;
        this.e++;
        return dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(d dVar, boolean z8) {
        while (dVar != null) {
            d dVar2 = dVar.c;
            d dVar3 = dVar.d;
            int i9 = dVar2 != null ? dVar2.f5480i : 0;
            int i10 = dVar3 != null ? dVar3.f5480i : 0;
            int i11 = i9 - i10;
            if (i11 == -2) {
                d dVar4 = dVar3.c;
                d dVar5 = dVar3.d;
                int i12 = (dVar4 != null ? dVar4.f5480i : 0) - (dVar5 != null ? dVar5.f5480i : 0);
                if (i12 == -1 || (i12 == 0 && !z8)) {
                    e(dVar);
                } else {
                    f(dVar3);
                    e(dVar);
                }
                if (z8) {
                    return;
                }
            } else if (i11 == 2) {
                d dVar6 = dVar2.c;
                d dVar7 = dVar2.d;
                int i13 = (dVar6 != null ? dVar6.f5480i : 0) - (dVar7 != null ? dVar7.f5480i : 0);
                if (i13 == 1 || (i13 == 0 && !z8)) {
                    f(dVar);
                } else {
                    e(dVar2);
                    f(dVar);
                }
                if (z8) {
                    return;
                }
            } else if (i11 == 0) {
                dVar.f5480i = i9 + 1;
                if (z8) {
                    return;
                }
            } else {
                dVar.f5480i = Math.max(i9, i10) + 1;
                if (!z8) {
                    return;
                }
            }
            dVar = dVar.f5476b;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(d dVar, boolean z8) {
        d dVar2;
        d dVar3;
        int i9;
        if (z8) {
            d dVar4 = dVar.f5477f;
            dVar4.e = dVar.e;
            dVar.e.f5477f = dVar4;
        }
        d dVar5 = dVar.c;
        d dVar6 = dVar.d;
        d dVar7 = dVar.f5476b;
        int i10 = 0;
        if (dVar5 == null || dVar6 == null) {
            if (dVar5 != null) {
                d(dVar, dVar5);
                dVar.c = null;
            } else if (dVar6 != null) {
                d(dVar, dVar6);
                dVar.d = null;
            } else {
                d(dVar, null);
            }
            b(dVar7, false);
            this.d--;
            this.e++;
            return;
        }
        if (dVar5.f5480i > dVar6.f5480i) {
            d dVar8 = dVar5.d;
            while (true) {
                d dVar9 = dVar8;
                dVar3 = dVar5;
                dVar5 = dVar9;
                if (dVar5 == null) {
                    break;
                } else {
                    dVar8 = dVar5.d;
                }
            }
        } else {
            d dVar10 = dVar6.c;
            while (true) {
                dVar2 = dVar6;
                dVar6 = dVar10;
                if (dVar6 == null) {
                    break;
                } else {
                    dVar10 = dVar6.c;
                }
            }
            dVar3 = dVar2;
        }
        c(dVar3, false);
        d dVar11 = dVar.c;
        if (dVar11 != null) {
            i9 = dVar11.f5480i;
            dVar3.c = dVar11;
            dVar11.f5476b = dVar3;
            dVar.c = null;
        } else {
            i9 = 0;
        }
        d dVar12 = dVar.d;
        if (dVar12 != null) {
            i10 = dVar12.f5480i;
            dVar3.d = dVar12;
            dVar12.f5476b = dVar3;
            dVar.d = null;
        }
        dVar3.f5480i = Math.max(i9, i10) + 1;
        d(dVar, dVar3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.c = null;
        this.d = 0;
        this.e++;
        d dVar = this.f5483f;
        dVar.f5477f = dVar;
        dVar.e = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        d dVarA = null;
        if (obj != null) {
            try {
                dVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return dVarA != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(d dVar, d dVar2) {
        d dVar3 = dVar.f5476b;
        dVar.f5476b = null;
        if (dVar2 != null) {
            dVar2.f5476b = dVar3;
        }
        if (dVar3 == null) {
            this.c = dVar2;
        } else if (dVar3.c == dVar) {
            dVar3.c = dVar2;
        } else {
            dVar3.d = dVar2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(d dVar) {
        d dVar2 = dVar.c;
        d dVar3 = dVar.d;
        d dVar4 = dVar3.c;
        d dVar5 = dVar3.d;
        dVar.d = dVar4;
        if (dVar4 != null) {
            dVar4.f5476b = dVar;
        }
        d(dVar, dVar3);
        dVar3.c = dVar;
        dVar.f5476b = dVar3;
        int iMax = Math.max(dVar2 != null ? dVar2.f5480i : 0, dVar4 != null ? dVar4.f5480i : 0) + 1;
        dVar.f5480i = iMax;
        dVar3.f5480i = Math.max(iMax, dVar5 != null ? dVar5.f5480i : 0) + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        c cVar = this.f5484g;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c(this, 0);
        this.f5484g = cVar2;
        return cVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(d dVar) {
        d dVar2 = dVar.c;
        d dVar3 = dVar.d;
        d dVar4 = dVar2.c;
        d dVar5 = dVar2.d;
        dVar.c = dVar5;
        if (dVar5 != null) {
            dVar5.f5476b = dVar;
        }
        d(dVar, dVar2);
        dVar2.d = dVar;
        dVar.f5476b = dVar2;
        int iMax = Math.max(dVar3 != null ? dVar3.f5480i : 0, dVar5 != null ? dVar5.f5480i : 0) + 1;
        dVar.f5480i = iMax;
        dVar2.f5480i = Math.max(iMax, dVar4 != null ? dVar4.f5480i : 0) + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        d dVarA;
        if (obj != null) {
            try {
                dVarA = a(obj, false);
            } catch (ClassCastException unused) {
                dVarA = null;
            }
        } else {
            dVarA = null;
        }
        if (dVarA != null) {
            return dVarA.f5479h;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        c cVar = this.f5485h;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c(this, 1);
        this.f5485h = cVar2;
        return cVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            n0.b.n("key == null");
            return null;
        }
        if (obj2 == null) {
            n0.b.n("value == null");
            return null;
        }
        d dVarA = a(obj, true);
        Object obj3 = dVarA.f5479h;
        dVarA.f5479h = obj2;
        return obj3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        d dVarA;
        if (obj != null) {
            try {
                dVarA = a(obj, false);
            } catch (ClassCastException unused) {
                dVarA = null;
            }
        } else {
            dVarA = null;
        }
        if (dVarA != null) {
            c(dVarA, true);
        }
        if (dVarA != null) {
            return dVarA.f5479h;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d;
    }
}
