package p062f5;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: renamed from: f5.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1539a0 {

    /* JADX INFO: renamed from: c */
    public static final Object f3788c = new Object();

    /* JADX INFO: renamed from: a */
    public HashSet f3789a;

    /* JADX INFO: renamed from: b */
    public volatile C1539a0 f3790b;

    /* JADX INFO: renamed from: a */
    public final void m2633a(Set set) {
        C1539a0 c1539a0 = this.f3790b;
        if (c1539a0 == f3788c) {
            return;
        }
        if (c1539a0 != null) {
            c1539a0.m2633a(set);
        } else {
            synchronized (this) {
                this.f3789a.addAll(set);
            }
        }
    }
}
