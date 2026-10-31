package p132m0;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.C0566h;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.List;
import p098j0.C1919e;

/* JADX INFO: renamed from: m0.v0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2361v0 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final List f6388a;

    /* JADX INFO: renamed from: b */
    public final C0566h f6389b;

    public C2361v0(ArrayList arrayList, C0566h c0566h) {
        this.f6388a = arrayList;
        this.f6389b = c0566h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f6388a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        C2357u0 c2357u0 = (C2357u0) viewHolder;
        C2353t0 c2353t0 = (C2353t0) this.f6388a.get(i10);
        TextView textView = c2357u0.f6370a;
        TextView textView2 = c2357u0.f6371b;
        textView.setText(c2353t0.f6353a.toDisplayValue());
        C1919e c1919e = c2353t0.f6354b;
        String str = c1919e == null ? null : c1919e.f5066i;
        if (!c2353t0.f6355c || str == null || str.trim().isEmpty()) {
            textView2.setText(R.string.log_keycode_action_empty);
        } else {
            textView2.setText(c2357u0.itemView.getContext().getString(R.string.log_keycode_saved_action_value, str));
        }
        c2357u0.itemView.setOnClickListener(new ViewOnClickListenerC0701a(10, this, c2357u0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C2357u0(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_log_keycode_event, viewGroup, false));
    }
}
