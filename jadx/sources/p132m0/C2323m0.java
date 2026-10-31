package p132m0;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import java.util.ArrayList;
import p047e0.C1341c3;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: m0.m0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2323m0 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final ArrayList f6218a = new ArrayList();

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2328n0 f6219b;

    public C2323m0(C2328n0 c2328n0) {
        this.f6219b = c2328n0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f6218a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        C2318l0 c2318l0 = (C2318l0) viewHolder;
        C2313k0 c2313k0 = (C2313k0) this.f6218a.get(i10);
        c2318l0.f6205a.setImageDrawable(c2313k0.f6184c);
        TextView textView = c2318l0.f6206b;
        String str = c2313k0.f6183b;
        textView.setText(str);
        CheckBox checkBox = c2318l0.f6207c;
        checkBox.setOnCheckedChangeListener(null);
        C2328n0 c2328n0 = this.f6219b;
        checkBox.setChecked(AbstractC2587b.m4058y(c2328n0.f6241e, c2313k0.f6182a));
        checkBox.setEnabled(!c2328n0.f6240d);
        checkBox.setContentDescription(c2328n0.getString(R.string.fullscreen_apps_toggle_named, str));
        checkBox.setOnCheckedChangeListener(new C1341c3(1, this, c2313k0));
        Button button = c2318l0.f6208d;
        button.setEnabled(!c2328n0.f6240d && c2313k0.f6185d);
        button.setContentDescription(c2328n0.getString(R.string.fullscreen_apps_launch_named, str));
        button.setOnClickListener(new ViewOnClickListenerC0701a(9, this, c2313k0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C2318l0(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_fullscreen_app, viewGroup, false));
    }
}
