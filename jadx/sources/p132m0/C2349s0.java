package p132m0;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.R;
import com.google.android.material.materialswitch.MaterialSwitch;
import p047e0.C1423t0;
import p121l0.C2195b;
import p164p0.C2948a;
import p164p0.C2949b;

/* JADX INFO: renamed from: m0.s0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2349s0 extends C2195b {
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final View viewInflate = layoutInflater.inflate(R.layout.fragment_launcher_shortcuts_settings, viewGroup, false);
        final C2949b c2949b = new C2949b(requireContext());
        final LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.launcherShortcutsList);
        for (C2948a c2948a : c2949b.f8197b) {
            if (!c2948a.f8186e) {
                MaterialSwitch materialSwitch = new MaterialSwitch(requireContext(), null);
                materialSwitch.setText(c2948a.f8184c);
                materialSwitch.setTextSize(18.0f);
                materialSwitch.setTextColor(requireContext().getColor(R.color.modern_text));
                materialSwitch.setChecked(C2949b.m4718e(c2948a));
                int iM3724t = m3724t(12);
                materialSwitch.setPadding(iM3724t, m3724t(8), iM3724t, m3724t(8));
                linearLayout.addView(materialSwitch, new LinearLayout.LayoutParams(-1, m3724t(56)));
                materialSwitch.setOnCheckedChangeListener(new C1423t0(this, c2949b, c2948a, 1));
            }
        }
        final Button button = (Button) viewInflate.findViewById(R.id.launcherShortcutsCleanupButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: m0.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C2349s0 c2349s0 = this.f6291b;
                new AlertDialog.Builder(c2349s0.requireContext()).setTitle(R.string.launcher_shortcuts_cleanup_title).setMessage(c2349s0.getString(R.string.launcher_shortcuts_reset_confirmation, 5L)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.launcher_shortcuts_cleanup, new DialogInterfaceOnClickListenerC2341q0(c2349s0, button, linearLayout, c2949b, viewInflate, 0)).show();
            }
        });
        viewInflate.post(new RunnableC2345r0(0, this, viewInflate, button, linearLayout));
        viewInflate.findViewById(R.id.launcherShortcutsBackButton).setOnClickListener(new ViewOnClickListenerC0675c(16, this));
        return viewInflate;
    }

    /* JADX INFO: renamed from: t */
    public final int m3724t(int i10) {
        return Math.round(i10 * getResources().getDisplayMetrics().density);
    }
}
