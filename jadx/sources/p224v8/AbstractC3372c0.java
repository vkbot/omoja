package p224v8;

import p010a9.AbstractC0055q;
import p010a9.AbstractC0062x;
import p034c9.C1018d;
import p233w8.C3540c;

/* JADX INFO: renamed from: v8.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3372c0 {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int f9855a = 0;

    static {
        String property;
        int i10 = AbstractC0062x.f153a;
        try {
            property = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            property = null;
        }
        if (!(property != null ? Boolean.parseBoolean(property) : false)) {
            RunnableC3369b0 runnableC3369b0 = RunnableC3369b0.f9852h;
            return;
        }
        C1018d c1018d = AbstractC3387h0.f9879a;
        C3540c c3540c = AbstractC0055q.f145a;
        C3540c c3540c2 = c3540c.f10512d;
        if (c3540c == null) {
            RunnableC3369b0 runnableC3369b1 = RunnableC3369b0.f9852h;
        }
    }
}
