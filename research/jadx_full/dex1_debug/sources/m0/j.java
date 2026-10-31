package m0;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3478b;
    public final /* synthetic */ float c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ l0.b e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(l0.b bVar, float f8, Context context, int i9) {
        this.f3478b = i9;
        this.e = bVar;
        this.c = f8;
        this.d = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3478b) {
            case 0:
                o oVar = (o) this.e;
                oVar.f3552b.setLayoutManager(new GridLayoutManager(this.d, Math.max(1, oVar.f3552b.getWidth() / ((int) (this.c * 120.0f)))));
                break;
            default:
                k2 k2Var = (k2) this.e;
                k2Var.d.setLayoutManager(new GridLayoutManager(this.d, Math.max(1, k2Var.d.getWidth() / ((int) (this.c * 120.0f)))));
                break;
        }
    }
}
