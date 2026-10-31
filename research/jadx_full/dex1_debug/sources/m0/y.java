package m0;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import com.example.navistart.DPups;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class y extends l0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f3629b;
    public LinearLayout c;
    public TextView d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492953, viewGroup, false);
        Button button = (Button) viewInflate.findViewById(2131296606);
        this.f3629b = (TextView) viewInflate.findViewById(2131296608);
        this.c = (LinearLayout) viewInflate.findViewById(2131296609);
        this.d = (TextView) viewInflate.findViewById(2131296611);
        button.setOnClickListener(new androidx.navigation.c(14, this));
        v();
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        v();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int t(int i9) {
        return Math.round(i9 * requireContext().getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final DevicePolicyManager u() {
        return (DevicePolicyManager) requireContext().getSystemService(e0.m.h(new byte[]{-38, 58, 96, 45, 68, 107, 121, 49, -47, 51, ByteCompanionObject.MAX_VALUE, 39, 94}, new byte[]{-66, 95, 22, 68, 39, 14, 38, 65}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v() {
        Boolean boolValueOf;
        boolean z8;
        int i9;
        String string;
        String str;
        e0.s sVarJ = e0.m.j(requireContext());
        TextView textView = this.f3629b;
        boolean z9 = sVarJ.f1944a;
        textView.setText(z9 ? 2131951891 : 2131951892);
        if (z9 || (str = sVarJ.f1946f) == null) {
            int length = x.values().length;
            TextView textView2 = this.d;
            if (length == 0) {
                textView2.setText(2131951890);
            } else if (textView2.length() == 0) {
                this.d.setText("");
            }
        } else {
            this.d.setText(str);
        }
        Context contextRequireContext = requireContext();
        DevicePolicyManager devicePolicyManagerU = u();
        ComponentName componentName = new ComponentName(requireContext(), (Class<?>) DPups.class);
        this.c.removeAllViews();
        x[] xVarArrValues = x.values();
        int length2 = xVarArrValues.length;
        int i10 = 0;
        int i11 = 0;
        boolean z10 = false;
        while (i11 < length2) {
            x xVar = xVarArrValues[i11];
            String str2 = xVar.f3624b;
            String str3 = xVar.f3624b;
            String strTrim = str2.trim();
            Boolean boolValueOf2 = null;
            try {
                contextRequireContext.getPackageManager().getPackageInfo(strTrim, i10);
            } catch (PackageManager$NameNotFoundException unused) {
                if (devicePolicyManagerU != null) {
                    try {
                        boolValueOf = Boolean.valueOf(devicePolicyManagerU.isApplicationHidden(componentName, strTrim));
                    } catch (Exception unused2) {
                        boolValueOf = null;
                        if (boolValueOf != null) {
                        }
                        z8 = z9;
                        i9 = i10;
                        i11++;
                        i10 = i9;
                        z9 = z8;
                        devicePolicyManagerU = devicePolicyManagerU;
                        componentName = componentName;
                    }
                } else {
                    boolValueOf = null;
                }
                if (boolValueOf != null || !boolValueOf.booleanValue()) {
                    z8 = z9;
                    i9 = i10;
                }
                i11++;
                i10 = i9;
                z9 = z8;
                devicePolicyManagerU = devicePolicyManagerU;
                componentName = componentName;
            }
            LinearLayout linearLayout = this.c;
            if (devicePolicyManagerU != null) {
                try {
                    boolValueOf2 = Boolean.valueOf(devicePolicyManagerU.isApplicationHidden(componentName, str3.trim()));
                } catch (Exception unused3) {
                }
            }
            LinearLayout linearLayout2 = new LinearLayout(contextRequireContext);
            linearLayout2.setOrientation(1);
            linearLayout2.setBackgroundColor(contextRequireContext.getColor(2131035007));
            z8 = z9;
            linearLayout2.setPadding(t(12), t(10), t(12), t(10));
            LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
            linearLayout$LayoutParams.setMargins(0, 0, 0, t(10));
            linearLayout2.setLayoutParams(linearLayout$LayoutParams);
            TextView textView3 = new TextView(contextRequireContext);
            String str4 = xVar.c;
            if (str4 == null || str4.trim().isEmpty()) {
                str4 = str3;
            }
            textView3.setText(str4);
            textView3.setTextColor(contextRequireContext.getColor(2131035009));
            textView3.setTextSize(16.0f);
            textView3.setTypeface(textView3.getTypeface(), 1);
            linearLayout2.addView(textView3);
            TextView textView4 = new TextView(contextRequireContext);
            textView4.setText(str3.trim());
            textView4.setTextColor(contextRequireContext.getColor(2131035010));
            textView4.setTextSize(13.0f);
            textView4.setTextIsSelectable(true);
            linearLayout2.addView(textView4);
            TextView textView5 = new TextView(contextRequireContext);
            if (boolValueOf2 == null) {
                string = getString(2131951900, getString(2131951899));
            } else {
                string = getString(2131951900, getString(boolValueOf2.booleanValue() ? 2131951896 : 2131951897));
            }
            textView5.setText(string);
            textView5.setTextColor(contextRequireContext.getColor(2131035009));
            textView5.setTextSize(14.0f);
            LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, -2);
            i9 = 0;
            linearLayout$LayoutParams2.setMargins(0, t(6), 0, 0);
            textView5.setLayoutParams(linearLayout$LayoutParams2);
            linearLayout2.addView(textView5);
            Button button = new Button(contextRequireContext);
            LinearLayout$LayoutParams linearLayout$LayoutParams3 = new LinearLayout$LayoutParams(-1, t(56));
            linearLayout$LayoutParams3.setMargins(0, t(8), 0, 0);
            button.setLayoutParams(linearLayout$LayoutParams3);
            boolean z11 = z8 && boolValueOf2 != null;
            button.setEnabled(z11);
            button.setAlpha(z11 ? 1.0f : 0.55f);
            button.setText((boolValueOf2 == null || !boolValueOf2.booleanValue()) ? 2131951884 : 2131951886);
            button.setOnClickListener(new e0.n0(this, xVar, boolValueOf2, 2));
            linearLayout2.addView(button);
            linearLayout.addView(linearLayout2);
            z10 = true;
            i11++;
            i10 = i9;
            z9 = z8;
            devicePolicyManagerU = devicePolicyManagerU;
            componentName = componentName;
        }
        if (z10) {
            if (this.d.getText().toString().equals(getString(2131951893))) {
                this.d.setText("");
            }
        } else if (x.values().length > 0) {
            this.d.setText(2131951893);
        }
    }
}
