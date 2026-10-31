package j0;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build$VERSION;
import android.view.Display;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import c5.h;
import com.example.navistart.cores.Saa;
import com.google.protobuf.q;
import e0.d0;
import e0.d1;
import e0.j2;
import e0.m;
import e0.p3;
import e0.v;
import e0.w;
import e0.x1;
import i7.k;
import j1.t;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONObject;
import w0.o0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {
    public static final String c = m.h(new byte[]{84, 0, -7, -116, -17, -108, -84, -4, 119, 3, -63, -92, -55, -65, -85, -2, 102, 55, -40, -96, -43, -65, -78, -33, 102, 38, -48, -125, -44, -71, -120, -6, 98, 34, -12, -75, -53}, new byte[]{7, 80, -75, -59, -69, -53, -19, -116});
    public static final String d = m.h(new byte[]{-124, 95, 17, -61, -43, -83, 35, -19, -122, 89, 14, -63, -60, -101, 45, -32, -83, 64, 16, -46, -47, -127, 39}, new byte[]{-14, 48, 120, -96, -80, -14, 66, -114});
    public static final String e = m.h(new byte[]{-127, -31, -92, -47, -90, -7, -103, 122, -102, -29, -84, -36, -89, -43}, new byte[]{-9, -114, -51, -78, -61, -90, -6, 21});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d0 f2869b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Context context) {
        w.b(1000L, m.h(new byte[]{-78, -4, 76, 80, 71, -55, 9, 121, -102, -20, 121, 84, 71, -55, 25, 116}, new byte[]{-1, -123, 15, 49, 53, -101, 108, 26}));
        this.f2868a = context;
        this.f2869b = new d0(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean b() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = m.f1892f;
        if (!q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.FALSE;
        }
        h0.b.a();
        return Boolean.valueOf(q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(q.x(new byte[]{26}, new byte[]{42, -36, 63, 40, 126, 46, -121, -120}, h0.b.o(), q.h(m.f1893g, h0.b.o(), new String(bArr2)), 0))));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int c(e eVar, ArrayList arrayList) {
        if (eVar != null) {
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                e eVar2 = (e) arrayList.get(i9);
                d dVar = eVar2.f2872a;
                if (dVar == eVar.f2872a && ((dVar == d.f2870b && eVar2.f2873b == eVar.f2873b) || ((dVar == d.c && eVar2.c.equals(eVar.c)) || ((eVar2.f2872a == d.d && Objects.equals(eVar2.c, eVar.c) && Objects.equals(eVar2.d, eVar.d) && eVar2.f2875g == eVar.f2875g && eVar2.f2876h == eVar.f2876h) || (eVar2.f2872a == d.e && Objects.equals(eVar2.e, eVar.e)))))) {
                    return i9;
                }
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String f() {
        return h0.b.o().loadString(d, "");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void l(String str, ArrayList arrayList) {
        JSONArray jSONArray = new JSONArray();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            o0 o0Var = (o0) obj;
            o0Var.getClass();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(m.h(new byte[]{23, -26, -10, 106, 60, -118}, new byte[]{103, -114, -124, 11, 79, -17, 82, -28}), o0Var.f5750a);
                jSONObject.put(m.h(new byte[]{74, 94, -106, 21, 81, -30, 33}, new byte[]{47, 48, -9, 119, Base64.padSymbol, -121, 69, 82}), o0Var.c);
                jSONObject.put(m.h(new byte[]{-89, 40, 104, -35, -31, 84, -101, -67, -90}, new byte[]{-54, 73, 28, -66, -119, 18, -18, -47}), o0Var.d);
                jSONObject.put(m.h(new byte[]{76, 54, -62, 28, -62, 14}, new byte[]{45, 85, -74, 117, -83, 96, 89, -71}), f.g(o0Var.f5751b));
            } catch (Exception e6) {
                e6.printStackTrace();
            }
            jSONArray.put(jSONObject);
        }
        h0.b.o().saveString(str, jSONArray.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(String str) {
        ArrayList arrayListI = i(str);
        v vVarB = w.b(h0.b.o().loadInt(m.h(new byte[]{69, 66, 45, -79, 111, -72, -106, -63, 90, 88, 49, -117, 81, -69, -125, -22, 67, 94, 45, -119, 125, -105, -94, -37, 123, 118, 26}, new byte[]{55, 55, 67, -18, 14, -56, -26, -98}), 1) * 1000, m.h(new byte[]{55, -5, 118, -80, 74, -114, -105, 120, 31, -21, 67, -76, 74, -114, -121, 117}, new byte[]{122, -126, 53, -47, 56, -36, -14, 27}));
        int size = arrayListI.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListI.get(i9);
            i9++;
            e eVar = ((o0) obj).f5751b;
            if (f.d(eVar) && b().booleanValue()) {
                vVarB.execute(new j2(10, this, eVar));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final e d(String str) {
        o0 o0Var;
        e eVar;
        ArrayList arrayListI = i(e);
        String lowerCase = str.trim().toLowerCase();
        int size = arrayListI.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size) {
                o0Var = null;
                break;
            }
            Object obj = arrayListI.get(i9);
            i9++;
            o0Var = (o0) obj;
            if (o0Var.c) {
                String lowerCase2 = o0Var.f5750a.trim().toLowerCase();
                if (o0Var.d) {
                    if (lowerCase.contains(lowerCase2)) {
                        break;
                    }
                } else if (lowerCase.contains(lowerCase2)) {
                    break;
                }
            }
        }
        return (o0Var == null || (eVar = o0Var.f5751b) == null) ? e.c(n0.d.e, this.f2868a) : eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList e() {
        Context context;
        ArrayList arrayList = new ArrayList();
        n0.d[] dVarArr = (n0.d[]) ((Enum[]) Arrays.stream((Enum[]) n0.d.class.getEnumConstants()).filter(new k(1)).toArray(new a(0)));
        int length = dVarArr.length;
        int i9 = 0;
        while (true) {
            context = this.f2868a;
            if (i9 >= length) {
                break;
            }
            arrayList.add(e.c(dVarArr[i9], context));
            i9++;
        }
        arrayList.addAll(g());
        arrayList.addAll(h());
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(m.h(new byte[]{54, -32, -58, 91, ByteCompanionObject.MAX_VALUE, 0, 115, -77, 62, -32, -42, 76, 126, 29, 57, -4, 52, -6, -53, 70, 126, 71, 90, -36, 30, -64}, new byte[]{87, -114, -94, 41, 16, 105, 23, -99}), (Uri) null);
        intent.addCategory(m.h(new byte[]{68, 95, 70, -18, -55, -98, 59, -55, 76, 95, 86, -7, -56, -125, 113, -124, 68, 69, 71, -5, -55, -123, 38, -55, 105, 112, 119, -46, -27, -65, 26, -75}, new byte[]{37, 49, 34, -100, -90, -9, 95, -25}));
        Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 0).iterator();
        while (it.hasNext()) {
            arrayList.add(e.b(it.next(), packageManager));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList g() {
        ArrayList arrayList = new ArrayList();
        try {
            h0.b.a();
            for (t tVar : h0.b.g().e()) {
                e eVarD = e.d(tVar, this.f2868a);
                if (eVarD != null) {
                    arrayList.add(eVarD);
                }
            }
            return arrayList;
        } catch (Exception e6) {
            e6.printStackTrace();
            return arrayList;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList h() {
        ArrayList arrayList = new ArrayList();
        String strLoadString = h0.b.o().loadString(c, "");
        if (!strLoadString.isEmpty()) {
            for (String str : strLoadString.split(m.h(new byte[]{6}, new byte[]{Base64.padSymbol, -97, -94, 91, 20, 119, 53, -56}))) {
                e eVarC = f.c(this.f2868a, str);
                if (eVarC.f2872a == d.d) {
                    arrayList.add(eVarC);
                }
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList i(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(h0.b.o().loadString(str, m.h(new byte[]{-127, 85}, new byte[]{-38, 8, -58, 58, 34, -37, 76, 17})));
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                arrayList.add(o0.a(jSONArray.getJSONObject(i9), this.f2868a));
            }
            return arrayList;
        } catch (Exception e6) {
            e6.printStackTrace();
            return arrayList;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j(e eVar, Integer num) {
        int iIntValue;
        if (eVar == null || eVar.f2872a == null || !b().booleanValue()) {
            return;
        }
        if (eVar.f2872a.equals(d.f2870b)) {
            n0.d dVar = eVar.f2873b;
            if (dVar != null) {
                int i9 = dVar.d;
                if (dVar != n0.d.e) {
                    d0 d0Var = this.f2869b;
                    if (num != null) {
                        d0Var.g(i9, num.intValue());
                        return;
                    }
                    d0Var.getClass();
                    h0.b.a();
                    d0Var.g(i9, h0.b.n().getGuDisplayID());
                    return;
                }
                return;
            }
            return;
        }
        boolean zEquals = eVar.f2872a.equals(d.c);
        Context context = this.f2868a;
        if (zEquals) {
            String str = eVar.c;
            if (num == null) {
                h0.b.a();
                iIntValue = h0.b.n().getGuDisplayID();
            } else {
                iIntValue = num.intValue();
            }
            try {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
                if (launchIntentForPackage != null) {
                    Display[] displays = ((DisplayManager) context.getApplicationContext().getSystemService(m.h(new byte[]{56, 102, 25, 33, -84, -39, -85}, new byte[]{92, 15, 106, 81, -64, -72, -46, ByteCompanionObject.MAX_VALUE}))).getDisplays();
                    if (iIntValue < 0 || displays.length <= iIntValue) {
                        return;
                    }
                    ActivityOptions activityOptionsB = Build$VERSION.SDK_INT >= 26 ? h.b(ActivityOptions.makeBasic(), displays[iIntValue].getDisplayId()) : null;
                    launchIntentForPackage.addFlags(268435456);
                    Objects.requireNonNull(activityOptionsB, m.h(new byte[]{58, 3, 39, 57, -6, -109, 66, -101, 22, 18, Base64.padSymbol, 62, -6, -119, 17, -39, 16, 83, Base64.padSymbol, 37, -7, -111}, new byte[]{117, 115, 83, 80, -107, -3, 49, -69}));
                    y5.k.u(context, launchIntentForPackage, activityOptionsB.toBundle());
                    return;
                }
                return;
            } catch (Exception e6) {
                e6.printStackTrace();
                return;
            }
        }
        if (eVar.f2872a.equals(d.d)) {
            String str2 = eVar.c;
            String str3 = eVar.d;
            int i10 = eVar.f2875g;
            int i11 = eVar.f2876h;
            if (str2 == null || str3 == null) {
                return;
            }
            h0.b.a().j().ssa(new Saa(str2, str3, i10 != 2 ? 1 : 2, i11));
            return;
        }
        if (eVar.f2872a.equals(d.e)) {
            t tVarG = eVar.f2874f;
            if (tVarG == null && eVar.e != null) {
                h0.b.a();
                tVarG = h0.b.g().g(eVar.e);
            }
            if (tVarG != null && tVarG.a() && tVarG.a()) {
                tVarG.e.c(context);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(String str) {
        j(f.b(this.f2868a, h0.b.o().loadString(str, m.h(new byte[]{12, 92, 79, -29, 86, -43, 95, -76, 54, 68, 91, -30, 25, -2}, new byte[]{105, 50, 58, -114, 108, -101, 48, -64}))), null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(Spinner spinner, String str) {
        ArrayList arrayListE = e();
        spinner.setAdapter((SpinnerAdapter) new b(spinner.getContext(), arrayListE));
        spinner.setSelection(c(f.e(this.f2868a, str), arrayListE));
        spinner.setOnItemSelectedListener(new d1(1, this, str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(Spinner spinner, e eVar) {
        ArrayList arrayListE = e();
        spinner.setAdapter((SpinnerAdapter) new b(spinner.getContext(), arrayListE));
        spinner.setSelection(c(eVar, arrayListE));
    }
}
