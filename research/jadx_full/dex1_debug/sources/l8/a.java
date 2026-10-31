package l8;

import e8.f;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends AtomicReferenceArray implements f {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Integer f3312g = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3313b;
    public final AtomicLong c;
    public long d;
    public final AtomicLong e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3314f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(int i9) {
        super(1 << (32 - Integer.numberOfLeadingZeros(i9 - 1)));
        this.f3313b = length() - 1;
        this.c = new AtomicLong();
        this.e = new AtomicLong();
        this.f3314f = Math.min(i9 / 4, f3312g.intValue());
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
        return this.c.get() == this.e.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean offer(Object obj) {
        if (obj == null) {
            n0.b.n("Null is not a valid element");
            return false;
        }
        AtomicLong atomicLong = this.c;
        long j9 = atomicLong.get();
        int i9 = this.f3313b;
        int i10 = ((int) j9) & i9;
        if (j9 >= this.d) {
            long j10 = ((long) this.f3314f) + j9;
            if (get(i9 & ((int) j10)) == null) {
                this.d = j10;
            } else if (get(i10) != null) {
                return false;
            }
        }
        lazySet(i10, obj);
        atomicLong.lazySet(j9 + 1);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        AtomicLong atomicLong = this.e;
        long j9 = atomicLong.get();
        int i9 = ((int) j9) & this.f3313b;
        Object obj = get(i9);
        if (obj == null) {
            return null;
        }
        atomicLong.lazySet(j9 + 1);
        lazySet(i9, null);
        return obj;
    }
}
