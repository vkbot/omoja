package w0;

import android.R$layout;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class v0 extends l0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RecyclerView f5779b;
    public q0 c;
    public ArrayList d;
    public EditText e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5780f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Spinner f5781g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Button f5782h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f5783i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public RadioGroup f5784j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Button f5785k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f5786l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ExecutorService f5787m = Executors.newSingleThreadExecutor();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492976, viewGroup, false);
        this.e = (EditText) viewInflate.findViewById(2131296724);
        Switch r9 = (Switch) viewInflate.findViewById(2131297390);
        boolean zLoadBoolean = h0.b.o().loadBoolean(e0.m.h(new byte[]{-82, 46, 23, 78, 85, -116, 82, -80, -85, 63, 10, 116, 107, -108, 81, -122, -114, 9}, new byte[]{-35, 94, 126, 17, 52, -25, 38, -39}), false);
        this.f5780f = zLoadBoolean;
        r9.setChecked(zLoadBoolean);
        this.e.setEnabled(!this.f5780f);
        r9.setOnCheckedChangeListener(new e0.s0(10, this));
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(2131297260);
        this.f5779b = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireActivity()));
        EditText editText = this.e;
        h0.b.a();
        h0.b.f().getClass();
        editText.setText(j0.c.f());
        h0.b.a();
        this.d = h0.b.f().i(j0.c.e);
        q0 q0Var = new q0(requireActivity(), this.d);
        this.c = q0Var;
        this.f5779b.setAdapter(q0Var);
        viewInflate.findViewById(2131296516).setOnClickListener(new t0(this, 0));
        viewInflate.findViewById(2131296525).setOnClickListener(new t0(this, 1));
        this.f5784j = (RadioGroup) viewInflate.findViewById(2131297228);
        this.f5785k = (Button) viewInflate.findViewById(2131296517);
        this.f5786l = (TextView) viewInflate.findViewById(2131297634);
        boolean zF = a.f(requireContext());
        z zVarD = a0.d();
        this.f5784j.check((zF && zVarD == z.d) ? 2131297230 : (zF && zVarD == z.c) ? 2131297229 : 2131297231);
        u();
        this.f5785k.setOnClickListener(new t0(this, 2));
        this.f5781g = (Spinner) viewInflate.findViewById(2131297424);
        this.f5782h = (Button) viewInflate.findViewById(2131296518);
        this.f5783i = (TextView) viewInflate.findViewById(2131297635);
        k1[] k1VarArrValues = k1.values();
        String[] strArr = new String[k1VarArrValues.length];
        for (int i9 = 0; i9 < k1VarArrValues.length; i9++) {
            strArr[i9] = requireContext().getString(k1VarArrValues[i9].f5689b);
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R$layout.simple_spinner_item, strArr);
        arrayAdapter.setDropDownViewResource(R$layout.simple_spinner_dropdown_item);
        this.f5781g.setAdapter((SpinnerAdapter) arrayAdapter);
        try {
            this.f5781g.setSelection(k1.valueOf(h0.b.o().loadString(e0.m.h(new byte[]{80, -103, -4, 94, -52, -126, 10, 83, 65, -125, -18, 82, -10, -79, 6, 82, 66, -109, -29}, new byte[]{38, -10, -113, 53, -109, -18, 107, Base64.padSymbol}), k1.e.name())).ordinal());
        } catch (IllegalArgumentException unused) {
            this.f5781g.setSelection(k1.e.ordinal());
        }
        this.f5782h.setOnClickListener(new t0(this, 3));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.f5787m.shutdownNow();
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(boolean z8) {
        this.f5784j.setEnabled(z8);
        for (int i9 = 0; i9 < this.f5784j.getChildCount(); i9++) {
            this.f5784j.getChildAt(i9).setEnabled(z8);
        }
        this.f5785k.setEnabled(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u() {
        int i9;
        boolean zF = a.f(requireContext());
        if (zF && a0.d() == z.d) {
            this.f5786l.setText(2131952810);
            return;
        }
        boolean z8 = a0.d() == z.c && zF;
        TextView textView = this.f5786l;
        if (z8) {
            i9 = 2131952805;
        } else {
            i9 = zF ? 2131952806 : 2131952815;
        }
        textView.setText(i9);
    }
}
