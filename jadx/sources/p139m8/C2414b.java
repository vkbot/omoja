package p139m8;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: renamed from: m8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2414b {

    /* JADX INFO: renamed from: a */
    public final int f6546a;

    /* JADX INFO: renamed from: b */
    public final C2415c[] f6547b;

    /* JADX INFO: renamed from: c */
    public long f6548c;

    public C2414b(int i10, ThreadFactory threadFactory) {
        this.f6546a = i10;
        this.f6547b = new C2415c[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.f6547b[i11] = new C2415c(threadFactory);
        }
    }
}
