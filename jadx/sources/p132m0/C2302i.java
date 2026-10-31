package p132m0;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
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
import androidx.activity.RunnableC0131f;
import androidx.constraintlayout.core.utils.C0279a;
import androidx.fragment.app.FragmentActivity;
import com.example.navistart.DPups;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1440x1;
import p078h0.C1652b;
import p100j2.RunnableC1948d;
import p121l0.C2194a;
import p121l0.C2195b;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m0.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2302i extends C2195b {

    /* JADX INFO: renamed from: b */
    public Spinner f6128b;

    /* JADX INFO: renamed from: c */
    public Button f6129c;

    /* JADX INFO: renamed from: d */
    public TextView f6130d;

    /* JADX INFO: renamed from: e */
    public GradientDrawable f6131e;

    /* JADX INFO: renamed from: f */
    public final ArrayList f6132f = new ArrayList();

    /* JADX INFO: renamed from: g */
    public final Handler f6133g = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: h */
    public boolean f6134h;

    /* JADX INFO: renamed from: i */
    public boolean f6135i;

    /* JADX INFO: renamed from: j */
    public volatile int f6136j;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ApplicationInfo applicationInfo;
        final int i10 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_app_permission_grant, viewGroup, false);
        final int i11 = 1;
        this.f6136j++;
        Button button = (Button) viewInflate.findViewById(R.id.permissionGrantBackButton);
        this.f6128b = (Spinner) viewInflate.findViewById(R.id.permissionGrantAppSpinner);
        this.f6129c = (Button) viewInflate.findViewById(R.id.permissionGrantButton);
        this.f6130d = (TextView) viewInflate.findViewById(R.id.permissionGrantStatus);
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f6131e = gradientDrawable;
        gradientDrawable.setShape(1);
        this.f6131e.setStroke(Math.max(1, Math.round(getResources().getDisplayMetrics().density)), 1728053247);
        viewInflate.findViewById(R.id.permissionGrantAccessIndicator).setBackground(this.f6131e);
        button.setOnClickListener(new View.OnClickListener(this) { // from class: m0.a

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2302i f5921c;

            {
                this.f5921c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        C2302i c2302i = this.f5921c;
                        if (c2302i.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2302i.getParentFragment()).dismiss();
                        } else {
                            FragmentActivity activity = c2302i.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        }
                        break;
                    default:
                        C2302i c2302i2 = this.f5921c;
                        if (!c2302i2.f6135i) {
                            if (!c2302i2.f6134h) {
                                if (!c2302i2.m3691t()) {
                                    StringBuilder sb = new StringBuilder();
                                    C3277a c3277aM2745o = C1652b.m2745o();
                                    byte[] bArr = AbstractC1387m.f3322j;
                                    String[] strArr = AbstractC1406p3.f3368a;
                                    AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                                    AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                                    String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                                    C3277a c3277aM2745o2 = C1652b.m2745o();
                                    byte[] bArr2 = AbstractC1387m.f3318f;
                                    if (!(AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g) ? Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{3}, new byte[]{51, 59, 11, 110, 83, -16, -120, -111}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                                        c2302i2.m3692u();
                                    }
                                }
                                C2297h c2297h = (C2297h) c2302i2.f6128b.getSelectedItem();
                                if (c2297h == null) {
                                    AbstractC3656k.m5877w(R.string.app_permission_grant_no_apps, c2302i2.requireContext());
                                    break;
                                } else {
                                    DevicePolicyManager devicePolicyManager = (DevicePolicyManager) c2302i2.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-11, 32, 0, -112, -29, -29, 50, 85, -2, 41, 31, -102, -7}, new byte[]{-111, 69, 118, -7, ByteCompanionObject.MIN_VALUE, -122, 109, 37}));
                                    if (devicePolicyManager != null) {
                                        PackageManager packageManager = c2302i2.requireContext().getPackageManager();
                                        ComponentName componentName = new ComponentName(c2302i2.requireContext(), (Class<?>) DPups.class);
                                        try {
                                            String[] strArr2 = packageManager.getPackageInfo(c2297h.f6102b, 4096).requestedPermissions;
                                            if (strArr2 != null && strArr2.length != 0) {
                                                int i12 = 0;
                                                int i13 = 0;
                                                int i14 = 0;
                                                for (String str : strArr2) {
                                                    if (!TextUtils.isEmpty(str)) {
                                                        try {
                                                            if ((packageManager.getPermissionInfo(str, 0).protectionLevel & 15) == 1) {
                                                                try {
                                                                    if (devicePolicyManager.setPermissionGrantState(componentName, c2297h.f6102b, str, 1)) {
                                                                        i12++;
                                                                    } else {
                                                                        i13++;
                                                                    }
                                                                } catch (Exception unused) {
                                                                }
                                                            } else {
                                                                i14++;
                                                            }
                                                        } catch (Exception unused2) {
                                                        }
                                                    }
                                                }
                                                c2302i2.f6130d.setText(String.format(Locale.ROOT, c2302i2.getString(R.string.app_permission_grant_result), c2297h.f6101a, Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14)));
                                            }
                                            c2302i2.f6130d.setText(R.string.app_permission_grant_no_requested_permissions);
                                        } catch (Exception e) {
                                            c2302i2.f6130d.setText(e.getMessage() == null ? c2302i2.getString(R.string.app_permission_grant_error) : e.getMessage());
                                        }
                                        break;
                                    }
                                }
                                break;
                            } else {
                                C2297h c2297h2 = (C2297h) c2302i2.f6128b.getSelectedItem();
                                if (c2297h2 != null) {
                                    Context applicationContext = c2302i2.requireContext().getApplicationContext();
                                    int i15 = c2302i2.f6136j;
                                    c2302i2.f6135i = true;
                                    c2302i2.f6128b.setEnabled(false);
                                    c2302i2.m3692u();
                                    c2302i2.f6130d.setText(R.string.app_permission_grant_running);
                                    AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{54, ByteCompanionObject.MIN_VALUE, -13, 22, -106, -94, -83, -104, 4, -125, -22, 41, -99, -105, -78, -112, 25, -124}, new byte[]{119, -16, -125, 70, -13, -48, -64, -15})).execute(new RunnableC1948d(c2302i2, applicationContext, i15, c2297h2, 1));
                                    break;
                                }
                            }
                        }
                        break;
                }
            }
        });
        this.f6129c.setOnClickListener(new View.OnClickListener(this) { // from class: m0.a

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ C2302i f5921c;

            {
                this.f5921c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        C2302i c2302i = this.f5921c;
                        if (c2302i.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2302i.getParentFragment()).dismiss();
                        } else {
                            FragmentActivity activity = c2302i.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        }
                        break;
                    default:
                        C2302i c2302i2 = this.f5921c;
                        if (!c2302i2.f6135i) {
                            if (!c2302i2.f6134h) {
                                if (!c2302i2.m3691t()) {
                                    StringBuilder sb = new StringBuilder();
                                    C3277a c3277aM2745o = C1652b.m2745o();
                                    byte[] bArr = AbstractC1387m.f3322j;
                                    String[] strArr = AbstractC1406p3.f3368a;
                                    AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                                    AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                                    String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                                    C3277a c3277aM2745o2 = C1652b.m2745o();
                                    byte[] bArr2 = AbstractC1387m.f3318f;
                                    if (!(AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g) ? Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{3}, new byte[]{51, 59, 11, 110, 83, -16, -120, -111}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                                        c2302i2.m3692u();
                                    }
                                }
                                C2297h c2297h = (C2297h) c2302i2.f6128b.getSelectedItem();
                                if (c2297h == null) {
                                    AbstractC3656k.m5877w(R.string.app_permission_grant_no_apps, c2302i2.requireContext());
                                    break;
                                } else {
                                    DevicePolicyManager devicePolicyManager = (DevicePolicyManager) c2302i2.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-11, 32, 0, -112, -29, -29, 50, 85, -2, 41, 31, -102, -7}, new byte[]{-111, 69, 118, -7, ByteCompanionObject.MIN_VALUE, -122, 109, 37}));
                                    if (devicePolicyManager != null) {
                                        PackageManager packageManager = c2302i2.requireContext().getPackageManager();
                                        ComponentName componentName = new ComponentName(c2302i2.requireContext(), (Class<?>) DPups.class);
                                        try {
                                            String[] strArr2 = packageManager.getPackageInfo(c2297h.f6102b, 4096).requestedPermissions;
                                            if (strArr2 != null && strArr2.length != 0) {
                                                int i12 = 0;
                                                int i13 = 0;
                                                int i14 = 0;
                                                for (String str : strArr2) {
                                                    if (!TextUtils.isEmpty(str)) {
                                                        try {
                                                            if ((packageManager.getPermissionInfo(str, 0).protectionLevel & 15) == 1) {
                                                                try {
                                                                    if (devicePolicyManager.setPermissionGrantState(componentName, c2297h.f6102b, str, 1)) {
                                                                        i12++;
                                                                    } else {
                                                                        i13++;
                                                                    }
                                                                } catch (Exception unused) {
                                                                }
                                                            } else {
                                                                i14++;
                                                            }
                                                        } catch (Exception unused2) {
                                                        }
                                                    }
                                                }
                                                c2302i2.f6130d.setText(String.format(Locale.ROOT, c2302i2.getString(R.string.app_permission_grant_result), c2297h.f6101a, Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14)));
                                            }
                                            c2302i2.f6130d.setText(R.string.app_permission_grant_no_requested_permissions);
                                        } catch (Exception e) {
                                            c2302i2.f6130d.setText(e.getMessage() == null ? c2302i2.getString(R.string.app_permission_grant_error) : e.getMessage());
                                        }
                                        break;
                                    }
                                }
                                break;
                            } else {
                                C2297h c2297h2 = (C2297h) c2302i2.f6128b.getSelectedItem();
                                if (c2297h2 != null) {
                                    Context applicationContext = c2302i2.requireContext().getApplicationContext();
                                    int i15 = c2302i2.f6136j;
                                    c2302i2.f6135i = true;
                                    c2302i2.f6128b.setEnabled(false);
                                    c2302i2.m3692u();
                                    c2302i2.f6130d.setText(R.string.app_permission_grant_running);
                                    AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{54, ByteCompanionObject.MIN_VALUE, -13, 22, -106, -94, -83, -104, 4, -125, -22, 41, -99, -105, -78, -112, 25, -124}, new byte[]{119, -16, -125, 70, -13, -48, -64, -15})).execute(new RunnableC1948d(c2302i2, applicationContext, i15, c2297h2, 1));
                                    break;
                                }
                            }
                        }
                        break;
                }
            }
        });
        PackageManager packageManager = requireContext().getPackageManager();
        ArrayList arrayList = this.f6132f;
        arrayList.clear();
        try {
            for (PackageInfo packageInfo : packageManager.getInstalledPackages(4096)) {
                if (packageInfo != null && (applicationInfo = packageInfo.applicationInfo) != null && (applicationInfo.flags & 1) == 0 && !TextUtils.equals(packageInfo.packageName, requireContext().getPackageName())) {
                    CharSequence charSequenceLoadLabel = applicationInfo.loadLabel(packageManager);
                    arrayList.add(new C2297h(charSequenceLoadLabel == null ? packageInfo.packageName : charSequenceLoadLabel.toString(), packageInfo.packageName));
                }
            }
        } catch (Exception unused) {
        }
        Collections.sort(arrayList, new C0279a(7));
        this.f6128b.setAdapter((SpinnerAdapter) new C2292g(this, requireContext()));
        m3692u();
        Context applicationContext = requireContext().getApplicationContext();
        int i12 = this.f6136j;
        this.f6135i = true;
        m3692u();
        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{84, -35, -33, -118, -77, 109, 20, 94, 102, -34, -58, -75, -72, 88, 11, 86, 123, -39}, new byte[]{21, -83, -81, -38, -42, 31, 121, 55})).execute(new RunnableC0131f(this, applicationContext, i12, 4));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f6136j++;
        this.f6135i = false;
        this.f6134h = false;
        this.f6128b = null;
        this.f6129c = null;
        this.f6130d = null;
        this.f6131e = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        m3692u();
    }

    /* JADX INFO: renamed from: t */
    public final boolean m3691t() {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-34, 28, -92, -7, 30, -110, -109, 35, -43, 21, -69, -13, 4}, new byte[]{-70, 121, -46, -112, 125, -9, -52, 83}));
        return devicePolicyManager != null && devicePolicyManager.isDeviceOwnerApp(requireContext().getPackageName());
    }

    /* JADX INFO: renamed from: u */
    public final void m3692u() {
        int i10;
        boolean zM3691t = m3691t();
        GradientDrawable gradientDrawable = this.f6131e;
        if (this.f6134h) {
            i10 = -11751600;
        } else {
            i10 = zM3691t ? -16121 : -1092784;
        }
        gradientDrawable.setColor(i10);
        if (this.f6135i) {
            this.f6129c.setEnabled(false);
            return;
        }
        if (!this.f6134h && !zM3691t) {
            this.f6129c.setEnabled(false);
            this.f6129c.setAlpha(0.55f);
            this.f6129c.setText(R.string.app_permission_grant_no_device_owner);
            this.f6130d.setText(R.string.app_permission_grant_no_device_owner);
            return;
        }
        boolean zIsEmpty = this.f6132f.isEmpty();
        Button button = this.f6129c;
        if (zIsEmpty) {
            button.setEnabled(false);
            this.f6129c.setAlpha(0.55f);
            this.f6129c.setText(R.string.app_permission_grant_no_apps);
            this.f6130d.setText(R.string.app_permission_grant_no_apps);
            return;
        }
        button.setEnabled(true);
        this.f6129c.setAlpha(1.0f);
        this.f6129c.setText(R.string.app_permission_grant_all);
        this.f6130d.setText("");
    }
}
