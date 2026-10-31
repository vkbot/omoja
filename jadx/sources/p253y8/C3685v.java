package p253y8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;
import p010a9.C0061w;
import p224v8.C3377e;
import p263z8.AbstractC3763a;
import p263z8.AbstractC3764b;
import p263z8.AbstractC3765c;

/* JADX INFO: renamed from: y8.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3685v extends AbstractC3763a implements InterfaceC3676m, InterfaceC3669f {

    /* JADX INFO: renamed from: f */
    public static final AtomicReferenceFieldUpdater f10914f = AtomicReferenceFieldUpdater.newUpdater(C3685v.class, Object.class, "_state");

    @Volatile
    private volatile Object _state;

    /* JADX INFO: renamed from: e */
    public int f10915e;

    public C3685v(Object obj) {
        this._state = obj;
    }

    @Override // p253y8.InterfaceC3675l
    /* JADX INFO: renamed from: b */
    public final boolean mo5888b(Object obj) {
        m5909f(obj);
        return true;
    }

    @Override // p263z8.AbstractC3763a
    /* JADX INFO: renamed from: c */
    public final AbstractC3765c mo5890c() {
        return new C3686w();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007e A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:15:0x0036, B:29:0x0076, B:31:0x007e, B:34:0x0085, B:35:0x008b, B:37:0x008e, B:47:0x00af, B:50:0x00c2, B:39:0x0094, B:43:0x009b, B:22:0x004e, B:25:0x0058, B:28:0x0067), top: B:55:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x008e A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:15:0x0036, B:29:0x0076, B:31:0x007e, B:34:0x0085, B:35:0x008b, B:37:0x008e, B:47:0x00af, B:50:0x00c2, B:39:0x0094, B:43:0x009b, B:22:0x004e, B:25:0x0058, B:28:0x0067), top: B:55:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0098  */
    /* JADX WARN: Code duplicated, block: B:42:0x009a  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c2 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #0 {all -> 0x003a, blocks: (B:15:0x0036, B:29:0x0076, B:31:0x007e, B:34:0x0085, B:35:0x008b, B:37:0x008e, B:47:0x00af, B:50:0x00c2, B:39:0x0094, B:43:0x009b, B:22:0x004e, B:25:0x0058, B:28:0x0067), top: B:55:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00c1 -> B:29:0x0076). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00d2 -> B:29:0x0076). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // p253y8.InterfaceC3669f
    public final java.lang.Object collect(p253y8.InterfaceC3670g r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p253y8.C3685v.collect(y8.g, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // p263z8.AbstractC3763a
    /* JADX INFO: renamed from: d */
    public final AbstractC3765c[] mo5891d() {
        return new C3686w[2];
    }

    @Override // p253y8.InterfaceC3670g
    public final Object emit(Object obj, Continuation continuation) {
        m5909f(obj);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: f */
    public final void m5909f(Object obj) {
        int i10;
        AbstractC3765c[] abstractC3765cArr;
        C0061w c0061w;
        if (obj == null) {
            obj = AbstractC3764b.f11221b;
        }
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10914f;
            if (Intrinsics.areEqual(atomicReferenceFieldUpdater.get(this), obj)) {
                return;
            }
            atomicReferenceFieldUpdater.set(this, obj);
            int i11 = this.f10915e;
            if ((i11 & 1) != 0) {
                this.f10915e = i11 + 2;
                return;
            }
            int i12 = i11 + 1;
            this.f10915e = i12;
            AbstractC3765c[] abstractC3765cArr2 = this.f11217b;
            Unit unit = Unit.INSTANCE;
            while (true) {
                C3686w[] c3686wArr = (C3686w[]) abstractC3765cArr2;
                if (c3686wArr != null) {
                    for (C3686w c3686w : c3686wArr) {
                        if (c3686w != null) {
                            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C3686w.f10916a;
                            while (true) {
                                Object obj2 = atomicReferenceFieldUpdater2.get(c3686w);
                                if (obj2 == null || obj2 == (c0061w = AbstractC3681r.f10903c)) {
                                    break;
                                }
                                C0061w c0061w2 = AbstractC3681r.f10902b;
                                if (obj2 != c0061w2) {
                                    do {
                                        if (atomicReferenceFieldUpdater2.compareAndSet(c3686w, obj2, c0061w2)) {
                                            Result.Companion companion = Result.INSTANCE;
                                            ((C3377e) obj2).resumeWith(Result.m6088constructorimpl(Unit.INSTANCE));
                                            break;
                                        }
                                    } while (atomicReferenceFieldUpdater2.get(c3686w) == obj2);
                                } else {
                                    do {
                                        if (atomicReferenceFieldUpdater2.compareAndSet(c3686w, obj2, c0061w)) {
                                            break;
                                        }
                                    } while (atomicReferenceFieldUpdater2.get(c3686w) == obj2);
                                }
                            }
                        }
                    }
                }
                synchronized (this) {
                    i10 = this.f10915e;
                    if (i10 == i12) {
                        this.f10915e = i12 + 1;
                        return;
                    } else {
                        abstractC3765cArr = this.f11217b;
                        Unit unit2 = Unit.INSTANCE;
                    }
                }
                abstractC3765cArr2 = abstractC3765cArr;
                i12 = i10;
            }
        }
    }

    @Override // p253y8.InterfaceC3683t
    public final Object getValue() {
        C0061w c0061w = AbstractC3764b.f11221b;
        Object obj = f10914f.get(this);
        if (obj == c0061w) {
            return null;
        }
        return obj;
    }
}
