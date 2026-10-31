package m8;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i extends x7.k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f3714b = new k("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())), false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadFactory f3715a = f3714b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.k
    public final x7.j a() {
        return new j(this.f3715a);
    }
}
