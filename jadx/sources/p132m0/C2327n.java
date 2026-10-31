package p132m0;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;

/* JADX INFO: renamed from: m0.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2327n extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2332o f6236a;

    public C2327n(C2332o c2332o) {
        this.f6236a = c2332o;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f6236a.f6277d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        C2322m c2322m = (C2322m) viewHolder;
        C2317l c2317l = (C2317l) this.f6236a.f6277d.get(i10);
        c2322m.f6216a.setImageDrawable(c2317l.f6204c);
        c2322m.f6217b.setText(c2317l.f6202a);
        c2322m.itemView.setOnClickListener(new ViewOnClickListenerC0701a(7, this, c2317l));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_app, viewGroup, false);
        C2322m c2322m = new C2322m(viewInflate);
        c2322m.f6216a = (ImageView) viewInflate.findViewById(R.id.appIcon);
        c2322m.f6217b = (TextView) viewInflate.findViewById(R.id.appLabel);
        return c2322m;
    }
}
