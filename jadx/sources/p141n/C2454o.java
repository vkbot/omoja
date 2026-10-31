package p141n;

import java.util.ArrayDeque;
import p025c0.AbstractC0947p;

/* JADX INFO: renamed from: n.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2454o {

    /* JADX INFO: renamed from: b */
    public static final ArrayDeque f6645b;

    /* JADX INFO: renamed from: a */
    public Object f6646a;

    static {
        char[] cArr = AbstractC0947p.f810a;
        f6645b = new ArrayDeque(0);
    }

    /* JADX INFO: renamed from: a */
    public static C2454o m3807a(Object obj) {
        C2454o c2454o;
        ArrayDeque arrayDeque = f6645b;
        synchronized (arrayDeque) {
            c2454o = (C2454o) arrayDeque.poll();
        }
        if (c2454o == null) {
            c2454o = new C2454o();
        }
        c2454o.f6646a = obj;
        return c2454o;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C2454o) && this.f6646a.equals(((C2454o) obj).f6646a);
    }

    public final int hashCode() {
        return this.f6646a.hashCode();
    }
}
