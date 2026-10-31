package androidx.activity;

import android.app.ActivityManager;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.os.SystemClock;
import android.widget.TextView;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.fragment.app.C0566h;
import androidx.profileinstaller.DeviceProfileWriter;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.RunnableC1054m;
import com.bumptech.glide.manager.C1074t;
import com.example.navistart.DPups;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import com.example.navistart.VibVodActivity;
import com.example.navistart.cores.Saa;
import com.example.navistart.mainview.HeatingButtonView;
import java.io.IOException;
import java.text.Collator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
import p005a4.RunnableC0010c;
import p016b1.C0872m;
import p038d1.AbstractC1244d;
import p038d1.C1241a;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1350e2;
import p047e0.RunnableC1352f;
import p051e4.C1482o;
import p078h0.C1652b;
import p080h3.C1658d;
import p084h7.C1683k;
import p100j2.RunnableC1948d;
import p132m0.C2293g0;
import p132m0.C2302i;
import p132m0.C2313k0;
import p132m0.C2328n0;
import p132m0.C2331n3;
import p132m0.C2350s1;
import p132m0.C2358u1;
import p132m0.C2366w1;
import p132m0.RunnableC2269b1;
import p141n.C2455p;
import p190s1.C3166q0;
import p190s1.C3174u0;
import p190s1.EnumC3158m0;
import p190s1.RunnableC3144f0;
import p225w0.C3462h0;
import p225w0.C3468j0;
import p225w0.C3474l0;
import p225w0.C3479n0;
import p225w0.C3497w0;
import p225w0.C3498x;
import p225w0.EnumC3471k0;
import p225w0.EnumC3477m0;
import p235x0.C3549c;
import p235x0.C3559m;
import p258z3.C3720f;

