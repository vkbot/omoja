package p047e0;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.net.wifi.WifiConfiguration;
import com.example.navistart.R;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.google.protobuf.AbstractC1178q;
import com.woha.appmanag.FilePickerActivity;
import com.woha.wifim.MainWifiManadger;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p078h0.C1652b;
import p132m0.C2263a0;
import p132m0.C2275c2;
import p132m0.C2276c3;
import p132m0.C2285e2;
import p132m0.C2356u;
import p132m0.C2360v;
import p132m0.RunnableC2340q;
import p132m0.RunnableC2355t2;
import p190s1.C3175v;
import p235x0.C3561o;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e0.e0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC1348e0 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3210b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3211c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f3212d;

    public /* synthetic */ DialogInterfaceOnClickListenerC1348e0(int i10, Object obj, Object obj2) {
        this.f3210b = i10;
        this.f3211c = obj;
        this.f3212d = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x021c  */
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        boolean z9;
        int i11 = this.f3210b;
        int i12 = 0;
        int i13 = 1;
        Object obj = this.f3212d;
        Object obj2 = this.f3211c;
        switch (i11) {
            case 0:
                Activity activity = (Activity) obj2;
                AbstractC1358g0.m2405c(activity, ((EnumC1353f0[]) obj)[i10].f3224c);
                activity.recreate();
                break;
            case 1:
                String str = FilePickerActivity.f2838j;
                ((FilePickerActivity) obj2).m2198v((File) ((ArrayList) obj).get(i10));
                break;
            case 2:
                C2360v c2360v = (C2360v) obj2;
                String str2 = C2360v.f6378h;
                String str3 = ((C2356u) obj).f6362b;
                DevicePolicyManager devicePolicyManager = (DevicePolicyManager) c2360v.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{102, 117, -125, -23, -109, Base64.padSymbol, 86, 72, 109, 124, -100, -29, -119}, new byte[]{2, 16, -11, ByteCompanionObject.MIN_VALUE, -16, 88, 9, 56}));
                if (devicePolicyManager == null || !devicePolicyManager.isDeviceOwnerApp(c2360v.requireContext().getPackageName())) {
                    Intent intent = new Intent(AbstractC1387m.m2421h(new byte[]{121, 114, -12, 74, 122, -25, -1, -69, 113, 114, -28, 93, 123, -6, -75, -12, 123, 104, -7, 87, 123, -96, -33, -48, 84, 89, -60, 125}, new byte[]{24, 28, -112, 56, 21, -114, -101, -107}), Uri.parse(AbstractC1387m.m2421h(new byte[]{-85, -87, 116, 62, -18, -32, -68, 86}, new byte[]{-37, -56, 23, 85, -113, -121, -39, 108}) + str3));
                    intent.addFlags(268435456);
                    AbstractC3656k.m5875u(c2360v.requireContext(), intent, null);
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(c2360v.requireContext().getPackageName());
                    Intent intent2 = new Intent(AbstractC1178q.m2075i(new byte[]{-107, -99, -109, 81, -120, 121, 14, 20, -9, -124, -126, 74, -125, 121, 15, 25, -17}, new byte[]{-69, -56, -35, 24, -58, 42, 90, 85}, sb));
                    intent2.setPackage(c2360v.requireContext().getPackageName());
                    intent2.putExtra(AbstractC1387m.m2421h(new byte[]{-58, 96, -21, -112, ByteCompanionObject.MAX_VALUE, 55, 69, -121, -41, 108, -19}, new byte[]{-74, 1, -120, -5, 30, 80, 32, -55}), str3);
                    c2360v.requireContext().getPackageManager().getPackageInstaller().uninstall(str3, PendingIntent.getBroadcast(c2360v.requireContext(), str3.hashCode(), intent2, 167772160).getIntentSender());
                    AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{89, 65, -48, -111, 113, -10, 54, 13, 94, 67, -63, -91, 104, -4, 42, 28}, new byte[]{24, 49, -96, -62, 5, -103, 68, 104})).schedule(new RunnableC2340q(c2360v, i13), 2L, TimeUnit.SECONDS);
                }
                break;
            case 3:
                C2263a0 c2263a0 = (C2263a0) obj2;
                if (c2263a0.f5930g.m981e((String) obj)) {
                    C1652b.m2745o().saveString(C2263a0.f5923i, C2263a0.f5924j);
                    c2263a0.m3643v();
                    c2263a0.f5927d.setSelection(0);
                    AbstractC3656k.m5878x(c2263a0.requireContext().getApplicationContext(), c2263a0.getString(R.string.delete_custom_widget_done));
                } else {
                    AbstractC3656k.m5878x(c2263a0.requireContext().getApplicationContext(), c2263a0.getString(R.string.delete_custom_widget_error));
                }
                break;
            case 4:
                C2275c2 c2275c2 = (C2275c2) obj2;
                String str4 = (String) obj;
                String str5 = C2275c2.f5959k;
                if (str4 == null || str4.trim().isEmpty() || str5.equals(str4)) {
                    z9 = false;
                } else {
                    File file = new File(c2275c2.f5964f, str4);
                    try {
                        File canonicalFile = c2275c2.f5964f.getCanonicalFile();
                        File canonicalFile2 = file.getCanonicalFile();
                        String path = canonicalFile.getPath();
                        if (canonicalFile2.getPath().startsWith(path + File.separator) && canonicalFile2.isDirectory()) {
                            C2275c2.m3646t(canonicalFile2);
                            z9 = !canonicalFile2.exists();
                        } else {
                            z9 = false;
                        }
                    } catch (IOException unused) {
                    }
                }
                if (z9) {
                    C1652b.m2745o().saveString(C2275c2.f5957i, str5);
                    c2275c2.m3648v();
                    c2275c2.f5960b.setSelection(0);
                    AbstractC3656k.m5878x(c2275c2.requireContext().getApplicationContext(), c2275c2.getString(R.string.delete_custom_widget_done));
                } else {
                    AbstractC3656k.m5878x(c2275c2.requireContext().getApplicationContext(), c2275c2.getString(R.string.delete_custom_widget_error));
                }
                break;
            case 5:
                C2285e2 c2285e2 = (C2285e2) obj2;
                if (c2285e2.f6060i.m981e((String) obj)) {
                    C1652b.m2745o().saveString(C2285e2.f6050k, C2285e2.f6051l);
                    c2285e2.m3688w();
                    c2285e2.f6053b.setSelection(0);
                    SpeedBoardService.m1542b(c2285e2.requireContext());
                    AbstractC3656k.m5878x(c2285e2.requireContext().getApplicationContext(), c2285e2.getString(R.string.delete_custom_widget_done));
                } else {
                    AbstractC3656k.m5878x(c2285e2.requireContext().getApplicationContext(), c2285e2.getString(R.string.delete_custom_widget_error));
                }
                break;
            case 6:
                C2276c3 c2276c3 = (C2276c3) obj2;
                c2276c3.m3663H(c2276c3.getString(R.string.user_file_manager_deleting), true);
                AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-46, -76, 55, -66, 90, -37, 74, -103, -54, -90, 60, -83, 123, -41, 84, -70, -11, -90, 53, -95, 121, -36, 82}, new byte[]{-121, -57, 82, -52, 28, -78, 38, -4})).execute(new RunnableC2355t2(c2276c3, (File) obj, i12));
                break;
            case 7:
                ((C2276c3) obj2).m3661D((File) ((ArrayList) obj).get(i10));
                break;
            case 8:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) obj2;
                String str6 = (String) obj;
                List<WifiConfiguration> configuredNetworks = mainWifiManadger.f2889b.getConfiguredNetworks();
                if (configuredNetworks != null) {
                    for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                        String str7 = wifiConfiguration.SSID;
                        if (str7 != null) {
                            StringBuilder sb2 = new StringBuilder();
                            AbstractC1178q.m2087u(new byte[]{38}, new byte[]{4, 2, 115, 65, 38, 16, -105, -111}, sb2, str6);
                            sb2.append(AbstractC1387m.m2421h(new byte[]{-119}, new byte[]{-85, -86, -9, 31, -72, 114, 7, -2}));
                            if (str7.equals(sb2.toString())) {
                                if (mainWifiManadger.f2889b.getConnectionInfo() != null) {
                                    String ssid = mainWifiManadger.f2889b.getConnectionInfo().getSSID();
                                    StringBuilder sb3 = new StringBuilder();
                                    AbstractC1178q.m2087u(new byte[]{23}, new byte[]{53, 104, 34, -123, 108, 38, 21, -116}, sb3, str6);
                                    sb3.append(AbstractC1387m.m2421h(new byte[]{73}, new byte[]{107, 78, -47, 53, -32, -69, -10, -17}));
                                    if (ssid.equals(sb3.toString())) {
                                        mainWifiManadger.f2889b.disconnect();
                                        mainWifiManadger.f2889b.disableNetwork(wifiConfiguration.networkId);
                                    }
                                }
                                boolean zRemoveNetwork = mainWifiManadger.f2889b.removeNetwork(wifiConfiguration.networkId);
                                mainWifiManadger.f2889b.saveConfiguration();
                                if (zRemoveNetwork) {
                                    Context applicationContext = mainWifiManadger.getApplicationContext();
                                    StringBuilder sb4 = new StringBuilder();
                                    AbstractC1178q.m2087u(new byte[]{-14, -19, -122, 32, 98, -74, -37, 5, 2}, new byte[]{34, 76, 86, -107, -77, 52, 10, -119}, sb4, str6);
                                    sb4.append(AbstractC1387m.m2421h(new byte[]{27, -49, -117, -94, 94, 123, 74, 13, -80, -50, -66, -94, 94}, new byte[]{59, 31, 60, 114, -18, -85, -5, -36}));
                                    AbstractC3656k.m5878x(applicationContext, sb4.toString());
                                } else {
                                    AbstractC3656k.m5878x(mainWifiManadger.getApplicationContext(), AbstractC1387m.m2421h(new byte[]{91, -70, -64, 15, -66, 46, 40, -49, 63, -9, -96, 106, 37, 47, 21, -50, 10, -10, -100, -102, 79, 124, 123, -85, 91, -105, -64, 1, 78, 71, 122, -99, 90, -85, 48, 107, 31, 47, 30, -50, 9, -10, -100, -102}, new byte[]{-117, 39, 16, -70, -98, -1, -85, 31}) + str6);
                                }
                                break;
                            }
                        }
                    }
                    break;
                }
                break;
            case 9:
                C3175v c3175v = (C3175v) obj2;
                String str8 = (String) obj;
                if (c3175v.f9242d.m981e(str8)) {
                    if (str8.equals(c3175v.f9243e)) {
                        C1652b.m2745o().saveString(C3175v.f9238f, C3175v.f9239g);
                    }
                    c3175v.m5104w();
                }
                break;
            default:
                ((WidgetBuilderFragment) obj2).lambda$library$7((C3561o) obj, dialogInterface, i10);
                break;
        }
    }
}
