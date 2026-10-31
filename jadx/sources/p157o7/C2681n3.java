package p157o7;

import com.bumptech.glide.RunnableC1054m;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import p091i4.C1748f;
import p148n7.ExecutorC2523k1;

/* JADX INFO: renamed from: o7.n3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2681n3 {

    /* JADX INFO: renamed from: a */
    public final ScheduledExecutorService f7637a;

    /* JADX INFO: renamed from: b */
    public final ExecutorC2523k1 f7638b;

    /* JADX INFO: renamed from: c */
    public final RunnableC1054m f7639c;

    /* JADX INFO: renamed from: d */
    public final C1748f f7640d;

    /* JADX INFO: renamed from: e */
    public long f7641e;

    /* JADX INFO: renamed from: f */
    public boolean f7642f;

    /* JADX INFO: renamed from: g */
    public ScheduledFuture f7643g;

    public C2681n3(RunnableC1054m runnableC1054m, ExecutorC2523k1 executorC2523k1, ScheduledExecutorService scheduledExecutorService, C1748f c1748f) {
        this.f7639c = runnableC1054m;
        this.f7638b = executorC2523k1;
        this.f7637a = scheduledExecutorService;
        this.f7640d = c1748f;
        c1748f.m2873b();
    }
}
