package p010a9;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.ranges.RangesKt;
import p034c9.C1015a;

/* JADX INFO: renamed from: a9.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C0057s {
    private volatile AtomicReferenceArray<Object> array;

    public C0057s(int i10) {
        this.array = new AtomicReferenceArray<>(i10);
    }

    /* JADX INFO: renamed from: a */
    public final int m132a() {
        return this.array.length();
    }

    /* JADX INFO: renamed from: b */
    public final Object m133b(int i10) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        if (i10 < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i10);
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public final void m134c(int i10, C1015a c1015a) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i10 < length) {
            atomicReferenceArray.set(i10, c1015a);
            return;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(RangesKt.coerceAtLeast(i10 + 1, length * 2));
        for (int i11 = 0; i11 < length; i11++) {
            atomicReferenceArray2.set(i11, atomicReferenceArray.get(i11));
        }
        atomicReferenceArray2.set(i10, c1015a);
        this.array = atomicReferenceArray2;
    }
}
