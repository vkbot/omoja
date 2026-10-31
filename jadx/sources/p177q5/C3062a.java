package p177q5;

import java.util.concurrent.Executor;
import p039d2.C1252h;
import p193s4.InterfaceC3205a;
import p193s4.InterfaceC3206b;
import p193s4.InterfaceC3207c;
import p193s4.InterfaceC3208d;
import p200t4.C3255p;
import p200t4.InterfaceC3242c;
import p224v8.C3420s0;

/* JADX INFO: renamed from: q5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3062a implements InterfaceC3242c {

    /* JADX INFO: renamed from: c */
    public static final C3062a f8681c = new C3062a(0);

    /* JADX INFO: renamed from: d */
    public static final C3062a f8682d = new C3062a(1);

    /* JADX INFO: renamed from: e */
    public static final C3062a f8683e = new C3062a(2);

    /* JADX INFO: renamed from: f */
    public static final C3062a f8684f = new C3062a(3);

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8685b;

    public /* synthetic */ C3062a(int i10) {
        this.f8685b = i10;
    }

    @Override // p200t4.InterfaceC3242c
    /* JADX INFO: renamed from: a */
    public final Object mo817a(C1252h c1252h) {
        switch (this.f8685b) {
            case 0:
                Object objMo2246h = c1252h.mo2246h(new C3255p(InterfaceC3205a.class, Executor.class));
                objMo2246h.getClass();
                return new C3420s0((Executor) objMo2246h);
            case 1:
                Object objMo2246h2 = c1252h.mo2246h(new C3255p(InterfaceC3207c.class, Executor.class));
                objMo2246h2.getClass();
                return new C3420s0((Executor) objMo2246h2);
            case 2:
                Object objMo2246h3 = c1252h.mo2246h(new C3255p(InterfaceC3206b.class, Executor.class));
                objMo2246h3.getClass();
                return new C3420s0((Executor) objMo2246h3);
            default:
                Object objMo2246h4 = c1252h.mo2246h(new C3255p(InterfaceC3208d.class, Executor.class));
                objMo2246h4.getClass();
                return new C3420s0((Executor) objMo2246h4);
        }
    }
}
