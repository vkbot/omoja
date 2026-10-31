package p084h7;

import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.FileProvider;
import com.example.navistart.BlackActivity;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import com.woha.appmanag.FilePickerActivity;
import com.woha.appmanag.ManageAppsActivity;
import java.io.File;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p057f0.EnumC1524b;
import p078h0.C1652b;
import p121l0.C2194a;
import p132m0.C2263a0;
import p206u0.C3277a;

/* JADX INFO: renamed from: h7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1674b implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4292b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f4293c;

    public /* synthetic */ C1674b(int i10, Object obj) {
        this.f4292b = i10;
        this.f4293c = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        int i11 = this.f4292b;
        Object obj = this.f4293c;
        switch (i11) {
            case 0:
                FilePickerActivity filePickerActivity = (FilePickerActivity) obj;
                int headerViewsCount = i10 - filePickerActivity.f2839b.getHeaderViewsCount();
                if (headerViewsCount >= 0 && headerViewsCount < filePickerActivity.f2843f.size()) {
                    File file = (File) filePickerActivity.f2843f.get(headerViewsCount);
                    if (file.isDirectory()) {
                        filePickerActivity.m2198v(file);
                    } else if (filePickerActivity.f2846i != 1) {
                        Uri uriForFile = FileProvider.getUriForFile(filePickerActivity, AbstractC1387m.m2421h(new byte[]{63, -16, -123, 6, 106, -116, -88, 49, 44, -13, -115, 6, 97, -107, -65, 53, 47, -21, -119, 90, 123, -38, -71, 46, 51, -23, -127, 76, 106, -122}, new byte[]{92, -97, -24, 40, 15, -12, -55, 92}), file);
                        Intent intent = new Intent();
                        intent.setData(uriForFile);
                        intent.addFlags(1);
                        filePickerActivity.setResult(-1, intent);
                        filePickerActivity.finish();
                    } else {
                        Intent intent2 = new Intent();
                        intent2.putExtra(FilePickerActivity.f2838j, file.getAbsolutePath());
                        filePickerActivity.setResult(-1, intent2);
                        filePickerActivity.finish();
                    }
                    break;
                }
                break;
            case 1:
                final ManageAppsActivity manageAppsActivity = (ManageAppsActivity) obj;
                final C1679g c1679g = (C1679g) manageAppsActivity.f2848b.get(i10);
                DevicePolicyManager devicePolicyManager = (DevicePolicyManager) manageAppsActivity.getSystemService(AbstractC1387m.m2421h(new byte[]{-90, 92, 121, -47, 69, -39, 53, -106, -83, 85, 102, -37, 95}, new byte[]{-62, 57, 15, -72, 38, -68, 106, -26}));
                if (devicePolicyManager != null && devicePolicyManager.isDeviceOwnerApp(manageAppsActivity.getPackageName())) {
                    final int i12 = 0;
                    new AlertDialog.Builder(manageAppsActivity).setTitle(manageAppsActivity.getString(R.string.delapp)).setMessage(manageAppsActivity.getString(R.string.delapp2) + AbstractC1387m.m2421h(new byte[]{55, -68}, new byte[]{23, -98, -61, -6, 24, 6, 100, 87}) + c1679g.f4302a + AbstractC1387m.m2421h(new byte[]{20, -124, 2}, new byte[]{54, -92, Base64.padSymbol, -12, 82, -40, -83, -107})).setPositiveButton(manageAppsActivity.getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: h7.d
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i13) {
                            int i14 = i12;
                            C1679g c1679g2 = c1679g;
                            ManageAppsActivity manageAppsActivity2 = manageAppsActivity;
                            switch (i14) {
                                case 0:
                                    String str = ManageAppsActivity.f2847e;
                                    String str2 = c1679g2.f4303b;
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(manageAppsActivity2.getPackageName());
                                    Intent intent3 = new Intent(AbstractC1178q.m2075i(new byte[]{-16, 79, 19, -51, ByteCompanionObject.MAX_VALUE, -18, 25, 100, -110, 86, 2, -42, 116, -18, 24, 105, -118}, new byte[]{-34, 26, 93, -124, 49, -67, 77, 37}, sb));
                                    intent3.setPackage(manageAppsActivity2.getPackageName());
                                    intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-45, -108, -82, 110, 91, 44, -32, 62, -62, -104, -88}, new byte[]{-93, -11, -51, 5, 58, 75, -123, 112}), str2);
                                    manageAppsActivity2.getPackageManager().getPackageInstaller().uninstall(str2, PendingIntent.getBroadcast(manageAppsActivity2, str2.hashCode(), intent3, 167772160).getIntentSender());
                                    AbstractC1434w.m2482c(-1, null).schedule(new RunnableC1677e(manageAppsActivity2, 0), 2000L, TimeUnit.MILLISECONDS);
                                    break;
                                default:
                                    String str3 = ManageAppsActivity.f2847e;
                                    manageAppsActivity2.m2200t(c1679g2.f4303b);
                                    break;
                            }
                        }
                    }).setNegativeButton(manageAppsActivity.getString(R.string.cancel), (DialogInterface.OnClickListener) null).show();
                } else {
                    C1652b.m2734a();
                    C1652b.m2734a();
                    if (!C1652b.m2738g().mo3016h()) {
                        manageAppsActivity.m2200t(c1679g.f4303b);
                    } else {
                        final int i13 = 1;
                        new AlertDialog.Builder(manageAppsActivity).setTitle(manageAppsActivity.getString(R.string.delapp)).setMessage(manageAppsActivity.getString(R.string.delapp2) + AbstractC1387m.m2421h(new byte[]{3, -2}, new byte[]{35, -36, -85, 23, 94, -61, -36, -44}) + c1679g.f4302a + AbstractC1387m.m2421h(new byte[]{-22, -87, 55}, new byte[]{-56, -119, 8, 52, 34, 73, -30, 82})).setPositiveButton(manageAppsActivity.getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: h7.d
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i14) {
                                int i15 = i13;
                                C1679g c1679g2 = c1679g;
                                ManageAppsActivity manageAppsActivity2 = manageAppsActivity;
                                switch (i15) {
                                    case 0:
                                        String str = ManageAppsActivity.f2847e;
                                        String str2 = c1679g2.f4303b;
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(manageAppsActivity2.getPackageName());
                                        Intent intent3 = new Intent(AbstractC1178q.m2075i(new byte[]{-16, 79, 19, -51, ByteCompanionObject.MAX_VALUE, -18, 25, 100, -110, 86, 2, -42, 116, -18, 24, 105, -118}, new byte[]{-34, 26, 93, -124, 49, -67, 77, 37}, sb));
                                        intent3.setPackage(manageAppsActivity2.getPackageName());
                                        intent3.putExtra(AbstractC1387m.m2421h(new byte[]{-45, -108, -82, 110, 91, 44, -32, 62, -62, -104, -88}, new byte[]{-93, -11, -51, 5, 58, 75, -123, 112}), str2);
                                        manageAppsActivity2.getPackageManager().getPackageInstaller().uninstall(str2, PendingIntent.getBroadcast(manageAppsActivity2, str2.hashCode(), intent3, 167772160).getIntentSender());
                                        AbstractC1434w.m2482c(-1, null).schedule(new RunnableC1677e(manageAppsActivity2, 0), 2000L, TimeUnit.MILLISECONDS);
                                        break;
                                    default:
                                        String str3 = ManageAppsActivity.f2847e;
                                        manageAppsActivity2.m2200t(c1679g2.f4303b);
                                        break;
                                }
                            }
                        }).setNegativeButton(manageAppsActivity.getString(R.string.cancel), (DialogInterface.OnClickListener) null).show();
                    }
                }
                break;
            default:
                C2263a0 c2263a0 = (C2263a0) obj;
                String str = C2263a0.f5922h;
                EnumC1524b enumC1524b = EnumC1524b.values()[i10];
                if (enumC1524b == EnumC1524b.f3740d) {
                    C3277a c3277aM2745o = C1652b.m2745o();
                    String str2 = C2263a0.f5923i;
                    String str3 = C2263a0.f5924j;
                    if (str3.equals(c3277aM2745o.loadString(str2, str3)) && !new File(c2263a0.requireContext().getFilesDir(), AbstractC1387m.m2421h(new byte[]{-32, -8, -61, -121, -5, 71, -22, -13, -57, -28, -9, -106, -37, 123, -7, -1, -58, -82, -16, -121, -1, 118, -19, -16, -39, -34, -29, -121, -5, 72, -6, -16, -52, -30, -1, -51, -16, 121, -4, -7, -43, -81, -4, -106, -12, 123}, new byte[]{-83, -127, -108, -30, -103, 23, -104, -100})).isFile()) {
                        File file2 = new File(c2263a0.requireContext().getCacheDir(), c2263a0.f5929f);
                        if (c2263a0.f5930g.m979c(file2)) {
                            c2263a0.m3642u(file2);
                        }
                    }
                }
                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{48, 84, 94, 114, -23, 43, -90, -7, 49, 84, 80, 114, -23, 44, -73, -20, 21, 85, 90, ByteCompanionObject.MAX_VALUE, -10}, new byte[]{114, 56, 63, 17, -126, 106, -59, -115}), enumC1524b.name());
                BlackActivity blackActivity = c2263a0.f5925b;
                if (blackActivity != null) {
                    blackActivity.m1392u(enumC1524b);
                }
                C2194a c2194a = (C2194a) c2263a0.getParentFragment();
                if (c2194a != null) {
                    c2194a.dismiss();
                }
                break;
        }
    }
}
