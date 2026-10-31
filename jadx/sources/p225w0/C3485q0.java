package p225w0;

import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.p013ui.ViewOnClickListenerC0701a;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.R;
import java.util.ArrayList;
import java.util.List;
import p047e0.C1329a1;
import p098j0.C1917c;
import p197t0.C3219a;
import p197t0.C3220b;

/* JADX INFO: renamed from: w0.q0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3485q0 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a */
    public final List f10191a;

    /* JADX INFO: renamed from: b */
    public final C1917c f10192b;

    public C3485q0(FragmentActivity fragmentActivity, ArrayList arrayList) {
        this.f10191a = arrayList;
        this.f10192b = new C1917c(fragmentActivity);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f10191a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        C3483p0 c3483p0 = (C3483p0) viewHolder;
        C3481o0 c3481o0 = (C3481o0) this.f10191a.get(i10);
        EditText editText = c3483p0.f10184a;
        Spinner spinner = c3483p0.f10185b;
        CheckBox checkBox = c3483p0.f10186c;
        if (editText.getTag() instanceof TextWatcher) {
            editText.removeTextChangedListener((TextWatcher) editText.getTag());
        }
        editText.setText(c3481o0.f10178a);
        C1329a1 c1329a1 = new C1329a1(3, c3481o0);
        editText.addTextChangedListener(c1329a1);
        editText.setTag(c1329a1);
        checkBox.setOnCheckedChangeListener(null);
        checkBox.setChecked(c3481o0.f10180c);
        checkBox.setOnCheckedChangeListener(new C3219a(c3481o0, 1));
        this.f10192b.m2997n(spinner, c3481o0.f10179b);
        spinner.setOnItemSelectedListener(new C3220b(c3481o0, 1));
        c3483p0.f10187d.setOnClickListener(new ViewOnClickListenerC0701a(23, this, c3483p0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return new C3483p0(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_voice_command, viewGroup, false));
    }
}
