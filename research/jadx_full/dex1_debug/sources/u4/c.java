package u4;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import n.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5461b;
    public final /* synthetic */ f c;
    public final /* synthetic */ Runnable d;
    public final /* synthetic */ long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f5462f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ TimeUnit f5463g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(f fVar, Runnable runnable, long j9, long j10, TimeUnit timeUnit, int i9) {
        this.f5461b = i9;
        this.c = fVar;
        this.d = runnable;
        this.e = j9;
        this.f5462f = j10;
        this.f5463g = timeUnit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // u4.g
    public final ScheduledFuture a(p pVar) {
        switch (this.f5461b) {
            case 0:
                f fVar = this.c;
                return fVar.c.scheduleAtFixedRate(new d(fVar, this.d, pVar, 0), this.e, this.f5462f, this.f5463g);
            default:
                f fVar2 = this.c;
                return fVar2.c.scheduleWithFixedDelay(new d(fVar2, this.d, pVar, 2), this.e, this.f5462f, this.f5463g);
        }
    }
}
