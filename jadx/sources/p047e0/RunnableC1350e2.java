package p047e0;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.FragmentActivity;
import com.example.navistart.OverlayService;
import com.example.navistart.R;
import com.example.navistart.boot;
import com.example.navistart.cores.InterC;
import com.google.protobuf.AbstractC1178q;
import com.woha.wifim.MainWifiManadger;
import java.util.ArrayList;
import kotlin.p118io.encoding.Base64;
import okhttp3.Call;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1419s1;
import p051e4.C1482o;
import p078h0.C1651a;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1917c;
import p098j0.C1919e;
import p121l0.C2194a;
import p132m0.C2343q2;
import p142n0.EnumC2468c;
import p157o7.C2652i4;
import p164p0.C2949b;
import p164p0.C2952e;
import p164p0.InterfaceC2951d;
import p173q0.C3042f;
import p190s1.C3166q0;
import p190s1.C3174u0;
import p198t1.C3223a;
import p206u0.C3277a;
import p225w0.AbstractC3441a0;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e0.e2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1350e2 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3215b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ boolean f3216c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f3217d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f3218e;

    public /* synthetic */ RunnableC1350e2(Object obj, Object obj2, boolean z9, int i10) {
        this.f3215b = i10;
        this.f3217d = obj;
        this.f3218e = obj2;
        this.f3216c = z9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6, types: [m0.o2] */
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
        C3223a c3223a;
        final C2652i4 c2652i4;
        C2652i4 c2652i5;
        byte b10 = 0;
        final int i10 = 1;
        switch (this.f3215b) {
            case 0:
                OverlayService overlayService = (OverlayService) this.f3217d;
                boolean z9 = this.f3216c;
                String str = (String) this.f3218e;
                OverlayService overlayService2 = OverlayService.f1499f;
                if (z9 != AbstractC3441a0.m5371e()) {
                    return;
                }
                if (z9) {
                    if (!OverlayService.f1500g || (c3223a = overlayService.f1503b) == null) {
                        return;
                    }
                    c3223a.setText(str);
                    return;
                }
                String lowerCase = str.toLowerCase();
                C1652b.m2734a();
                C1652b.m2737f().getClass();
                if (lowerCase.contains(C1917c.m2986f().toLowerCase())) {
                    overlayService.m1514b();
                }
                if (OverlayService.f1500g) {
                    overlayService.f1503b.setText(str);
                    C1652b.m2734a();
                    C1919e c1919eM2989d = C1652b.m2737f().m2989d(lowerCase);
                    if (AbstractC1920f.m3006d(c1919eM2989d)) {
                        overlayService.m1515d();
                        overlayService.m1513a();
                        StringBuilder sb = new StringBuilder();
                        C3277a c3277aM2745o = C1652b.m2745o();
                        byte[] bArr = AbstractC1387m.f3322j;
                        String[] strArr = AbstractC1406p3.f3368a;
                        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
                        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
                        C3277a c3277aM2745o2 = C1652b.m2745o();
                        byte[] bArr2 = AbstractC1387m.f3318f;
                        if ((AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g) ? Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-19}, new byte[]{-35, -83, 2, -42, -39, -55, 96, -28}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                            C1652b.m2734a();
                            C1652b.m2737f().m2994j(c1919eM2989d, null);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 1:
                C1652b c1652b = (C1652b) this.f3217d;
                Context context = (Context) this.f3218e;
                boolean z10 = this.f3216c;
                C1651a c1651a = C1652b.f4199h;
                EnumC2468c enumC2468c = c1652b.f4213a.f3359a;
                InterC interCM2755j = c1652b.m2755j();
                synchronized (c1651a) {
                    if (!enumC2468c.equals(c1651a.f4192h) || z10) {
                        c1651a.m2733a(enumC2468c, interCM2755j, context);
                    }
                    break;
                }
                return;
            case 2:
                final C2343q2 c2343q2 = (C2343q2) this.f3217d;
                final boolean z11 = this.f3216c;
                final Context context2 = (Context) this.f3218e;
                C2952e c2952e = c2343q2.f6318b;
                try {
                    if (!z11) {
                        ?? r1 = new InterfaceC2951d() { // from class: m0.o2
                            @Override // p164p0.InterfaceC2951d
                            /* JADX INFO: renamed from: b */
                            public final void mo818b(int i11, int i12) {
                                switch (i10) {
                                    case 0:
                                        C2343q2 c2343q3 = c2343q2;
                                        c2343q3.f6325i.post(new RunnableC1419s1(c2343q3, i11, i12, true));
                                        break;
                                    default:
                                        C2343q2 c2343q4 = c2343q2;
                                        c2343q4.f6325i.post(new RunnableC1419s1(c2343q4, i11, i12, false));
                                        break;
                                }
                            }
                        };
                        c2952e.getClass();
                        synchronized (C2949b.f8187c) {
                            try {
                                c2652i5 = C2949b.m4719f(c2952e.f8208a) ? new C2652i4(false, 0, 1, AbstractC1387m.m2421h(new byte[]{123, -1, -54, -35, -57, -112, 107, 110, 23, -20, -38, -64, -63, -116, 46, 117, 89, -66, -49, -63, -53, -97, 124, 121, 68, -19}, new byte[]{55, -98, -65, -77, -92, -8, 14, 28})) : c2952e.m4733d(r1);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    } else {
                        final byte b11 = b10 == true ? 1 : 0;
                        c2652i5 = c2952e.m4734f(new InterfaceC2951d() { // from class: m0.o2
                            @Override // p164p0.InterfaceC2951d
                            /* JADX INFO: renamed from: b */
                            public final void mo818b(int i11, int i12) {
                                switch (b11) {
                                    case 0:
                                        C2343q2 c2343q3 = c2343q2;
                                        c2343q3.f6325i.post(new RunnableC1419s1(c2343q3, i11, i12, true));
                                        break;
                                    default:
                                        C2343q2 c2343q4 = c2343q2;
                                        c2343q4.f6325i.post(new RunnableC1419s1(c2343q4, i11, i12, false));
                                        break;
                                }
                            }
                        });
                    }
                    c2652i4 = c2652i5;
                    break;
                } catch (Exception e) {
                    c2652i4 = new C2652i4(false, 0, 1, e.getClass().getSimpleName() + AbstractC1387m.m2421h(new byte[]{75, 16}, new byte[]{113, 48, 51, 118, 106, -66, -44, -120}) + e.getMessage());
                }
                c2343q2.f6318b.getClass();
                final boolean zM4727e = C2952e.m4727e();
                c2343q2.f6325i.post(new Runnable() { // from class: m0.p2
                    @Override // java.lang.Runnable
                    public final void run() {
                        TextView textView;
                        C2343q2 c2343q3 = c2343q2;
                        if (c2343q3.f6324h == null || (textView = c2343q3.f6322f) == null) {
                            return;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        C2652i4 c2652i6 = c2652i4;
                        int i11 = c2652i6.f7528c;
                        String str2 = (String) c2652i6.f7529d;
                        sb2.append(c2343q3.getString(i11 == 0 ? R.string.user_apps_hide_result_ok : R.string.user_apps_hide_result_partial, Integer.valueOf(c2652i6.f7527b), Integer.valueOf(i11)));
                        sb2.append(str2 == null ? "" : "\n".concat(str2));
                        textView.setText(sb2.toString());
                        if (z11 || !zM4727e || i11 != 0) {
                            c2343q3.f6327k = false;
                            c2343q3.m3723v();
                            return;
                        }
                        ProgressBar progressBar = c2343q3.f6323g;
                        if (progressBar != null) {
                            progressBar.setProgress(100);
                        }
                        Context context3 = context2;
                        Intent intent = new Intent(context3, (Class<?>) boot.class);
                        intent.putExtra(AbstractC1387m.m2421h(new byte[]{56}, new byte[]{92, 119, -25, -90, 86, Base64.padSymbol, -12, -91}), -1);
                        if (Build.VERSION.SDK_INT >= 26) {
                            context3.startForegroundService(intent);
                        } else {
                            context3.startService(intent);
                        }
                        if (c2343q3.getParentFragment() instanceof C2194a) {
                            ((C2194a) c2343q3.getParentFragment()).dismissAllowingStateLoss();
                        }
                        FragmentActivity activity = c2343q3.getActivity();
                        if (activity != null) {
                            activity.finishAndRemoveTask();
                        }
                    }
                });
                return;
            case 3:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) this.f3217d;
                Call call = (Call) this.f3218e;
                boolean z12 = this.f3216c;
                if (mainWifiManadger.f2904q != call || mainWifiManadger.isFinishing() || mainWifiManadger.isDestroyed()) {
                    return;
                }
                mainWifiManadger.f2904q = null;
                mainWifiManadger.m2218x(z12 ? R.string.wifi_internet_available : R.string.wifi_internet_unavailable, z12 ? ContextCompat.getColor(mainWifiManadger, R.color.modern_success) : SupportMenu.CATEGORY_MASK);
                return;
            case 4:
                ((C3042f) this.f3217d).mo886b((String) this.f3218e, this.f3216c);
                return;
            case 5:
                C3166q0 c3166q0 = (C3166q0) this.f3217d;
                Bitmap bitmap = (Bitmap) this.f3218e;
                boolean z13 = this.f3216c;
                if (c3166q0.f9160E) {
                    return;
                }
                c3166q0.f9167c.setImageBitmap(bitmap);
                if (z13) {
                    AbstractC3656k.m5878x(c3166q0.getContext(), AbstractC1387m.m2421h(new byte[]{-114, 42, -85, 67, -17, 31, -44, 11, -32, 94, -54, 45, -126, 114, 74, 11, -20, 94, -64, 44, -82, 114, 73}, new byte[]{94, -114, 123, -3, 63, -94, -12, -37}));
                    return;
                }
                return;
            case 6:
                ((C3166q0) this.f3217d).m5049M((ArrayList) this.f3218e, this.f3216c, null);
                return;
            default:
                C3174u0 c3174u0 = (C3174u0) this.f3217d;
                boolean z14 = this.f3216c;
                C1482o c1482o = (C1482o) this.f3218e;
                ArrayList arrayList = c3174u0.f9227j;
                c3174u0.f9232o = false;
                if (c3174u0.isAttachedToWindow()) {
                    if (!z14) {
                        Toast.makeText(c3174u0.getContext(), R.string.single_window_failed, 1).show();
                        return;
                    }
                    arrayList.remove(c1482o.m2542a());
                    arrayList.add(0, c1482o.m2542a());
                    while (arrayList.size() > 20) {
                        arrayList.remove(arrayList.size() - 1);
                    }
                    C1652b.m2745o().saveString(C3174u0.f9218u, TextUtils.join(AbstractC1387m.m2421h(new byte[]{-37}, new byte[]{-32, 14, 93, -99, 41, -13, 121, 39}), arrayList));
                    c3174u0.m5097l();
                    return;
                }
                return;
        }
    }

    public /* synthetic */ RunnableC1350e2(Object obj, boolean z9, Object obj2, int i10) {
        this.f3215b = i10;
        this.f3217d = obj;
        this.f3216c = z9;
        this.f3218e = obj2;
    }
}
