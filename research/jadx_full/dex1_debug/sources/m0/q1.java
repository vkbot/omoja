package m0;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.Spinner;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q1 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f3568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j0.c f3569b;
    public androidx.fragment.app.h c;
    public f5.j d;
    public int e = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q1(FragmentActivity fragmentActivity, ArrayList arrayList) {
        this.f3568a = arrayList;
        this.f3569b = new j0.c(fragmentActivity);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9) {
        int i10 = this.e;
        this.e = i9;
        if (i10 != -1) {
            notifyItemChanged(i10);
        }
        int i11 = this.e;
        if (i11 != -1) {
            notifyItemChanged(i11);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f3568a.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        p1 p1Var = (p1) recyclerView$ViewHolder;
        w0.o0 o0Var = (w0.o0) this.f3568a.get(i9);
        String str = o0Var.f5750a;
        String strTrim = str == null ? "" : str.trim();
        boolean z8 = i9 == this.e;
        Button button = p1Var.f3560a;
        Spinner spinner = p1Var.f3561b;
        CheckBox checkBox = p1Var.c;
        button.setActivated(z8);
        if (z8) {
            button.setText(e0.m.h(new byte[]{-84, 34, -99, 35, -68, -126, 42, 89, -84, 7, -100, 17, -68, -127, -38, 53, -58, 111, -16, 67, -46, -28, 69, 53, -58, 110, -50, -67, 66, 26}, new byte[]{124, -65, 77, -109, 108, 52, -6, -27}));
        } else if (strTrim.length() == 0) {
            button.setText(e0.m.h(new byte[]{18, -82, -45, 4, -61, 110, 44, 8, 18, -116, -45, 13, -62, 83, -35, 88, 120, -20, -65, 95, -83, 15, 66, 88, 120, -19, -127}, new byte[]{-62, 60, 2, -113, 19, -33, -3, -120}));
        } else {
            button.setText(strTrim);
        }
        button.setOnClickListener(new o1(this, p1Var, 0));
        checkBox.setOnCheckedChangeListener(null);
        checkBox.setChecked(o0Var.c);
        checkBox.setOnCheckedChangeListener(new e0.c3(2, this, o0Var));
        spinner.setOnItemSelectedListener(null);
        this.f3569b.n(spinner, o0Var.f5751b);
        spinner.setOnItemSelectedListener(new e0.d1(3, this, o0Var));
        p1Var.d.setOnClickListener(new o1(this, p1Var, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new p1(LayoutInflater.from(viewGroup.getContext()).inflate(2131492988, viewGroup, false));
    }
}
