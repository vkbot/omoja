package p7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l9.l f4695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4696b;
    public int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(int i9, l9.l lVar) {
        this.f4695a = lVar;
        this.f4696b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(byte[] bArr, int i9, int i10) {
        this.f4695a.write(bArr, i9, i10);
        this.f4696b -= i10;
        this.c += i10;
    }
}
