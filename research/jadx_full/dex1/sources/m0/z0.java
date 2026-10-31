package m0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.cores.LogcatRule;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class z0 extends l0.b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f3636m = e0.m.h(new byte[]{-49, -5, 47, -80, -66, 109, -19, 7, -52, -16, 45, -80, -76, 107, -32, 13, -52, -6, 59}, new byte[]{-93, -108, 72, -17, -43, 8, -108, 100});

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f3637n = e0.m.h(new byte[]{38, -28, 58, -87, 93, 34, -29, 10, 45, -22, 4, -82, 87, 60, -33, 9, 38, -24, 4, -95, 91, 54, -33, 9, 52, -24, 41, -68}, new byte[]{66, -115, 91, -59, 50, 69, -68, 102});
    public EditText d;
    public TextView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f3639f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Button f3640g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RecyclerView f3641h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public v0 f3642i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3643j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3645l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f3638b = new ArrayList();
    public final LinkedHashMap c = new LinkedHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f3644k = "";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t() {
        try {
            if (h0.b.a().j() != null) {
                h0.b.a().j().lo(f3637n, null, "\u0000");
            }
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492956, viewGroup, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        FragmentActivity activity = getActivity();
        boolean z8 = activity != null && activity.isChangingConfigurations();
        super.onDestroy();
        if (this.f3645l || z8) {
            return;
        }
        this.f3645l = true;
        h0.b.x(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f3643j = false;
        this.f3644k = "";
        t();
        this.d = null;
        this.e = null;
        this.f3639f = null;
        this.f3640g = null;
        this.f3641h = null;
        this.f3642i = null;
        super.onDestroyView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.d = (EditText) view.findViewById(2131296937);
        this.e = (TextView) view.findViewById(2131296939);
        this.f3639f = (TextView) view.findViewById(2131296933);
        this.f3640g = (Button) view.findViewById(2131296938);
        this.f3641h = (RecyclerView) view.findViewById(2131296936);
        ArrayList arrayList = this.f3638b;
        arrayList.clear();
        LinkedHashMap linkedHashMap = this.c;
        linkedHashMap.clear();
        h0.b.a();
        ArrayList arrayListI = h0.b.f().i(f3636m);
        int size = arrayListI.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListI.get(i9);
            i9++;
            w0.o0 o0Var = (w0.o0) obj;
            LogcatRule logcatRuleFromStorageValue = LogcatRule.fromStorageValue(o0Var.f5750a);
            j0.e eVar = o0Var.f5751b;
            if (logcatRuleFromStorageValue != null && j0.f.d(eVar) && !linkedHashMap.containsKey(logcatRuleFromStorageValue.toStorageValue())) {
                t0 t0Var = new t0(logcatRuleFromStorageValue, eVar, true);
                arrayList.add(t0Var);
                linkedHashMap.put(logcatRuleFromStorageValue.toStorageValue(), t0Var);
            }
        }
        this.f3642i = new v0(arrayList, new androidx.fragment.app.h(20, this));
        this.f3641h.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.f3641h.setAdapter(this.f3642i);
        view.findViewById(2131296932).setOnClickListener(new w0(this, 0));
        this.f3640g.setOnClickListener(new w0(this, 1));
        v1.d.a().d().e.observe(getViewLifecycleOwner(), new x0(this, 0));
        v();
        u();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u() {
        TextView textView = this.f3639f;
        if (textView != null) {
            textView.setVisibility(this.f3638b.isEmpty() ? 0 : 8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        Button button = this.f3640g;
        if (button == null || this.e == null || this.d == null) {
            return;
        }
        button.setText(this.f3643j ? 2131952154 : 2131952150);
        this.e.setText(this.f3643j ? 2131952151 : 2131952152);
        this.d.setEnabled(!this.f3643j);
    }
}
