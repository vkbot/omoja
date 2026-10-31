package androidx.activity;

import android.app.ActivityManager;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender$SendIntentException;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ResolveInfo$DisplayNameComparator;
import android.os.Handler;
import android.os.SystemClock;
import android.widget.TextView;
import androidx.activity.result.contract.ActivityResultContract$SynchronousResult;
import androidx.profileinstaller.DeviceProfileWriter;
import com.bumptech.glide.manager.t;
import com.example.navistart.DPups;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import com.example.navistart.VibVodActivity;
import com.example.navistart.cores.Saa;
import com.example.navistart.mainview.HeatingButtonView;
import e0.e2;
import e4.o;
import java.io.IOException;
import java.text.Collator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.b1;
import m0.g0;
import m0.k0;
import m0.n0;
import m0.n3;
import m0.s1;
import m0.u1;
import m0.w1;
import n.p;
import org.json.JSONObject;
import s1.f0;
import s1.m0;
import s1.q0;
import s1.u0;
import w0.h0;
import w0.j0;
import w0.l0;
import w0.w0;
import w0.x;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f105b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(Object obj, int i9, Object obj2, int i10) {
        this.f105b = i10;
        this.c = obj;
        this.d = i9;
        this.e = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        j0 j0Var;
        e0.f fVar;
        boolean zEquals = false;
        zEquals = false;
        zEquals = false;
        boolean zLaunchTraySplit = false;
        zEquals = false;
        switch (this.f105b) {
            case 0:
                ComponentActivity$activityResultRegistry$1.c((ComponentActivity$activityResultRegistry$1) this.c, this.d, (ActivityResultContract$SynchronousResult) this.e);
                return;
            case 1:
                ComponentActivity$activityResultRegistry$1.b((ComponentActivity$activityResultRegistry$1) this.c, this.d, (IntentSender$SendIntentException) this.e);
                return;
            case 2:
                DeviceProfileWriter.a((DeviceProfileWriter) this.c, this.d, this.e);
                return;
            case 3:
                VibVodActivity vibVodActivity = (VibVodActivity) this.c;
                Boolean bool = (Boolean) this.e;
                int i9 = this.d;
                Boolean bool2 = VibVodActivity.f885g;
                if (!bool.booleanValue()) {
                    if (i9 == 1) {
                        vibVodActivity.c.d(VibVodActivity.f885g);
                        return;
                    } else if (i9 == 2) {
                        vibVodActivity.d.d(VibVodActivity.f885g);
                        return;
                    } else {
                        if (i9 != 3) {
                            return;
                        }
                        vibVodActivity.e.d(VibVodActivity.f885g);
                        return;
                    }
                }
                if (i9 == 1) {
                    Boolean enabled = vibVodActivity.c.getEnabled();
                    VibVodActivity.f885g = enabled;
                    boolean zBooleanValue = enabled.booleanValue();
                    HeatingButtonView heatingButtonView = vibVodActivity.c;
                    if (zBooleanValue) {
                        heatingButtonView.getClass();
                        heatingButtonView.e = false;
                        heatingButtonView.c(1);
                        return;
                    } else {
                        heatingButtonView.getClass();
                        heatingButtonView.e = true;
                        heatingButtonView.c(3);
                        return;
                    }
                }
                if (i9 == 2) {
                    Boolean enabled2 = vibVodActivity.d.getEnabled();
                    VibVodActivity.f885g = enabled2;
                    boolean zBooleanValue2 = enabled2.booleanValue();
                    HeatingButtonView heatingButtonView2 = vibVodActivity.d;
                    if (zBooleanValue2) {
                        heatingButtonView2.getClass();
                        heatingButtonView2.e = false;
                        heatingButtonView2.c(1);
                        return;
                    } else {
                        heatingButtonView2.getClass();
                        heatingButtonView2.e = true;
                        heatingButtonView2.c(3);
                        return;
                    }
                }
                if (i9 != 3) {
                    return;
                }
                Boolean enabled3 = vibVodActivity.e.getEnabled();
                VibVodActivity.f885g = enabled3;
                boolean zBooleanValue3 = enabled3.booleanValue();
                HeatingButtonView heatingButtonView3 = vibVodActivity.e;
                if (zBooleanValue3) {
                    heatingButtonView3.getClass();
                    heatingButtonView3.e = false;
                    heatingButtonView3.c(1);
                    return;
                } else {
                    heatingButtonView3.getClass();
                    heatingButtonView3.e = true;
                    heatingButtonView3.c(3);
                    return;
                }
            case 4:
                m0.i iVar = (m0.i) this.c;
                Context context = (Context) this.e;
                int i10 = this.d;
                try {
                    d1.a aVarN = com.bumptech.glide.d.n(context);
                    try {
                        zEquals = e0.m.h(new byte[]{14, 113, -14, 4, -50, 31, -11, -35, 29}, new byte[]{68, 50, -90, 91, -100, 90, -76, -103}).equals(aVarN.y(e0.m.h(new byte[]{69, -62, -27, 8, -78, 2, 80, 1, ByteCompanionObject.MAX_VALUE, -13, -56, 38, -42, 17}, new byte[]{32, -95, -115, 103, -110, 72, 19, 85})).trim());
                        aVarN.close();
                    } catch (Throwable th) {
                        try {
                            aVarN.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (Exception unused) {
                }
                iVar.f3459g.post(new m0.e(iVar, i10, zEquals));
                return;
            case 5:
                com.bumptech.glide.m mVar = (com.bumptech.glide.m) this.c;
                int i11 = this.d;
                JSONObject jSONObject = (JSONObject) this.e;
                ExlantixTelemetryFragment exlantixTelemetryFragment = (ExlantixTelemetryFragment) mVar.c;
                if (ExlantixTelemetryFragment.v(exlantixTelemetryFragment) && i11 == ExlantixTelemetryFragment.z(exlantixTelemetryFragment) && ExlantixTelemetryFragment.y(exlantixTelemetryFragment) != null && ExlantixTelemetryFragment.K(exlantixTelemetryFragment)) {
                    ExlantixTelemetryFragment.I(exlantixTelemetryFragment, SystemClock.elapsedRealtime());
                    ExlantixTelemetryFragment.B(exlantixTelemetryFragment).addLast(new g0(ExlantixTelemetryFragment.C(exlantixTelemetryFragment), jSONObject != null ? jSONObject.optDouble(e0.m.h(new byte[]{-119, 118, 109, -7, -34, -89, -58}, new byte[]{-7, 25, 26, -100, -84, -20, -79, 78}), Double.NaN) : Double.NaN));
                    while (!ExlantixTelemetryFragment.B(exlantixTelemetryFragment).isEmpty() && (ExlantixTelemetryFragment.B(exlantixTelemetryFragment).size() > 1801 || ExlantixTelemetryFragment.C(exlantixTelemetryFragment) - ((g0) ExlantixTelemetryFragment.B(exlantixTelemetryFragment).peekFirst()).f3430a > 1800000)) {
                        ExlantixTelemetryFragment.B(exlantixTelemetryFragment).removeFirst();
                    }
                    ExlantixTelemetryFragment.L(exlantixTelemetryFragment, jSONObject);
                    return;
                }
                return;
            case 6:
                n0 n0Var = (n0) this.c;
                Context context2 = (Context) this.e;
                int i12 = this.d;
                String str = n0.f3526k;
                try {
                    d1.a aVarN2 = com.bumptech.glide.d.n(context2);
                    try {
                        if (i12 == n0Var.c) {
                            if (!e0.m.h(new byte[]{-18, -105, 23, 59, -110, -93, -72, 37, -3}, new byte[]{-92, -44, 67, 100, -64, -26, -7, 97}).equals(aVarN2.y(e0.m.h(new byte[]{48, 6, -43, 18, 66, -119, 117, 6, 10, 55, -8, 60, 38, -102}, new byte[]{85, 101, -67, 125, 98, -61, 54, 82})).trim())) {
                                throw new IOException(e0.m.h(new byte[]{-26, 10, -92, 38, -34, -74, 46, 17, -47, 8, -96}, new byte[]{-77, 100, -59, 80, -65, -33, 66, 112}));
                            }
                            String strC = d1.d.c(new androidx.fragment.app.h(19, aVarN2));
                            PackageManager packageManager = context2.getPackageManager();
                            ArrayList arrayList = new ArrayList();
                            for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(0)) {
                                if (i12 == n0Var.c) {
                                    if ((applicationInfo.flags & 129) == 0) {
                                        CharSequence charSequenceLoadLabel = applicationInfo.loadLabel(packageManager);
                                        String str2 = applicationInfo.packageName;
                                        arrayList.add(new k0(str2, charSequenceLoadLabel == null ? str2 : charSequenceLoadLabel.toString(), applicationInfo.loadIcon(packageManager), packageManager.getLaunchIntentForPackage(applicationInfo.packageName) != null));
                                    }
                                }
                            }
                            arrayList.sort(new h3.d(1, Collator.getInstance()));
                            n0Var.f3527b.post(new j2.d(n0Var, i12, strC, arrayList, 2));
                        }
                        aVarN2.close();
                        return;
                    } catch (Throwable th3) {
                        try {
                            aVarN2.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                } catch (Exception unused2) {
                    n0Var.f3527b.post(new a4.c(n0Var, i12, 8));
                    return;
                }
            case 7:
                u1 u1Var = (u1) this.c;
                s1 s1Var = (s1) this.e;
                int i13 = this.d;
                w1 w1Var = u1Var.e.f3613a;
                ArrayList arrayList2 = w1Var.f3618g;
                ArrayList arrayList3 = w1Var.f3617f;
                Context contextRequireContext = w1Var.requireContext();
                String str3 = s1Var.f3585b;
                if (!w1.t(contextRequireContext, str3)) {
                    w1Var.e.notifyDataSetChanged();
                    return;
                }
                if (!arrayList2.contains(str3)) {
                    arrayList2.add(str3);
                }
                Context applicationContext = w1Var.requireContext().getApplicationContext();
                if (w1.t(applicationContext, str3)) {
                    DevicePolicyManager devicePolicyManagerU = w1.u(applicationContext);
                    ComponentName componentName = new ComponentName(applicationContext, (Class<?>) DPups.class);
                    if (devicePolicyManagerU == null) {
                        textView = w1Var.d;
                        if (textView != null) {
                            textView.setVisibility(0);
                        }
                        if (w1.t(w1Var.requireContext(), str3)) {
                            activityManager = (ActivityManager) w1Var.requireContext().getSystemService(e0.m.h(new byte[]{-47, 82, 31, 76, 95, 47, 49, 106}, new byte[]{-80, 49, 107, 37, 41, 70, 69, 19}));
                            if (activityManager != null) {
                                activityManager.killBackgroundProcesses(str3);
                            }
                        }
                        break;
                    } else {
                        try {
                            if (devicePolicyManagerU.isDeviceOwnerApp(applicationContext.getPackageName()) && devicePolicyManagerU.isAdminActive(componentName)) {
                                devicePolicyManagerU.setApplicationHidden(componentName, str3, true);
                                w1Var.f3619h.postDelayed(new b1(w1Var, applicationContext, str3), 700L);
                            } else {
                                textView = w1Var.d;
                                if (textView != null) {
                                    textView.setVisibility(0);
                                }
                                if (w1.t(w1Var.requireContext(), str3)) {
                                    activityManager = (ActivityManager) w1Var.requireContext().getSystemService(e0.m.h(new byte[]{-47, 82, 31, 76, 95, 47, 49, 106}, new byte[]{-80, 49, 107, 37, 41, 70, 69, 19}));
                                    if (activityManager != null) {
                                        activityManager.killBackgroundProcesses(str3);
                                    }
                                }
                            }
                            break;
                        } catch (Exception unused3) {
                            DevicePolicyManager devicePolicyManagerU2 = w1.u(applicationContext);
                            if (devicePolicyManagerU2 != null) {
                                try {
                                    devicePolicyManagerU2.setApplicationHidden(new ComponentName(applicationContext, (Class<?>) DPups.class), str3, false);
                                    break;
                                } catch (Exception unused4) {
                                }
                            }
                        }
                    }
                } else {
                    textView = w1Var.d;
                    if (textView != null) {
                        textView.setVisibility(0);
                    }
                    if (w1.t(w1Var.requireContext(), str3)) {
                        try {
                            activityManager = (ActivityManager) w1Var.requireContext().getSystemService(e0.m.h(new byte[]{-47, 82, 31, 76, 95, 47, 49, 106}, new byte[]{-80, 49, 107, 37, 41, 70, 69, 19}));
                            if (activityManager != null) {
                                activityManager.killBackgroundProcesses(str3);
                            }
                            break;
                        } catch (Exception unused5) {
                        }
                    }
                }
                if (i13 < 0 || i13 >= arrayList3.size() || !Objects.equals(((s1) arrayList3.get(i13)).f3585b, str3)) {
                    w1Var.v();
                } else {
                    arrayList3.remove(i13);
                    w1Var.e.notifyItemRemoved(i13);
                }
                w1Var.c.setVisibility(arrayList3.isEmpty() ? 0 : 8);
                w1Var.f3616b.setVisibility(arrayList3.isEmpty() ? 8 : 0);
                return;
            case 8:
                n3 n3Var = (n3) this.c;
                t tVar = (t) this.e;
                int i14 = this.d;
                ((h7.k) tVar.e).o((Context) tVar.d);
                n3Var.d.post(new j2.d(n3Var, i14, tVar.e(), tVar, 5));
                return;
            case 9:
                q0 q0Var = (q0) this.c;
                m0 m0Var = (m0) this.e;
                int i15 = this.d;
                f0 f0Var = q0Var.J;
                Handler handler = q0Var.r;
                try {
                    int i16 = (m0Var == m0.f5142i || m0Var == m0.f5143j) ? 1 : 2;
                    if (i15 > 1) {
                        if (q0.q(m0Var)) {
                            h0.b.a();
                            h0.b.d().carsetvent(1, i16);
                        } else {
                            h0.b.a();
                            h0.b.d().carsetheat(1, i16);
                        }
                    }
                    if (q0.q(m0Var)) {
                        h0.b.a();
                        h0.b.d().carsetheat(i15, i16);
                    } else {
                        h0.b.a();
                        h0.b.d().carsetvent(i15, i16);
                    }
                } catch (Throwable unused6) {
                }
                handler.removeCallbacks(f0Var);
                handler.postDelayed(f0Var, 900L);
                return;
            case 10:
                u0 u0Var = (u0) this.c;
                int i17 = this.d;
                List<ResolveInfo> list = (List) this.e;
                if (u0Var.isAttachedToWindow() && u0Var.f5206f && i17 == u0Var.f5216p) {
                    HashSet hashSet = new HashSet();
                    for (ResolveInfo resolveInfo : list) {
                        String str4 = resolveInfo.activityInfo.packageName;
                        if (!str4.equals(u0Var.getContext().getPackageName()) && hashSet.add(str4)) {
                            u0Var.f5209i.add(resolveInfo);
                        }
                    }
                    u0Var.j();
                    return;
                }
                return;
            case 11:
                u0 u0Var2 = (u0) this.c;
                o oVar = (o) this.e;
                String str5 = (String) oVar.d;
                int i18 = this.d;
                boolean z8 = str5 != null;
                String str6 = (String) oVar.c;
                try {
                    zLaunchTraySplit = z8 ? h0.b.a().j().launchTraySplit(new Saa(str6, str5, oVar.f2072a, oVar.f2073b), i18) : h0.b.a().j().launchSingleWindow(str6, i18);
                    break;
                } catch (RuntimeException unused7) {
                }
                u0Var2.post(new e2(u0Var2, zLaunchTraySplit, oVar, 7));
                return;
            case 12:
                u0 u0Var3 = (u0) this.c;
                int i19 = this.d;
                HashSet hashSet2 = (HashSet) this.e;
                PackageManager packageManager2 = u0Var3.getContext().getPackageManager();
                List<ResolveInfo> listQueryIntentActivities = packageManager2.queryIntentActivities(new Intent(e0.m.h(new byte[]{-114, -106, -35, 46, 111, -67, -81, 67, -122, -106, -51, 57, 110, -96, -27, 12, -116, -116, -48, 51, 110, -6, -122, 44, -90, -74}, new byte[]{-17, -8, -71, 92, 0, -44, -53, 109})).addCategory(e0.m.h(new byte[]{97, 104, 82, 75, 7, -107, 29, 63, 105, 104, 66, 92, 6, -120, 87, 114, 97, 114, 83, 94, 7, -114, 0, 63, 76, 71, 99, 119, 43, -76, 60, 67}, new byte[]{0, 6, 54, 57, 104, -4, 121, 17})), 0);
                listQueryIntentActivities.sort(new ResolveInfo$DisplayNameComparator(packageManager2));
                u0Var3.post(new j2.d(u0Var3, i19, listQueryIntentActivities, hashSet2, 7));
                return;
            case 13:
                l0 l0Var = (l0) this.c;
                String str7 = (String) this.e;
                int i20 = this.d;
                if (l0Var.c(i20)) {
                    try {
                        if (!l0Var.f5703n.isEmpty() && !l0Var.j0()) {
                            l0Var.c0();
                            l0Var.f5695f.c();
                            if (!w0.n0.i(str7)) {
                                l0Var.V(w0.k0.c, i20);
                                return;
                            }
                        }
                        if (l0Var.f5700k) {
                            l0Var.V(w0.k0.c, i20);
                            return;
                        }
                        l0Var.f5694b.getClass();
                        if (z3.f.c(z3.f.j()).isEmpty()) {
                            l0Var.V(w0.k0.f5670b, i20);
                            return;
                        }
                        b1.m mVarA = l0Var.f5695f.a(str7);
                        w0.m0 m0Var2 = (w0.m0) mVarA.c;
                        if (m0Var2 != w0.m0.d && m0Var2 != w0.m0.e) {
                            if (m0Var2 == w0.m0.f5720m) {
                                int i21 = l0Var.f5697h.get();
                                if (l0Var.f5702m != null && l0Var.f5707s != null && l0Var.f5705p == i21 && l0Var.j0()) {
                                    l0Var.c.d(l0Var.f5702m.f5662a, (String) mVarA.e, new h0(l0Var, i20, i21));
                                    l0Var.f5698i = false;
                                    l0Var.f5706q = -1;
                                    return;
                                }
                                l0Var.V(w0.k0.c, i20);
                                return;
                            }
                            if (m0Var2 != w0.m0.f5721n) {
                                if (m0Var2 != w0.m0.f5712b) {
                                    l0Var.c.f(mVarA);
                                    return;
                                } else {
                                    l0Var.f5698i = false;
                                    l0Var.f5706q = -1;
                                    return;
                                }
                            }
                            l0Var.f5698i = false;
                            l0Var.f5706q = -1;
                            p pVar = l0Var.c;
                            if (((x) pVar.c).T) {
                                ((x) pVar.c).C(e0.m.h(new byte[]{-3, 58, 60, 74, -96, 44, -94, -57, -3, 62, 60, 74, -102, 43}, new byte[]{-98, 91, 80, 38, -1, 79, -61, -87}));
                                return;
                            }
                            return;
                        }
                        l0Var.f5706q = i20;
                        w0 w0Var = l0Var.f5707s;
                        if (w0Var != null && w0Var.f5791a.isEmpty() && (j0Var = l0Var.f5702m) != null && j0Var.c) {
                            l0Var.c0();
                        }
                        if (l0Var.f5707s == null || !l0Var.j0() || l0Var.f5705p != l0Var.f5697h.get()) {
                            l0Var.c.f(mVarA);
                            l0Var.S();
                            return;
                        }
                        p pVar2 = l0Var.c;
                        w0.n0 n0Var2 = l0Var.f5695f;
                        n0Var2.c = l0Var.f5707s;
                        n0Var2.f5729h = true;
                        pVar2.f(n0Var2.f());
                        return;
                    } catch (Exception unused8) {
                        l0Var.c0();
                        l0Var.V(w0.k0.c, i20);
                        return;
                    }
                }
                return;
            default:
                x0.c cVar = (x0.c) this.c;
                int i22 = this.d;
                x0.m mVar2 = (x0.m) this.e;
                Handler handler2 = cVar.f5964b;
                try {
                    if (i22 > 0) {
                        try {
                            if (x0.c.h(mVar2)) {
                                h0.b.a();
                                h0.b.d().carsetvent(1, x0.c.n(mVar2));
                            } else {
                                h0.b.a();
                                h0.b.d().carsetheat(1, x0.c.n(mVar2));
                            }
                        } catch (Exception unused9) {
                            handler2.post(new e0.f(cVar, 1));
                            fVar = new e0.f(cVar, 3);
                        }
                    }
                    if (x0.c.h(mVar2)) {
                        h0.b.a();
                        h0.b.d().carsetheat(i22 + 1, x0.c.n(mVar2));
                    } else {
                        h0.b.a();
                        h0.b.d().carsetvent(i22 + 1, x0.c.n(mVar2));
                    }
                    fVar = new e0.f(cVar, 3);
                    handler2.post(fVar);
                    return;
                } catch (Throwable th5) {
                    handler2.post(new e0.f(cVar, 3));
                    throw th5;
                }
        }
    }

    public /* synthetic */ f(Object obj, Object obj2, int i9, int i10) {
        this.f105b = i10;
        this.c = obj;
        this.e = obj2;
        this.d = i9;
    }
}
