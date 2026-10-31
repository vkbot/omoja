package p157o7;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: renamed from: o7.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2629f implements InterfaceC2703r1 {

    /* JADX INFO: renamed from: a */
    public final AtomicLong f7385a;

    public C2629f(int i10) {
        switch (i10) {
            case 1:
                this.f7385a = new AtomicLong();
                break;
            default:
                this.f7385a = new AtomicLong();
                break;
        }
    }

    @Override // p157o7.InterfaceC2703r1
    /* JADX INFO: renamed from: a */
    public void mo4136a() {
        this.f7385a.getAndAdd(1L);
    }
}
