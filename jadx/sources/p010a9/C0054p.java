package p010a9;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;
import org.apache.commons.p161io.FileUtils;
import p099j1.C1929i;

/* JADX INFO: renamed from: a9.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C0054p {

    /* JADX INFO: renamed from: e */
    public static final AtomicReferenceFieldUpdater f138e = AtomicReferenceFieldUpdater.newUpdater(C0054p.class, Object.class, "_next");

    /* JADX INFO: renamed from: f */
    public static final AtomicLongFieldUpdater f139f = AtomicLongFieldUpdater.newUpdater(C0054p.class, "_state");

    /* JADX INFO: renamed from: g */
    public static final C0061w f140g = new C0061w("REMOVE_FROZEN", 0);

    @Volatile
    private volatile Object _next;

    @Volatile
    private volatile long _state;

    /* JADX INFO: renamed from: a */
    public final int f141a;

    /* JADX INFO: renamed from: b */
    public final boolean f142b;

    /* JADX INFO: renamed from: c */
    public final int f143c;

    /* JADX INFO: renamed from: d */
    public final AtomicReferenceArray f144d;

    public C0054p(int i10, boolean z9) {
        this.f141a = i10;
        this.f142b = z9;
        int i11 = i10 - 1;
        this.f143c = i11;
        this.f144d = new AtomicReferenceArray(i10);
        if (i11 > 1073741823) {
            C1929i.m3030l("Check failed.");
            throw null;
        }
        if ((i10 & i11) == 0) {
            return;
        }
        C1929i.m3030l("Check failed.");
        throw null;
    }

    /* JADX INFO: renamed from: a */
    public final int m128a(Object obj) {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f139f;
            long j10 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j10) != 0) {
                return (2305843009213693952L & j10) != 0 ? 2 : 1;
            }
            int i10 = (int) (1073741823 & j10);
            int i11 = (int) ((1152921503533105152L & j10) >> 30);
            int i12 = this.f143c;
            if (((i11 + 2) & i12) == (i10 & i12)) {
                return 1;
            }
            boolean z9 = this.f142b;
            AtomicReferenceArray atomicReferenceArray = this.f144d;
            if (z9 || atomicReferenceArray.get(i11 & i12) == null) {
                if (f139f.compareAndSet(this, j10, ((-1152921503533105153L) & j10) | (((long) ((i11 + 1) & 1073741823)) << 30))) {
                    atomicReferenceArray.set(i11 & i12, obj);
                    C0054p c0054pM130c = this;
                    while ((atomicLongFieldUpdater.get(c0054pM130c) & FileUtils.ONE_EB) != 0) {
                        c0054pM130c = c0054pM130c.m130c();
                        AtomicReferenceArray atomicReferenceArray2 = c0054pM130c.f144d;
                        int i13 = c0054pM130c.f143c & i11;
                        Object obj2 = atomicReferenceArray2.get(i13);
                        if ((obj2 instanceof C0053o) && ((C0053o) obj2).f137a == i11) {
                            atomicReferenceArray2.set(i13, obj);
                        } else {
                            c0054pM130c = null;
                        }
                        if (c0054pM130c == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
            } else {
                int i14 = this.f141a;
                if (i14 < 1024 || ((i11 - i10) & 1073741823) > (i14 >> 1)) {
                    return 1;
                }
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final boolean m129b() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j10;
        do {
            atomicLongFieldUpdater = f139f;
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((FileUtils.ONE_EB & j10) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, 2305843009213693952L | j10));
        return true;
    }

    /* JADX INFO: renamed from: c */
    public final C0054p m130c() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j10;
        C0054p c0054p;
        while (true) {
            atomicLongFieldUpdater = f139f;
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & FileUtils.ONE_EB) != 0) {
                c0054p = this;
                break;
            }
            long j11 = FileUtils.ONE_EB | j10;
            c0054p = this;
            if (atomicLongFieldUpdater.compareAndSet(c0054p, j10, j11)) {
                j10 = j11;
                break;
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f138e;
            C0054p c0054p2 = (C0054p) atomicReferenceFieldUpdater.get(this);
            if (c0054p2 != null) {
                return c0054p2;
            }
            C0054p c0054p3 = new C0054p(c0054p.f141a * 2, c0054p.f142b);
            int i10 = (int) (1073741823 & j10);
            int i11 = (int) ((1152921503533105152L & j10) >> 30);
            while (true) {
                int i12 = c0054p.f143c;
                int i13 = i10 & i12;
                if (i13 == (i12 & i11)) {
                    break;
                }
                Object c0053o = c0054p.f144d.get(i13);
                if (c0053o == null) {
                    c0053o = new C0053o(i10);
                }
                c0054p3.f144d.set(c0054p3.f143c & i10, c0053o);
                i10++;
            }
            atomicLongFieldUpdater.set(c0054p3, (-1152921504606846977L) & j10);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, c0054p3) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public final Object m131d() {
        C0054p c0054pM130c = this;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f139f;
            long j10 = atomicLongFieldUpdater.get(c0054pM130c);
            if ((j10 & FileUtils.ONE_EB) != 0) {
                return f140g;
            }
            int i10 = (int) (j10 & 1073741823);
            int i11 = c0054pM130c.f143c;
            int i12 = i10 & i11;
            if ((((int) ((1152921503533105152L & j10) >> 30)) & i11) != i12) {
                AtomicReferenceArray atomicReferenceArray = c0054pM130c.f144d;
                Object obj = atomicReferenceArray.get(i12);
                boolean z9 = c0054pM130c.f142b;
                if (obj == null) {
                    if (z9) {
                    }
                } else if (!(obj instanceof C0053o)) {
                    long j11 = (i10 + 1) & 1073741823;
                    if (f139f.compareAndSet(c0054pM130c, j10, (j10 & (-1073741824)) | j11)) {
                        atomicReferenceArray.set(i12, null);
                        return obj;
                    }
                    c0054pM130c = this;
                    if (z9) {
                        while (true) {
                            long j12 = atomicLongFieldUpdater.get(c0054pM130c);
                            int i13 = (int) (j12 & 1073741823);
                            if ((j12 & FileUtils.ONE_EB) != 0) {
                                c0054pM130c = c0054pM130c.m130c();
                            } else {
                                C0054p c0054p = c0054pM130c;
                                if (f139f.compareAndSet(c0054p, j12, (j12 & (-1073741824)) | j11)) {
                                    c0054p.f144d.set(i13 & c0054p.f143c, null);
                                    c0054pM130c = null;
                                } else {
                                    c0054pM130c = c0054p;
                                }
                            }
                            if (c0054pM130c == null) {
                                return obj;
                            }
                        }
                    }
                }
            }
            return null;
        }
    }
}
