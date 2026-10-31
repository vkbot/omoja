package h7;

import android.app.admin.DevicePolicyManager;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.core.content.FileProvider;
import com.example.navistart.BlackActivity;
import com.woha.appmanag.FilePickerActivity;
import com.woha.appmanag.ManageAppsActivity;
import e0.m;
import java.io.File;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.a0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements AdapterView$OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2489b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9, Object obj) {
        this.f2489b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i9, long j9) {
        int i10 = this.f2489b;
        Object obj = this.c;
        switch (i10) {
            case 0:
                FilePickerActivity filePickerActivity = (FilePickerActivity) obj;
                int headerViewsCount = i9 - filePickerActivity.f1602b.getHeaderViewsCount();
                if (headerViewsCount >= 0 && headerViewsCount < filePickerActivity.f1603f.size()) {
                    File file = (File) filePickerActivity.f1603f.get(headerViewsCount);
                    if (file.isDirectory()) {
                        filePickerActivity.v(file);
                    } else if (filePickerActivity.f1606i != 1) {
                        Uri uriForFile = FileProvider.getUriForFile(filePickerActivity, m.h(new byte[]{63, -16, -123, 6, 106, -116, -88, 49, 44, -13, -115, 6, 97, -107, -65, 53, 47, -21, -119, 90, 123, -38, -71, 46, 51, -23, -127, 76, 106, -122}, new byte[]{92, -97, -24, 40, 15, -12, -55, 92}), file);
                        Intent intent = new Intent();
                        intent.setData(uriForFile);
                        intent.addFlags(1);
                        filePickerActivity.setResult(-1, intent);
                        filePickerActivity.finish();
                    } else {
                        Intent intent2 = new Intent();
                        intent2.putExtra(FilePickerActivity.f1601j, file.getAbsolutePath());
                        filePickerActivity.setResult(-1, intent2);
                        filePickerActivity.finish();
                    }
                    break;
                }
                break;
            case 1:
                ManageAppsActivity manageAppsActivity = (ManageAppsActivity) obj;
                g gVar = (g) manageAppsActivity.f1607b.get(i9);
                DevicePolicyManager devicePolicyManager = (DevicePolicyManager) manageAppsActivity.getSystemService(m.h(new byte[]{-90, 92, 121, -47, 69, -39, 53, -106, -83, 85, 102, -37, 95}, new byte[]{-62, 57, 15, -72, 38, -68, 106, -26}));
                if (devicePolicyManager != null && devicePolicyManager.isDeviceOwnerApp(manageAppsActivity.getPackageName())) {
                    new AlertDialog$Builder(manageAppsActivity).setTitle(manageAppsActivity.getString(2131951917)).setMessage(manageAppsActivity.getString(2131951918) + m.h(new byte[]{55, -68}, new byte[]{23, -98, -61, -6, 24, 6, 100, 87}) + gVar.f2494a + m.h(new byte[]{20, -124, 2}, new byte[]{54, -92, Base64.padSymbol, -12, 82, -40, -83, -107})).setPositiveButton(manageAppsActivity.getString(2131952436), new d(manageAppsActivity, gVar, 0)).setNegativeButton(manageAppsActivity.getString(2131951882), (DialogInterface$OnClickListener) null).show();
                } else {
                    h0.b.a();
                    h0.b.a();
                    if (!h0.b.g().h()) {
                        manageAppsActivity.t(gVar.f2495b);
                    } else {
                        new AlertDialog$Builder(manageAppsActivity).setTitle(manageAppsActivity.getString(2131951917)).setMessage(manageAppsActivity.getString(2131951918) + m.h(new byte[]{3, -2}, new byte[]{35, -36, -85, 23, 94, -61, -36, -44}) + gVar.f2494a + m.h(new byte[]{-22, -87, 55}, new byte[]{-56, -119, 8, 52, 34, 73, -30, 82})).setPositiveButton(manageAppsActivity.getString(2131952436), new d(manageAppsActivity, gVar, 1)).setNegativeButton(manageAppsActivity.getString(2131951882), (DialogInterface$OnClickListener) null).show();
                    }
                }
                break;
            default:
                a0 a0Var = (a0) obj;
                String str = a0.f3328h;
                f0.b bVar = f0.b.values()[i9];
                if (bVar == f0.b.d) {
                    u0.a aVarO = h0.b.o();
                    String str2 = a0.f3329i;
                    String str3 = a0.f3330j;
                    if (str3.equals(aVarO.loadString(str2, str3)) && !new File(a0Var.requireContext().getFilesDir(), m.h(new byte[]{-32, -8, -61, -121, -5, 71, -22, -13, -57, -28, -9, -106, -37, 123, -7, -1, -58, -82, -16, -121, -1, 118, -19, -16, -39, -34, -29, -121, -5, 72, -6, -16, -52, -30, -1, -51, -16, 121, -4, -7, -43, -81, -4, -106, -12, 123}, new byte[]{-83, -127, -108, -30, -103, 23, -104, -100})).isFile()) {
                        File file2 = new File(a0Var.requireContext().getCacheDir(), a0Var.f3332f);
                        if (a0Var.f3333g.c(file2)) {
                            a0Var.u(file2);
                        }
                    }
                }
                h0.b.o().saveString(m.h(new byte[]{48, 84, 94, 114, -23, 43, -90, -7, 49, 84, 80, 114, -23, 44, -73, -20, 21, 85, 90, ByteCompanionObject.MAX_VALUE, -10}, new byte[]{114, 56, 63, 17, -126, 106, -59, -115}), bVar.name());
                BlackActivity blackActivity = a0Var.f3331b;
                if (blackActivity != null) {
                    blackActivity.u(bVar);
                }
                l0.a aVar = (l0.a) a0Var.getParentFragment();
                if (aVar != null) {
                    aVar.dismiss();
                }
                break;
        }
    }
}
