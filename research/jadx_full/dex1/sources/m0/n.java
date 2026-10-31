package m0;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f3525a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(o oVar) {
        this.f3525a = oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f3525a.d.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        m mVar = (m) recyclerView$ViewHolder;
        l lVar = (l) this.f3525a.d.get(i9);
        mVar.f3509a.setImageDrawable(lVar.c);
        mVar.f3510b.setText(lVar.f3501a);
        mVar.itemView.setOnClickListener(new androidx.navigation.ui.a(7, this, lVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(2131492984, viewGroup, false);
        m mVar = new m(viewInflate);
        mVar.f3509a = (ImageView) viewInflate.findViewById(2131296451);
        mVar.f3510b = (TextView) viewInflate.findViewById(2131296452);
        return mVar;
    }
}
