package j1;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public z0.a f3013b;
    public w c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r(int i9) {
        this.f3012a = i9;
        switch (i9) {
            case 1:
                this.f3013b = new p2.e(14);
                this.c = new c5.e(14);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final void a(Context context, i0.a aVar) {
        int i9 = this.f3012a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final z0.a b() {
        switch (this.f3012a) {
            case 0:
                if (((p2.e) this.f3013b) == null) {
                    this.f3013b = new p2.e(20);
                }
                break;
        }
        return (p2.e) this.f3013b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final w d() {
        switch (this.f3012a) {
            case 0:
                if (((c5.e) this.c) == null) {
                    this.c = new c5.e(12);
                }
                break;
        }
        return (c5.e) this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final boolean f() {
        switch (this.f3012a) {
        }
        return false;
    }

    private final void i(Context context, i0.a aVar) {
    }

    private final void j(Context context, i0.a aVar) {
    }
}
