package m0;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a3 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f3336a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a3(View view) {
        this.f3336a = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new z2(this.f3336a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
    }
}
