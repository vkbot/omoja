package p108k;

import java.util.ArrayDeque;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import p025c0.AbstractC0947p;
import p141n.C2437c;
import p141n.C2438c0;
import p141n.C2465z;
import p141n.InterfaceC2457r;
import p141n.InterfaceC2458s;

/* JADX INFO: renamed from: k.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2013a implements InterfaceC2458s {

    /* JADX INFO: renamed from: b */
    public final Object f5497b;

    public AbstractC2013a(int i10) {
        switch (i10) {
            case 2:
                this.f5497b = Collections.newSetFromMap(new IdentityHashMap());
                break;
            default:
                char[] cArr = AbstractC0947p.f810a;
                this.f5497b = new ArrayDeque(20);
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo3095a();

    /* JADX INFO: renamed from: b */
    public abstract void mo3096b();

    /* JADX INFO: renamed from: c */
    public void m3097c(InterfaceC2021i interfaceC2021i) {
        ArrayDeque arrayDeque = (ArrayDeque) this.f5497b;
        if (arrayDeque.size() < 20) {
            arrayDeque.offer(interfaceC2021i);
        }
    }

    /* JADX INFO: renamed from: d */
    public void m3098d(Object obj, boolean z9) {
        Set set = (Set) this.f5497b;
        int size = set.size();
        if (z9) {
            set.add(obj);
            if (size == 0) {
                mo3095a();
                return;
            }
            return;
        }
        if (set.remove(obj) && size == 1) {
            mo3096b();
        }
    }

    @Override // p141n.InterfaceC2458s
    /* JADX INFO: renamed from: j */
    public InterfaceC2457r mo1344j(C2465z c2465z) {
        return new C2437c(2, (C2438c0) this.f5497b);
    }

    public AbstractC2013a(C2438c0 c2438c0) {
        this.f5497b = c2438c0;
    }
}
