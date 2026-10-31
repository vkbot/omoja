package m0;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m0 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f3511a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n0 f3512b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m0(n0 n0Var) {
        this.f3512b = n0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f3511a.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        l0 l0Var = (l0) recyclerView$ViewHolder;
        k0 k0Var = (k0) this.f3511a.get(i9);
        l0Var.f3503a.setImageDrawable(k0Var.c);
        TextView textView = l0Var.f3504b;
        String str = k0Var.f3490b;
        textView.setText(str);
        CheckBox checkBox = l0Var.c;
        checkBox.setOnCheckedChangeListener(null);
        n0 n0Var = this.f3512b;
        checkBox.setChecked(o4.b.y(n0Var.e, k0Var.f3489a));
        checkBox.setEnabled(!n0Var.d);
        checkBox.setContentDescription(n0Var.getString(2131952011, str));
        checkBox.setOnCheckedChangeListener(new e0.c3(1, this, k0Var));
        Button button = l0Var.d;
        button.setEnabled(!n0Var.d && k0Var.d);
        button.setContentDescription(n0Var.getString(2131952006, str));
        button.setOnClickListener(new androidx.navigation.ui.a(9, this, k0Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new l0(LayoutInflater.from(viewGroup.getContext()).inflate(2131492985, viewGroup, false));
    }
}