/* JADX INFO: renamed from: androidx.activity.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0131f implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f240b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f241c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f242d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f243e;

    public /* synthetic */ RunnableC0131f(Object obj, int i10, Object obj2, int i11) {
        this.f240b = i11;
        this.f241c = obj;
        this.f242d = i10;
        this.f243e = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:159:0x039d  */
    /* JADX WARN: Code duplicated, block: B:161:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:167:0x03c9 A[Catch: Exception -> 0x03cc, TRY_LEAVE, TryCatch #3 {Exception -> 0x03cc, blocks: (B:165:0x03af, B:167:0x03c9), top: B:303:0x03af }] */
    /* JADX WARN: Code duplicated, block: B:303:0x03af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() {
        TextView textView;
        ActivityManager activityManager;
        C3468j0 c3468j0;
        RunnableC1352f runnableC1352f;
        int i10 = 7;
        int i11 = 3;
        final boolean zEquals = false;
        zEquals = false;
        zEquals = false;
        boolean zLaunchTraySplit = false;
        zEquals = false;
        int i12 = 1;
        int i13 = 8;
        switch (this.f240b) {
            case 0:
                ComponentActivity$activityResultRegistry$1.onLaunch$lambda$0((ComponentActivity$activityResultRegistry$1) this.f241c, this.f242d, (ActivityResultContract.SynchronousResult) this.f243e);
                return;
            case 1:
                ComponentActivity$activityResultRegistry$1.onLaunch$lambda$1((ComponentActivity$activityResultRegistry$1) this.f241c, this.f242d, (IntentSender.SendIntentException) this.f243e);
                return;
            case 2:
                ((DeviceProfileWriter) this.f241c).lambda$result$0(this.f242d, this.f243e);
                return;
            case 3:
                VibVodActivity vibVodActivity = (VibVodActivity) this.f241c;
                Boolean bool = (Boolean) this.f243e;
                int i14 = this.f242d;
                Boolean bool2 = VibVodActivity.f1698g;
                if (!bool.booleanValue()) {
                    if (i14 == 1) {
                        vibVodActivity.f1700c.m1671d(VibVodActivity.f1698g);
                        return;
                    } else if (i14 == 2) {
                        vibVodActivity.f1701d.m1671d(VibVodActivity.f1698g);
                        return;
                    } else {
                        if (i14 != 3) {
                            return;
                        }
                        vibVodActivity.f1702e.m1671d(VibVodActivity.f1698g);
                        return;
                    }
                }
                if (i14 == 1) {
                    Boolean enabled = vibVodActivity.f1700c.getEnabled();
                    VibVodActivity.f1698g = enabled;
                    boolean zBooleanValue = enabled.booleanValue();
                    HeatingButtonView heatingButtonView = vibVodActivity.f1700c;
                    if (zBooleanValue) {
                        heatingButtonView.getClass();
                        heatingButtonView.f1820e = false;
                        heatingButtonView.m1670c(1);
                        return;
                    } else {
                        heatingButtonView.getClass();
                        heatingButtonView.f1820e = true;
                        heatingButtonView.m1670c(3);
                        return;
                    }
                }
                if (i14 == 2) {
                    Boolean enabled2 = vibVodActivity.f1701d.getEnabled();
                    VibVodActivity.f1698g = enabled2;
                    boolean zBooleanValue2 = enabled2.booleanValue();
                    HeatingButtonView heatingButtonView2 = vibVodActivity.f1701d;
                    if (zBooleanValue2) {
                        heatingButtonView2.getClass();
                        heatingButtonView2.f1820e = false;
                        heatingButtonView2.m1670c(1);
                        return;
                    } else {
                        heatingButtonView2.getClass();
                        heatingButtonView2.f1820e = true;
                        heatingButtonView2.m1670c(3);
                        return;
                    }
                }
                if (i14 != 3) {
                    return;
                }
                Boolean enabled3 = vibVodActivity.f1702e.getEnabled();
                VibVodActivity.f1698g = enabled3;
                boolean zBooleanValue3 = enabled3.booleanValue();
                HeatingButtonView heatingButtonView3 = vibVodActivity.f1702e;
                if (zBooleanValue3) {
                    heatingButtonView3.getClass();
                    heatingButtonView3.f1820e = false;
                    heatingButtonView3.m1670c(1);
                    return;
                } else {
                    heatingButtonView3.getClass();
                    heatingButtonView3.f1820e = true;
                    heatingButtonView3.m1670c(3);
                    return;
                }
            case 4:
                final C2302i c2302i = (C2302i) this.f241c;
                Context context = (Context) this.f243e;
                final int i15 = this.f242d;
                try {
                    C1241a c1241aM1284n = AbstractC1031d.m1284n(context);
                    try {
                        zEquals = AbstractC1387m.m2421h(new byte[]{14, 113, -14, 4, -50, 31, -11, -35, 29}, new byte[]{68, 50, -90, 91, -100, 90, -76, -103}).equals(c1241aM1284n.m2229y(AbstractC1387m.m2421h(new byte[]{69, -62, -27, 8, -78, 2, 80, 1, ByteCompanionObject.MAX_VALUE, -13, -56, 38, -42, 17}, new byte[]{32, -95, -115, 103, -110, 72, 19, 85})).trim());
                        c1241aM1284n.close();
                    } catch (Throwable th) {
                        try {
                            c1241aM1284n.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (Exception unused) {
                }
                c2302i.f6133g.post(new Runnable() { // from class: m0.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2302i c2302i2 = c2302i;
                        int i16 = i15;
                        boolean z9 = zEquals;
                        if (i16 == c2302i2.f6136j && c2302i2.isAdded()) {
                            c2302i2.f6134h = z9;
                            c2302i2.f6135i = false;
                            c2302i2.m3692u();
                        }
                    }
                });
                return;
            case 5:
                RunnableC1054m runnableC1054m = (RunnableC1054m) this.f241c;
                int i16 = this.f242d;
                JSONObject jSONObject = (JSONObject) this.f243e;
                ExlantixTelemetryFragment exlantixTelemetryFragment = (ExlantixTelemetryFragment) runnableC1054m.f1148c;
                if (exlantixTelemetryFragment.active && i16 == exlantixTelemetryFragment.generation && exlantixTelemetryFragment.chart != null && exlantixTelemetryFragment.isExlantix()) {
                    exlantixTelemetryFragment.lastResponse = SystemClock.elapsedRealtime();
                    exlantixTelemetryFragment.history.addLast(new C2293g0(exlantixTelemetryFragment.lastResponse, jSONObject != null ? jSONObject.optDouble(AbstractC1387m.m2421h(new byte[]{-119, 118, 109, -7, -34, -89, -58}, new byte[]{-7, 25, 26, -100, -84, -20, -79, 78}), Double.NaN) : Double.NaN));
                    while (!exlantixTelemetryFragment.history.isEmpty() && (exlantixTelemetryFragment.history.size() > 1801 || exlantixTelemetryFragment.lastResponse - ((C2293g0) exlantixTelemetryFragment.history.peekFirst()).f6088a > 1800000)) {
                        exlantixTelemetryFragment.history.removeFirst();
                    }
                    exlantixTelemetryFragment.render(jSONObject);
                    return;
                }
                return;
            case 6:
                C2328n0 c2328n0 = (C2328n0) this.f241c;
                Context context2 = (Context) this.f243e;
                int i17 = this.f242d;
                String str = C2328n0.f6237k;
                try {
                    C1241a c1241aM1284n2 = AbstractC1031d.m1284n(context2);
                    try {
                        if (i17 == c2328n0.f6239c) {
                            if (!AbstractC1387m.m2421h(new byte[]{-18, -105, 23, 59, -110, -93, -72, 37, -3}, new byte[]{-92, -44, 67, 100, -64, -26, -7, 97}).equals(c1241aM1284n2.m2229y(AbstractC1387m.m2421h(new byte[]{48, 6, -43, 18, 66, -119, 117, 6, 10, 55, -8, 60, 38, -102}, new byte[]{85, 101, -67, 125, 98, -61, 54, 82})).trim())) {
                                throw new IOException(AbstractC1387m.m2421h(new byte[]{-26, 10, -92, 38, -34, -74, 46, 17, -47, 8, -96}, new byte[]{-77, 100, -59, 80, -65, -33, 66, 112}));
                            }
                            String strM2237c = AbstractC1244d.m2237c(new C0566h(19, c1241aM1284n2));
                            PackageManager packageManager = context2.getPackageManager();
                            ArrayList arrayList = new ArrayList();
                            for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(0)) {
                                if (i17 == c2328n0.f6239c) {
                                    if ((applicationInfo.flags & 129) == 0) {
                                        CharSequence charSequenceLoadLabel = applicationInfo.loadLabel(packageManager);
                                        String str2 = applicationInfo.packageName;
                                        arrayList.add(new C2313k0(str2, charSequenceLoadLabel == null ? str2 : charSequenceLoadLabel.toString(), applicationInfo.loadIcon(packageManager), packageManager.getLaunchIntentForPackage(applicationInfo.packageName) != null));
                                    }
                                }
                            }
                            arrayList.sort(new C1658d(i12, Collator.getInstance()));
                            c2328n0.f6238b.post(new RunnableC1948d(c2328n0, i17, strM2237c, arrayList, 2));
                        }
                        c1241aM1284n2.close();
                        return;
                    } catch (Throwable th3) {
                        try {
                            c1241aM1284n2.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                } catch (Exception unused2) {
                    c2328n0.f6238b.post(new RunnableC0010c(c2328n0, i17, i13));
                    return;
                }
            case 7:
                C2358u1 c2358u1 = (C2358u1) this.f241c;
                C2350s1 c2350s1 = (C2350s1) this.f243e;
                int i18 = this.f242d;
                C2366w1 c2366w1 = c2358u1.f6376e.f6390a;
                ArrayList arrayList2 = c2366w1.f6401g;
                ArrayList arrayList3 = c2366w1.f6400f;
                Context contextRequireContext = c2366w1.requireContext();
                String str3 = c2350s1.f6345b;
                if (!C2366w1.m3737t(contextRequireContext, str3)) {
                    c2366w1.f6399e.notifyDataSetChanged();
                    return;
                }
                if (!arrayList2.contains(str3)) {
                    arrayList2.add(str3);
                }
                Context applicationContext = c2366w1.requireContext().getApplicationContext();
                if (C2366w1.m3737t(applicationContext, str3)) {
                    DevicePolicyManager devicePolicyManagerM3738u = C2366w1.m3738u(applicationContext);
                    ComponentName componentName = new ComponentName(applicationContext, (Class<?>) DPups.class);
                    if (devicePolicyManagerM3738u == null) {
                        textView = c2366w1.f6398d;
                        if (textView != null) {
                            textView.setVisibility(0);
                        }
                        if (C2366w1.m3737t(c2366w1.requireContext(), str3)) {
                            activityManager = (ActivityManager) c2366w1.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-47, 82, 31, 76, 95, 47, 49, 106}, new byte[]{-80, 49, 107, 37, 41, 70, 69, 19}));
                            if (activityManager != null) {
                                activityManager.killBackgroundProcesses(str3);
                            }
                        }
                        break;
                    } else {
                        try {
                            if (devicePolicyManagerM3738u.isDeviceOwnerApp(applicationContext.getPackageName()) && devicePolicyManagerM3738u.isAdminActive(componentName)) {
                                devicePolicyManagerM3738u.setApplicationHidden(componentName, str3, true);
                                c2366w1.f6402h.postDelayed(new RunnableC2269b1(c2366w1, applicationContext, str3), 700L);
                            } else {
                                textView = c2366w1.f6398d;
                                if (textView != null) {
                                    textView.setVisibility(0);
                                }
                                if (C2366w1.m3737t(c2366w1.requireContext(), str3)) {
                                    activityManager = (ActivityManager) c2366w1.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-47, 82, 31, 76, 95, 47, 49, 106}, new byte[]{-80, 49, 107, 37, 41, 70, 69, 19}));
                                    if (activityManager != null) {
                                        activityManager.killBackgroundProcesses(str3);
                                    }
                                }
                            }
                            break;
                        } catch (Exception unused3) {
                            DevicePolicyManager devicePolicyManagerM3738u2 = C2366w1.m3738u(applicationContext);
                            if (devicePolicyManagerM3738u2 != null) {
                                try {
                                    devicePolicyManagerM3738u2.setApplicationHidden(new ComponentName(applicationContext, (Class<?>) DPups.class), str3, false);
                                    break;
                                } catch (Exception unused4) {
                                }
                            }
                        }
                    }
                } else {
                    textView = c2366w1.f6398d;
                    if (textView != null) {
                        textView.setVisibility(0);
                    }
                    if (C2366w1.m3737t(c2366w1.requireContext(), str3)) {
                        try {
                            activityManager = (ActivityManager) c2366w1.requireContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-47, 82, 31, 76, 95, 47, 49, 106}, new byte[]{-80, 49, 107, 37, 41, 70, 69, 19}));
                            if (activityManager != null) {
                                activityManager.killBackgroundProcesses(str3);
                            }
                            break;
                        } catch (Exception unused5) {
                        }
                    }
                }
                if (i18 < 0 || i18 >= arrayList3.size() || !Objects.equals(((C2350s1) arrayList3.get(i18)).f6345b, str3)) {
                    c2366w1.m3739v();
                } else {
                    arrayList3.remove(i18);
                    c2366w1.f6399e.notifyItemRemoved(i18);
                }
                c2366w1.f6397c.setVisibility(arrayList3.isEmpty() ? 0 : 8);
                c2366w1.f6396b.setVisibility(arrayList3.isEmpty() ? 8 : 0);
                return;
            case 8:
                C2331n3 c2331n3 = (C2331n3) this.f241c;
                C1074t c1074t = (C1074t) this.f243e;
                int i19 = this.f242d;
                ((C1683k) c1074t.f1185e).m2797o((Context) c1074t.f1184d);
                c2331n3.f6255d.post(new RunnableC1948d(c2331n3, i19, c1074t.m1361e(), c1074t, 5));
                return;
            case 9:
                C3166q0 c3166q0 = (C3166q0) this.f241c;
                EnumC3158m0 enumC3158m0 = (EnumC3158m0) this.f243e;
                int i20 = this.f242d;
                RunnableC3144f0 runnableC3144f0 = c3166q0.f9165J;
                Handler handler = c3166q0.f9182r;
                try {
                    int i21 = (enumC3158m0 == EnumC3158m0.f9108i || enumC3158m0 == EnumC3158m0.f9109j) ? 1 : 2;
                    if (i20 > 1) {
                        if (C3166q0.m5033q(enumC3158m0)) {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetvent(1, i21);
                        } else {
                            C1652b.m2734a();
                            C1652b.m2736d().carsetheat(1, i21);
                        }
                    }
                    if (C3166q0.m5033q(enumC3158m0)) {
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(i20, i21);
                    } else {
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(i20, i21);
                    }
                } catch (Throwable unused6) {
                }
                handler.removeCallbacks(runnableC3144f0);
                handler.postDelayed(runnableC3144f0, 900L);
                return;
            case 10:
                C3174u0 c3174u0 = (C3174u0) this.f241c;
                int i22 = this.f242d;
                List<ResolveInfo> list = (List) this.f243e;
                if (c3174u0.isAttachedToWindow() && c3174u0.f9223f && i22 == c3174u0.f9233p) {
                    HashSet hashSet = new HashSet();
                    for (ResolveInfo resolveInfo : list) {
                        String str4 = resolveInfo.activityInfo.packageName;
                        if (!str4.equals(c3174u0.getContext().getPackageName()) && hashSet.add(str4)) {
                            c3174u0.f9226i.add(resolveInfo);
                        }
                    }
                    c3174u0.m5095j();
                    return;
                }
                return;
            case 11:
                C3174u0 c3174u1 = (C3174u0) this.f241c;
                C1482o c1482o = (C1482o) this.f243e;
                String str5 = (String) c1482o.f3600d;
                int i23 = this.f242d;
                i12 = str5 == null ? 0 : 1;
                String str6 = (String) c1482o.f3599c;
                try {
                    zLaunchTraySplit = i12 != 0 ? C1652b.m2734a().m2755j().launchTraySplit(new Saa(str6, str5, c1482o.f3597a, c1482o.f3598b), i23) : C1652b.m2734a().m2755j().launchSingleWindow(str6, i23);
                    break;
                } catch (RuntimeException unused7) {
                }
                c3174u1.post(new RunnableC1350e2(c3174u1, zLaunchTraySplit, c1482o, i10));
                return;
            case 12:
                C3174u0 c3174u2 = (C3174u0) this.f241c;
                int i24 = this.f242d;
                HashSet hashSet2 = (HashSet) this.f243e;
                PackageManager packageManager2 = c3174u2.getContext().getPackageManager();
                List<ResolveInfo> listQueryIntentActivities = packageManager2.queryIntentActivities(new Intent(AbstractC1387m.m2421h(new byte[]{-114, -106, -35, 46, 111, -67, -81, 67, -122, -106, -51, 57, 110, -96, -27, 12, -116, -116, -48, 51, 110, -6, -122, 44, -90, -74}, new byte[]{-17, -8, -71, 92, 0, -44, -53, 109})).addCategory(AbstractC1387m.m2421h(new byte[]{97, 104, 82, 75, 7, -107, 29, 63, 105, 104, 66, 92, 6, -120, 87, 114, 97, 114, 83, 94, 7, -114, 0, 63, 76, 71, 99, 119, 43, -76, 60, 67}, new byte[]{0, 6, 54, 57, 104, -4, 121, 17})), 0);
                listQueryIntentActivities.sort(new ResolveInfo.DisplayNameComparator(packageManager2));
                c3174u2.post(new RunnableC1948d(c3174u2, i24, listQueryIntentActivities, hashSet2, 7));
                return;
            case 13:
                C3474l0 c3474l0 = (C3474l0) this.f241c;
                String str7 = (String) this.f243e;
                int i25 = this.f242d;
                if (c3474l0.m5437c(i25)) {
                    try {
                        if (!c3474l0.f10093n.isEmpty() && !c3474l0.m5445j0()) {
                            c3474l0.m5438c0();
                            c3474l0.f10085f.m5460c();
                            if (!C3479n0.m5458i(str7)) {
                                c3474l0.m5435V(EnumC3471k0.f10043c, i25);
                                return;
                            }
                        }
                        if (c3474l0.f10090k) {
                            c3474l0.m5435V(EnumC3471k0.f10043c, i25);
                            return;
                        }
                        c3474l0.f10081b.getClass();
                        if (C3720f.m5930c(C3720f.m5932j()).isEmpty()) {
                            c3474l0.m5435V(EnumC3471k0.f10042b, i25);
                            return;
                        }
                        C0872m c0872mM5459a = c3474l0.f10085f.m5459a(str7);
                        EnumC3477m0 enumC3477m0 = (EnumC3477m0) c0872mM5459a.f601c;
                        if (enumC3477m0 != EnumC3477m0.f10107d && enumC3477m0 != EnumC3477m0.f10108e) {
                            if (enumC3477m0 == EnumC3477m0.f10116m) {
                                int i26 = c3474l0.f10087h.get();
                                if (c3474l0.f10092m != null && c3474l0.f10098s != null && c3474l0.f10095p == i26 && c3474l0.m5445j0()) {
                                    c3474l0.f10082c.m3808d(c3474l0.f10092m.f10030a, (String) c0872mM5459a.f603e, new C3462h0(c3474l0, i25, i26));
                                    c3474l0.f10088i = false;
                                    c3474l0.f10096q = -1;
                                    return;
                                }
                                c3474l0.m5435V(EnumC3471k0.f10043c, i25);
                                return;
                            }
                            if (enumC3477m0 != EnumC3477m0.f10117n) {
                                if (enumC3477m0 != EnumC3477m0.f10105b) {
                                    c3474l0.f10082c.m3809f(c0872mM5459a);
                                    return;
                                } else {
                                    c3474l0.f10088i = false;
                                    c3474l0.f10096q = -1;
                                    return;
                                }
                            }
                            c3474l0.f10088i = false;
                            c3474l0.f10096q = -1;
                            C2455p c2455p = c3474l0.f10082c;
                            if (((C3498x) c2455p.f6648c).f10274T) {
                                ((C3498x) c2455p.f6648c).m5521C(AbstractC1387m.m2421h(new byte[]{-3, 58, 60, 74, -96, 44, -94, -57, -3, 62, 60, 74, -102, 43}, new byte[]{-98, 91, 80, 38, -1, 79, -61, -87}));
                                return;
                            }
                            return;
                        }
                        c3474l0.f10096q = i25;
                        C3497w0 c3497w0 = c3474l0.f10098s;
                        if (c3497w0 != null && c3497w0.f10248a.isEmpty() && (c3468j0 = c3474l0.f10092m) != null && c3468j0.f10032c) {
                            c3474l0.m5438c0();
                        }
                        if (c3474l0.f10098s == null || !c3474l0.m5445j0() || c3474l0.f10095p != c3474l0.f10087h.get()) {
                            c3474l0.f10082c.m3809f(c0872mM5459a);
                            c3474l0.m5434S();
                            return;
                        }
                        C2455p c2455p2 = c3474l0.f10082c;
                        C3479n0 c3479n0 = c3474l0.f10085f;
                        c3479n0.f10123c = c3474l0.f10098s;
                        c3479n0.f10128h = true;
                        c2455p2.m3809f(c3479n0.m5462f());
                        return;
                    } catch (Exception unused8) {
                        c3474l0.m5438c0();
                        c3474l0.m5435V(EnumC3471k0.f10043c, i25);
                        return;
                    }
                }
                return;
            default:
                C3549c c3549c = (C3549c) this.f241c;
                int i27 = this.f242d;
                C3559m c3559m = (C3559m) this.f243e;
                Handler handler2 = c3549c.f10534b;
                try {
                    if (i27 > 0) {
                        try {
                            if (C3549c.m5654h(c3559m)) {
                                C1652b.m2734a();
                                C1652b.m2736d().carsetvent(1, C3549c.m5656n(c3559m));
                            } else {
                                C1652b.m2734a();
                                C1652b.m2736d().carsetheat(1, C3549c.m5656n(c3559m));
                            }
                        } catch (Exception unused9) {
                            handler2.post(new RunnableC1352f(c3549c, i12));
                            runnableC1352f = new RunnableC1352f(c3549c, i11);
                        }
                    }
                    if (C3549c.m5654h(c3559m)) {
                        C1652b.m2734a();
                        C1652b.m2736d().carsetheat(i27 + 1, C3549c.m5656n(c3559m));
                    } else {
                        C1652b.m2734a();
                        C1652b.m2736d().carsetvent(i27 + 1, C3549c.m5656n(c3559m));
                    }
                    runnableC1352f = new RunnableC1352f(c3549c, i11);
                    handler2.post(runnableC1352f);
                    return;
                } catch (Throwable th5) {
                    handler2.post(new RunnableC1352f(c3549c, i11));
                    throw th5;
                }
        }
    }

    public /* synthetic */ RunnableC0131f(Object obj, Object obj2, int i10, int i11) {
        this.f240b = i11;
        this.f241c = obj;
        this.f243e = obj2;
        this.f242d = i10;
    }
}
