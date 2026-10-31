package j4;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g extends a implements Set {
    public static final /* synthetic */ int d = 0;
    public transient e c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int i(int i9) {
        int iMax = Math.max(i9, 2);
        if (iMax >= 751619276) {
            o4.b.d("collection too large", iMax < 1073741824);
            return BasicMeasure.EXACTLY;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static g j(int i9, Object... objArr) {
        if (i9 == 0) {
            return o.f3062k;
        }
        if (i9 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new p(obj);
        }
        int i10 = i(i9);
        Object[] objArr2 = new Object[i10];
        int i11 = i10 - 1;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i9; i14++) {
            Object obj2 = objArr[i14];
            if (obj2 == null) {
                n0.b.n(ai.onnxruntime.a.e(i14, "at index "));
                return null;
            }
            int iHashCode = obj2.hashCode();
            int iS = com.bumptech.glide.c.s(iHashCode);
            while (true) {
                int i15 = iS & i11;
                Object obj3 = objArr2[i15];
                if (obj3 == null) {
                    objArr[i13] = obj2;
                    objArr2[i15] = obj2;
                    i12 += iHashCode;
                    i13++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iS++;
            }
        }
        Arrays.fill(objArr, i13, i9, (Object) null);
        if (i13 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new p(obj4);
        }
        if (i(i13) < i10 / 2) {
            return j(i13, objArr);
        }
        int length = objArr.length;
        if (i13 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i13);
        }
        return new o(objArr, objArr2, i12, i11, i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j4.a
    public e a() {
        e eVar = this.c;
        if (eVar != null) {
            return eVar;
        }
        e eVarK = k();
        this.c = eVarK;
        return eVarK;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof g) && (this instanceof o) && (((g) obj) instanceof o) && hashCode() != obj.hashCode()) {
            return false;
        }
        if (this != obj) {
            if (obj instanceof Set) {
                Set set = (Set) obj;
                try {
                    if (size() != set.size() || !containsAll(set)) {
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        Iterator it = iterator();
        int i9 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i9 = ~(~(i9 + (next != null ? next.hashCode() : 0)));
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e k() {
        Object[] array = toArray(a.f3044b);
        c cVar = e.c;
        return e.i(array.length, array);
    }
}
