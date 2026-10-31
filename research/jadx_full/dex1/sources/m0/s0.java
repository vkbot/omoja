package m0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import com.google.android.material.materialswitch.MaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class s0 extends l0.b {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492955, viewGroup, false);
        p0.b bVar = new p0.b(requireContext());
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(2131296900);
        for (p0.a aVar : bVar.f4550b) {
            if (!aVar.e) {
                MaterialSwitch materialSwitch = new MaterialSwitch(requireContext(), null);
                materialSwitch.setText(aVar.c);
                materialSwitch.setTextSize(18.0f);
                materialSwitch.setTextColor(requireContext().getColor(2131035009));
                materialSwitch.setChecked(p0.b.e(aVar));
                int iT = t(12);
                materialSwitch.setPadding(iT, t(8), iT, t(8));
                linearLayout.addView(materialSwitch, new LinearLayout$LayoutParams(-1, t(56)));
                materialSwitch.setOnCheckedChangeListener(new e0.t0(this, bVar, aVar, 1));
            }
        }
        Button button = (Button) viewInflate.findViewById(2131296899);
        button.setOnClickListener(new p0(this, button, linearLayout, bVar, viewInflate));
        viewInflate.post(new r0(0, this, viewInflate, button, linearLayout));
        viewInflate.findViewById(2131296897).setOnClickListener(new androidx.navigation.c(16, this));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int t(int i9) {
        return Math.round(i9 * getResources().getDisplayMetrics().density);
    }
}
