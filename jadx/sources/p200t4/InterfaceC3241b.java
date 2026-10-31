package p200t4;

import java.util.Set;
import p062f5.C1541b0;
import p114k5.InterfaceC2050b;

/* JADX INFO: renamed from: t4.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC3241b {
    /* JADX INFO: renamed from: a */
    C3253n mo2239a(C3255p c3255p);

    /* JADX INFO: renamed from: b */
    default Object mo2240b(Class cls) {
        return mo2246h(C3255p.m5189a(cls));
    }

    /* JADX INFO: renamed from: c */
    default InterfaceC2050b mo2241c(Class cls) {
        return mo2245g(C3255p.m5189a(cls));
    }

    /* JADX INFO: renamed from: d */
    default C3253n mo2242d() {
        return mo2239a(C3255p.m5189a(C1541b0.class));
    }

    /* JADX INFO: renamed from: e */
    default Set mo2243e(C3255p c3255p) {
        return (Set) mo2244f(c3255p).get();
    }

    /* JADX INFO: renamed from: f */
    InterfaceC2050b mo2244f(C3255p c3255p);

    /* JADX INFO: renamed from: g */
    InterfaceC2050b mo2245g(C3255p c3255p);

    /* JADX INFO: renamed from: h */
    default Object mo2246h(C3255p c3255p) {
        InterfaceC2050b interfaceC2050bMo2245g = mo2245g(c3255p);
        if (interfaceC2050bMo2245g == null) {
            return null;
        }
        return interfaceC2050bMo2245g.get();
    }
}
