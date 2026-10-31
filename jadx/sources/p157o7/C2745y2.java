package p157o7;

import com.bumptech.glide.RunnableC1054m;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p062f5.RunnableC1556j;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2542t;
import p148n7.C2507f0;
import p148n7.ExecutorC2523k1;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.y2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2745y2 extends AbstractC2513h0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7895a = 0;

    /* JADX INFO: renamed from: b */
    public final AtomicBoolean f7896b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c */
    public final Object f7897c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ AbstractC2519j0 f7898d;

    public C2745y2(C2627e3 c2627e3, AbstractC2542t abstractC2542t) {
        this.f7898d = c2627e3;
        AbstractC2587b.m4042i(abstractC2542t, "subchannel");
        this.f7897c = abstractC2542t;
    }

    @Override // p148n7.AbstractC2513h0
    /* JADX INFO: renamed from: a */
    public final C2507f0 mo3942a(C2639g3 c2639g3) {
        switch (this.f7895a) {
            case 0:
                if (this.f7896b.compareAndSet(false, true)) {
                    ExecutorC2523k1 executorC2523k1Mo3898f = ((C2603a3) this.f7898d).f7261f.mo3898f();
                    C2603a3 c2603a3 = (C2603a3) this.f7897c;
                    Objects.requireNonNull(c2603a3);
                    executorC2523k1Mo3898f.execute(new RunnableC1556j(10, c2603a3));
                }
                break;
            default:
                if (this.f7896b.compareAndSet(false, true)) {
                    ((C2627e3) this.f7898d).f7376f.mo3898f().execute(new RunnableC1054m(19, this));
                }
                break;
        }
        return C2507f0.f6931e;
    }

    public C2745y2(C2603a3 c2603a3, C2603a3 c2603a4) {
        this.f7898d = c2603a3;
        this.f7897c = c2603a4;
    }
}
