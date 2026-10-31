package j1;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c5.e f2882b;
    public w c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9) {
        this.f2881a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final void a(Context context, i0.a aVar) {
        int i9 = this.f2881a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final z0.a b() {
        switch (this.f2881a) {
            case 0:
                if (this.f2882b == null) {
                    this.f2882b = new c5.e(20);
                }
                break;
            default:
                if (this.f2882b == null) {
                    this.f2882b = new c5.e(20);
                }
                break;
        }
        return this.f2882b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final w d() {
        switch (this.f2881a) {
            case 0:
                if (((c5.e) this.c) == null) {
                    this.c = new c5.e(12);
                }
                return (c5.e) this.c;
            default:
                if (((x) this.c) == null) {
                    x xVar = new x();
                    xVar.f3018b = true;
                    xVar.c = false;
                    this.c = xVar;
                }
                return (x) this.c;
        }
    }

    private final void i(Context context, i0.a aVar) {
    }

    private final void j(Context context, i0.a aVar) {
    }
}
