package p184r5;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.constraintlayout.core.utils.C0279a;
import androidx.core.content.ContextCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.bumptech.glide.C1033f;
import com.bumptech.glide.manager.C1069o;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.R;
import com.example.navistart.TService;
import com.example.navistart.VJCT;
import com.example.navistart.punto;
import com.google.android.material.appbar.AppBarLayout;
import com.google.protobuf.AbstractC1178q;
import com.woha.wifim.MainWifiManadger;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.apache.commons.net.tftp.TFTP;
import org.apache.commons.p161io.FilenameUtils;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.AbstractC0000a;
import p006a5.C0023h;
import p007a6.C0025a;
import p016b1.C0872m;
import p022b7.C0918n;
import p023b8.InterfaceC0929c;
import p030c5.C0990e;
import p032c7.RunnableC1001e;
import p033c8.EnumC1011a;
import p039d2.C1252h;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.RunnableC1350e2;
import p048e1.AbstractC1452c;
import p050e3.C1461d;
import p052e5.C1496c;
import p052e5.InterfaceC1495b;
import p059f2.InterfaceC1534b;
import p062f5.C1540b;
import p062f5.C1561l0;
import p062f5.C1563m0;
import p078h0.C1652b;
import p080h3.InterfaceC1656b;
import p082h5.C1666a;
import p083h6.C1670a;
import p083h6.C1671b;
import p083h6.C1672c;
import p095i8.C1782g;
import p095i8.C1785j;
import p099j1.C1929i;
import p113k4.C2046e;
import p115k7.C2052b;
import p115k7.InterfaceC2053c;
import p128l7.RunnableC2218a;
import p130l9.C2237i;
import p141n.C2437c;
import p141n.C2438c0;
import p141n.C2465z;
import p141n.InterfaceC2457r;
import p141n.InterfaceC2458s;
import p148n7.AbstractC2541s0;
import p148n7.C2512h;
import p148n7.C2537q0;
import p148n7.C2547v0;
import p155o4.C2591f;
import p165p2.C2962e;
import p242x7.InterfaceC3586c;
import p242x7.InterfaceC3589f;
import p250y5.AbstractC3656k;
import p258z3.C3720f;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: r5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3105c implements OnApplyWindowInsetsListener, InterfaceC0929c, Callback, InterfaceC1534b, InterfaceC3586c, InterfaceC1656b, InterfaceC1495b, InterfaceC3589f, InterfaceC2053c, InterfaceC2458s {

    /* JADX INFO: renamed from: d */
    public static volatile C3105c f8865d;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8866b;

    /* JADX INFO: renamed from: c */
    public Object f8867c;

    public C3105c(int i10) {
        this.f8866b = i10;
        switch (i10) {
            case 9:
                this.f8867c = new C0872m(2);
                break;
            case 29:
                this.f8867c = new C2438c0(7);
                break;
            default:
                this.f8867c = new HashSet();
                break;
        }
    }

    /* JADX INFO: renamed from: g */
    public static String m4938g(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByViewId;
        String string = null;
        if (!str.isEmpty() && (listFindAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId(str)) != null && !listFindAccessibilityNodeInfosByViewId.isEmpty()) {
            for (AccessibilityNodeInfo accessibilityNodeInfo2 : listFindAccessibilityNodeInfosByViewId) {
                if (accessibilityNodeInfo2 != null) {
                    if (string == null) {
                        try {
                            CharSequence text = accessibilityNodeInfo2.getText();
                            if (text == null) {
                                text = accessibilityNodeInfo2.getContentDescription();
                            }
                            if (text != null) {
                                string = text.toString();
                            }
                        } catch (Throwable th) {
                            accessibilityNodeInfo2.recycle();
                            throw th;
                        }
                    }
                    accessibilityNodeInfo2.recycle();
                }
            }
        }
        return string;
    }

    /* JADX INFO: renamed from: h */
    public static String m4939h(String str, String str2) {
        if (str2 == null) {
            return "";
        }
        String strTrim = str2.trim();
        if (strTrim.isEmpty()) {
            return "";
        }
        int iIndexOf = strTrim.indexOf(AbstractC1387m.m2421h(new byte[]{-110, -3, 95, -71}, new byte[]{-88, -108, 59, -106, 33, -62, 124, -112}));
        if (iIndexOf >= 0) {
            strTrim = strTrim.substring(iIndexOf + 4);
        }
        if (str == null || str.trim().isEmpty()) {
            return strTrim;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.trim());
        return AbstractC1178q.m2078l(new byte[]{-59, -47, -93, -61}, new byte[]{-1, -72, -57, -20, 0, -16, 64, 116}, sb, strTrim);
    }

    /* JADX INFO: renamed from: i */
    public static String m4940i() {
        return AbstractC1387m.m2421h(new byte[]{-117, -102, 95, 91, 20, -112, 112, -72, -102}, new byte[]{-4, -3, 47, 41, 113, -13, 31, -42});
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public void mo237a() {
        ((C1785j) this.f8867c).f4688b.mo237a();
    }

    @Override // p023b8.InterfaceC0929c
    public Object apply(Object obj) {
        switch (this.f8866b) {
            case 6:
                List list = (List) obj;
                Collections.sort(list, (C0279a) this.f8867c);
                return list;
            default:
                return ((C2962e) ((C1782g) this.f8867c).f4682d).apply(new Object[]{obj});
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public void mo238b(InterfaceC3762a interfaceC3762a) {
        EnumC1011a.m1218d((C1785j) this.f8867c, interfaceC3762a);
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public void mo239c(Object obj) {
        ((C1785j) this.f8867c).f4688b.mo239c(obj);
    }

    @Override // p242x7.InterfaceC3586c
    /* JADX INFO: renamed from: d */
    public void mo2402d() {
        C1461d.m2513m("Subscribing to analytics events.");
        C1540b c1540b = (C1540b) this.f8867c;
        c1540b.f3793c = c1540b.f3791a.m2634a(new C2962e(6));
    }

    @Override // p115k7.InterfaceC2053c
    /* JADX INFO: renamed from: e */
    public C2052b mo3152e(String str) {
        String str2;
        InterfaceC2053c[] interfaceC2053cArr = (InterfaceC2053c[]) this.f8867c;
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                C2052b c2052bMo3152e = interfaceC2053cArr[i10].mo3152e(str);
                if (c2052bMo3152e != null && (str2 = c2052bMo3152e.f5606b) != null && !str2.isEmpty()) {
                    return c2052bMo3152e;
                }
            } catch (Exception e) {
                C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{-9, -90, 26, 124, -85, 34, -100, -92, -26, -94, 23, 100, -95, 38, -115, -97, -61, -88, 0, 121, -83, 38, -115, -11, -111}, new byte[]{-79, -57, 118, 16, -55, 67, -1, -49}) + e.getMessage());
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public void m4941f(int[] iArr, int i10) throws C1672c {
        int[] iArr2;
        int[] iArr3;
        int iM2771c;
        int i11;
        C1670a c1670a = (C1670a) this.f8867c;
        if (iArr.length == 0) {
            C2237i.m3594a();
            return;
        }
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            iArr2 = iArr;
        } else {
            int i12 = 1;
            while (i12 < length && iArr[i12] == 0) {
                i12++;
            }
            if (i12 == length) {
                iArr2 = new int[]{0};
            } else {
                int i13 = length - i12;
                int[] iArr4 = new int[i13];
                System.arraycopy(iArr, i12, iArr4, 0, i13);
                iArr2 = iArr4;
            }
        }
        int[] iArr5 = new int[i10];
        boolean z9 = true;
        for (int i14 = 0; i14 < i10; i14++) {
            int i15 = c1670a.f4281a[c1670a.f4287g + i14];
            if (i15 == 0) {
                i11 = iArr2[iArr2.length - 1];
            } else {
                if (i15 == 1) {
                    iM2771c = 0;
                    for (int i16 : iArr2) {
                        C1670a c1670a2 = C1670a.f4273h;
                        iM2771c ^= i16;
                    }
                } else {
                    iM2771c = iArr2[0];
                    int length2 = iArr2.length;
                    for (int i17 = 1; i17 < length2; i17++) {
                        iM2771c = c1670a.m2771c(i15, iM2771c) ^ iArr2[i17];
                    }
                }
                i11 = iM2771c;
            }
            iArr5[(i10 - 1) - i14] = i11;
            if (i11 != 0) {
                z9 = false;
            }
        }
        if (z9) {
            return;
        }
        C1671b c1671b = new C1671b(c1670a, iArr5);
        C1671b c1671bM2769a = c1670a.m2769a(i10, 1);
        C1671b c1671b2 = c1670a.f4283c;
        if (c1671bM2769a.m2775d() >= c1671b.m2775d()) {
            c1671bM2769a = c1671b;
            c1671b = c1671bM2769a;
        }
        C1671b c1671b3 = c1670a.f4284d;
        C1671b c1671b4 = c1671bM2769a;
        C1671b c1671bM2772a = c1671b;
        C1671b c1671b5 = c1671b4;
        C1671b c1671b6 = c1671b2;
        while (c1671b5.m2775d() >= i10 / 2) {
            if (c1671b5.m2776e()) {
                throw new C1672c("r_{i-1} was zero");
            }
            int iM2770b = c1670a.m2770b(c1671b5.m2774c(c1671b5.m2775d()));
            C1671b c1671bM2772a2 = c1671b2;
            while (c1671bM2772a.m2775d() >= c1671b5.m2775d() && !c1671bM2772a.m2776e()) {
                int iM2775d = c1671bM2772a.m2775d() - c1671b5.m2775d();
                int iM2771c2 = c1670a.m2771c(c1671bM2772a.m2774c(c1671bM2772a.m2775d()), iM2770b);
                c1671bM2772a2 = c1671bM2772a2.m2772a(c1670a.m2769a(iM2775d, iM2771c2));
                c1671bM2772a = c1671bM2772a.m2772a(c1671b5.m2779h(iM2775d, iM2771c2));
            }
            C1671b c1671bM2772a3 = c1671bM2772a2.m2778g(c1671b3).m2772a(c1671b6);
            if (c1671bM2772a.m2775d() >= c1671b5.m2775d()) {
                C1929i.m3030l("Division algorithm failed to reduce polynomial?");
                return;
            }
            C1671b c1671b7 = c1671bM2772a;
            c1671bM2772a = c1671b5;
            c1671b5 = c1671b7;
            c1671b6 = c1671b3;
            c1671b3 = c1671bM2772a3;
        }
        int iM2774c = c1671b3.m2774c(0);
        if (iM2774c == 0) {
            throw new C1672c("sigmaTilde(0) was zero");
        }
        int iM2770b2 = c1670a.m2770b(iM2774c);
        C1671b[] c1671bArr = {c1671b3.m2777f(iM2770b2), c1671b5.m2777f(iM2770b2)};
        C1671b c1671b8 = c1671bArr[0];
        C1671b c1671b9 = c1671bArr[1];
        int iM2775d2 = c1671b8.m2775d();
        if (iM2775d2 == 1) {
            iArr3 = new int[]{c1671b8.m2774c(1)};
        } else {
            int[] iArr6 = new int[iM2775d2];
            int i18 = 0;
            for (int i19 = 1; i19 < c1670a.f4285e && i18 < iM2775d2; i19++) {
                if (c1671b8.m2773b(i19) == 0) {
                    iArr6[i18] = c1670a.m2770b(i19);
                    i18++;
                }
            }
            if (i18 != iM2775d2) {
                throw new C1672c("Error locator degree does not match number of roots");
            }
            iArr3 = iArr6;
        }
        int length3 = iArr3.length;
        int[] iArr7 = new int[length3];
        for (int i20 = 0; i20 < length3; i20++) {
            int iM2770b3 = c1670a.m2770b(iArr3[i20]);
            int iM2771c3 = 1;
            for (int i21 = 0; i21 < length3; i21++) {
                if (i20 != i21) {
                    int iM2771c4 = c1670a.m2771c(iArr3[i21], iM2770b3);
                    iM2771c3 = c1670a.m2771c(iM2771c3, (iM2771c4 & 1) == 0 ? iM2771c4 | 1 : iM2771c4 & (-2));
                }
            }
            int iM2771c5 = c1670a.m2771c(c1671b9.m2773b(iM2770b3), c1670a.m2770b(iM2771c3));
            iArr7[i20] = iM2771c5;
            if (c1670a.f4287g != 0) {
                iArr7[i20] = c1670a.m2771c(iM2771c5, iM2770b3);
            }
        }
        for (int i22 = 0; i22 < iArr3.length; i22++) {
            int length4 = iArr.length - 1;
            int i23 = iArr3[i22];
            if (i23 == 0) {
                C2237i.m3594a();
                return;
            }
            int i24 = length4 - c1670a.f4282b[i23];
            if (i24 < 0) {
                throw new C1672c("Bad error location");
            }
            iArr[i24] = iArr[i24] ^ iArr7[i22];
        }
    }

    @Override // p204t8.InterfaceC3268a
    public Object get() {
        Signature[] signatureArr;
        Signature signature;
        switch (this.f8866b) {
            case 10:
                return new C0023h((Context) ((C1496c) this.f8867c).f3693c, new C0990e(15), new C3720f(14), 3);
            case 14:
                return new C1563m0((C1561l0) ((C1666a) this.f8867c).get());
            case 16:
                Application application = (Application) ((C3105c) this.f8867c).f8867c;
                AbstractC0000a.m5e(application);
                return application;
            default:
                C1561l0 c1561l0 = (C1561l0) this.f8867c;
                C2512h c2512h = C2547v0.f7038d;
                BitSet bitSet = AbstractC2541s0.f7020d;
                C2537q0 c2537q0 = new C2537q0("X-Goog-Api-Key", c2512h);
                C2537q0 c2537q1 = new C2537q0("X-Android-Package", c2512h);
                C2537q0 c2537q2 = new C2537q0("X-Android-Cert", c2512h);
                C2547v0 c2547v0 = new C2547v0();
                C2591f c2591f = c1561l0.f3840a;
                c2591f.m4064a();
                Context context = c2591f.f7208a;
                String packageName = context.getPackageName();
                c2591f.m4064a();
                c2547v0.m3991e(c2537q0, c2591f.f7210c.f7222a);
                c2547v0.m3991e(c2537q1, packageName);
                c2591f.m4064a();
                String strM3145c = null;
                try {
                    PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 64);
                    if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length != 0 && (signature = signatureArr[0]) != null) {
                        strM3145c = C2046e.f5601e.m3148h().m3145c(MessageDigest.getInstance("SHA1").digest(signature.toByteArray()));
                    }
                    break;
                } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused) {
                }
                if (strM3145c != null) {
                    c2547v0.m3991e(c2537q2, strM3145c);
                }
                return c2547v0;
        }
    }

    @Override // p141n.InterfaceC2458s
    /* JADX INFO: renamed from: j */
    public InterfaceC2457r mo1344j(C2465z c2465z) {
        return new C2437c(1, (C2438c0) this.f8867c);
    }

    /* JADX INFO: renamed from: k */
    public void m4942k() {
        synchronized (((C0918n) this.f8867c).f763h) {
            try {
                C0918n c0918n = (C0918n) this.f8867c;
                if (c0918n.f762g) {
                    c0918n.f758c.obtainMessage(R.id.zxing_preview_failed).sendToTarget();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public void m4943l(int i10) {
        C1252h c1252h = (C1252h) this.f8867c;
        Context context = (Context) c1252h.f2954c;
        if (i10 == 3) {
            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{126, 77, -11, -107, 24, 74, -111, -36, 87, 78, -17, -85, 8, 81, -95, -37, 124, 92, -17, -65, 9}, new byte[]{8, Base64.padSymbol, -101, -54, 122, 37, -2, -88}), true);
        } else {
            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{-101, -126, 109, 102, 93, -63, -95, -41, -78, -127, 119, 88, 77, -38, -111, -48, -103, -109, 119, 76, 76}, new byte[]{-19, -14, 3, 57, 63, -82, -50, -93}), false);
        }
        if (i10 != 3) {
            VJCT.m1603t(context.getResources().getString(R.string.vkluchit));
            VJCT.m1602s(ContextCompat.getColor(context, R.color.gray));
            TService.m1585b(Boolean.FALSE);
            c1252h.m2247i();
            return;
        }
        VJCT.m1603t(context.getResources().getString(R.string.vikluchit));
        VJCT.m1602s(ContextCompat.getColor(context, R.color.Butt_Color));
        TService.m1585b(Boolean.TRUE);
        VJCT.m1604u("");
        c1252h.m2247i();
        c1252h.f2953b = ((ScheduledThreadPoolExecutor) c1252h.f2952a).scheduleWithFixedDelay(new RunnableC2218a(c1252h, 2), 0L, TFTP.DEFAULT_TIMEOUT, TimeUnit.MILLISECONDS);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0020  */
    /* JADX INFO: renamed from: m */
    public C0025a m4944m(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        int iRound;
        C0872m c0872m = (C0872m) this.f8867c;
        String strM4938g = m4938g(accessibilityNodeInfo, m4939h(str, (String) c0872m.f602d));
        Pattern pattern = AbstractC1452c.f3525a;
        int iRound2 = 0;
        if (strM4938g == null) {
            iRound = 0;
        } else {
            String strReplace = strM4938g.trim().toLowerCase(Locale.ROOT).replace(',', FilenameUtils.EXTENSION_SEPARATOR);
            Matcher matcher = AbstractC1452c.f3525a.matcher(strReplace);
            if (matcher.find()) {
                try {
                    float f8 = Float.parseFloat(matcher.group(1));
                    iRound = (strReplace.contains(AbstractC1387m.m2421h(new byte[]{-38, -69}, new byte[]{-79, -42, -5, 114, -89, -85, -30, ByteCompanionObject.MAX_VALUE})) || strReplace.contains(AbstractC1387m.m2421h(new byte[]{108, 56, 62, 60}, new byte[]{-68, -126, -18, ByteCompanionObject.MIN_VALUE, 119, 122, -28, 33}))) ? Math.round(f8 * 1000.0f) : Math.round(f8);
                } catch (NumberFormatException unused) {
                    iRound = 0;
                }
            } else {
                iRound = 0;
            }
        }
        if (iRound <= 0) {
            System.currentTimeMillis();
            return new C0025a(0, 0, "", "", false);
        }
        String strM4938g2 = m4938g(accessibilityNodeInfo, m4939h(str, (String) c0872m.f603e));
        String strM4938g3 = m4938g(accessibilityNodeInfo, m4939h(str, (String) c0872m.f601c));
        m4938g(accessibilityNodeInfo, m4939h(str, (String) c0872m.f604f));
        if (strM4938g2 != null) {
            Matcher matcher2 = AbstractC1452c.f3525a.matcher(strM4938g2);
            if (matcher2.find()) {
                try {
                    iRound2 = Math.round(Float.parseFloat(matcher2.group(1).replace(',', FilenameUtils.EXTENSION_SEPARATOR)));
                } catch (NumberFormatException unused2) {
                }
            }
        }
        int i10 = iRound2;
        String strTrim = strM4938g2 == null ? "" : strM4938g2.trim();
        String strTrim2 = strM4938g3 != null ? strM4938g3.trim() : "";
        System.currentTimeMillis();
        return new C0025a(iRound, i10, strTrim, strTrim2, true);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        AppBarLayout appBarLayout = (AppBarLayout) this.f8867c;
        WindowInsetsCompat windowInsetsCompat2 = appBarLayout.getFitsSystemWindows() ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(appBarLayout.f2049h, windowInsetsCompat2)) {
            appBarLayout.f2049h = windowInsetsCompat2;
            appBarLayout.setWillNotDraw(!(appBarLayout.f2065x != null && appBarLayout.getTopInset() > 0));
            appBarLayout.requestLayout();
        }
        return windowInsetsCompat;
    }

    @Override // p242x7.InterfaceC3589f
    public void onError(Throwable th) {
        ((C1785j) this.f8867c).f4688b.onError(th);
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        boolean z9 = false;
        switch (this.f8866b) {
            case 8:
                punto puntoVar = (punto) this.f8867c;
                String str = punto.f1867r;
                puntoVar.f1875d.post(new RunnableC1001e(puntoVar, z9, 5));
                break;
            default:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) this.f8867c;
                mainWifiManadger.f2905r.post(new RunnableC1350e2(mainWifiManadger, call, z9, 3));
                break;
        }
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) {
        int i10 = 3;
        switch (this.f8866b) {
            case 8:
                punto puntoVar = (punto) this.f8867c;
                try {
                    try {
                        boolean z9 = true;
                        if (response.isSuccessful()) {
                            String str = punto.f1867r;
                            puntoVar.f1875d.post(new RunnableC1001e(puntoVar, z9, 5));
                        }
                        if (response.body() != null) {
                            try {
                                JSONObject jSONObject = new JSONObject(response.body().string());
                                byte[] bArr = AbstractC1387m.f3322j;
                                String[] strArr = AbstractC1406p3.f3368a;
                                if (!jSONObject.isNull(new String(bArr))) {
                                    C1652b.m2745o().saveString(new String(bArr), jSONObject.getString(new String(bArr)));
                                    if (!jSONObject.isNull(AbstractC1387m.m2421h(new byte[]{109, -13, -47}, new byte[]{31, -106, -94, 60, -113, 79, -4, -61})) && AbstractC1387m.m2421h(new byte[]{-39, 62, -127, 106}, new byte[]{-83, 76, -12, 15, 74, 65, 86, 88}).equals(jSONObject.getString(AbstractC1387m.m2421h(new byte[]{25, -7, 22}, new byte[]{107, -100, 101, -101, 93, -59, -89, 12})))) {
                                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{72, -123}, new byte[]{41, -16, -123, 5, 34, 102, -35, 114}), true);
                                        AbstractC3656k.m5875u(puntoVar.f1874c, new Intent(puntoVar.f1874c, (Class<?>) ModernMainActivity.class).addFlags(268435456), null);
                                        puntoVar.finish();
                                    }
                                }
                                break;
                            } catch (JSONException unused) {
                            }
                        }
                        response.close();
                        return;
                    } catch (Exception unused2) {
                        return;
                    }
                } catch (Throwable th) {
                    if (response != null) {
                        try {
                            response.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        break;
                    }
                    throw th;
                }
            default:
                try {
                    boolean zIsSuccessful = response.isSuccessful();
                    response.close();
                    MainWifiManadger mainWifiManadger = (MainWifiManadger) this.f8867c;
                    mainWifiManadger.f2905r.post(new RunnableC1350e2(mainWifiManadger, call, zIsSuccessful, i10));
                    return;
                } catch (Throwable th3) {
                    if (response != null) {
                        try {
                            response.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        break;
                    }
                    throw th3;
                }
        }
    }

    public /* synthetic */ C3105c(int i10, boolean z9) {
        this.f8866b = i10;
    }

    public C3105c(C1033f c1033f) {
        this.f8866b = 5;
        this.f8867c = Collections.unmodifiableMap(new HashMap(c1033f.f1089a));
    }

    public C3105c(Context context) {
        this.f8866b = 25;
        this.f8867c = new C1069o(context, 2);
    }

    public C3105c(C0023h c0023h, C1666a c1666a) {
        this.f8866b = 14;
        this.f8867c = c1666a;
    }

    public /* synthetic */ C3105c(int i10, Object obj) {
        this.f8866b = i10;
        this.f8867c = obj;
    }
}
