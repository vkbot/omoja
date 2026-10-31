package p257z2;

import java.util.concurrent.Executor;
import p010a9.RunnableC0047i;
import p157o7.C2599a;

/* JADX INFO: renamed from: z2.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3709e implements InterfaceC3710f {

    /* JADX INFO: renamed from: b */
    public final Executor f10994b;

    /* JADX INFO: renamed from: d */
    public final Object f10996d;

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f10993a = 0;

    /* JADX INFO: renamed from: c */
    public final Object f10995c = new Object();

    public C3709e(Executor executor, InterfaceC3705a interfaceC3705a) {
        this.f10994b = executor;
        this.f10996d = interfaceC3705a;
    }

    @Override // p257z2.InterfaceC3710f
    /* JADX INFO: renamed from: a */
    public final void mo5919a(C2599a c2599a) {
        switch (this.f10993a) {
            case 0:
                if (c2599a.m4080e()) {
                    return;
                }
                synchronized (this.f10995c) {
                    break;
                }
                this.f10994b.execute(new RunnableC0047i(3, this, c2599a));
                return;
            default:
                if (c2599a.m4080e()) {
                    synchronized (this.f10995c) {
                        break;
                    }
                    this.f10994b.execute(new RunnableC0047i(4, this, c2599a));
                    return;
                }
                return;
        }
    }

    public C3709e(Executor executor, InterfaceC3706b interfaceC3706b) {
        this.f10994b = executor;
        this.f10996d = interfaceC3706b;
    }
}
