package m0;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class i extends l0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Spinner f3457b;
    public Button c;
    public TextView d;
    public GradientDrawable e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f3458f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Handler f3459g = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3460h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3461i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile int f3462j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ApplicationInfo applicationInfo;
        View viewInflate = layoutInflater.inflate(2131492949, viewGroup, false);
        this.f3462j++;
        Button button = (Button) viewInflate.findViewById(2131297203);
        this.f3457b = (Spinner) viewInflate.findViewById(2131297202);
        this.c = (Button) viewInflate.findViewById(2131297204);
        this.d = (TextView) viewInflate.findViewById(2131297205);
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.e = gradientDrawable;
        gradientDrawable.setShape(1);
        this.e.setStroke(Math.max(1, Math.round(getResources().getDisplayMetrics().density)), 1728053247);
        viewInflate.findViewById(2131297201).setBackground(this.e);
        button.setOnClickListener(new a(this, 0));
        this.c.setOnClickListener(new a(this, 1));
        PackageManager packageManager = requireContext().getPackageManager();
        ArrayList arrayList = this.f3458f;
        arrayList.clear();
        try {
            for (PackageInfo packageInfo : packageManager.getInstalledPackages(4096)) {
                if (packageInfo != null && (applicationInfo = packageInfo.applicationInfo) != null && (applicationInfo.flags & 1) == 0 && !TextUtils.equals(packageInfo.packageName, requireContext().getPackageName())) {
                    CharSequence charSequenceLoadLabel = applicationInfo.loadLabel(packageManager);
                    arrayList.add(new h(charSequenceLoadLabel == null ? packageInfo.packageName : charSequenceLoadLabel.toString(), packageInfo.packageName));
                }
            }
        } catch (Exception unused) {
        }
        Collections.sort(arrayList, new androidx.constraintlayout.core.utils.a(7));
        this.f3457b.setAdapter((SpinnerAdapter) new g(this, requireContext()));
        u();
        Context applicationContext = requireContext().getApplicationContext();
        int i9 = this.f3462j;
        this.f3461i = true;
        u();
        e0.w.c(-1, e0.m.h(new byte[]{84, -35, -33, -118, -77, 109, 20, 94, 102, -34, -58, -75, -72, 88, 11, 86, 123, -39}, new byte[]{21, -83, -81, -38, -42, 31, 121, 55})).execute(new androidx.activity.f(this, applicationContext, i9, 4));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f3462j++;
        this.f3461i = false;
        this.f3460h = false;
        this.f3457b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        super.onDestroyView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        u();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean t() {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) requireContext().getSystemService(e0.m.h(new byte[]{-34, 28, -92, -7, 30, -110, -109, 35, -43, 21, -69, -13, 4}, new byte[]{-70, 121, -46, -112, 125, -9, -52, 83}));
        return devicePolicyManager != null && devicePolicyManager.isDeviceOwnerApp(requireContext().getPackageName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u() {
        int i9;
        boolean zT = t();
        GradientDrawable gradientDrawable = this.e;
        if (this.f3460h) {
            i9 = -11751600;
        } else {
            i9 = zT ? -16121 : -1092784;
        }
        gradientDrawable.setColor(i9);
        if (this.f3461i) {
            this.c.setEnabled(false);
            return;
        }
        if (!this.f3460h && !zT) {
            this.c.setEnabled(false);
            this.c.setAlpha(0.55f);
            this.c.setText(2131951797);
            this.d.setText(2131951797);
            return;
        }
        boolean zIsEmpty = this.f3458f.isEmpty();
        Button button = this.c;
        if (zIsEmpty) {
            button.setEnabled(false);
            this.c.setAlpha(0.55f);
            this.c.setText(2131951796);
            this.d.setText(2131951796);
            return;
        }
        button.setEnabled(true);
        this.c.setAlpha(1.0f);
        this.c.setText(2131951790);
        this.d.setText("");
    }
}
