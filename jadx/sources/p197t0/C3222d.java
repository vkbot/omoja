package p197t0;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.Spinner;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.List;
import p098j0.C1917c;
import p225w0.C3481o0;

/* JADX INFO: renamed from: t0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3222d extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final List f9425a;

    /* JADX INFO: renamed from: b */
    public final C1917c f9426b;

    public C3222d(FragmentActivity fragmentActivity, ArrayList arrayList) {
        this.f9425a = arrayList;
        this.f9426b = new C1917c(fragmentActivity);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f9425a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        C3221c c3221c = (C3221c) viewHolder;
        C3481o0 c3481o0 = (C3481o0) this.f9425a.get(i10);
        c3221c.f9423b.setOnCheckedChangeListener(null);
        CheckBox checkBox = c3221c.f9423b;
        checkBox.setChecked(c3481o0.f10180c);
        checkBox.setOnCheckedChangeListener(new C3219a(c3481o0, 0));
        Spinner spinner = c3221c.f9422a;
        this.f9426b.m2997n(spinner, c3481o0.f10179b);
        spinner.setOnItemSelectedListener(new C3220b(c3481o0, 0));
        c3221c.f9424c.setOnClickListener(new ViewOnClickListenerC0701a(20, this, c3221c));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C3221c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_run_app_more_command, viewGroup, false));
    }
}
