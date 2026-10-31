package u1;

import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Switch;
import androidx.fragment.app.Fragment;
import e0.m;
import e0.o1;
import e0.s0;
import kotlin.io.encoding.Base64;
import m0.z1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class d extends Fragment {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131493141, viewGroup, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Switch r9 = (Switch) view.findViewById(2131297391);
        r9.setChecked(h0.b.o().loadBoolean(m.h(new byte[]{-40, -72, 37, -32, 22, 112, 63, -12, -60, -82, 42, -32, 7, 115, 63, -59}, new byte[]{-85, -56, 76, -65, 119, 28, 83, -85}), false));
        r9.setOnCheckedChangeListener(new s0(9, this));
        Switch r10 = (Switch) view.findViewById(2131297389);
        u0.a aVarO = h0.b.o();
        String strH = m.h(new byte[]{-20, 73, 126, -56, 83, 97, -64, -36, -20, 73, 126, -42, 75, 97, -61, -15, -53, 109, 109, -43, 95, 71}, new byte[]{-97, Base64.padSymbol, 31, -70, 39, 62, -119, -78});
        h0.b.a();
        r10.setChecked(aVarO.loadBoolean(strH, h0.b.g().c()));
        r10.setOnCheckedChangeListener(new z1(1));
        Button button = (Button) view.findViewById(2131296495);
        Button button2 = (Button) view.findViewById(2131296494);
        button.setOnClickListener(new o1(3));
        button2.setOnClickListener(new o1(4));
        ((Button) view.findViewById(2131296553)).setOnClickListener(new b(this, (EditText) view.findViewById(2131296728), 0));
        ((Button) view.findViewById(2131296541)).setOnClickListener(new b(this, (EditText) view.findViewById(2131296727), 1));
        ((Button) view.findViewById(2131296325)).setOnClickListener(new a(this, 2));
        ((Button) view.findViewById(2131296562)).setOnClickListener(new o1(5));
        EditText editText = (EditText) view.findViewById(2131297392);
        editText.setFilters(new InputFilter[]{new k0.b()});
        editText.setText(String.valueOf(h0.b.o().loadInt(m.h(new byte[]{-114, -85, -1, 11, 120, 10, -113, -97, -84, -68, -1, 7, 107, 118, -85, -119, -89, -89, -12, 49, 118, 45, -104, -97, -90}, new byte[]{-61, -50, -101, 98, 25, 88, -22, -4}), 1)));
        editText.addTextChangedListener(new c());
        ((Button) view.findViewById(2131296563)).setOnClickListener(new a(this, 3));
        ((Button) view.findViewById(2131296564)).setOnClickListener(new a(this, 0));
        ((Button) view.findViewById(2131296592)).setOnClickListener(new a(this, 1));
    }
}
