package p037d0;

import androidx.core.util.Pools;
import p232w7.C3537c;

/* JADX INFO: renamed from: d0.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1239g {

    /* JADX INFO: renamed from: a */
    public static final C3537c f2912a = new C3537c(3);

    /* JADX INFO: renamed from: a */
    public static C1236d m2223a(int i10, InterfaceC1235c interfaceC1235c) {
        return new C1236d(new Pools.SynchronizedPool(i10), interfaceC1235c, f2912a);
    }
}
