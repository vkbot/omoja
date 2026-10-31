package i7;

import androidx.recyclerview.widget.GridLayoutManager;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2674b;
    public final /* synthetic */ float c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(Object obj, float f8, int i9) {
        this.f2674b = i9;
        this.d = obj;
        this.c = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2674b) {
            case 0:
                w wVar = ((g) this.d).f2683k;
                if (wVar != null) {
                    wVar.a(this.c);
                }
                break;
            case 1:
                m0.v vVar = (m0.v) this.d;
                vVar.d.setLayoutManager(new GridLayoutManager(vVar.requireContext(), Math.max(1, vVar.d.getWidth() / ((int) (this.c * 280.0f)))));
                vVar.d.setAdapter(vVar.e);
                break;
            default:
                v0.d dVar = (v0.d) this.d;
                dVar.c.k(this.c);
                break;
        }
    }
}
