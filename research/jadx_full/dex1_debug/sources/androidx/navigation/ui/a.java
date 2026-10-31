package androidx.navigation.ui;

import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.core.app.ActivityCompat;
import androidx.navigation.NavController;
import androidx.recyclerview.widget.RecyclerView;
import b1.m;
import c5.h;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import com.example.navistart.MainActivity;
import com.example.navistart.Notik;
import com.example.navistart.PermActivity;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.W;
import com.example.navistart.mainview.HeatManSetView;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.protobuf.q;
import com.woha.wifim.MainWifiManadger;
import e0.j2;
import e0.p3;
import e0.x1;
import g0.d;
import g0.e;
import h0.b;
import j0.c;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.c3;
import m0.e1;
import m0.e2;
import m0.f1;
import m0.g1;
import m0.h1;
import m0.i1;
import m0.k0;
import m0.k2;
import m0.k3;
import m0.l;
import m0.l3;
import m0.m0;
import m0.n;
import m0.n0;
import m0.n1;
import m0.n3;
import m0.o;
import m0.s1;
import m0.t0;
import m0.t2;
import m0.u0;
import m0.v0;
import m0.v1;
import m0.w1;
import m0.x2;
import m0.y0;
import m0.z0;
import m7.f;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Request$Builder;
import org.json.JSONException;
import ru.transfer.MessageData;
import s1.r;
import t1.g;
import w0.p0;
import w0.q0;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f209b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9, Object obj, Object obj2) {
        this.f209b = i9;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        Notik notik;
        int i9;
        Boolean boolValueOf;
        Display[] displayArr;
        int i10;
        Class cls;
        MessageData messageDataC;
        int i11 = this.f209b;
        int i12 = 0;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i11) {
            case 0:
                NavigationUI.a((NavController) obj2, (AppBarConfiguration) obj, view);
                return;
            case 1:
                String str = MainActivity.f688e1;
                ((MainActivity) obj2).O((MaterialSwitch) obj);
                return;
            case 2:
                PermActivity permActivity = (PermActivity) obj2;
                Intent intent = (Intent) obj;
                String str2 = PermActivity.c;
                try {
                    permActivity.startActivityForResult(intent, 0);
                    return;
                } catch (ActivityNotFoundException unused) {
                    return;
                }
            case 3:
                String str3 = PermActivity.c;
                ActivityCompat.requestPermissions((PermActivity) obj2, new String[]{(String) obj}, 1);
                return;
            case 4:
                TestSpaceActivity testSpaceActivity = (TestSpaceActivity) obj2;
                Button button = (Button) obj;
                if (testSpaceActivity.e) {
                    b.a().j().sl(null);
                    button.setBackgroundResource(2131165574);
                    testSpaceActivity.f849f.setVisibility(8);
                    testSpaceActivity.e = false;
                    return;
                }
                button.setBackgroundResource(2131165573);
                testSpaceActivity.f849f.setVisibility(0);
                testSpaceActivity.e = true;
                b.a().j().sl(testSpaceActivity.f850g);
                return;
            case 5:
                m mVar = (m) obj2;
                e eVar = (e) obj;
                mVar.getClass();
                eVar.getMsg();
                ((LinearLayout) mVar.d).removeView(eVar);
                return;
            case 6:
                e eVar2 = (e) obj2;
                MessageData messageData = (MessageData) obj;
                d dVar = eVar2.f2338i;
                if (dVar != null && (notik = (Notik) ((m) dVar).e) != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(messageData);
                    Notik.f(notik, arrayList);
                }
                eVar2.setVisibility(8);
                return;
            case 7:
                String str4 = ((l) obj).f3502b;
                o oVar = ((n) obj2).f3525a;
                try {
                    Intent launchIntentForPackage = oVar.requireContext().getPackageManager().getLaunchIntentForPackage(str4);
                    if (launchIntentForPackage == null || (i9 = oVar.e) < 0 || i9 >= oVar.f3553f.length) {
                        return;
                    }
                    ActivityOptions activityOptionsB = Build$VERSION.SDK_INT >= 26 ? h.b(ActivityOptions.makeBasic(), oVar.f3553f[oVar.e].getDisplayId()) : null;
                    launchIntentForPackage.addFlags(402685952);
                    if (oVar.u().booleanValue()) {
                        if (activityOptionsB != null) {
                            k.u(oVar.requireContext(), launchIntentForPackage, activityOptionsB.toBundle());
                        } else {
                            k.u(oVar.requireContext(), launchIntentForPackage, null);
                        }
                        o.t(oVar, str4);
                        return;
                    }
                    return;
                } catch (Exception unused2) {
                    return;
                }
            case 8:
                ExlantixTelemetryFragment.u((LinearLayout) obj2, (Button) obj, view);
                return;
            case 9:
                k0 k0Var = (k0) obj;
                n0 n0Var = ((m0) obj2).f3512b;
                if (n0Var.d) {
                    return;
                }
                try {
                    Intent launchIntentForPackage2 = n0Var.requireContext().getPackageManager().getLaunchIntentForPackage(k0Var.f3489a);
                    if (launchIntentForPackage2 == null) {
                        throw new IllegalStateException();
                    }
                    n0Var.startActivity(launchIntentForPackage2);
                    return;
                } catch (Exception unused3) {
                    Toast.makeText(n0Var.requireContext(), 2131952005, 0).show();
                    return;
                }
            case 10:
                v0 v0Var = (v0) obj2;
                int bindingAdapterPosition = ((u0) obj).getBindingAdapterPosition();
                if (bindingAdapterPosition != -1) {
                    z0 z0Var = (z0) v0Var.f3612b.c;
                    ArrayList arrayList2 = z0Var.f3638b;
                    if (bindingAdapterPosition < 0 || bindingAdapterPosition >= arrayList2.size()) {
                        return;
                    }
                    t0 t0Var = (t0) arrayList2.get(bindingAdapterPosition);
                    Spinner spinner = new Spinner(z0Var.requireContext(), 0);
                    String str5 = c.c;
                    int i13 = (int) (16 * Resources.getSystem().getDisplayMetrics().density);
                    spinner.setPadding(i13, i13, i13, i13);
                    b.a();
                    b.f().n(spinner, t0Var.f3590b);
                    new AlertDialog$Builder(z0Var.requireContext()).setTitle(2131952142).setView(spinner).setNegativeButton(android.R$string.cancel, (DialogInterface$OnClickListener) null).setPositiveButton(android.R$string.ok, new y0(z0Var, spinner, t0Var, 0)).show();
                    return;
                }
                return;
            case 11:
                g1 g1Var = (g1) obj2;
                int bindingAdapterPosition2 = ((f1) obj).getBindingAdapterPosition();
                androidx.fragment.app.h hVar = g1Var.f3432a;
                if (hVar == null || bindingAdapterPosition2 == -1) {
                    return;
                }
                h1 h1Var = (h1) g1Var.f3433b.get(bindingAdapterPosition2);
                i1 i1Var = (i1) hVar.c;
                String str6 = i1.f3465i;
                Context applicationContext = i1Var.requireContext().getApplicationContext();
                RecyclerView recyclerView = i1Var.f3472b;
                String str7 = i1Var.f3474g;
                String string = i1Var.getString(2131952036);
                String string2 = i1Var.getString(2131952035);
                h1Var.f3447i = true;
                h1Var.f3448j = e0.m.h(new byte[]{-11, -24}, new byte[]{-59, -51, -47, -107, -109, -110, -74, 69});
                i1Var.f3472b.getAdapter().notifyItemChanged(bindingAdapterPosition2);
                Request requestBuild = new Request$Builder().url(h1Var.f3446h.trim()).build();
                b.a();
                Call callNewCall = b.m().newCall(requestBuild);
                e1 e1Var = new e1();
                e1Var.f3406i = i1Var;
                e1Var.c = recyclerView;
                e1Var.d = h1Var;
                e1Var.e = string;
                e1Var.f3402b = bindingAdapterPosition2;
                e1Var.f3405h = applicationContext;
                e1Var.f3403f = str7;
                e1Var.f3404g = string2;
                callNewCall.enqueue(e1Var);
                return;
            case 12:
                s1 s1Var = (s1) obj;
                w1 w1Var = ((v1) obj2).f3613a;
                StringBuilder sb = new StringBuilder();
                u0.a aVarO = b.o();
                byte[] bArr = e0.m.f1896j;
                String[] strArr = p3.f1924a;
                q.s(bArr, aVarO, "", sb);
                q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                String strG = q.g(sb, x1.f1989q);
                u0.a aVarO2 = b.o();
                byte[] bArr2 = e0.m.f1892f;
                if (q.w(bArr2, aVarO2, "", strG)) {
                    b.a();
                    boolValueOf = Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{108}, new byte[]{92, 67, -91, 60, 124, -112, -2, 7}, b.o(), q.h(e0.m.f1893g, b.o(), new String(bArr2)), 0))));
                } else {
                    boolValueOf = Boolean.FALSE;
                }
                if (boolValueOf.booleanValue()) {
                    try {
                        Intent launchIntentForPackage3 = w1Var.requireContext().getPackageManager().getLaunchIntentForPackage(s1Var.f3585b);
                        if (launchIntentForPackage3 != null && (displayArr = w1Var.f3621j) != null && (i10 = w1Var.f3620i) >= 0 && i10 < displayArr.length) {
                            ActivityOptions activityOptionsB2 = Build$VERSION.SDK_INT >= 26 ? h.b(ActivityOptions.makeBasic(), w1Var.f3621j[w1Var.f3620i].getDisplayId()) : null;
                            launchIntentForPackage3.addFlags(268435456);
                            launchIntentForPackage3.addFlags(131072);
                            launchIntentForPackage3.addFlags(2097152);
                            if (activityOptionsB2 != null) {
                                k.u(w1Var.requireContext(), launchIntentForPackage3, activityOptionsB2.toBundle());
                            } else {
                                k.u(w1Var.requireContext(), launchIntentForPackage3, null);
                            }
                            if (w1Var.getParentFragment() instanceof l0.a) {
                                ((l0.a) w1Var.getParentFragment()).dismissAllowingStateLoss();
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
                String str8 = e2.f3407j;
                new Handler().postDelayed((e0.v0) obj2, 3000L);
                new Handler().postDelayed((e0.v0) obj, 1L);
                return;
            case 14:
                String str9 = e2.f3407j;
                new Handler().postDelayed((e0.v0) obj2, 1L);
                new Handler().postDelayed((e0.v0) obj, 3000L);
                return;
            case 15:
                File file = (File) obj;
                c3 c3Var = ((x2) obj2).f3628a;
                if (c3Var.f3370v) {
                    return;
                }
                if (file.isDirectory()) {
                    c3Var.D(file);
                    return;
                }
                if (c3Var.f3370v || !file.exists() || file.isDirectory()) {
                    return;
                }
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                if (c3.B(file)) {
                    arrayList3.add(c3Var.getString(2131952029));
                    arrayList4.add(new t2(c3Var, file, 1));
                } else {
                    arrayList3.add(c3Var.getString(2131952714));
                    arrayList4.add(new t2(c3Var, file, 2));
                }
                arrayList3.add(c3Var.getString(2131952715));
                arrayList4.add(new t2(c3Var, file, 3));
                new AlertDialog$Builder(c3Var.requireContext(), 2132017903).setTitle(c3Var.getString(2131952687, file.getName())).setItems((CharSequence[]) arrayList3.toArray(new String[0]), new b7.h(2, arrayList4)).setNegativeButton(2131951882, (DialogInterface$OnClickListener) null).show();
                return;
            case 16:
                k3 k3Var = (k3) obj;
                n3 n3Var = ((l3) obj2).f3508b;
                try {
                    if (n3.t().booleanValue()) {
                        Context contextRequireContext = n3Var.requireContext();
                        File file2 = k3Var.e;
                        String str10 = k3Var.f3499a;
                        if (file2.isFile() && file2.canRead()) {
                            Uri uriD = n3Var.f3544n.d(file2);
                            Intent intentPutExtra = new Intent(e0.m.h(new byte[]{-20, 24, 7, 76, -92, -99, 109, 63, -28, 24, 23, 91, -91, ByteCompanionObject.MIN_VALUE, 39, 112, -18, 2, 10, 81, -91, -38, 95, 88, -56, 33}, new byte[]{-115, 118, 99, 62, -53, -12, 9, 17})).setPackage(e0.m.h(new byte[]{-18, -106, 80, -54, 36, -14, 21, -45, -18, -120, 86, -118, 124, -19, 29, -43}, new byte[]{-127, -28, 55, -28, 82, -101, 113, -74})).setDataAndType(uriD, e0.m.h(new byte[]{40, 42, 46, -16, 36, 42, -2}, new byte[]{94, 67, 74, -107, 75, 5, -44, 27})).addFlags(1).putExtra(e0.m.h(new byte[]{34, 74, 14, -70, -1}, new byte[]{86, 35, 122, -42, -102, 105, -38, -16}), str10);
                            intentPutExtra.setClipData(ClipData.newUri(contextRequireContext.getContentResolver(), str10, uriD));
                            n3Var.startActivity(intentPutExtra);
                        } else {
                            Toast.makeText(contextRequireContext, 2131952746, 1).show();
                        }
                    }
                    return;
                } catch (ActivityNotFoundException unused5) {
                    Toast.makeText(n3Var.requireContext(), 2131952756, 1).show();
                    return;
                } catch (Exception unused6) {
                    Toast.makeText(n3Var.requireContext(), 2131952750, 1).show();
                    return;
                }
            case 17:
                ScanResult scanResult = (ScanResult) obj;
                MainWifiManadger mainWifiManadger = ((f) obj2).d.f3679a;
                String str11 = MainWifiManadger.f1632v;
                String str12 = scanResult.SSID;
                MainWifiManadger.f1632v = str12;
                String str13 = scanResult.capabilities;
                if (str13 == null) {
                    str13 = "";
                }
                mainWifiManadger.f1643o = str13;
                List<WifiConfiguration> configuredNetworks = mainWifiManadger.f1633b.getConfiguredNetworks();
                if (configuredNetworks != null) {
                    for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                        String str14 = wifiConfiguration.SSID;
                        if (str14 != null) {
                            StringBuilder sb2 = new StringBuilder();
                            q.u(new byte[]{-22}, new byte[]{-56, 80, 20, 101, -65, 68, 51, -35}, sb2, str12);
                            sb2.append(e0.m.h(new byte[]{-113}, new byte[]{-83, 110, -108, 91, 31, 76, 70, -25}));
                            if (str14.equals(sb2.toString())) {
                                mainWifiManadger.f1633b.disconnect();
                                mainWifiManadger.f1633b.enableNetwork(wifiConfiguration.networkId, true);
                                mainWifiManadger.f1633b.reconnect();
                                k.x(mainWifiManadger.getApplicationContext(), mainWifiManadger.getResources().getString(2131952868) + str12);
                                return;
                            }
                        }
                    }
                }
                boolean zU = MainWifiManadger.u(mainWifiManadger.f1643o);
                String str15 = mainWifiManadger.f1643o;
                if (zU) {
                    mainWifiManadger.t(str12, "", str15);
                    return;
                } else if (str15 == null || !str15.toUpperCase().contains(e0.m.h(new byte[]{38, -17, -107}, new byte[]{99, -82, -59, -70, 27, 119, 91, -27}))) {
                    mainWifiManadger.w(str12, mainWifiManadger.f1643o);
                    return;
                } else {
                    k.x(mainWifiManadger.getApplicationContext(), mainWifiManadger.getString(2131952871));
                    return;
                }
            case 18:
                s1.n nVar = (s1.n) obj2;
                r rVar = nVar.f5148b;
                j0.e eVar3 = (j0.e) obj;
                nVar.j();
                if (eVar3.f2872a == j0.d.f2870b && eVar3.f2873b != null) {
                    Bundle bundle = new Bundle();
                    String strH = e0.m.h(new byte[]{34, 30, 89}, new byte[]{70, 119, 42, -103, -6, -88, 87, -36});
                    b.a();
                    bundle.putInt(strH, b.n().getGuDisplayID());
                    n0.d dVar2 = eVar3.f2873b;
                    if (dVar2 == n0.d.f3816l) {
                        cls = o.class;
                    } else if (dVar2 == n0.d.f3809h0) {
                        cls = k2.class;
                    } else if (dVar2 == n0.d.A0) {
                        bundle.putBoolean(e0.m.h(new byte[]{-121, 67, 16, 79, 99, 19, 70, ByteCompanionObject.MIN_VALUE, -70, 65, 24, 81, 109, 20, 119, -116, -116, 70, 18, 83}, new byte[]{-27, 34, 119, Base64.padSymbol, 2, 102, 40, -28}), true);
                        cls = w1.class;
                    }
                    Intent intent2 = new Intent(nVar.getContext(), (Class<?>) W.class);
                    intent2.putExtra(e0.m.h(new byte[]{21, 40, -79, -61, -122, 29, 36, -57, 44, 8, -123, -22, -76, 44, 19, -29, 54}, new byte[]{115, 90, -48, -92, -21, 120, 74, -77}), e0.m.h(new byte[]{11, -117, -102, -92, -76, 93, 8, 15, 22, -103, -117, -82, -66, 93}, new byte[]{89, -34, -44, -5, -16, 20, 73, 67}));
                    intent2.putExtra(e0.m.h(new byte[]{100, -102, -95, 12, -10, -8, -5, -71, 93, -117, -84, 10, -24, -18}, new byte[]{2, -24, -64, 107, -101, -99, -107, -51}), cls.getName());
                    intent2.putExtra(e0.m.h(new byte[]{-122, -22, -44, -32, 80, 96, -93, 18, -65, -7, -57, -32, 78}, new byte[]{-32, -104, -75, -121, Base64.padSymbol, 5, -51, 102}), bundle);
                    intent2.addFlags(402653184);
                    nVar.getContext().startActivity(intent2);
                    if (rVar.f5196a.getBoolean(r.f5192h, true)) {
                        nVar.m(false);
                    }
                    nVar.l();
                    return;
                }
                new Thread(new j2(25, nVar, eVar3), e0.m.h(new byte[]{2, -118, -36, -26, -36, -30, -14, 24, 8, -121, -58, -23, -53, -29, -7, 13, 5, -123, -57, -18, -57, -27}, new byte[]{68, -26, -77, -121, -88, -117, -100, ByteCompanionObject.MAX_VALUE})).start();
                if (rVar.f5196a.getBoolean(r.f5192h, true)) {
                    nVar.m(false);
                }
                nVar.l();
                return;
            case 19:
                ((s1.u0) obj2).f((e4.o) obj);
                return;
            case 20:
                t0.d dVar3 = (t0.d) obj2;
                List list = dVar3.f5332a;
                int adapterPosition = ((t0.c) obj).getAdapterPosition();
                if (adapterPosition != -1) {
                    list.remove(adapterPosition);
                    dVar3.notifyItemRemoved(adapterPosition);
                    dVar3.notifyItemRangeChanged(adapterPosition, list.size());
                    return;
                }
                return;
            case 21:
                HeatManSetView heatManSetView = (HeatManSetView) obj2;
                int i14 = HeatManSetView.t;
                new android.app.AlertDialog$Builder((Context) obj).setTitle(heatManSetView.f962o).setMessage(heatManSetView.f963p).setCancelable(true).setIcon(2131165316).show();
                return;
            case 22:
                t1.h hVar2 = (t1.h) obj2;
                MessageData messageData2 = (MessageData) obj;
                String string3 = hVar2.f5349g.getText().toString();
                if (hVar2.f5353k == null || string3.isEmpty()) {
                    return;
                }
                g gVar = hVar2.f5353k;
                MessageData messageData3 = new MessageData(messageData2.getKey(), messageData2.gethasReply(), messageData2.getPackageName(), messageData2.getSender(), string3, (Drawable) null);
                ((n1) gVar).getClass();
                Notik notik2 = n1.e;
                if (notik2 != null) {
                    ConcurrentHashMap concurrentHashMap = notik2.e;
                    if (messageData3.gethasReply() && (messageDataC = notik2.c(messageData3.getKey())) != null) {
                        Notik.f793l.remove(messageDataC);
                        concurrentHashMap.put(messageData3.getKey(), messageDataC);
                        try {
                            notik2.f797f.y(e0.m.h(new byte[]{-116, -76, 2, 40, 115, 107, -87, 50, -49, -93, 20, 43, 126, 117}, new byte[]{-31, -47, 113, 91, 18, 12, -52, 65}), com.bumptech.glide.c.i(messageData3));
                        } catch (RuntimeException | JSONException e) {
                            concurrentHashMap.remove(messageData3.getKey());
                            notik2.a(messageDataC);
                            Log.w(e0.m.h(new byte[]{95, 92, 30, -40, -17}, new byte[]{17, 51, 106, -79, -124, 103, -97, -118}), e0.m.h(new byte[]{-87, 50, 105, 26, 70, 121, 95, 48, -109, 124, 123, 29, 68, 120, 95, 41, -103, 47, 123, 25, 77, 121, 95, 54, -103, 44, 100, 1}, new byte[]{-4, 92, 8, 120, 42, 28, ByteCompanionObject.MAX_VALUE, 68}), e);
                        }
                    }
                    break;
                }
                ViewParent parent = hVar2.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(hVar2);
                    return;
                }
                return;
            case 23:
                q0 q0Var = (q0) obj2;
                List list2 = q0Var.f5756a;
                int adapterPosition2 = ((p0) obj).getAdapterPosition();
                if (adapterPosition2 != -1) {
                    list2.remove(adapterPosition2);
                    q0Var.notifyItemRemoved(adapterPosition2);
                    q0Var.notifyItemRangeChanged(adapterPosition2, list2.size());
                    return;
                }
                return;
            case 24:
                ((x0.c) obj2).m((j0.e) obj);
                return;
            default:
                x0.c cVar = (x0.c) obj2;
                x0.m mVar2 = (x0.m) obj;
                HashMap map = cVar.f5968i;
                int iIntValue = (((Integer) map.getOrDefault(mVar2.f5993a, 0)).intValue() + 1) % 4;
                map.put(mVar2.f5993a, Integer.valueOf(iIntValue));
                if (iIntValue > 0) {
                    ArrayList arrayList5 = cVar.c.f6018u;
                    int size = arrayList5.size();
                    while (i12 < size) {
                        Object obj3 = arrayList5.get(i12);
                        i12++;
                        x0.m mVar3 = (x0.m) obj3;
                        if (x0.c.i(mVar3) && x0.c.n(mVar3) == x0.c.n(mVar2) && x0.c.h(mVar3) != x0.c.h(mVar2)) {
                            map.put(mVar3.f5993a, 0);
                        }
                    }
                }
                cVar.j();
                cVar.f5966g++;
                x0.c.f5963s.execute(new androidx.activity.f(cVar, iIntValue, mVar2, 14));
                return;
        }
    }
}
