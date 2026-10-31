package m0;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i1 f3334b;
    public final /* synthetic */ RecyclerView c;
    public final /* synthetic */ float d;
    public final /* synthetic */ Context e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a1(i1 i1Var, RecyclerView recyclerView, float f8, Context context) {
        this.f3334b = i1Var;
        this.c = recyclerView;
        this.d = f8;
        this.e = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        i1 i1Var = this.f3334b;
        RecyclerView recyclerView = i1Var.f3472b;
        RecyclerView recyclerView2 = this.c;
        if (recyclerView == recyclerView2 && i1Var.isAdded()) {
            recyclerView2.setLayoutManager(new GridLayoutManager(this.e, Math.max(1, recyclerView2.getWidth() / ((int) (this.d * 220.0f)))));
        }
    }
}
