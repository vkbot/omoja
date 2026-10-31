package p132m0;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.DPups;
import com.example.navistart.R;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p047e0.C1417s;
import p047e0.ViewOnClickListenerC1393n0;
import p121l0.C2195b;

/* JADX INFO: renamed from: m0.y */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2372y extends C2195b {

    /* JADX INFO: renamed from: b */
    public TextView f6415b;

    /* JADX INFO: renamed from: c */
    public LinearLayout f6416c;

    /* JADX INFO: renamed from: d */
    public TextView f6417d;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_car_package_toggle, viewGroup, false);
        Button button = (Button) viewInflate.findViewById(R.id.carPackageToggleBackButton);
        this.f6415b = (TextView) viewInflate.findViewById(R.id.carPackageToggleOwnerStatus);
        this.f6416c = (LinearLayout) viewInflate.findViewById(R.id.carPackageTogglePackageContainer);
        this.f6417d = (TextView) viewInflate.findViewById(R.id.carPackageToggleResult);
        button.setOnClickListener(new ViewOnClickListenerC0675c(14, this));
        m3742v();
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        m3742v();
    }

    /* JADX INFO: renamed from: t */
    public final int m3740t(int i10) {
        return Math.round(i10 * requireContext().getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: u */
    public final DevicePolicyManager m3741u() {
        return (DevicePolicyManager) requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-38, 58, 96, 45, 68, 107, 121, 49, -47, 51, ByteCompanionObject.MAX_VALUE, 39, 94}, new byte[]{-66, 95, 22, 68, 39, 14, 38, 65}));
    }

    /* JADX INFO: renamed from: v */
    public final void m3742v() {
        Boolean boolValueOf;
        boolean z9;
        int i10;
        String string;
        String str;
        C1417s c1417sM2423j = AbstractC1387m.m2423j(requireContext());
        TextView textView = this.f6415b;
        boolean z10 = c1417sM2423j.f3399a;
        textView.setText(z10 ? R.string.car_package_toggle_owner_ok : R.string.car_package_toggle_owner_required);
        if (z10 || (str = c1417sM2423j.f3404f) == null) {
            int length = EnumC2368x.values().length;
            TextView textView2 = this.f6417d;
            if (length == 0) {
                textView2.setText(R.string.car_package_toggle_no_packages);
            } else if (textView2.length() == 0) {
                this.f6417d.setText("");
            }
        } else {
            this.f6417d.setText(str);
        }
        Context contextRequireContext = requireContext();
        DevicePolicyManager devicePolicyManagerM3741u = m3741u();
        ComponentName componentName = new ComponentName(requireContext(), (Class<?>) DPups.class);
        this.f6416c.removeAllViews();
        EnumC2368x[] enumC2368xArrValues = EnumC2368x.values();
        int length2 = enumC2368xArrValues.length;
        int i11 = 0;
        int i12 = 0;
        boolean z11 = false;
        while (i12 < length2) {
            EnumC2368x enumC2368x = enumC2368xArrValues[i12];
            String str2 = enumC2368x.f6408b;
            String str3 = enumC2368x.f6408b;
            String strTrim = str2.trim();
            Boolean boolValueOf2 = null;
            try {
                contextRequireContext.getPackageManager().getPackageInfo(strTrim, i11);
            } catch (PackageManager.NameNotFoundException unused) {
                if (devicePolicyManagerM3741u != null) {
                    try {
                        boolValueOf = Boolean.valueOf(devicePolicyManagerM3741u.isApplicationHidden(componentName, strTrim));
                    } catch (Exception unused2) {
                        boolValueOf = null;
                        if (boolValueOf != null) {
                        }
                        z9 = z10;
                        i10 = i11;
                        i12++;
                        i11 = i10;
                        z10 = z9;
                        devicePolicyManagerM3741u = devicePolicyManagerM3741u;
                        componentName = componentName;
                    }
                } else {
                    boolValueOf = null;
                }
                if (boolValueOf != null || !boolValueOf.booleanValue()) {
                    z9 = z10;
                    i10 = i11;
                }
                i12++;
                i11 = i10;
                z10 = z9;
                devicePolicyManagerM3741u = devicePolicyManagerM3741u;
                componentName = componentName;
            }
            LinearLayout linearLayout = this.f6416c;
            if (devicePolicyManagerM3741u != null) {
                try {
                    boolValueOf2 = Boolean.valueOf(devicePolicyManagerM3741u.isApplicationHidden(componentName, str3.trim()));
                } catch (Exception unused3) {
                }
            }
            LinearLayout linearLayout2 = new LinearLayout(contextRequireContext);
            linearLayout2.setOrientation(1);
            linearLayout2.setBackgroundColor(contextRequireContext.getColor(R.color.modern_surface));
            z9 = z10;
            linearLayout2.setPadding(m3740t(12), m3740t(10), m3740t(12), m3740t(10));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, 0, 0, m3740t(10));
            linearLayout2.setLayoutParams(layoutParams);
            TextView textView3 = new TextView(contextRequireContext);
            String str4 = enumC2368x.f6409c;
            if (str4 == null || str4.trim().isEmpty()) {
                str4 = str3;
            }
            textView3.setText(str4);
            textView3.setTextColor(contextRequireContext.getColor(R.color.modern_text));
            textView3.setTextSize(16.0f);
            textView3.setTypeface(textView3.getTypeface(), 1);
            linearLayout2.addView(textView3);
            TextView textView4 = new TextView(contextRequireContext);
            textView4.setText(str3.trim());
            textView4.setTextColor(contextRequireContext.getColor(R.color.modern_text_secondary));
            textView4.setTextSize(13.0f);
            textView4.setTextIsSelectable(true);
            linearLayout2.addView(textView4);
            TextView textView5 = new TextView(contextRequireContext);
            if (boolValueOf2 == null) {
                string = getString(R.string.car_package_toggle_status_format, getString(R.string.car_package_toggle_state_unknown));
            } else {
                string = getString(R.string.car_package_toggle_status_format, getString(boolValueOf2.booleanValue() ? R.string.car_package_toggle_state_disabled : R.string.car_package_toggle_state_enabled));
            }
            textView5.setText(string);
            textView5.setTextColor(contextRequireContext.getColor(R.color.modern_text));
            textView5.setTextSize(14.0f);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            i10 = 0;
            layoutParams2.setMargins(0, m3740t(6), 0, 0);
            textView5.setLayoutParams(layoutParams2);
            linearLayout2.addView(textView5);
            Button button = new Button(contextRequireContext);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, m3740t(56));
            layoutParams3.setMargins(0, m3740t(8), 0, 0);
            button.setLayoutParams(layoutParams3);
            boolean z12 = z9 && boolValueOf2 != null;
            button.setEnabled(z12);
            button.setAlpha(z12 ? 1.0f : 0.55f);
            button.setText((boolValueOf2 == null || !boolValueOf2.booleanValue()) ? R.string.car_package_toggle_disable_one_button : R.string.car_package_toggle_enable_one_button);
            button.setOnClickListener(new ViewOnClickListenerC1393n0(this, enumC2368x, boolValueOf2, 2));
            linearLayout2.addView(button);
            linearLayout.addView(linearLayout2);
            z11 = true;
            i12++;
            i11 = i10;
            z10 = z9;
            devicePolicyManagerM3741u = devicePolicyManagerM3741u;
            componentName = componentName;
        }
        if (z11) {
            if (this.f6417d.getText().toString().equals(getString(R.string.car_package_toggle_packages_not_installed))) {
                this.f6417d.setText("");
            }
        } else if (EnumC2368x.values().length > 0) {
            this.f6417d.setText(R.string.car_package_toggle_packages_not_installed);
        }
    }
}
