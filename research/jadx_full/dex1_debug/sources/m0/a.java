package m0;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.view.View;
import android.view.View$OnClickListener;
import androidx.fragment.app.FragmentActivity;
import com.example.navistart.DPups;
import e0.p3;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3327b;
    public final /* synthetic */ i c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(i iVar, int i9) {
        this.f3327b = i9;
        this.c = iVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f3327b) {
            case 0:
                i iVar = this.c;
                if (iVar.getParentFragment() instanceof l0.a) {
                    ((l0.a) iVar.getParentFragment()).dismiss();
                } else {
                    FragmentActivity activity = iVar.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                }
                break;
            default:
                i iVar2 = this.c;
                if (!iVar2.f3461i) {
                    if (!iVar2.f3460h) {
                        if (!iVar2.t()) {
                            StringBuilder sb = new StringBuilder();
                            u0.a aVarO = h0.b.o();
                            byte[] bArr = e0.m.f1896j;
                            String[] strArr = p3.f1924a;
                            com.google.protobuf.q.s(bArr, aVarO, "", sb);
                            com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                            String strG = com.google.protobuf.q.g(sb, e0.x1.f1989q);
                            u0.a aVarO2 = h0.b.o();
                            byte[] bArr2 = e0.m.f1892f;
                            if (!(com.google.protobuf.q.w(bArr2, aVarO2, "", strG) ? Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{3}, new byte[]{51, 59, 11, 110, 83, -16, -120, -111}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                                iVar2.u();
                            }
                        }
                        h hVar = (h) iVar2.f3457b.getSelectedItem();
                        if (hVar == null) {
                            y5.k.w(2131951796, iVar2.requireContext());
                            break;
                        } else {
                            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) iVar2.requireContext().getSystemService(e0.m.h(new byte[]{-11, 32, 0, -112, -29, -29, 50, 85, -2, 41, 31, -102, -7}, new byte[]{-111, 69, 118, -7, ByteCompanionObject.MIN_VALUE, -122, 109, 37}));
                            if (devicePolicyManager != null) {
                                PackageManager packageManager = iVar2.requireContext().getPackageManager();
                                ComponentName componentName = new ComponentName(iVar2.requireContext(), (Class<?>) DPups.class);
                                try {
                                    String[] strArr2 = packageManager.getPackageInfo(hVar.f3440b, 4096).requestedPermissions;
                                    if (strArr2 != null && strArr2.length != 0) {
                                        int i9 = 0;
                                        int i10 = 0;
                                        int i11 = 0;
                                        for (String str : strArr2) {
                                            if (!TextUtils.isEmpty(str)) {
                                                try {
                                                    if ((packageManager.getPermissionInfo(str, 0).protectionLevel & 15) == 1) {
                                                        try {
                                                            if (devicePolicyManager.setPermissionGrantState(componentName, hVar.f3440b, str, 1)) {
                                                                i9++;
                                                            } else {
                                                                i10++;
                                                            }
                                                        } catch (Exception unused) {
                                                        }
                                                    } else {
                                                        i11++;
                                                    }
                                                } catch (Exception unused2) {
                                                }
                                            }
                                        }
                                        iVar2.d.setText(String.format(Locale.ROOT, iVar2.getString(2131951799), hVar.f3439a, Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11)));
                                    }
                                    iVar2.d.setText(2131951798);
                                } catch (Exception e) {
                                    iVar2.d.setText(e.getMessage() == null ? iVar2.getString(2131951795) : e.getMessage());
                                }
                                break;
                            }
                        }
                        break;
                    } else {
                        h hVar2 = (h) iVar2.f3457b.getSelectedItem();
                        if (hVar2 != null) {
                            Context applicationContext = iVar2.requireContext().getApplicationContext();
                            int i12 = iVar2.f3462j;
                            iVar2.f3461i = true;
                            iVar2.f3457b.setEnabled(false);
                            iVar2.u();
                            iVar2.d.setText(2131951800);
                            e0.w.c(-1, e0.m.h(new byte[]{54, ByteCompanionObject.MIN_VALUE, -13, 22, -106, -94, -83, -104, 4, -125, -22, 41, -99, -105, -78, -112, 25, -124}, new byte[]{119, -16, -125, 70, -13, -48, -64, -15})).execute(new j2.d(iVar2, applicationContext, i12, hVar2, 1));
                            break;
                        }
                    }
                }
                break;
        }
    }
}
