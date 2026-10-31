package androidx.navigation.p013ui;

import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.Toast;
import androidx.activity.RunnableC0131f;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.C0566h;
import androidx.navigation.NavController;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.AbstractC1030c;
import com.example.navistart.ActivityC1081W;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import com.example.navistart.MainActivity;
import com.example.navistart.Notik;
import com.example.navistart.PermActivity;
import com.example.navistart.R;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.mainview.HeatManSetView;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.protobuf.AbstractC1178q;
import com.woha.wifim.MainWifiManadger;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import okhttp3.Call;
import okhttp3.Request;
import org.json.JSONException;
import p016b1.C0872m;
import p022b7.DialogInterfaceOnClickListenerC0912h;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p047e0.RunnableC1375j2;
import p047e0.RunnableC1431v0;
import p051e4.C1482o;
import p067g0.C1603e;
import p067g0.InterfaceC1602d;
import p078h0.C1652b;
import p098j0.C1917c;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p121l0.C2194a;
import p132m0.C2276c3;
import p132m0.C2284e1;
import p132m0.C2285e2;
import p132m0.C2289f1;
import p132m0.C2294g1;
import p132m0.C2299h1;
import p132m0.C2304i1;
import p132m0.C2313k0;
import p132m0.C2315k2;
import p132m0.C2316k3;
import p132m0.C2317l;
import p132m0.C2321l3;
import p132m0.C2323m0;
import p132m0.C2327n;
import p132m0.C2328n0;
import p132m0.C2329n1;
import p132m0.C2331n3;
import p132m0.C2332o;
import p132m0.C2350s1;
import p132m0.C2353t0;
import p132m0.C2357u0;
import p132m0.C2361v0;
import p132m0.C2362v1;
import p132m0.C2366w1;
import p132m0.C2371x2;
import p132m0.C2377z0;
import p132m0.DialogInterfaceOnClickListenerC2373y0;
import p132m0.RunnableC2355t2;
import p138m7.C2407f;
import p142n0.EnumC2469d;
import p190s1.C3159n;
import p190s1.C3167r;
import p190s1.C3174u0;
import p197t0.C3221c;
import p197t0.C3222d;
import p198t1.C3230h;
import p198t1.InterfaceC3229g;
import p206u0.C3277a;
import p225w0.C3483p0;
import p225w0.C3485q0;
import p235x0.C3549c;
import p235x0.C3559m;
import p250y5.AbstractC3656k;
import ru.transfer.MessageData;

