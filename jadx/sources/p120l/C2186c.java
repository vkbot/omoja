package p120l;

import java.util.ArrayDeque;
import p025c0.AbstractC0947p;
import p066g.C1597c;

/* JADX INFO: renamed from: l.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2186c {

    /* JADX INFO: renamed from: a */
    public final ArrayDeque f5703a;

    public C2186c(int i10) {
        switch (i10) {
            case 1:
                char[] cArr = AbstractC0947p.f810a;
                this.f5703a = new ArrayDeque(0);
                break;
            default:
                this.f5703a = new ArrayDeque();
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    public synchronized void m3456a(C1597c c1597c) {
        c1597c.f3990b = null;
        c1597c.f3991c = null;
        this.f5703a.offer(c1597c);
    }
}
