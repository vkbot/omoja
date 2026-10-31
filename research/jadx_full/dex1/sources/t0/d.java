package t0;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.Spinner;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.util.ArrayList;
import java.util.List;
import w0.o0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f5332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j0.c f5333b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(FragmentActivity fragmentActivity, ArrayList arrayList) {
        this.f5332a = arrayList;
        this.f5333b = new j0.c(fragmentActivity);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f5332a.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        c cVar = (c) recyclerView$ViewHolder;
        o0 o0Var = (o0) this.f5332a.get(i9);
        cVar.f5331b.setOnCheckedChangeListener(null);
        CheckBox checkBox = cVar.f5331b;
        checkBox.setChecked(o0Var.c);
        checkBox.setOnCheckedChangeListener(new a(o0Var, 0));
        Spinner spinner = cVar.f5330a;
        this.f5333b.n(spinner, o0Var.f5751b);
        spinner.setOnItemSelectedListener(new b(o0Var, 0));
        cVar.c.setOnClickListener(new androidx.navigation.ui.a(20, this, cVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new c(LayoutInflater.from(viewGroup.getContext()).inflate(2131492991, viewGroup, false));
    }
}
