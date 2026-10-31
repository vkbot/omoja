package p047e0;

import android.app.admin.DevicePolicyManager;
import android.app.role.RoleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.transition.AbstractC0805d;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.DPups;
import com.example.navistart.MainActivity;
import com.example.navistart.R;
import com.example.navistart.cores.InterC;
import com.example.navistart.cores.Saa;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.protobuf.AbstractC1178q;
import org.apache.commons.p161io.FilenameUtils;
import p006a5.C0023h;
import p051e4.C1482o;
import p058f1.C1532e;
import p078h0.C1652b;
import p132m0.C2300h2;
import p132m0.C2305i2;
import p132m0.C2310j2;
import p132m0.C2315k2;
import p132m0.C2372y;
import p132m0.EnumC2368x;
import p190s1.AbstractC3134a1;
import p198t1.C3227e;
import p206u0.C3277a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e0.n0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC1393n0 implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3335b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3336c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f3337d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f3338e;

    public /* synthetic */ ViewOnClickListenerC1393n0(AlertDialog alertDialog, ContextThemeWrapper contextThemeWrapper, AppCompatEditText appCompatEditText) {
        this.f3335b = 4;
        this.f3336c = appCompatEditText;
        this.f3338e = contextThemeWrapper;
        this.f3337d = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RoleManager roleManagerM888a;
        Boolean boolValueOf;
        Boolean boolValueOf2;
        double d;
        Boolean boolValueOf3 = null;
        int i10 = 2;
        boolean z9 = false;
        switch (this.f3335b) {
            case 0:
                MainActivity mainActivity = (MainActivity) this.f3336c;
                AlertDialog alertDialog = (AlertDialog) this.f3337d;
                MaterialSwitch materialSwitch = (MaterialSwitch) this.f3338e;
                String str = MainActivity.f1288e1;
                alertDialog.dismiss();
                String str2 = AbstractC3134a1.f8964a;
                String packageName = mainActivity.getPackageName();
                String str3 = AbstractC3134a1.f8964a;
                if (mainActivity.getPackageManager().getComponentEnabledSetting(new ComponentName(packageName, str3)) != 1) {
                    mainActivity.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity.getPackageName(), str3), 1, 1);
                    materialSwitch.setChecked(true);
                }
                if (Build.VERSION.SDK_INT >= 29 && (roleManagerM888a = AbstractC0805d.m888a(mainActivity.getSystemService(AbstractC0805d.m894g()))) != null && roleManagerM888a.isRoleAvailable(AbstractC1387m.m2421h(new byte[]{7, 12, -63, 10, -7, 37, 110, -43, 7, 18, -43, 86, -28, 35, 102, -98, 72, 42, -22, 53, -45}, new byte[]{102, 98, -91, 120, -106, 76, 10, -5}))) {
                    if (roleManagerM888a.isRoleHeld(AbstractC1387m.m2421h(new byte[]{49, -13, 117, 87, -59, 126, -50, -35, 49, -19, 97, 11, -40, 120, -58, -106, 126, -43, 94, 104, -17}, new byte[]{80, -99, 17, 37, -86, 23, -86, -13}))) {
                        AbstractC3656k.m5878x(mainActivity, mainActivity.getText(R.string.launcher_already_default));
                        break;
                    } else {
                        Intent intentCreateRequestRoleIntent = roleManagerM888a.createRequestRoleIntent(AbstractC1387m.m2421h(new byte[]{-103, -91, -106, 80, 9, 12, -117, 21, -103, -69, -126, 12, 20, 10, -125, 94, -42, -125, -67, 111, 35}, new byte[]{-8, -53, -14, 34, 102, 101, -17, 59}));
                        if (intentCreateRequestRoleIntent.resolveActivity(mainActivity.getPackageManager()) != null) {
                            try {
                                mainActivity.startActivityForResult(intentCreateRequestRoleIntent, 2401);
                                break;
                            } catch (RuntimeException unused) {
                            }
                        }
                    }
                }
                Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{-8, -4, -120, -34, 105, -100, -117, -69, -22, -9, -104, -40, 111, -101, -120, -26, -73, -38, -93, -31, 67, -86, -68, -48, -51, -58, -91, -30, 65, -90}, new byte[]{-103, -110, -20, -84, 6, -11, -17, -107}));
                if (intent.resolveActivity(mainActivity.getPackageManager()) != null) {
                    try {
                        mainActivity.startActivity(intent);
                        break;
                    } catch (RuntimeException unused2) {
                    }
                }
                AbstractC3656k.m5878x(mainActivity, mainActivity.getText(R.string.launcher_android_unavailable));
                mainActivity.m1442O(materialSwitch);
                break;
            case 1:
                C1532e c1532e = (C1532e) this.f3336c;
                c1532e.m2618O(Boolean.valueOf(!c1532e.f3777m.optBoolean((String) this.f3338e, false)), (String) this.f3337d);
                break;
            case 2:
                C2372y c2372y = (C2372y) this.f3336c;
                EnumC2368x enumC2368x = (EnumC2368x) this.f3337d;
                String str4 = enumC2368x.f6408b;
                Boolean bool = (Boolean) this.f3338e;
                boolean z10 = bool == null || !bool.booleanValue();
                Context contextRequireContext = c2372y.requireContext();
                if (!AbstractC1387m.m2423j(contextRequireContext).f3399a) {
                    c2372y.m3742v();
                } else {
                    DevicePolicyManager devicePolicyManagerM3741u = c2372y.m3741u();
                    if (devicePolicyManagerM3741u != null) {
                        ComponentName componentName = new ComponentName(c2372y.requireContext(), (Class<?>) DPups.class);
                        String strTrim = str4.trim();
                        try {
                            try {
                                contextRequireContext.getPackageManager().getPackageInfo(strTrim, 0);
                            } catch (PackageManager.NameNotFoundException unused3) {
                                boolValueOf = Boolean.valueOf(devicePolicyManagerM3741u.isApplicationHidden(componentName, strTrim));
                                if (boolValueOf != null) {
                                }
                                c2372y.f6417d.setText(R.string.car_package_toggle_packages_not_installed);
                                c2372y.m3742v();
                                return;
                            }
                        } catch (Exception unused4) {
                            boolValueOf = null;
                            if (boolValueOf != null || !boolValueOf.booleanValue()) {
                                c2372y.f6417d.setText(R.string.car_package_toggle_packages_not_installed);
                                c2372y.m3742v();
                                return;
                            }
                        }
                        try {
                            boolean applicationHidden = devicePolicyManagerM3741u.setApplicationHidden(componentName, strTrim, z10);
                            try {
                                boolValueOf3 = Boolean.valueOf(devicePolicyManagerM3741u.isApplicationHidden(componentName, strTrim));
                                break;
                            } catch (Exception unused5) {
                            }
                            if (boolValueOf3 == null) {
                                z9 = applicationHidden;
                            } else if (boolValueOf3.booleanValue() == z10) {
                                z9 = true;
                            }
                            TextView textView = c2372y.f6417d;
                            int i11 = z9 ? R.string.car_package_toggle_result_single_ok : R.string.car_package_toggle_result_single_error;
                            String str5 = enumC2368x.f6409c;
                            if (str5 != null && !str5.trim().isEmpty()) {
                                str4 = str5;
                            }
                            textView.setText(c2372y.getString(i11, str4));
                        } catch (Exception e) {
                            c2372y.f6417d.setText(e.getClass().getSimpleName() + AbstractC1387m.m2421h(new byte[]{82, -83}, new byte[]{104, -115, -86, -70, -22, 19, 99, 104}) + e.getMessage());
                        }
                        c2372y.m3742v();
                    } else {
                        c2372y.f6417d.setText(R.string.car_package_toggle_error);
                    }
                }
                break;
            case 3:
                C2305i2 c2305i2 = (C2305i2) this.f3336c;
                C2310j2 c2310j2 = (C2310j2) this.f3337d;
                C2300h2 c2300h2 = (C2300h2) this.f3338e;
                C2315k2 c2315k2 = c2305i2.f6156a;
                C1482o c1482o = c2315k2.f6188c;
                StringBuilder sb = new StringBuilder();
                C3277a c3277aM2745o = C1652b.m2745o();
                byte[] bArr = AbstractC1387m.f3322j;
                String[] strArr = AbstractC1406p3.f3368a;
                AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                C3277a c3277aM2745o2 = C1652b.m2745o();
                byte[] bArr2 = AbstractC1387m.f3318f;
                if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
                    C1652b.m2734a();
                    boolValueOf2 = Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-22}, new byte[]{-38, -2, -50, -9, -109, -45, -66, -67}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
                } else {
                    boolValueOf2 = Boolean.FALSE;
                }
                if (boolValueOf2.booleanValue()) {
                    try {
                        boolean z11 = c2310j2.f6171a;
                        C0023h c0023h = c2310j2.f6172b;
                        if (z11) {
                            InterC interCM2755j = C1652b.m2734a().m2755j();
                            C1482o c1482o2 = c2310j2.f6173c;
                            interCM2755j.ssa(new Saa((String) ((C0023h) c1482o2.f3599c).f82d, (String) ((C0023h) c1482o2.f3600d).f82d, c1482o2.f3597a, c1482o2.f3598b));
                        } else if (((C0023h) c1482o.f3599c) == null) {
                            if (!((String) c0023h.f82d).equals(c2315k2.f6187b)) {
                                c2315k2.f6187b = (String) c0023h.f82d;
                                c1482o.f3599c = c0023h;
                                c2300h2.f6118c.setBackground(c2315k2.getResources().getDrawable(R.drawable.bg_badge_circle));
                            }
                        } else if (((C0023h) c1482o.f3600d) == null) {
                            if (((String) c0023h.f82d).equals(c2315k2.f6187b)) {
                                c1482o.f3599c = null;
                                c2315k2.f6187b = null;
                                c2300h2.f6118c.setBackground(null);
                            } else {
                                c1482o.f3600d = c0023h;
                                C1652b.m2734a().m2755j().ssa(new Saa((String) ((C0023h) c1482o.f3599c).f82d, (String) ((C0023h) c1482o.f3600d).f82d, c1482o.f3597a, c1482o.f3598b));
                                C2315k2.m3702u(c2315k2, c1482o);
                                C2315k2.m3701t(c2315k2, c1482o);
                                c1482o.f3599c = null;
                                c1482o.f3600d = null;
                                c2315k2.f6187b = null;
                                c2315k2.f6190e.notifyDataSetChanged();
                            }
                        }
                    } catch (Exception unused6) {
                        return;
                    }
                }
                break;
            default:
                AppCompatEditText appCompatEditText = (AppCompatEditText) this.f3336c;
                ContextThemeWrapper contextThemeWrapper = (ContextThemeWrapper) this.f3338e;
                AlertDialog alertDialog2 = (AlertDialog) this.f3337d;
                try {
                    d = Double.parseDouble(appCompatEditText.getText().toString().trim().replace(',', FilenameUtils.EXTENSION_SEPARATOR));
                } catch (NumberFormatException unused7) {
                    d = Double.NaN;
                }
                if (Double.isFinite(d) && d >= 0.0d && d <= 300.0d) {
                    C1652b.m2745o().saveString(C3227e.f9443g, String.valueOf(d));
                    AllWidgetServices allWidgetServices = AllWidgetServices.f1208g;
                    if (allWidgetServices != null) {
                        allWidgetServices.f1211b.post(new RunnableC1337c(allWidgetServices, i10));
                    }
                    alertDialog2.dismiss();
                } else {
                    appCompatEditText.setError(contextThemeWrapper.getString(R.string.fuel_widget_capacity_error));
                }
                break;
        }
    }

    public /* synthetic */ ViewOnClickListenerC1393n0(Object obj, Object obj2, Object obj3, int i10) {
        this.f3335b = i10;
        this.f3336c = obj;
        this.f3337d = obj2;
        this.f3338e = obj3;
    }
}
