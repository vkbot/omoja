package p030c5;

import android.content.Context;
import androidx.core.os.UserManagerCompat;
import java.util.Set;
import java.util.concurrent.Executor;
import p010a9.RunnableC0047i;
import p114k5.InterfaceC2050b;
import p157o7.C2599a;
import p181r2.AbstractC3093a;

/* JADX INFO: renamed from: c5.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0989d implements InterfaceC0991f, InterfaceC0992g {

    /* JADX INFO: renamed from: a */
    public final C0987b f942a;

    /* JADX INFO: renamed from: b */
    public final Context f943b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC2050b f944c;

    /* JADX INFO: renamed from: d */
    public final Set f945d;

    /* JADX INFO: renamed from: e */
    public final Executor f946e;

    public C0989d(Context context, String str, Set set, InterfaceC2050b interfaceC2050b, Executor executor) {
        this.f942a = new C0987b(0, context, str);
        this.f945d = set;
        this.f946e = executor;
        this.f944c = interfaceC2050b;
        this.f943b = context;
    }

    /* JADX INFO: renamed from: a */
    public final C2599a m1131a() {
        if (!UserManagerCompat.isUserUnlocked(this.f943b)) {
            C2599a c2599a = new C2599a();
            c2599a.m4082g("");
            return c2599a;
        }
        CallableC0988c callableC0988c = new CallableC0988c(this, 0);
        Executor executor = this.f946e;
        AbstractC3093a.m4927c(executor, "Executor must not be null");
        C2599a c2599a2 = new C2599a();
        executor.execute(new RunnableC0047i(c2599a2, callableC0988c));
        return c2599a2;
    }

    /* JADX INFO: renamed from: b */
    public final void m1132b() {
        if (this.f945d.size() <= 0) {
            new C2599a().m4082g(null);
            return;
        }
        if (!UserManagerCompat.isUserUnlocked(this.f943b)) {
            new C2599a().m4082g(null);
            return;
        }
        CallableC0988c callableC0988c = new CallableC0988c(this, 1);
        Executor executor = this.f946e;
        AbstractC3093a.m4927c(executor, "Executor must not be null");
        executor.execute(new RunnableC0047i(new C2599a(), callableC0988c));
    }
}
