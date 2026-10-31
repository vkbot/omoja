package p129l8;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p054e8.InterfaceC1503f;
import p142n0.C2467b;

/* JADX INFO: renamed from: l8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2219a extends AtomicReferenceArray implements InterfaceC1503f {

    /* JADX INFO: renamed from: g */
    public static final Integer f5828g = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* JADX INFO: renamed from: b */
    public final int f5829b;

    /* JADX INFO: renamed from: c */
    public final AtomicLong f5830c;

    /* JADX INFO: renamed from: d */
    public long f5831d;

    /* JADX INFO: renamed from: e */
    public final AtomicLong f5832e;

    /* JADX INFO: renamed from: f */
    public final int f5833f;

    public C2219a(int i10) {
        super(1 << (32 - Integer.numberOfLeadingZeros(i10 - 1)));
        this.f5829b = length() - 1;
        this.f5830c = new AtomicLong();
        this.f5832e = new AtomicLong();
        this.f5833f = Math.min(i10 / 4, f5828g.intValue());
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
        return this.f5830c.get() == this.f5832e.get();
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean offer(Object obj) {
        if (obj == null) {
            C2467b.m3828n("Null is not a valid element");
            return false;
        }
        AtomicLong atomicLong = this.f5830c;
        long j10 = atomicLong.get();
        int i10 = this.f5829b;
        int i11 = ((int) j10) & i10;
        if (j10 >= this.f5831d) {
            long j11 = ((long) this.f5833f) + j10;
            if (get(i10 & ((int) j11)) == null) {
                this.f5831d = j11;
            } else if (get(i11) != null) {
                return false;
            }
        }
        lazySet(i11, obj);
        atomicLong.lazySet(j10 + 1);
        return true;
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        AtomicLong atomicLong = this.f5832e;
        long j10 = atomicLong.get();
        int i10 = ((int) j10) & this.f5829b;
        Object obj = get(i10);
        if (obj == null) {
            return null;
        }
        atomicLong.lazySet(j10 + 1);
        lazySet(i10, null);
        return obj;
    }
}
