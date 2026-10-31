package p129l8;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p054e8.InterfaceC1503f;
import p142n0.C2467b;

/* JADX INFO: renamed from: l8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2220b implements InterfaceC1503f {

    /* JADX INFO: renamed from: j */
    public static final int f5834j = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* JADX INFO: renamed from: k */
    public static final Object f5835k = new Object();

    /* JADX INFO: renamed from: b */
    public final AtomicLong f5836b;

    /* JADX INFO: renamed from: c */
    public final int f5837c;

    /* JADX INFO: renamed from: d */
    public long f5838d;

    /* JADX INFO: renamed from: e */
    public final int f5839e;

    /* JADX INFO: renamed from: f */
    public AtomicReferenceArray f5840f;

    /* JADX INFO: renamed from: g */
    public final int f5841g;

    /* JADX INFO: renamed from: h */
    public AtomicReferenceArray f5842h;

    /* JADX INFO: renamed from: i */
    public final AtomicLong f5843i;

    public C2220b(int i10) {
        AtomicLong atomicLong = new AtomicLong();
        this.f5836b = atomicLong;
        this.f5843i = new AtomicLong();
        int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(Math.max(8, i10) - 1));
        int i11 = iNumberOfLeadingZeros - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(iNumberOfLeadingZeros + 1);
        this.f5840f = atomicReferenceArray;
        this.f5839e = i11;
        this.f5837c = Math.min(iNumberOfLeadingZeros / 4, f5834j);
        this.f5842h = atomicReferenceArray;
        this.f5841g = i11;
        this.f5838d = iNumberOfLeadingZeros - 2;
        atomicLong.lazySet(0L);
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return this.f5836b.get() == this.f5843i.get();
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean offer(Object obj) {
        if (obj == null) {
            C2467b.m3828n("Null is not a valid element");
            return false;
        }
        AtomicReferenceArray atomicReferenceArray = this.f5840f;
        AtomicLong atomicLong = this.f5836b;
        long j10 = atomicLong.get();
        int i10 = this.f5839e;
        int i11 = ((int) j10) & i10;
        if (j10 < this.f5838d) {
            atomicReferenceArray.lazySet(i11, obj);
            atomicLong.lazySet(j10 + 1);
            return true;
        }
        long j11 = ((long) this.f5837c) + j10;
        if (atomicReferenceArray.get(((int) j11) & i10) == null) {
            this.f5838d = j11 - 1;
            atomicReferenceArray.lazySet(i11, obj);
            atomicLong.lazySet(j10 + 1);
            return true;
        }
        long j12 = j10 + 1;
        if (atomicReferenceArray.get(((int) j12) & i10) == null) {
            atomicReferenceArray.lazySet(i11, obj);
            atomicLong.lazySet(j12);
            return true;
        }
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
        this.f5840f = atomicReferenceArray2;
        this.f5838d = (j10 + ((long) i10)) - 1;
        atomicReferenceArray2.lazySet(i11, obj);
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
        atomicReferenceArray.lazySet(i11, f5835k);
        atomicLong.lazySet(j12);
        return true;
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        AtomicReferenceArray atomicReferenceArray = this.f5842h;
        AtomicLong atomicLong = this.f5843i;
        long j10 = atomicLong.get();
        int i10 = this.f5841g;
        int i11 = ((int) j10) & i10;
        Object obj = atomicReferenceArray.get(i11);
        boolean z9 = obj == f5835k;
        if (obj != null && !z9) {
            atomicReferenceArray.lazySet(i11, null);
            atomicLong.lazySet(j10 + 1);
            return obj;
        }
        if (!z9) {
            return null;
        }
        int i12 = i10 + 1;
        AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i12);
        atomicReferenceArray.lazySet(i12, null);
        this.f5842h = atomicReferenceArray2;
        Object obj2 = atomicReferenceArray2.get(i11);
        if (obj2 != null) {
            atomicReferenceArray2.lazySet(i11, null);
            atomicLong.lazySet(j10 + 1);
        }
        return obj2;
    }
}
