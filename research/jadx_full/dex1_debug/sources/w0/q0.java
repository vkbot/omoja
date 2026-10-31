package w0;

import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q0 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f5756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j0.c f5757b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q0(FragmentActivity fragmentActivity, ArrayList arrayList) {
        this.f5756a = arrayList;
        this.f5757b = new j0.c(fragmentActivity);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f5756a.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        p0 p0Var = (p0) recyclerView$ViewHolder;
        o0 o0Var = (o0) this.f5756a.get(i9);
        EditText editText = p0Var.f5753a;
        Spinner spinner = p0Var.f5754b;
        CheckBox checkBox = p0Var.c;
        if (editText.getTag() instanceof TextWatcher) {
            editText.removeTextChangedListener((TextWatcher) editText.getTag());
        }
        editText.setText(o0Var.f5750a);
        e0.a1 a1Var = new e0.a1(3, o0Var);
        editText.addTextChangedListener(a1Var);
        editText.setTag(a1Var);
        checkBox.setOnCheckedChangeListener(null);
        checkBox.setChecked(o0Var.c);
        checkBox.setOnCheckedChangeListener(new t0.a(o0Var, 1));
        this.f5757b.n(spinner, o0Var.f5751b);
        spinner.setOnItemSelectedListener(new t0.b(o0Var, 1));
        p0Var.d.setOnClickListener(new androidx.navigation.ui.a(23, this, p0Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new p0(LayoutInflater.from(viewGroup.getContext()).inflate(2131492994, viewGroup, false));
    }
}
