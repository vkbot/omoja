package o7;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f4350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n7.k1 f4351b;
    public final com.bumptech.glide.m c;
    public final i4.f d;
    public long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4352f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ScheduledFuture f4353g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n3(com.bumptech.glide.m mVar, n7.k1 k1Var, ScheduledExecutorService scheduledExecutorService, i4.f fVar) {
        this.c = mVar;
        this.f4351b = k1Var;
        this.f4350a = scheduledExecutorService;
        this.d = fVar;
        fVar.b();
    }
}
