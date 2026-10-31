package p046d9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: d9.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1316b extends Lambda implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3138b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1319e f3139c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1316b(C1319e c1319e, C1317c c1317c, int i10) {
        super(1);
        this.f3138b = i10;
        this.f3139c = c1319e;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f3138b) {
            case 0:
                this.f3139c.m2362c(null);
                break;
            default:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C1319e.f3143g;
                C1319e c1319e = this.f3139c;
                atomicReferenceFieldUpdater.set(c1319e, null);
                c1319e.m2362c(null);
                break;
        }
        return Unit.INSTANCE;
    }
}
