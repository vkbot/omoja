package m0;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l3 extends RecyclerView$Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.p f3507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n3 f3508b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l3(n3 n3Var) {
        this.f3508b = n3Var;
        this.f3507a = com.bumptech.glide.b.c(n3Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final int getItemCount() {
        return this.f3508b.c.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onBindViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        m3 m3Var = (m3) recyclerView$ViewHolder;
        k3 k3Var = (k3) this.f3508b.c.get(i9);
        m3Var.f3524b.setText(k3Var.f3499a);
        TextView textView = m3Var.c;
        StringBuilder sb = new StringBuilder();
        Context context = m3Var.itemView.getContext();
        long j9 = k3Var.c;
        sb.append(Formatter.formatShortFileSize(context, j9));
        sb.append(e0.m.h(new byte[]{90, 3, 118, 89}, new byte[]{122, -63, -63, 121, -113, Base64.padSymbol, 125, -36}));
        sb.append(k3Var.f3500b);
        textView.setText(sb.toString());
        com.bumptech.glide.p pVar = this.f3507a;
        pVar.getClass();
        com.bumptech.glide.l lVar = (com.bumptech.glide.l) new com.bumptech.glide.l(pVar.f621b, pVar, Bitmap.class, pVar.c).u(com.bumptech.glide.p.f620l).z(k3Var.e).n(new b0.b(k3Var.d + e0.m.h(new byte[]{-124}, new byte[]{-66, -64, 116, -71, 38, 37, -123, -63}) + j9));
        lVar.getClass();
        com.bumptech.glide.l lVar2 = (com.bumptech.glide.l) lVar.m(q.f0.d, 1000000L);
        lVar2.getClass();
        q.o oVar = q.o.f4727b;
        ((com.bumptech.glide.l) ((com.bumptech.glide.l) ((com.bumptech.glide.l) lVar2.r(new q.i())).j(2131165762)).e(2131165762)).x(m3Var.f3523a);
        m3Var.itemView.setOnClickListener(new androidx.navigation.ui.a(16, this, k3Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final RecyclerView$ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new m3(LayoutInflater.from(viewGroup.getContext()).inflate(2131492993, viewGroup, false));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public final void onViewRecycled(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        m3 m3Var = (m3) recyclerView$ViewHolder;
        ImageView imageView = m3Var.f3523a;
        com.bumptech.glide.p pVar = this.f3507a;
        pVar.getClass();
        pVar.k(new com.bumptech.glide.n(imageView));
        m3Var.itemView.setOnClickListener(null);
    }
}
