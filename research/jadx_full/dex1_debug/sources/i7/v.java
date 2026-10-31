package i7;

import android.R$layout;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import e0.e1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class v extends Fragment {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492970, viewGroup, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        String strH = e0.m.h(new byte[]{73, -103, -65, -100, -63, 11, -46, 79, 91, -110, -82, -98, -15, 11, -60, 113, 72, -93, -84, -104, -17, 31, -51, 79, 113, -71, -125}, new byte[]{58, -4, -38, -9, -125, 106, -96, 16});
        SeekBar seekBar = (SeekBar) view.findViewById(2131297349);
        TextView textView = (TextView) view.findViewById(2131297629);
        int iLoadInt = h0.b.o().loadInt(strH, 0);
        int i9 = iLoadInt < 0 ? 0 : iLoadInt;
        seekBar.post(new t(seekBar, i9 > 100 ? 100 : i9, textView, iLoadInt, 0));
        seekBar.setMax(100);
        seekBar.setOnSeekBarChangeListener(new u(textView, strH, 0));
        Spinner spinner = (Spinner) view.findViewById(2131297426);
        h[] hVarArrValues = h.values();
        String[] strArr = new String[hVarArrValues.length];
        for (int i10 = 0; i10 < hVarArrValues.length; i10++) {
            strArr[i10] = getString(hVarArrValues[i10].f2688b);
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R$layout.simple_spinner_item, strArr);
        arrayAdapter.setDropDownViewResource(R$layout.simple_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        spinner.setSelection(h.a().ordinal());
        spinner.setOnItemSelectedListener(new e1(1, hVarArrValues));
    }
}
