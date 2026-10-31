package p094i7;

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
import com.example.navistart.R;
import p047e0.AbstractC1387m;
import p047e0.C1349e1;
import p078h0.C1652b;

/* JADX INFO: renamed from: i7.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C1773v extends Fragment {
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_settings, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        String strM2421h = AbstractC1387m.m2421h(new byte[]{73, -103, -65, -100, -63, 11, -46, 79, 91, -110, -82, -98, -15, 11, -60, 113, 72, -93, -84, -104, -17, 31, -51, 79, 113, -71, -125}, new byte[]{58, -4, -38, -9, -125, 106, -96, 16});
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.seekBar_antiradar_volum);
        TextView textView = (TextView) view.findViewById(R.id.textView_antiradar_volum);
        int iLoadInt = C1652b.m2745o().loadInt(strM2421h, 0);
        int i10 = iLoadInt < 0 ? 0 : iLoadInt;
        seekBar.post(new RunnableC1771t(seekBar, i10 > 100 ? 100 : i10, textView, iLoadInt, 0));
        seekBar.setMax(100);
        seekBar.setOnSeekBarChangeListener(new C1772u(textView, strM2421h, 0));
        Spinner spinner = (Spinner) view.findViewById(R.id.spinner_antiradar_database);
        EnumC1759h[] enumC1759hArrValues = EnumC1759h.values();
        String[] strArr = new String[enumC1759hArrValues.length];
        for (int i11 = 0; i11 < enumC1759hArrValues.length; i11++) {
            strArr[i11] = getString(enumC1759hArrValues[i11].f4600b);
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), android.R.layout.simple_spinner_item, strArr);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        spinner.setSelection(EnumC1759h.m2881a().ordinal());
        spinner.setOnItemSelectedListener(new C1349e1(1, enumC1759hArrValues));
    }
}
