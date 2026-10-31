package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4348b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ n0(Object obj, int i9, int i10) {
        this.f4348b = i10;
        this.d = obj;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4348b) {
            case 0:
                ((k0) this.d).d.m(this.c);
                break;
            case 1:
                ((k0) this.d).d.c(this.c);
                break;
            default:
                ((com.google.android.material.datepicker.n) this.d).f1256i.smoothScrollToPosition(this.c);
                break;
        }
    }
}
