package r5;

import a5.h;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.Signature;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.content.ContextCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import b1.m;
import b7.n;
import com.bumptech.glide.manager.o;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.TService;
import com.example.navistart.VJCT;
import com.example.navistart.punto;
import com.google.android.material.appbar.AppBarLayout;
import com.google.protobuf.q;
import com.woha.wifim.MainWifiManadger;
import e0.e2;
import e0.p3;
import e3.d;
import f5.l0;
import f5.m0;
import i8.g;
import i8.j;
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
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import l9.i;
import n.c0;
import n.r;
import n.s;
import n.z;
import n7.q0;
import n7.s0;
import n7.v0;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;
import p2.e;
import x7.f;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements OnApplyWindowInsetsListener, b8.c, Callback, f2.b, x7.c, h3.b, e5.b, f, k7.c, s {
    public static volatile c d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4987b;
    public Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(int i9) {
        this.f4987b = i9;
        switch (i9) {
            case 9:
                this.c = new m(2);
                break;
            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                this.c = new c0(7);
                break;
            default:
                this.c = new HashSet();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String g(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String h(String str, String str2) {
        if (str2 == null) {
            return "";
        }
        String strTrim = str2.trim();
        if (strTrim.isEmpty()) {
            return "";
        }
        int iIndexOf = strTrim.indexOf(e0.m.h(new byte[]{-110, -3, 95, -71}, new byte[]{-88, -108, 59, -106, 33, -62, 124, -112}));
        if (iIndexOf >= 0) {
            strTrim = strTrim.substring(iIndexOf + 4);
        }
        if (str == null || str.trim().isEmpty()) {
            return strTrim;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.trim());
        return q.l(new byte[]{-59, -47, -93, -61}, new byte[]{-1, -72, -57, -20, 0, -16, 64, 116}, sb, strTrim);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String i() {
        return e0.m.h(new byte[]{-117, -102, 95, 91, 20, -112, 112, -72, -102}, new byte[]{-4, -3, 47, 41, 113, -13, 31, -42});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public void a() {
        ((j) this.c).f2738b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.c
    public Object apply(Object obj) {
        switch (this.f4987b) {
            case 6:
                List list = (List) obj;
                Collections.sort(list, (androidx.constraintlayout.core.utils.a) this.c);
                return list;
            default:
                return ((e) ((g) this.c).d).apply(new Object[]{obj});
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public void b(z7.a aVar) {
        c8.a.d((j) this.c, aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public void c(Object obj) {
        ((j) this.c).f2738b.c(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.c
    public void d() {
        d.m("Subscribing to analytics events.");
        f5.b bVar = (f5.b) this.c;
        bVar.c = bVar.f2187a.a(new e(6));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k7.c
    public k7.b e(String str) {
        String str2;
        k7.c[] cVarArr = (k7.c[]) this.c;
        for (int i9 = 0; i9 < 2; i9++) {
            try {
                k7.b bVarE = cVarArr[i9].e(str);
                if (bVarE != null && (str2 = bVarE.f3201b) != null && !str2.isEmpty()) {
                    return bVarE;
                }
            } catch (Exception e) {
                h0.b.v(e0.m.h(new byte[]{-9, -90, 26, 124, -85, 34, -100, -92, -26, -94, 23, 100, -95, 38, -115, -97, -61, -88, 0, 121, -83, 38, -115, -11, -111}, new byte[]{-79, -57, 118, 16, -55, 67, -1, -49}) + e.getMessage());
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void f(int[] iArr, int i9) throws h6.c {
        int[] iArr2;
        int[] iArr3;
        int iC;
        int i10;
        h6.a aVar = (h6.a) this.c;
        if (iArr.length == 0) {
            i.a();
            return;
        }
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            iArr2 = iArr;
        } else {
            int i11 = 1;
            while (i11 < length && iArr[i11] == 0) {
                i11++;
            }
            if (i11 == length) {
                iArr2 = new int[]{0};
            } else {
                int i12 = length - i11;
                int[] iArr4 = new int[i12];
                System.arraycopy(iArr, i11, iArr4, 0, i12);
                iArr2 = iArr4;
            }
        }
        int[] iArr5 = new int[i9];
        boolean z8 = true;
        for (int i13 = 0; i13 < i9; i13++) {
            int i14 = aVar.f2482a[aVar.f2485g + i13];
            if (i14 == 0) {
                i10 = iArr2[iArr2.length - 1];
            } else {
                if (i14 == 1) {
                    iC = 0;
                    for (int i15 : iArr2) {
                        h6.a aVar2 = h6.a.f2474h;
                        iC ^= i15;
                    }
                } else {
                    iC = iArr2[0];
                    int length2 = iArr2.length;
                    for (int i16 = 1; i16 < length2; i16++) {
                        iC = aVar.c(i14, iC) ^ iArr2[i16];
                    }
                }
                i10 = iC;
            }
            iArr5[(i9 - 1) - i13] = i10;
            if (i10 != 0) {
                z8 = false;
            }
        }
        if (z8) {
            return;
        }
        h6.b bVar = new h6.b(aVar, iArr5);
        h6.b bVarA = aVar.a(i9, 1);
        h6.b bVar2 = aVar.c;
        if (bVarA.d() >= bVar.d()) {
            bVarA = bVar;
            bVar = bVarA;
        }
        h6.b bVar3 = aVar.d;
        h6.b bVar4 = bVarA;
        h6.b bVarA2 = bVar;
        h6.b bVar5 = bVar4;
        h6.b bVar6 = bVar2;
        while (bVar5.d() >= i9 / 2) {
            if (bVar5.e()) {
                throw new h6.c("r_{i-1} was zero");
            }
            int iB = aVar.b(bVar5.c(bVar5.d()));
            h6.b bVarA3 = bVar2;
            while (bVarA2.d() >= bVar5.d() && !bVarA2.e()) {
                int iD = bVarA2.d() - bVar5.d();
                int iC2 = aVar.c(bVarA2.c(bVarA2.d()), iB);
                bVarA3 = bVarA3.a(aVar.a(iD, iC2));
                bVarA2 = bVarA2.a(bVar5.h(iD, iC2));
            }
            h6.b bVarA4 = bVarA3.g(bVar3).a(bVar6);
            if (bVarA2.d() >= bVar5.d()) {
                j1.i.l("Division algorithm failed to reduce polynomial?");
                return;
            }
            h6.b bVar7 = bVarA2;
            bVarA2 = bVar5;
            bVar5 = bVar7;
            bVar6 = bVar3;
            bVar3 = bVarA4;
        }
        int iC3 = bVar3.c(0);
        if (iC3 == 0) {
            throw new h6.c("sigmaTilde(0) was zero");
        }
        int iB2 = aVar.b(iC3);
        h6.b[] bVarArr = {bVar3.f(iB2), bVar5.f(iB2)};
        h6.b bVar8 = bVarArr[0];
        h6.b bVar9 = bVarArr[1];
        int iD2 = bVar8.d();
        if (iD2 == 1) {
            iArr3 = new int[]{bVar8.c(1)};
        } else {
            int[] iArr6 = new int[iD2];
            int i17 = 0;
            for (int i18 = 1; i18 < aVar.e && i17 < iD2; i18++) {
                if (bVar8.b(i18) == 0) {
                    iArr6[i17] = aVar.b(i18);
                    i17++;
                }
            }
            if (i17 != iD2) {
                throw new h6.c("Error locator degree does not match number of roots");
            }
            iArr3 = iArr6;
        }
        int length3 = iArr3.length;
        int[] iArr7 = new int[length3];
        for (int i19 = 0; i19 < length3; i19++) {
            int iB3 = aVar.b(iArr3[i19]);
            int iC4 = 1;
            for (int i20 = 0; i20 < length3; i20++) {
                if (i19 != i20) {
                    int iC5 = aVar.c(iArr3[i20], iB3);
                    iC4 = aVar.c(iC4, (iC5 & 1) == 0 ? iC5 | 1 : iC5 & (-2));
                }
            }
            int iC6 = aVar.c(bVar9.b(iB3), aVar.b(iC4));
            iArr7[i19] = iC6;
            if (aVar.f2485g != 0) {
                iArr7[i19] = aVar.c(iC6, iB3);
            }
        }
        for (int i21 = 0; i21 < iArr3.length; i21++) {
            int length4 = iArr.length - 1;
            int i22 = iArr3[i21];
            if (i22 == 0) {
                i.a();
                return;
            }
            int i23 = length4 - aVar.f2483b[i22];
            if (i23 < 0) {
                throw new h6.c("Bad error location");
            }
            iArr[i23] = iArr[i23] ^ iArr7[i21];
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public Object get() {
        Signature[] signatureArr;
        Signature signature;
        switch (this.f4987b) {
            case 10:
                return new h((Context) ((e5.c) this.c).c, new c5.e(15), new z3.f(14), 3);
            case 14:
                return new m0((l0) ((h5.a) this.c).get());
            case 16:
                Application application = (Application) ((c) this.c).c;
                a.a.e(application);
                return application;
            default:
                l0 l0Var = (l0) this.c;
                n7.h hVar = v0.d;
                BitSet bitSet = s0.d;
                q0 q0Var = new q0("X-Goog-Api-Key", hVar);
                q0 q0Var2 = new q0("X-Android-Package", hVar);
                q0 q0Var3 = new q0("X-Android-Cert", hVar);
                v0 v0Var = new v0();
                o4.f fVar = l0Var.f2216a;
                fVar.a();
                Context context = fVar.f4088a;
                String packageName = context.getPackageName();
                fVar.a();
                v0Var.e(q0Var, fVar.c.f4096a);
                v0Var.e(q0Var2, packageName);
                fVar.a();
                String strC = null;
                try {
                    PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 64);
                    if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length != 0 && (signature = signatureArr[0]) != null) {
                        strC = k4.e.e.h().c(MessageDigest.getInstance("SHA1").digest(signature.toByteArray()));
                    }
                    break;
                } catch (PackageManager$NameNotFoundException | NoSuchAlgorithmException unused) {
                }
                if (strC != null) {
                    v0Var.e(q0Var3, strC);
                }
                return v0Var;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.s
    public r j(z zVar) {
        return new n.c(1, (c0) this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void k() {
        synchronized (((n) this.c).f380h) {
            try {
                n nVar = (n) this.c;
                if (nVar.f379g) {
                    nVar.c.obtainMessage(2131297795).sendToTarget();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void l(int i9) {
        d2.h hVar = (d2.h) this.c;
        Context context = (Context) hVar.c;
        if (i9 == 3) {
            h0.b.o().saveBoolean(e0.m.h(new byte[]{126, 77, -11, -107, 24, 74, -111, -36, 87, 78, -17, -85, 8, 81, -95, -37, 124, 92, -17, -65, 9}, new byte[]{8, Base64.padSymbol, -101, -54, 122, 37, -2, -88}), true);
        } else {
            h0.b.o().saveBoolean(e0.m.h(new byte[]{-101, -126, 109, 102, 93, -63, -95, -41, -78, -127, 119, 88, 77, -38, -111, -48, -103, -109, 119, 76, 76}, new byte[]{-19, -14, 3, 57, 63, -82, -50, -93}), false);
        }
        if (i9 != 3) {
            VJCT.t(context.getResources().getString(2131952758));
            VJCT.s(ContextCompat.getColor(context, 2131034216));
            TService.b(Boolean.FALSE);
            hVar.i();
            return;
        }
        VJCT.t(context.getResources().getString(2131952757));
        VJCT.s(ContextCompat.getColor(context, 2131034112));
        TService.b(Boolean.TRUE);
        VJCT.u("");
        hVar.i();
        hVar.f1678b = ((ScheduledThreadPoolExecutor) hVar.f1677a).scheduleWithFixedDelay(new l7.a(hVar, 2), 0L, 5000, TimeUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:4:0x0020  */
    public a6.a m(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        int iRound;
        m mVar = (m) this.c;
        String strG = g(accessibilityNodeInfo, h(str, (String) mVar.d));
        Pattern pattern = e1.c.f2020a;
        int iRound2 = 0;
        if (strG == null) {
            iRound = 0;
        } else {
            String strReplace = strG.trim().toLowerCase(Locale.ROOT).replace(',', '.');
            Matcher matcher = e1.c.f2020a.matcher(strReplace);
            if (matcher.find()) {
                try {
                    float f8 = Float.parseFloat(matcher.group(1));
                    iRound = (strReplace.contains(e0.m.h(new byte[]{-38, -69}, new byte[]{-79, -42, -5, 114, -89, -85, -30, ByteCompanionObject.MAX_VALUE})) || strReplace.contains(e0.m.h(new byte[]{108, 56, 62, 60}, new byte[]{-68, -126, -18, ByteCompanionObject.MIN_VALUE, 119, 122, -28, 33}))) ? Math.round(f8 * 1000.0f) : Math.round(f8);
                } catch (NumberFormatException unused) {
                    iRound = 0;
                }
            } else {
                iRound = 0;
            }
        }
        if (iRound <= 0) {
            System.currentTimeMillis();
            return new a6.a(0, 0, "", "", false);
        }
        String strG2 = g(accessibilityNodeInfo, h(str, (String) mVar.e));
        String strG3 = g(accessibilityNodeInfo, h(str, (String) mVar.c));
        g(accessibilityNodeInfo, h(str, (String) mVar.f270f));
        if (strG2 != null) {
            Matcher matcher2 = e1.c.f2020a.matcher(strG2);
            if (matcher2.find()) {
                try {
                    iRound2 = Math.round(Float.parseFloat(matcher2.group(1).replace(',', '.')));
                } catch (NumberFormatException unused2) {
                }
            }
        }
        int i9 = iRound2;
        String strTrim = strG2 == null ? "" : strG2.trim();
        String strTrim2 = strG3 != null ? strG3.trim() : "";
        System.currentTimeMillis();
        return new a6.a(iRound, i9, strTrim, strTrim2, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        AppBarLayout appBarLayout = (AppBarLayout) this.c;
        WindowInsetsCompat windowInsetsCompat2 = appBarLayout.getFitsSystemWindows() ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(appBarLayout.f1105h, windowInsetsCompat2)) {
            appBarLayout.f1105h = windowInsetsCompat2;
            appBarLayout.setWillNotDraw(!(appBarLayout.f1118x != null && appBarLayout.getTopInset() > 0));
            appBarLayout.requestLayout();
        }
        return windowInsetsCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public void onError(Throwable th) {
        ((j) this.c).f2738b.onError(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onFailure(Call call, IOException iOException) {
        switch (this.f4987b) {
            case 8:
                punto puntoVar = (punto) this.c;
                String str = punto.r;
                puntoVar.d.post(new c7.e(puntoVar, false, 5));
                break;
            default:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) this.c;
                mainWifiManadger.r.post(new e2((Object) mainWifiManadger, (Object) call, false, 3));
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onResponse(Call call, Response response) {
        switch (this.f4987b) {
            case 8:
                punto puntoVar = (punto) this.c;
                try {
                    try {
                        if (response.isSuccessful()) {
                            String str = punto.r;
                            puntoVar.d.post(new c7.e(puntoVar, true, 5));
                        }
                        if (response.body() != null) {
                            try {
                                JSONObject jSONObject = new JSONObject(response.body().string());
                                byte[] bArr = e0.m.f1896j;
                                String[] strArr = p3.f1924a;
                                if (!jSONObject.isNull(new String(bArr))) {
                                    h0.b.o().saveString(new String(bArr), jSONObject.getString(new String(bArr)));
                                    if (!jSONObject.isNull(e0.m.h(new byte[]{109, -13, -47}, new byte[]{31, -106, -94, 60, -113, 79, -4, -61})) && e0.m.h(new byte[]{-39, 62, -127, 106}, new byte[]{-83, 76, -12, 15, 74, 65, 86, 88}).equals(jSONObject.getString(e0.m.h(new byte[]{25, -7, 22}, new byte[]{107, -100, 101, -101, 93, -59, -89, 12})))) {
                                        h0.b.o().saveBoolean(e0.m.h(new byte[]{72, -123}, new byte[]{41, -16, -123, 5, 34, 102, -35, 114}), true);
                                        k.u(puntoVar.c, new Intent(puntoVar.c, (Class<?>) ModernMainActivity.class).addFlags(268435456), null);
                                        puntoVar.finish();
                                    }
                                }
                                break;
                            } catch (JSONException unused) {
                            }
                        }
                        response.close();
                        return;
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
                } catch (Exception unused2) {
                    return;
                }
            default:
                try {
                    boolean zIsSuccessful = response.isSuccessful();
                    response.close();
                    MainWifiManadger mainWifiManadger = (MainWifiManadger) this.c;
                    mainWifiManadger.r.post(new e2(mainWifiManadger, call, zIsSuccessful, 3));
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

    public /* synthetic */ c(int i9, boolean z8) {
        this.f4987b = i9;
    }

    public c(com.bumptech.glide.f fVar) {
        this.f4987b = 5;
        this.c = Collections.unmodifiableMap(new HashMap(fVar.f564a));
    }

    public c(Context context) {
        this.f4987b = 25;
        this.c = new o(context, 2);
    }

    public c(h hVar, h5.a aVar) {
        this.f4987b = 14;
        this.c = aVar;
    }

    public /* synthetic */ c(int i9, Object obj) {
        this.f4987b = i9;
        this.c = obj;
    }
}
