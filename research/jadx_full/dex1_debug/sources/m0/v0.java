package m0;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v0 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f3611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.fragment.app.h f3612b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v0(ArrayList arrayList, androidx.fragment.app.h hVar) {
        this.f3611a = arrayList;
        this.f3612b = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f3611a.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        u0 u0Var = (u0) recyclerView$ViewHolder;
        t0 t0Var = (t0) this.f3611a.get(i9);
        TextView textView = u0Var.f3599a;
        TextView textView2 = u0Var.f3600b;
        textView.setText(t0Var.f3589a.toDisplayValue());
        j0.e eVar = t0Var.f3590b;
        String str = eVar == null ? null : eVar.f2877i;
        if (!t0Var.c || str == null || str.trim().isEmpty()) {
            textView2.setText(2131952140);
        } else {
            textView2.setText(u0Var.itemView.getContext().getString(2131952147, str));
        }
        u0Var.itemView.setOnClickListener(new androidx.navigation.ui.a(10, this, u0Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new u0(LayoutInflater.from(viewGroup.getContext()).inflate(2131492986, viewGroup, false));
    }
}
