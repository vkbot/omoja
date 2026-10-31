package p139m8;

import java.util.concurrent.ThreadFactory;
import p242x7.AbstractC3593j;
import p242x7.AbstractC3594k;

/* JADX INFO: renamed from: m8.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2421i extends AbstractC3594k {

    /* JADX INFO: renamed from: b */
    public static final ThreadFactoryC2423k f6570b = new ThreadFactoryC2423k("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())), false);

    /* JADX INFO: renamed from: a */
    public final ThreadFactory f6571a = f6570b;

    @Override // p242x7.AbstractC3594k
    /* JADX INFO: renamed from: a */
    public final AbstractC3593j mo3780a() {
        return new C2422j(this.f6571a);
    }
}
