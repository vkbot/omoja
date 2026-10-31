package p243x8;

import p099j1.C1929i;

/* JADX INFO: renamed from: x8.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3606j {

    /* JADX INFO: renamed from: a */
    public static final C3605i f10695a = new C3605i();

    /* JADX INFO: renamed from: a */
    public static C3598b m5753a(int i10, int i11) {
        if (i10 == -2) {
            if (i11 != 1) {
                return new C3609m(1, i11);
            }
            InterfaceC3602f.f10692a.getClass();
            return new C3598b(C3601e.f10691b);
        }
        if (i10 == -1) {
            if (i11 == 1) {
                return new C3609m(1, 2);
            }
            C1929i.m3029k("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            return null;
        }
        if (i10 == 0) {
            return i11 == 1 ? new C3598b(0) : new C3609m(1, i11);
        }
        if (i10 != Integer.MAX_VALUE) {
            return i11 == 1 ? new C3598b(i10) : new C3609m(i10, i11);
        }
        return new C3598b(Integer.MAX_VALUE);
    }
}
