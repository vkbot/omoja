package l8;

import e8.f;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f3315j = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f3316k = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicLong f3317b;
    public final int c;
    public long d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AtomicReferenceArray f3318f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3319g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AtomicReferenceArray f3320h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicLong f3321i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(int i9) {
        AtomicLong atomicLong = new AtomicLong();
        this.f3317b = atomicLong;
        this.f3321i = new AtomicLong();
        int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(Math.max(8, i9) - 1));
        int i10 = iNumberOfLeadingZeros - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(iNumberOfLeadingZeros + 1);
        this.f3318f = atomicReferenceArray;
        this.e = i10;
        this.c = Math.min(iNumberOfLeadingZeros / 4, f3315j);
        this.f3320h = atomicReferenceArray;
        this.f3319g = i10;
        this.d = iNumberOfLeadingZeros - 2;
        atomicLong.lazySet(0L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean isEmpty() {
        return this.f3317b.get() == this.f3321i.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean offer(Object obj) {
        if (obj == null) {
            n0.b.n("Null is not a valid element");
            return false;
        }
        AtomicReferenceArray atomicReferenceArray = this.f3318f;
        AtomicLong atomicLong = this.f3317b;
        long j9 = atomicLong.get();
        int i9 = this.e;
        int i10 = ((int) j9) & i9;
        if (j9 < this.d) {
            atomicReferenceArray.lazySet(i10, obj);
            atomicLong.lazySet(j9 + 1);
            return true;
        }
        long j10 = ((long) this.c) + j9;
        if (atomicReferenceArray.get(((int) j10) & i9) == null) {
            this.d = j10 - 1;
            atomicReferenceArray.lazySet(i10, obj);
            atomicLong.lazySet(j9 + 1);
            return true;
        }
        long j11 = j9 + 1;
        if (atomicReferenceArray.get(((int) j11) & i9) == null) {
            atomicReferenceArray.lazySet(i10, obj);
            atomicLong.lazySet(j11);
            return true;
        }
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
        this.f3318f = atomicReferenceArray2;
        this.d = (j9 + ((long) i9)) - 1;
        atomicReferenceArray2.lazySet(i10, obj);
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
        atomicReferenceArray.lazySet(i10, f3316k);
        atomicLong.lazySet(j11);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        AtomicReferenceArray atomicReferenceArray = this.f3320h;
        AtomicLong atomicLong = this.f3321i;
        long j9 = atomicLong.get();
        int i9 = this.f3319g;
        int i10 = ((int) j9) & i9;
        Object obj = atomicReferenceArray.get(i10);
        boolean z8 = obj == f3316k;
        if (obj != null && !z8) {
            atomicReferenceArray.lazySet(i10, null);
            atomicLong.lazySet(j9 + 1);
            return obj;
        }
        if (!z8) {
            return null;
        }
        int i11 = i9 + 1;
        AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i11);
        atomicReferenceArray.lazySet(i11, null);
        this.f3320h = atomicReferenceArray2;
        Object obj2 = atomicReferenceArray2.get(i10);
        if (obj2 != null) {
            atomicReferenceArray2.lazySet(i10, null);
            atomicLong.lazySet(j9 + 1);
        }
        return obj2;
    }
}
