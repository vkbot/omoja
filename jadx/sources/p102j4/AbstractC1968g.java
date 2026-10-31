package p102j4;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.bumptech.glide.AbstractC1030c;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import p142n0.C2467b;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: j4.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1968g extends AbstractC1962a implements Set {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ int f5358d = 0;

    /* JADX INFO: renamed from: c */
    public transient AbstractC1966e f5359c;

    /* JADX INFO: renamed from: i */
    public static int m3070i(int i10) {
        int iMax = Math.max(i10, 2);
        if (iMax >= 751619276) {
            AbstractC2587b.m4037d("collection too large", iMax < 1073741824);
            return BasicMeasure.EXACTLY;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    /* JADX INFO: renamed from: j */
    public static AbstractC1968g m3071j(int i10, Object... objArr) {
        if (i10 == 0) {
            return C1976o.f5382k;
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new C1977p(obj);
        }
        int iM3070i = m3070i(i10);
        Object[] objArr2 = new Object[iM3070i];
        int i11 = iM3070i - 1;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            Object obj2 = objArr[i14];
            if (obj2 == null) {
                C2467b.m3828n(AbstractC0074a.m154e(i14, "at index "));
                return null;
            }
            int iHashCode = obj2.hashCode();
            int iM1262s = AbstractC1030c.m1262s(iHashCode);
            while (true) {
                int i15 = iM1262s & i11;
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
                iM1262s++;
            }
        }
        Arrays.fill(objArr, i13, i10, (Object) null);
        if (i13 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new C1977p(obj4);
        }
        if (m3070i(i13) < iM3070i / 2) {
            return m3071j(i13, objArr);
        }
        int length = objArr.length;
        if (i13 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i13);
        }
        return new C1976o(objArr, objArr2, i12, i11, i13);
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: a */
    public AbstractC1966e mo3057a() {
        AbstractC1966e abstractC1966e = this.f5359c;
        if (abstractC1966e != null) {
            return abstractC1966e;
        }
        AbstractC1966e abstractC1966eMo3072k = mo3072k();
        this.f5359c = abstractC1966eMo3072k;
        return abstractC1966eMo3072k;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof AbstractC1968g) && (this instanceof C1976o) && (((AbstractC1968g) obj) instanceof C1976o) && hashCode() != obj.hashCode()) {
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

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        Iterator it = iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i10 = ~(~(i10 + (next != null ? next.hashCode() : 0)));
        }
        return i10;
    }

    /* JADX INFO: renamed from: k */
    public AbstractC1966e mo3072k() {
        Object[] array = toArray(AbstractC1962a.f5343b);
        C1964c c1964c = AbstractC1966e.f5354c;
        return AbstractC1966e.m3068i(array.length, array);
    }
}
