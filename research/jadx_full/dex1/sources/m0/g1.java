package m0;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g1 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.fragment.app.h f3432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f3433b;
    public final /* synthetic */ i1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g1(i1 i1Var, ArrayList arrayList, androidx.fragment.app.h hVar) {
        this.c = i1Var;
        this.f3433b = arrayList;
        this.f3432a = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f3433b.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        String str;
        f1 f1Var = (f1) recyclerView$ViewHolder;
        h1 h1Var = (h1) this.f3433b.get(i9);
        TextView textView = f1Var.f3423b;
        Button button = f1Var.d;
        String str2 = h1Var.f3443b;
        textView.setText((str2 == null || str2.trim().isEmpty()) ? h1Var.c : h1Var.f3443b);
        TextView textView2 = f1Var.c;
        String strH = e0.m.h(new byte[]{62, 65, -67, -91, -42, 123, -4, -59}, new byte[]{82, 32, -56, -53, -75, 19, -103, -73});
        i1 i1Var = this.c;
        if (strH.equals(i1Var.f3474g)) {
            str = h1Var.e + e0.m.h(new byte[]{11, -93}, new byte[]{39, -125, 29, -12, -56, 6, 110, -20}) + h1Var.f3444f;
        } else {
            str = h1Var.d + e0.m.h(new byte[]{118, -50}, new byte[]{90, -18, -96, 56, 22, -107, -106, -79}) + h1Var.e + e0.m.h(new byte[]{62, -46}, new byte[]{18, -14, 85, -11, -127, 89, -21, -94}) + h1Var.f3444f;
        }
        textView2.setText(str);
        com.bumptech.glide.p pVarC = com.bumptech.glide.b.c(i1Var);
        String str3 = h1Var.f3445g;
        String strTrim = str3 == null ? null : str3.trim();
        pVarC.getClass();
        com.bumptech.glide.l lVarZ = new com.bumptech.glide.l(pVarC.f621b, pVarC, Drawable.class, pVarC.c).z(strTrim);
        lVarZ.getClass();
        q.o oVar = q.o.f4727b;
        ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) lVarZ.r(new q.i())).j(2131165474)).e(2131165474)).x(f1Var.f3422a);
        if (h1Var.f3447i) {
            button.setEnabled(false);
            button.setText(h1Var.f3448j);
        } else {
            button.setEnabled(true);
            button.setText(e0.m.h(new byte[]{-67, -65, -35, 1, 46, 13, 15, 91}, new byte[]{-47, -34, -88, 111, 77, 101, 106, 41}).equals(i1Var.f3474g) ? e0.m.h(new byte[]{110, -68, ByteCompanionObject.MIN_VALUE, -120, 87, -11, -115, 76, 110, -94, -127, -73, 86, -59, -115, 68, 111, -99, ByteCompanionObject.MIN_VALUE, -123}, new byte[]{-66, 31, 81, 9, -122, 119, 93, -4}) : i1Var.getString(2131951930));
        }
        button.setOnClickListener(new androidx.navigation.ui.a(11, this, f1Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new f1(LayoutInflater.from(viewGroup.getContext()).inflate(2131492989, viewGroup, false));
    }
}
