package o7;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f4382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i4.f f4383b;
    public final n.p c;
    public int d;
    public ScheduledFuture e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ScheduledFuture f4384f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final q1 f4385g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final q1 f4386h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f4387i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f4388j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p1(n.p pVar, ScheduledExecutorService scheduledExecutorService, long j9, long j10) {
        i4.f fVar = new i4.f();
        this.d = 1;
        this.f4385g = new q1(new n1(this, 0));
        this.f4386h = new q1(new n1(this, 1));
        this.c = pVar;
        o4.b.i(scheduledExecutorService, "scheduler");
        this.f4382a = scheduledExecutorService;
        this.f4383b = fVar;
        this.f4387i = j9;
        this.f4388j = j10;
        fVar.f2661a = false;
        fVar.b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void a() {
        try {
            i4.f fVar = this.f4383b;
            fVar.f2661a = false;
            fVar.b();
            int i9 = this.d;
            if (i9 == 2) {
                this.d = 3;
            } else if (i9 == 4 || i9 == 5) {
                ScheduledFuture scheduledFuture = this.e;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                if (this.d == 5) {
                    this.d = 1;
                } else {
                    this.d = 2;
                    o4.b.m(this.f4384f == null, "There should be no outstanding pingFuture");
                    this.f4384f = this.f4382a.schedule(this.f4386h, this.f4387i, TimeUnit.NANOSECONDS);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void b() {
        try {
            int i9 = this.d;
            if (i9 == 1) {
                this.d = 2;
                if (this.f4384f == null) {
                    ScheduledExecutorService scheduledExecutorService = this.f4382a;
                    q1 q1Var = this.f4386h;
                    long j9 = this.f4387i;
                    i4.f fVar = this.f4383b;
                    this.f4384f = scheduledExecutorService.schedule(q1Var, j9 - fVar.a(), TimeUnit.NANOSECONDS);
                }
            } else if (i9 == 5) {
                this.d = 4;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
