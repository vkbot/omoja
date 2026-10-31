package m8;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c[] f3705b;
    public long c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(int i9, ThreadFactory threadFactory) {
        this.f3704a = i9;
        this.f3705b = new c[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            this.f3705b[i10] = new c(threadFactory);
        }
    }
}
