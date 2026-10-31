package m0;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v1 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w1 f3613a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v1(w1 w1Var) {
        this.f3613a = w1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f3613a.f3617f.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        u1 u1Var = (u1) recyclerView$ViewHolder;
        s1 s1Var = (s1) this.f3613a.f3617f.get(i9);
        u1Var.itemView.setTranslationY(0.0f);
        u1Var.itemView.setAlpha(1.0f);
        u1Var.itemView.setScaleX(1.0f);
        u1Var.itemView.setScaleY(1.0f);
        u1Var.f3601a.setImageDrawable(s1Var.c);
        u1Var.f3602b.setText(s1Var.f3584a);
        u1Var.itemView.setOnClickListener(new androidx.navigation.ui.a(12, this, s1Var));
        u1Var.itemView.setOnTouchListener(new t1(u1Var, s1Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new u1(this, LayoutInflater.from(viewGroup.getContext()).inflate(2131492990, viewGroup, false));
    }
}
