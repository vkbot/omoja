package e0;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.net.wifi.WifiConfiguration;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.woha.appmanag.FilePickerActivity;
import com.woha.wifim.MainWifiManadger;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e0 implements DialogInterface$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1829b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e0(int i9, Object obj, Object obj2) {
        this.f1829b = i9;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:57:0x021c  */
    @Override // android.content.DialogInterface$OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i9) {
        boolean z8;
        int i10 = this.f1829b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i10) {
            case 0:
                Activity activity = (Activity) obj2;
                g0.c(activity, ((f0[]) obj)[i9].c);
                activity.recreate();
                break;
            case 1:
                String str = FilePickerActivity.f1601j;
                ((FilePickerActivity) obj2).v((File) ((ArrayList) obj).get(i9));
                break;
            case 2:
                m0.v vVar = (m0.v) obj2;
                String str2 = m0.v.f3604h;
                String str3 = ((m0.u) obj).f3594b;
                DevicePolicyManager devicePolicyManager = (DevicePolicyManager) vVar.requireContext().getSystemService(m.h(new byte[]{102, 117, -125, -23, -109, Base64.padSymbol, 86, 72, 109, 124, -100, -29, -119}, new byte[]{2, 16, -11, ByteCompanionObject.MIN_VALUE, -16, 88, 9, 56}));
                if (devicePolicyManager == null || !devicePolicyManager.isDeviceOwnerApp(vVar.requireContext().getPackageName())) {
                    Intent intent = new Intent(m.h(new byte[]{121, 114, -12, 74, 122, -25, -1, -69, 113, 114, -28, 93, 123, -6, -75, -12, 123, 104, -7, 87, 123, -96, -33, -48, 84, 89, -60, 125}, new byte[]{24, 28, -112, 56, 21, -114, -101, -107}), Uri.parse(m.h(new byte[]{-85, -87, 116, 62, -18, -32, -68, 86}, new byte[]{-37, -56, 23, 85, -113, -121, -39, 108}) + str3));
                    intent.addFlags(268435456);
                    y5.k.u(vVar.requireContext(), intent, null);
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(vVar.requireContext().getPackageName());
                    Intent intent2 = new Intent(com.google.protobuf.q.i(new byte[]{-107, -99, -109, 81, -120, 121, 14, 20, -9, -124, -126, 74, -125, 121, 15, 25, -17}, new byte[]{-69, -56, -35, 24, -58, 42, 90, 85}, sb));
                    intent2.setPackage(vVar.requireContext().getPackageName());
                    intent2.putExtra(m.h(new byte[]{-58, 96, -21, -112, ByteCompanionObject.MAX_VALUE, 55, 69, -121, -41, 108, -19}, new byte[]{-74, 1, -120, -5, 30, 80, 32, -55}), str3);
                    vVar.requireContext().getPackageManager().getPackageInstaller().uninstall(str3, PendingIntent.getBroadcast(vVar.requireContext(), str3.hashCode(), intent2, 167772160).getIntentSender());
                    w.c(-1, m.h(new byte[]{89, 65, -48, -111, 113, -10, 54, 13, 94, 67, -63, -91, 104, -4, 42, 28}, new byte[]{24, 49, -96, -62, 5, -103, 68, 104})).schedule(new m0.q(vVar, 1), 2L, TimeUnit.SECONDS);
                }
                break;
            case 3:
                m0.a0 a0Var = (m0.a0) obj2;
                if (a0Var.f3333g.e((String) obj)) {
                    h0.b.o().saveString(m0.a0.f3329i, m0.a0.f3330j);
                    a0Var.v();
                    a0Var.d.setSelection(0);
                    y5.k.x(a0Var.requireContext().getApplicationContext(), a0Var.getString(2131951920));
                } else {
                    y5.k.x(a0Var.requireContext().getApplicationContext(), a0Var.getString(2131951921));
                }
                break;
            case 4:
                m0.c2 c2Var = (m0.c2) obj2;
                String str4 = (String) obj;
                String str5 = m0.c2.f3350k;
                if (str4 == null || str4.trim().isEmpty() || str5.equals(str4)) {
                    z8 = false;
                } else {
                    File file = new File(c2Var.f3352f, str4);
                    try {
                        File canonicalFile = c2Var.f3352f.getCanonicalFile();
                        File canonicalFile2 = file.getCanonicalFile();
                        String path = canonicalFile.getPath();
                        if (canonicalFile2.getPath().startsWith(path + File.separator) && canonicalFile2.isDirectory()) {
                            m0.c2.t(canonicalFile2);
                            z8 = !canonicalFile2.exists();
                        } else {
                            z8 = false;
                        }
                    } catch (IOException unused) {
                    }
                }
                if (z8) {
                    h0.b.o().saveString(m0.c2.f3348i, str5);
                    c2Var.v();
                    c2Var.f3351b.setSelection(0);
                    y5.k.x(c2Var.requireContext().getApplicationContext(), c2Var.getString(2131951920));
                } else {
                    y5.k.x(c2Var.requireContext().getApplicationContext(), c2Var.getString(2131951921));
                }
                break;
            case 5:
                m0.e2 e2Var = (m0.e2) obj2;
                if (e2Var.f3415i.e((String) obj)) {
                    h0.b.o().saveString(m0.e2.f3408k, m0.e2.f3409l);
                    e2Var.w();
                    e2Var.f3411b.setSelection(0);
                    SpeedBoardService.b(e2Var.requireContext());
                    y5.k.x(e2Var.requireContext().getApplicationContext(), e2Var.getString(2131951920));
                } else {
                    y5.k.x(e2Var.requireContext().getApplicationContext(), e2Var.getString(2131951921));
                }
                break;
            case 6:
                m0.c3 c3Var = (m0.c3) obj2;
                c3Var.H(c3Var.getString(2131952701), true);
                w.c(-1, m.h(new byte[]{-46, -76, 55, -66, 90, -37, 74, -103, -54, -90, 60, -83, 123, -41, 84, -70, -11, -90, 53, -95, 121, -36, 82}, new byte[]{-121, -57, 82, -52, 28, -78, 38, -4})).execute(new m0.t2(c3Var, (File) obj, 0));
                break;
            case 7:
                ((m0.c3) obj2).D((File) ((ArrayList) obj).get(i9));
                break;
            case 8:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) obj2;
                String str6 = (String) obj;
                List<WifiConfiguration> configuredNetworks = mainWifiManadger.f1633b.getConfiguredNetworks();
                if (configuredNetworks != null) {
                    for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                        String str7 = wifiConfiguration.SSID;
                        if (str7 != null) {
                            StringBuilder sb2 = new StringBuilder();
                            com.google.protobuf.q.u(new byte[]{38}, new byte[]{4, 2, 115, 65, 38, 16, -105, -111}, sb2, str6);
                            sb2.append(m.h(new byte[]{-119}, new byte[]{-85, -86, -9, 31, -72, 114, 7, -2}));
                            if (str7.equals(sb2.toString())) {
                                if (mainWifiManadger.f1633b.getConnectionInfo() != null) {
                                    String ssid = mainWifiManadger.f1633b.getConnectionInfo().getSSID();
                                    StringBuilder sb3 = new StringBuilder();
                                    com.google.protobuf.q.u(new byte[]{23}, new byte[]{53, 104, 34, -123, 108, 38, 21, -116}, sb3, str6);
                                    sb3.append(m.h(new byte[]{73}, new byte[]{107, 78, -47, 53, -32, -69, -10, -17}));
                                    if (ssid.equals(sb3.toString())) {
                                        mainWifiManadger.f1633b.disconnect();
                                        mainWifiManadger.f1633b.disableNetwork(wifiConfiguration.networkId);
                                    }
                                }
                                boolean zRemoveNetwork = mainWifiManadger.f1633b.removeNetwork(wifiConfiguration.networkId);
                                mainWifiManadger.f1633b.saveConfiguration();
                                if (zRemoveNetwork) {
                                    Context applicationContext = mainWifiManadger.getApplicationContext();
                                    StringBuilder sb4 = new StringBuilder();
                                    com.google.protobuf.q.u(new byte[]{-14, -19, -122, 32, 98, -74, -37, 5, 2}, new byte[]{34, 76, 86, -107, -77, 52, 10, -119}, sb4, str6);
                                    sb4.append(m.h(new byte[]{27, -49, -117, -94, 94, 123, 74, 13, -80, -50, -66, -94, 94}, new byte[]{59, 31, 60, 114, -18, -85, -5, -36}));
                                    y5.k.x(applicationContext, sb4.toString());
                                } else {
                                    y5.k.x(mainWifiManadger.getApplicationContext(), m.h(new byte[]{91, -70, -64, 15, -66, 46, 40, -49, 63, -9, -96, 106, 37, 47, 21, -50, 10, -10, -100, -102, 79, 124, 123, -85, 91, -105, -64, 1, 78, 71, 122, -99, 90, -85, 48, 107, 31, 47, 30, -50, 9, -10, -100, -102}, new byte[]{-117, 39, 16, -70, -98, -1, -85, 31}) + str6);
                                }
                                break;
                            }
                        }
                    }
                    break;
                }
                break;
            case 9:
                s1.v vVar2 = (s1.v) obj2;
                String str8 = (String) obj;
                if (vVar2.d.e(str8)) {
                    if (str8.equals(vVar2.e)) {
                        h0.b.o().saveString(s1.v.f5219f, s1.v.f5220g);
                    }
                    vVar2.w();
                }
                break;
            default:
                WidgetBuilderFragment.O((WidgetBuilderFragment) obj2, (x0.o) obj, dialogInterface, i9);
                break;
        }
    }
}