/* JADX INFO: renamed from: androidx.navigation.ui.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0701a implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f496b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f497c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f498d;

    public /* synthetic */ ViewOnClickListenerC0701a(int i10, Object obj, Object obj2) {
        this.f496b = i10;
        this.f497c = obj;
        this.f498d = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Notik notik;
        int i10;
        Boolean boolValueOf;
        Display[] displayArr;
        int i11;
        Class cls;
        MessageData messageDataM1509c;
        int i12 = this.f496b;
        int i13 = 14;
        int i14 = 2;
        int i15 = 0;
        int i16 = 1;
        Object obj = this.f498d;
        Object obj2 = this.f497c;
        switch (i12) {
            case 0:
                NavigationUI.setupWithNavController$lambda$1((NavController) obj2, (AppBarConfiguration) obj, view);
                return;
            case 1:
                String str = MainActivity.f1288e1;
                ((MainActivity) obj2).m1442O((MaterialSwitch) obj);
                return;
            case 2:
                PermActivity permActivity = (PermActivity) obj2;
                Intent intent = (Intent) obj;
                String str2 = PermActivity.f1507c;
                try {
                    permActivity.startActivityForResult(intent, 0);
                    return;
                } catch (ActivityNotFoundException unused) {
                    return;
                }
            case 3:
                String str3 = PermActivity.f1507c;
                ActivityCompat.requestPermissions((PermActivity) obj2, new String[]{(String) obj}, 1);
                return;
            case 4:
                TestSpaceActivity testSpaceActivity = (TestSpaceActivity) obj2;
                Button button = (Button) obj;
                if (testSpaceActivity.f1649e) {
                    C1652b.m2734a().m2755j().m1638sl(null);
                    button.setBackgroundResource(R.drawable.modern_button_primary);
                    testSpaceActivity.f1650f.setVisibility(8);
                    testSpaceActivity.f1649e = false;
                    return;
                }
                button.setBackgroundResource(R.drawable.modern_button_danger);
                testSpaceActivity.f1650f.setVisibility(0);
                testSpaceActivity.f1649e = true;
                C1652b.m2734a().m2755j().m1638sl(testSpaceActivity.f1651g);
                return;
            case 5:
                C0872m c0872m = (C0872m) obj2;
                C1603e c1603e = (C1603e) obj;
                c0872m.getClass();
                c1603e.getMsg();
                ((LinearLayout) c0872m.f602d).removeView(c1603e);
                return;
            case 6:
                C1603e c1603e2 = (C1603e) obj2;
                MessageData messageData = (MessageData) obj;
                InterfaceC1602d interfaceC1602d = c1603e2.f4029i;
                if (interfaceC1602d != null && (notik = (Notik) ((C0872m) interfaceC1602d).f603e) != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(messageData);
                    Notik.m1505f(notik, arrayList);
                }
                c1603e2.setVisibility(8);
                return;
            case 7:
                String str4 = ((C2317l) obj).f6203b;
                C2332o c2332o = ((C2327n) obj2).f6236a;
                try {
                    Intent launchIntentForPackage = c2332o.requireContext().getPackageManager().getLaunchIntentForPackage(str4);
                    if (launchIntentForPackage == null || (i10 = c2332o.f6278e) < 0 || i10 >= c2332o.f6279f.length) {
                        return;
                    }
                    ActivityOptions launchDisplayId = Build.VERSION.SDK_INT >= 26 ? ActivityOptions.makeBasic().setLaunchDisplayId(c2332o.f6279f[c2332o.f6278e].getDisplayId()) : null;
                    launchIntentForPackage.addFlags(402685952);
                    if (c2332o.m3718u().booleanValue()) {
                        if (launchDisplayId != null) {
                            AbstractC3656k.m5875u(c2332o.requireContext(), launchIntentForPackage, launchDisplayId.toBundle());
                        } else {
                            AbstractC3656k.m5875u(c2332o.requireContext(), launchIntentForPackage, null);
                        }
                        C2332o.m3715t(c2332o, str4);
                        return;
                    }
                    return;
                } catch (Exception unused2) {
                    return;
                }
            case 8:
                ExlantixTelemetryFragment.lambda$onCreateView$1((LinearLayout) obj2, (Button) obj, view);
                return;
            case 9:
                C2313k0 c2313k0 = (C2313k0) obj;
                C2328n0 c2328n0 = ((C2323m0) obj2).f6219b;
                if (c2328n0.f6240d) {
                    return;
                }
                try {
                    Intent launchIntentForPackage2 = c2328n0.requireContext().getPackageManager().getLaunchIntentForPackage(c2313k0.f6182a);
                    if (launchIntentForPackage2 == null) {
                        throw new IllegalStateException();
                    }
                    c2328n0.startActivity(launchIntentForPackage2);
                    return;
                } catch (Exception unused3) {
                    Toast.makeText(c2328n0.requireContext(), R.string.fullscreen_apps_launch_error, 0).show();
                    return;
                }
            case 10:
                C2361v0 c2361v0 = (C2361v0) obj2;
                int bindingAdapterPosition = ((C2357u0) obj).getBindingAdapterPosition();
                if (bindingAdapterPosition != -1) {
                    C2377z0 c2377z0 = (C2377z0) c2361v0.f6389b.f453c;
                    ArrayList arrayList2 = c2377z0.f6436b;
                    if (bindingAdapterPosition < 0 || bindingAdapterPosition >= arrayList2.size()) {
                        return;
                    }
                    C2353t0 c2353t0 = (C2353t0) arrayList2.get(bindingAdapterPosition);
                    Spinner spinner = new Spinner(c2377z0.requireContext(), 0);
                    String str5 = C1917c.f5048c;
                    int i17 = (int) (16 * Resources.getSystem().getDisplayMetrics().density);
                    spinner.setPadding(i17, i17, i17, i17);
                    C1652b.m2734a();
                    C1652b.m2737f().m2997n(spinner, c2353t0.f6354b);
                    new AlertDialog.Builder(c2377z0.requireContext()).setTitle(R.string.log_keycode_choose_action).setView(spinner).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).setPositiveButton(android.R.string.ok, new DialogInterfaceOnClickListenerC2373y0(c2377z0, spinner, c2353t0, false ? 1 : 0)).show();
                    return;
                }
                return;
            case 11:
                C2294g1 c2294g1 = (C2294g1) obj2;
                int bindingAdapterPosition2 = ((C2289f1) obj).getBindingAdapterPosition();
                C0566h c0566h = c2294g1.f6090a;
                if (c0566h == null || bindingAdapterPosition2 == -1) {
                    return;
                }
                C2299h1 c2299h1 = (C2299h1) c2294g1.f6091b.get(bindingAdapterPosition2);
                C2304i1 c2304i1 = (C2304i1) c0566h.f453c;
                String str6 = C2304i1.f6142i;
                Context applicationContext = c2304i1.requireContext().getApplicationContext();
                RecyclerView recyclerView = c2304i1.f6149b;
                String str7 = c2304i1.f6154g;
                String string = c2304i1.getString(R.string.install_error);
                String string2 = c2304i1.getString(R.string.install_done);
                c2299h1.f6114i = true;
                c2299h1.f6115j = AbstractC1387m.m2421h(new byte[]{-11, -24}, new byte[]{-59, -51, -47, -107, -109, -110, -74, 69});
                c2304i1.f6149b.getAdapter().notifyItemChanged(bindingAdapterPosition2);
                Request requestBuild = new Request.Builder().url(c2299h1.f6113h.trim()).build();
                C1652b.m2734a();
                Call callNewCall = C1652b.m2743m().newCall(requestBuild);
                C2284e1 c2284e1 = new C2284e1();
                c2284e1.f6048i = c2304i1;
                c2284e1.f6042c = recyclerView;
                c2284e1.f6043d = c2299h1;
                c2284e1.f6044e = string;
                c2284e1.f6041b = bindingAdapterPosition2;
                c2284e1.f6047h = applicationContext;
                c2284e1.f6045f = str7;
                c2284e1.f6046g = string2;
                callNewCall.enqueue(c2284e1);
                return;
            case 12:
                C2350s1 c2350s1 = (C2350s1) obj;
                C2366w1 c2366w1 = ((C2362v1) obj2).f6390a;
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
                    boolValueOf = Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{108}, new byte[]{92, 67, -91, 60, 124, -112, -2, 7}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
                } else {
                    boolValueOf = Boolean.FALSE;
                }
                if (boolValueOf.booleanValue()) {
                    try {
                        Intent launchIntentForPackage3 = c2366w1.requireContext().getPackageManager().getLaunchIntentForPackage(c2350s1.f6345b);
                        if (launchIntentForPackage3 != null && (displayArr = c2366w1.f6404j) != null && (i11 = c2366w1.f6403i) >= 0 && i11 < displayArr.length) {
                            ActivityOptions launchDisplayId2 = Build.VERSION.SDK_INT >= 26 ? ActivityOptions.makeBasic().setLaunchDisplayId(c2366w1.f6404j[c2366w1.f6403i].getDisplayId()) : null;
                            launchIntentForPackage3.addFlags(268435456);
                            launchIntentForPackage3.addFlags(131072);
                            launchIntentForPackage3.addFlags(2097152);
                            if (launchDisplayId2 != null) {
                                AbstractC3656k.m5875u(c2366w1.requireContext(), launchIntentForPackage3, launchDisplayId2.toBundle());
                            } else {
                                AbstractC3656k.m5875u(c2366w1.requireContext(), launchIntentForPackage3, null);
                            }
                            if (c2366w1.getParentFragment() instanceof C2194a) {
                                ((C2194a) c2366w1.getParentFragment()).dismissAllowingStateLoss();
                                return;
                            }
                            return;
                        }
                        return;
                    } catch (Exception unused4) {
                        return;
                    }
                }
                return;
            case 13:
                String str8 = C2285e2.f6049j;
                new Handler().postDelayed((RunnableC1431v0) obj2, 3000L);
                new Handler().postDelayed((RunnableC1431v0) obj, 1L);
                return;
            case 14:
                String str9 = C2285e2.f6049j;
                new Handler().postDelayed((RunnableC1431v0) obj2, 1L);
                new Handler().postDelayed((RunnableC1431v0) obj, 3000L);
                return;
            case 15:
                File file = (File) obj;
                C2276c3 c2276c3 = ((C2371x2) obj2).f6414a;
                if (c2276c3.f5987v) {
                    return;
                }
                if (file.isDirectory()) {
                    c2276c3.m3661D(file);
                    return;
                }
                if (c2276c3.f5987v || !file.exists() || file.isDirectory()) {
                    return;
                }
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                if (C2276c3.m3652B(file)) {
                    arrayList3.add(c2276c3.getString(R.string.install));
                    arrayList4.add(new RunnableC2355t2(c2276c3, file, i16));
                } else {
                    arrayList3.add(c2276c3.getString(R.string.user_file_manager_open_builtin));
                    arrayList4.add(new RunnableC2355t2(c2276c3, file, i14));
                }
                arrayList3.add(c2276c3.getString(R.string.user_file_manager_open_external));
                arrayList4.add(new RunnableC2355t2(c2276c3, file, 3));
                new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(c2276c3.getString(R.string.user_file_manager_actions_title, file.getName())).setItems((CharSequence[]) arrayList3.toArray(new String[0]), new DialogInterfaceOnClickListenerC0912h(i14, arrayList4)).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).show();
                return;
            case 16:
                C2316k3 c2316k3 = (C2316k3) obj;
                C2331n3 c2331n3 = ((C2321l3) obj2).f6215b;
                try {
                    if (C2331n3.m3710t().booleanValue()) {
                        Context contextRequireContext = c2331n3.requireContext();
                        File file2 = c2316k3.f6201e;
                        String str10 = c2316k3.f6197a;
                        if (file2.isFile() && file2.canRead()) {
                            Uri uriM1360d = c2331n3.f6265n.m1360d(file2);
                            Intent intentPutExtra = new Intent(AbstractC1387m.m2421h(new byte[]{-20, 24, 7, 76, -92, -99, 109, 63, -28, 24, 23, 91, -91, ByteCompanionObject.MIN_VALUE, 39, 112, -18, 2, 10, 81, -91, -38, 95, 88, -56, 33}, new byte[]{-115, 118, 99, 62, -53, -12, 9, 17})).setPackage(AbstractC1387m.m2421h(new byte[]{-18, -106, 80, -54, 36, -14, 21, -45, -18, -120, 86, -118, 124, -19, 29, -43}, new byte[]{-127, -28, 55, -28, 82, -101, 113, -74})).setDataAndType(uriM1360d, AbstractC1387m.m2421h(new byte[]{40, 42, 46, -16, 36, 42, -2}, new byte[]{94, 67, 74, -107, 75, 5, -44, 27})).addFlags(1).putExtra(AbstractC1387m.m2421h(new byte[]{34, 74, 14, -70, -1}, new byte[]{86, 35, 122, -42, -102, 105, -38, -16}), str10);
                            intentPutExtra.setClipData(ClipData.newUri(contextRequireContext.getContentResolver(), str10, uriM1360d));
                            c2331n3.startActivity(intentPutExtra);
                        } else {
                            Toast.makeText(contextRequireContext, R.string.video_file_missing, 1).show();
                        }
                    }
                    return;
                } catch (ActivityNotFoundException unused5) {
                    Toast.makeText(c2331n3.requireContext(), R.string.video_vlc_missing, 1).show();
                    return;
                } catch (Exception unused6) {
                    Toast.makeText(c2331n3.requireContext(), R.string.video_open_error, 1).show();
                    return;
                }
            case 17:
                ScanResult scanResult = (ScanResult) obj;
                MainWifiManadger mainWifiManadger = ((C2407f) obj2).f6516d.f6505a;
                String str11 = MainWifiManadger.f2888v;
                String str12 = scanResult.SSID;
                MainWifiManadger.f2888v = str12;
                String str13 = scanResult.capabilities;
                if (str13 == null) {
                    str13 = "";
                }
                mainWifiManadger.f2902o = str13;
                List<WifiConfiguration> configuredNetworks = mainWifiManadger.f2889b.getConfiguredNetworks();
                if (configuredNetworks != null) {
                    for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                        String str14 = wifiConfiguration.SSID;
                        if (str14 != null) {
                            StringBuilder sb2 = new StringBuilder();
                            AbstractC1178q.m2087u(new byte[]{-22}, new byte[]{-56, 80, 20, 101, -65, 68, 51, -35}, sb2, str12);
                            sb2.append(AbstractC1387m.m2421h(new byte[]{-113}, new byte[]{-83, 110, -108, 91, 31, 76, 70, -25}));
                            if (str14.equals(sb2.toString())) {
                                mainWifiManadger.f2889b.disconnect();
                                mainWifiManadger.f2889b.enableNetwork(wifiConfiguration.networkId, true);
                                mainWifiManadger.f2889b.reconnect();
                                AbstractC3656k.m5878x(mainWifiManadger.getApplicationContext(), mainWifiManadger.getResources().getString(R.string.wifi_con_to) + str12);
                                return;
                            }
                        }
                    }
                }
                boolean zM2211u = MainWifiManadger.m2211u(mainWifiManadger.f2902o);
                String str15 = mainWifiManadger.f2902o;
                if (zM2211u) {
                    mainWifiManadger.m2215t(str12, "", str15);
                    return;
                } else if (str15 == null || !str15.toUpperCase().contains(AbstractC1387m.m2421h(new byte[]{38, -17, -107}, new byte[]{99, -82, -59, -70, 27, 119, 91, -27}))) {
                    mainWifiManadger.m2217w(str12, mainWifiManadger.f2902o);
                    return;
                } else {
                    AbstractC3656k.m5878x(mainWifiManadger.getApplicationContext(), mainWifiManadger.getString(R.string.wifi_enterprise_not_supported));
                    return;
                }
            case 18:
                C3159n c3159n = (C3159n) obj2;
                C3167r c3167r = c3159n.f9115b;
                C1919e c1919e = (C1919e) obj;
                c3159n.m5023j();
                if (c1919e.f5058a == EnumC1918d.f5053b && c1919e.f5059b != null) {
                    Bundle bundle = new Bundle();
                    String strM2421h = AbstractC1387m.m2421h(new byte[]{34, 30, 89}, new byte[]{70, 119, 42, -103, -6, -88, 87, -36});
                    C1652b.m2734a();
                    bundle.putInt(strM2421h, C1652b.m2744n().getGuDisplayID());
                    EnumC2469d enumC2469d = c1919e.f5059b;
                    if (enumC2469d == EnumC2469d.f6770l) {
                        cls = C2332o.class;
                    } else if (enumC2469d == EnumC2469d.f6763h0) {
                        cls = C2315k2.class;
                    } else if (enumC2469d == EnumC2469d.f6713A0) {
                        bundle.putBoolean(AbstractC1387m.m2421h(new byte[]{-121, 67, 16, 79, 99, 19, 70, ByteCompanionObject.MIN_VALUE, -70, 65, 24, 81, 109, 20, 119, -116, -116, 70, 18, 83}, new byte[]{-27, 34, 119, Base64.padSymbol, 2, 102, 40, -28}), true);
                        cls = C2366w1.class;
                    }
                    Intent intent2 = new Intent(c3159n.getContext(), (Class<?>) ActivityC1081W.class);
                    intent2.putExtra(AbstractC1387m.m2421h(new byte[]{21, 40, -79, -61, -122, 29, 36, -57, 44, 8, -123, -22, -76, 44, 19, -29, 54}, new byte[]{115, 90, -48, -92, -21, 120, 74, -77}), AbstractC1387m.m2421h(new byte[]{11, -117, -102, -92, -76, 93, 8, 15, 22, -103, -117, -82, -66, 93}, new byte[]{89, -34, -44, -5, -16, 20, 73, 67}));
                    intent2.putExtra(AbstractC1387m.m2421h(new byte[]{100, -102, -95, 12, -10, -8, -5, -71, 93, -117, -84, 10, -24, -18}, new byte[]{2, -24, -64, 107, -101, -99, -107, -51}), cls.getName());
                    intent2.putExtra(AbstractC1387m.m2421h(new byte[]{-122, -22, -44, -32, 80, 96, -93, 18, -65, -7, -57, -32, 78}, new byte[]{-32, -104, -75, -121, Base64.padSymbol, 5, -51, 102}), bundle);
                    intent2.addFlags(402653184);
                    c3159n.getContext().startActivity(intent2);
                    if (c3167r.f9201a.getBoolean(C3167r.f9197h, true)) {
                        c3159n.m5026m(false);
                    }
                    c3159n.m5025l();
                    return;
                }
                new Thread(new RunnableC1375j2(25, c3159n, c1919e), AbstractC1387m.m2421h(new byte[]{2, -118, -36, -26, -36, -30, -14, 24, 8, -121, -58, -23, -53, -29, -7, 13, 5, -123, -57, -18, -57, -27}, new byte[]{68, -26, -77, -121, -88, -117, -100, ByteCompanionObject.MAX_VALUE})).start();
                if (c3167r.f9201a.getBoolean(C3167r.f9197h, true)) {
                    c3159n.m5026m(false);
                }
                c3159n.m5025l();
                return;
            case 19:
                ((C3174u0) obj2).m5091f((C1482o) obj);
                return;
            case 20:
                C3222d c3222d = (C3222d) obj2;
                List list = c3222d.f9425a;
                int adapterPosition = ((C3221c) obj).getAdapterPosition();
                if (adapterPosition != -1) {
                    list.remove(adapterPosition);
                    c3222d.notifyItemRemoved(adapterPosition);
                    c3222d.notifyItemRangeChanged(adapterPosition, list.size());
                    return;
                }
                return;
            case 21:
                HeatManSetView heatManSetView = (HeatManSetView) obj2;
                int i18 = HeatManSetView.f1798t;
                new android.app.AlertDialog.Builder((Context) obj).setTitle(heatManSetView.f1812o).setMessage(heatManSetView.f1813p).setCancelable(true).setIcon(R.drawable.baseline_help_24).show();
                return;
            case 22:
                C3230h c3230h = (C3230h) obj2;
                MessageData messageData2 = (MessageData) obj;
                String string3 = c3230h.f9458g.getText().toString();
                if (c3230h.f9462k == null || string3.isEmpty()) {
                    return;
                }
                InterfaceC3229g interfaceC3229g = c3230h.f9462k;
                MessageData messageData3 = new MessageData(messageData2.getKey(), messageData2.gethasReply(), messageData2.getPackageName(), messageData2.getSender(), string3, (Drawable) null);
                ((C2329n1) interfaceC3229g).getClass();
                Notik notik2 = C2329n1.f6247e;
                if (notik2 != null) {
                    ConcurrentHashMap concurrentHashMap = notik2.f1492e;
                    if (messageData3.gethasReply() && (messageDataM1509c = notik2.m1509c(messageData3.getKey())) != null) {
                        Notik.f1486l.remove(messageDataM1509c);
                        concurrentHashMap.put(messageData3.getKey(), messageDataM1509c);
                        try {
                            notik2.f1493f.m5808y(AbstractC1387m.m2421h(new byte[]{-116, -76, 2, 40, 115, 107, -87, 50, -49, -93, 20, 43, 126, 117}, new byte[]{-31, -47, 113, 91, 18, 12, -52, 65}), AbstractC1030c.m1257i(messageData3));
                        } catch (RuntimeException | JSONException e) {
                            concurrentHashMap.remove(messageData3.getKey());
                            notik2.m1507a(messageDataM1509c);
                            Log.w(AbstractC1387m.m2421h(new byte[]{95, 92, 30, -40, -17}, new byte[]{17, 51, 106, -79, -124, 103, -97, -118}), AbstractC1387m.m2421h(new byte[]{-87, 50, 105, 26, 70, 121, 95, 48, -109, 124, 123, 29, 68, 120, 95, 41, -103, 47, 123, 25, 77, 121, 95, 54, -103, 44, 100, 1}, new byte[]{-4, 92, 8, 120, 42, 28, ByteCompanionObject.MAX_VALUE, 68}), e);
                        }
                    }
                    break;
                }
                ViewParent parent = c3230h.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(c3230h);
                    return;
                }
                return;
            case 23:
                C3485q0 c3485q0 = (C3485q0) obj2;
                List list2 = c3485q0.f10191a;
                int adapterPosition2 = ((C3483p0) obj).getAdapterPosition();
                if (adapterPosition2 != -1) {
                    list2.remove(adapterPosition2);
                    c3485q0.notifyItemRemoved(adapterPosition2);
                    c3485q0.notifyItemRangeChanged(adapterPosition2, list2.size());
                    return;
                }
                return;
            case 24:
                ((C3549c) obj2).m5667m((C1919e) obj);
                return;
            default:
                C3549c c3549c = (C3549c) obj2;
                C3559m c3559m = (C3559m) obj;
                HashMap map = c3549c.f10541i;
                int iIntValue = (((Integer) map.getOrDefault(c3559m.f10578a, 0)).intValue() + 1) % 4;
                map.put(c3559m.f10578a, Integer.valueOf(iIntValue));
                if (iIntValue > 0) {
                    ArrayList arrayList5 = c3549c.f10535c.f10614u;
                    int size = arrayList5.size();
                    while (i15 < size) {
                        Object obj3 = arrayList5.get(i15);
                        i15++;
                        C3559m c3559m2 = (C3559m) obj3;
                        if (C3549c.m5655i(c3559m2) && C3549c.m5656n(c3559m2) == C3549c.m5656n(c3559m) && C3549c.m5654h(c3559m2) != C3549c.m5654h(c3559m)) {
                            map.put(c3559m2.f10578a, 0);
                        }
                    }
                }
                c3549c.m5664j();
                c3549c.f10539g++;
                C3549c.f10533s.execute(new RunnableC0131f(c3549c, iIntValue, c3559m, i13));
                return;
        }
    }
}
