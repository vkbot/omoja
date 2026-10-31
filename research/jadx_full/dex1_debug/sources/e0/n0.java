package e0;

import android.app.admin.DevicePolicyManager;
import android.app.role.RoleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Build$VERSION;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatEditText;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.DPups;
import com.example.navistart.MainActivity;
import com.example.navistart.cores.InterC;
import com.example.navistart.cores.Saa;
import com.google.android.material.materialswitch.MaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class n0 implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1904b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ n0(AlertDialog alertDialog, ContextThemeWrapper contextThemeWrapper, AppCompatEditText appCompatEditText) {
        this.f1904b = 4;
        this.c = appCompatEditText;
        this.e = contextThemeWrapper;
        this.d = alertDialog;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        RoleManager roleManagerA;
        Boolean boolValueOf;
        Boolean boolValueOf2;
        double d;
        Boolean boolValueOf3 = null;
        boolean z8 = false;
        switch (this.f1904b) {
            case 0:
                MainActivity mainActivity = (MainActivity) this.c;
                AlertDialog alertDialog = (AlertDialog) this.d;
                MaterialSwitch materialSwitch = (MaterialSwitch) this.e;
                String str = MainActivity.f688e1;
                alertDialog.dismiss();
                String str2 = s1.a1.f5051a;
                String packageName = mainActivity.getPackageName();
                String str3 = s1.a1.f5051a;
                if (mainActivity.getPackageManager().getComponentEnabledSetting(new ComponentName(packageName, str3)) != 1) {
                    mainActivity.getPackageManager().setComponentEnabledSetting(new ComponentName(mainActivity.getPackageName(), str3), 1, 1);
                    materialSwitch.setChecked(true);
                }
                if (Build$VERSION.SDK_INT >= 29 && (roleManagerA = androidx.transition.d.a(mainActivity.getSystemService(androidx.transition.d.g()))) != null && androidx.transition.d.p(roleManagerA, m.h(new byte[]{7, 12, -63, 10, -7, 37, 110, -43, 7, 18, -43, 86, -28, 35, 102, -98, 72, 42, -22, 53, -45}, new byte[]{102, 98, -91, 120, -106, 76, 10, -5}))) {
                    if (androidx.transition.d.s(roleManagerA, m.h(new byte[]{49, -13, 117, 87, -59, 126, -50, -35, 49, -19, 97, 11, -40, 120, -58, -106, 126, -43, 94, 104, -17}, new byte[]{80, -99, 17, 37, -86, 23, -86, -13}))) {
                        y5.k.x(mainActivity, mainActivity.getText(2131952085));
                        break;
                    } else {
                        Intent intentB = androidx.transition.d.b(roleManagerA, m.h(new byte[]{-103, -91, -106, 80, 9, 12, -117, 21, -103, -69, -126, 12, 20, 10, -125, 94, -42, -125, -67, 111, 35}, new byte[]{-8, -53, -14, 34, 102, 101, -17, 59}));
                        if (intentB.resolveActivity(mainActivity.getPackageManager()) != null) {
                            try {
                                mainActivity.startActivityForResult(intentB, 2401);
                                break;
                            } catch (RuntimeException unused) {
                            }
                        }
                    }
                }
                Intent intent = new Intent(m.h(new byte[]{-8, -4, -120, -34, 105, -100, -117, -69, -22, -9, -104, -40, 111, -101, -120, -26, -73, -38, -93, -31, 67, -86, -68, -48, -51, -58, -91, -30, 65, -90}, new byte[]{-103, -110, -20, -84, 6, -11, -17, -107}));
                if (intent.resolveActivity(mainActivity.getPackageManager()) != null) {
                    try {
                        mainActivity.startActivity(intent);
                        break;
                    } catch (RuntimeException unused2) {
                    }
                }
                y5.k.x(mainActivity, mainActivity.getText(2131952086));
                mainActivity.O(materialSwitch);
                break;
            case 1:
                f1.e eVar = (f1.e) this.c;
                eVar.O(Boolean.valueOf(!eVar.f2176m.optBoolean((String) this.e, false)), (String) this.d);
                break;
            case 2:
                m0.y yVar = (m0.y) this.c;
                m0.x xVar = (m0.x) this.d;
                String str4 = xVar.f3624b;
                Boolean bool = (Boolean) this.e;
                boolean z9 = bool == null || !bool.booleanValue();
                Context contextRequireContext = yVar.requireContext();
                if (!m.j(contextRequireContext).f1944a) {
                    yVar.v();
                } else {
                    DevicePolicyManager devicePolicyManagerU = yVar.u();
                    if (devicePolicyManagerU != null) {
                        ComponentName componentName = new ComponentName(yVar.requireContext(), (Class<?>) DPups.class);
                        String strTrim = str4.trim();
                        try {
                            try {
                                contextRequireContext.getPackageManager().getPackageInfo(strTrim, 0);
                            } catch (Exception unused3) {
                                boolValueOf = null;
                                if (boolValueOf != null || !boolValueOf.booleanValue()) {
                                    yVar.d.setText(2131951893);
                                    yVar.v();
                                    return;
                                }
                            }
                        } catch (PackageManager$NameNotFoundException unused4) {
                            boolValueOf = Boolean.valueOf(devicePolicyManagerU.isApplicationHidden(componentName, strTrim));
                            if (boolValueOf != null) {
                            }
                            yVar.d.setText(2131951893);
                            yVar.v();
                            return;
                        }
                        try {
                            boolean applicationHidden = devicePolicyManagerU.setApplicationHidden(componentName, strTrim, z9);
                            try {
                                boolValueOf3 = Boolean.valueOf(devicePolicyManagerU.isApplicationHidden(componentName, strTrim));
                                break;
                            } catch (Exception unused5) {
                            }
                            if (boolValueOf3 == null) {
                                z8 = applicationHidden;
                            } else if (boolValueOf3.booleanValue() == z9) {
                                z8 = true;
                            }
                            TextView textView = yVar.d;
                            int i9 = z8 ? 2131951895 : 2131951894;
                            String str5 = xVar.c;
                            if (str5 != null && !str5.trim().isEmpty()) {
                                str4 = str5;
                            }
                            textView.setText(yVar.getString(i9, str4));
                        } catch (Exception e) {
                            yVar.d.setText(e.getClass().getSimpleName() + m.h(new byte[]{82, -83}, new byte[]{104, -115, -86, -70, -22, 19, 99, 104}) + e.getMessage());
                        }
                        yVar.v();
                    } else {
                        yVar.d.setText(2131951888);
                    }
                }
                break;
            case 3:
                m0.i2 i2Var = (m0.i2) this.c;
                m0.j2 j2Var = (m0.j2) this.d;
                m0.h2 h2Var = (m0.h2) this.e;
                m0.k2 k2Var = i2Var.f3476a;
                e4.o oVar = k2Var.c;
                StringBuilder sb = new StringBuilder();
                u0.a aVarO = h0.b.o();
                byte[] bArr = m.f1896j;
                String[] strArr = p3.f1924a;
                com.google.protobuf.q.s(bArr, aVarO, "", sb);
                com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                String strG = com.google.protobuf.q.g(sb, x1.f1989q);
                u0.a aVarO2 = h0.b.o();
                byte[] bArr2 = m.f1892f;
                if (com.google.protobuf.q.w(bArr2, aVarO2, "", strG)) {
                    h0.b.a();
                    boolValueOf2 = Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-22}, new byte[]{-38, -2, -50, -9, -109, -45, -66, -67}, h0.b.o(), com.google.protobuf.q.h(m.f1893g, h0.b.o(), new String(bArr2)), 0))));
                } else {
                    boolValueOf2 = Boolean.FALSE;
                }
                if (boolValueOf2.booleanValue()) {
                    try {
                        boolean z10 = j2Var.f3482a;
                        a5.h hVar = j2Var.f3483b;
                        if (z10) {
                            InterC interCJ = h0.b.a().j();
                            e4.o oVar2 = j2Var.c;
                            interCJ.ssa(new Saa((String) ((a5.h) oVar2.c).d, (String) ((a5.h) oVar2.d).d, oVar2.f2072a, oVar2.f2073b));
                        } else if (((a5.h) oVar.c) == null) {
                            if (!((String) hVar.d).equals(k2Var.f3492b)) {
                                k2Var.f3492b = (String) hVar.d;
                                oVar.c = hVar;
                                h2Var.c.setBackground(k2Var.getResources().getDrawable(2131165322));
                            }
                        } else if (((a5.h) oVar.d) == null) {
                            if (((String) hVar.d).equals(k2Var.f3492b)) {
                                oVar.c = null;
                                k2Var.f3492b = null;
                                h2Var.c.setBackground(null);
                            } else {
                                oVar.d = hVar;
                                h0.b.a().j().ssa(new Saa((String) ((a5.h) oVar.c).d, (String) ((a5.h) oVar.d).d, oVar.f2072a, oVar.f2073b));
                                m0.k2.u(k2Var, oVar);
                                m0.k2.t(k2Var, oVar);
                                oVar.c = null;
                                oVar.d = null;
                                k2Var.f3492b = null;
                                k2Var.e.notifyDataSetChanged();
                            }
                        }
                    } catch (Exception unused6) {
                        return;
                    }
                }
                break;
            default:
                AppCompatEditText appCompatEditText = (AppCompatEditText) this.c;
                ContextThemeWrapper contextThemeWrapper = (ContextThemeWrapper) this.e;
                AlertDialog alertDialog2 = (AlertDialog) this.d;
                try {
                    d = Double.parseDouble(appCompatEditText.getText().toString().trim().replace(',', '.'));
                } catch (NumberFormatException unused7) {
                    d = Double.NaN;
                }
                if (Double.isFinite(d) && d >= 0.0d && d <= 300.0d) {
                    h0.b.o().saveString(t1.e.f5341g, String.valueOf(d));
                    AllWidgetServices allWidgetServices = AllWidgetServices.f631g;
                    if (allWidgetServices != null) {
                        allWidgetServices.f634b.post(new c(allWidgetServices, 2));
                    }
                    alertDialog2.dismiss();
                } else {
                    appCompatEditText.setError(contextThemeWrapper.getString(2131951992));
                }
                break;
        }
    }

    public /* synthetic */ n0(Object obj, Object obj2, Object obj3, int i9) {
        this.f1904b = i9;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }
}
