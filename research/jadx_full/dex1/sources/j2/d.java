package j2;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.PowerManager;
import android.util.Log;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AlertDialog$Builder;
import com.bumptech.glide.manager.t;
import d2.j;
import e0.m;
import h7.k;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.io.encoding.Base64;
import m0.c3;
import m0.n0;
import m0.n3;
import m0.y0;
import m0.y2;
import s1.u0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3024b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f3025f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(n3 n3Var, File file, t tVar, int i9) {
        this.f3024b = 6;
        this.d = n3Var;
        this.e = file;
        this.f3025f = tVar;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:137:0x0354  */
    /* JADX WARN: Code duplicated, block: B:138:0x035d  */
    /* JADX WARN: Code duplicated, block: B:168:0x02f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z8;
        Exception exc;
        boolean z9;
        String message;
        boolean z10;
        String string;
        d1.a aVarN;
        int i9 = 0;
        boolean zX = true;
        switch (this.f3024b) {
            case 0:
                i iVar = (i) this.d;
                j jVar = (j) this.e;
                int i10 = this.c;
                Runnable runnable = (Runnable) this.f3025f;
                l2.c cVar = iVar.f3033f;
                try {
                    try {
                        k2.d dVar = iVar.c;
                        Objects.requireNonNull(dVar);
                        ((k2.h) cVar).c0(new androidx.fragment.app.h(14, dVar));
                        NetworkInfo activeNetworkInfo = ((ConnectivityManager) iVar.f3031a.getSystemService("connectivity")).getActiveNetworkInfo();
                        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                            ((k2.h) cVar).c0(new e(iVar, jVar, i10));
                        } else {
                            iVar.a(jVar, i10);
                        }
                        break;
                    } catch (l2.a unused) {
                        iVar.d.v(jVar, i10 + 1, false);
                        break;
                    }
                    return;
                } finally {
                    runnable.run();
                }
            case 1:
                m0.i iVar2 = (m0.i) this.d;
                Context context = (Context) this.e;
                int i11 = this.c;
                m0.h hVar = (m0.h) this.f3025f;
                try {
                    try {
                        d1.a aVarN2 = com.bumptech.glide.d.n(context);
                        try {
                            if (i11 == iVar2.f3462j) {
                                String strL = com.bumptech.glide.d.l(context, aVarN2, hVar.f3440b, new m0.b(iVar2, i11), new m0.c(iVar2, i11, context));
                                Log.i(m.h(new byte[]{-21, 114, -37, 86, 70, -100, 3, 90, -39, 113, -62, 105, 77, -87, 28, 82, -60, 118}, new byte[]{-86, 2, -85, 6, 35, -18, 110, 51}), strL);
                                String[] strArrSplit = strL.split(m.h(new byte[]{49, -22, -6, 10, 67}, new byte[]{109, -104, -59, 86, 45, -34, 6, 57}));
                                int length = strArrSplit.length;
                                int i12 = 0;
                                int i13 = 0;
                                int i14 = 0;
                                while (i12 < length) {
                                    String str = strArrSplit[i12];
                                    z8 = zX;
                                    try {
                                        if (str.equals(m.h(new byte[]{88, -81, -52, -41, 87, -54}, new byte[]{Base64.padSymbol, -41, -91, -93, 106, -6, -86, -73}))) {
                                            i13++;
                                        } else if (str.startsWith(m.h(new byte[]{8, 84, 40, -46, 110}, new byte[]{109, 44, 65, -90, 83, -59, 50, -62}))) {
                                            i14++;
                                        }
                                        i12++;
                                        zX = z8;
                                    } catch (Throwable th) {
                                        th = th;
                                    }
                                }
                                z8 = zX;
                                String str2 = hVar.f3440b;
                                PowerManager powerManager = (PowerManager) context.getSystemService(m.h(new byte[]{-63, 8, 73, 64, 104}, new byte[]{-79, 103, 62, 37, 26, -19, 28, -51}));
                                string = context.getString(2131951793, hVar.f3439a, Integer.valueOf(i13), Integer.valueOf(i14), context.getString((powerManager == null || !powerManager.isIgnoringBatteryOptimizations(str2)) ? false : z8 ? 2131951791 : 2131951792));
                                aVarN2.close();
                                z10 = false;
                                iVar2.f3459g.post(new m0.d(iVar2, i11, z10, string));
                                return;
                            }
                            try {
                                aVarN2.close();
                                return;
                            } catch (Exception e) {
                                exc = e;
                                z8 = true;
                                if (i11 != iVar2.f3462j) {
                                    return;
                                }
                                try {
                                    aVarN = com.bumptech.glide.d.n(context);
                                    try {
                                        z9 = !m.h(new byte[]{Base64.padSymbol, -121, 35, -97, -103, -100, -77, 15, 46}, new byte[]{119, -60, 119, -64, -53, -39, -14, 75}).equals(aVarN.y(m.h(new byte[]{24, 39, 79, 52, 96, 42, -10, -30, 34, 22, 98, 26, 4, 57}, new byte[]{125, 68, 39, 91, 64, 96, -75, -74})).trim());
                                        aVarN.close();
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(context.getString(2131951795));
                                        sb.append("\n");
                                        if (exc.getMessage() == null) {
                                            message = exc.getClass().getSimpleName();
                                        } else {
                                            message = exc.getMessage();
                                        }
                                        sb.append(message);
                                        z10 = z9;
                                        string = sb.toString();
                                        iVar2.f3459g.post(new m0.d(iVar2, i11, z10, string));
                                        return;
                                    } catch (Throwable th2) {
                                        try {
                                            aVarN.close();
                                            throw th2;
                                        } catch (Throwable th3) {
                                            th2.addSuppressed(th3);
                                            throw th2;
                                        }
                                    }
                                } catch (Exception unused2) {
                                    z9 = z8;
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(context.getString(2131951795));
                                    sb2.append("\n");
                                    if (exc.getMessage() == null) {
                                        message = exc.getClass().getSimpleName();
                                    } else {
                                        message = exc.getMessage();
                                    }
                                    sb2.append(message);
                                    z10 = z9;
                                    string = sb2.toString();
                                    iVar2.f3459g.post(new m0.d(iVar2, i11, z10, string));
                                    return;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            z8 = zX;
                        }
                        Throwable th5 = th;
                        try {
                            aVarN2.close();
                            throw th5;
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                            throw th5;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        z8 = true;
                        exc = e;
                        if (i11 != iVar2.f3462j) {
                            return;
                        }
                        aVarN = com.bumptech.glide.d.n(context);
                        z9 = !m.h(new byte[]{Base64.padSymbol, -121, 35, -97, -103, -100, -77, 15, 46}, new byte[]{119, -60, 119, -64, -53, -39, -14, 75}).equals(aVarN.y(m.h(new byte[]{24, 39, 79, 52, 96, 42, -10, -30, 34, 22, 98, 26, 4, 57}, new byte[]{125, 68, 39, 91, 64, 96, -75, -74})).trim());
                        aVarN.close();
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(context.getString(2131951795));
                        sb3.append("\n");
                        if (exc.getMessage() == null) {
                            message = exc.getClass().getSimpleName();
                        } else {
                            message = exc.getMessage();
                        }
                        sb3.append(message);
                        z10 = z9;
                        string = sb3.toString();
                        iVar2.f3459g.post(new m0.d(iVar2, i11, z10, string));
                        return;
                    }
                } catch (Exception e9) {
                    e = e9;
                    exc = e;
                    if (i11 != iVar2.f3462j) {
                        return;
                    }
                    aVarN = com.bumptech.glide.d.n(context);
                    z9 = !m.h(new byte[]{Base64.padSymbol, -121, 35, -97, -103, -100, -77, 15, 46}, new byte[]{119, -60, 119, -64, -53, -39, -14, 75}).equals(aVarN.y(m.h(new byte[]{24, 39, 79, 52, 96, 42, -10, -30, 34, 22, 98, 26, 4, 57}, new byte[]{125, 68, 39, 91, 64, 96, -75, -74})).trim());
                    aVarN.close();
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(context.getString(2131951795));
                    sb4.append("\n");
                    if (exc.getMessage() == null) {
                        message = exc.getClass().getSimpleName();
                    } else {
                        message = exc.getMessage();
                    }
                    sb4.append(message);
                    z10 = z9;
                    string = sb4.toString();
                    iVar2.f3459g.post(new m0.d(iVar2, i11, z10, string));
                    return;
                }
            case 2:
                n0 n0Var = (n0) this.d;
                int i15 = this.c;
                String str3 = (String) this.e;
                ArrayList arrayList = (ArrayList) this.f3025f;
                String str4 = n0.f3526k;
                if (n0Var.t(i15)) {
                    n0Var.e = str3;
                    n0Var.d = false;
                    n0Var.f3532j.f3511a.clear();
                    n0Var.f3532j.f3511a.addAll(arrayList);
                    n0Var.f3532j.notifyDataSetChanged();
                    n0Var.f3530h.setVisibility(8);
                    n0Var.f3531i.setVisibility(0);
                    n0Var.f3528f.setVisibility(arrayList.isEmpty() ? 8 : 0);
                    n0Var.f3529g.setText(2131952002);
                    n0Var.f3529g.setVisibility(arrayList.isEmpty() ? 0 : 8);
                    return;
                }
                return;
            case 3:
                c3 c3Var = (c3) this.d;
                File file = (File) this.e;
                int i16 = this.c;
                String str5 = (String) this.f3025f;
                y2 y2Var = new y2();
                c3.w(file, y2Var, true);
                c3Var.F(new d(c3Var, i16, str5, y2Var, 4));
                return;
            case 4:
                c3 c3Var2 = (c3) this.d;
                int i17 = this.c;
                String str6 = (String) this.e;
                y2 y2Var2 = (y2) this.f3025f;
                ArrayList arrayList2 = c3Var2.f3355b;
                if (i17 != c3Var2.w) {
                    return;
                }
                c3Var2.d.remove(str6);
                c3Var2.c.put(str6, y2Var2);
                if (c3Var2.e != null) {
                    while (i9 < arrayList2.size()) {
                        if (c3.G((File) arrayList2.get(i9)).equals(str6)) {
                            c3Var2.e.notifyItemChanged(i9);
                            return;
                        }
                        i9++;
                    }
                    return;
                }
                return;
            case 5:
                n3 n3Var = (n3) this.d;
                int i18 = this.c;
                ArrayList arrayList3 = (ArrayList) this.e;
                t tVar = (t) this.f3025f;
                if (n3Var.getView() == null || i18 != n3Var.f3537g) {
                    return;
                }
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(n3Var.getString(2131952741));
                arrayList4.add(n3Var.getString(2131952744));
                int size = arrayList3.size();
                while (i9 < size) {
                    Object obj = arrayList3.get(i9);
                    i9++;
                    arrayList4.add(((File) obj).getAbsolutePath());
                }
                AlertDialog alertDialog = n3Var.f3547q;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
                AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(n3Var.requireContext(), 2132017904);
                n3Var.f3547q = alertDialog$Builder.setTitle(2131952754).setAdapter(new ArrayAdapter(alertDialog$Builder.getContext(), 2131493145, arrayList4), new y0(n3Var, tVar, arrayList3, 2)).show();
                return;
            case 6:
                n3 n3Var2 = (n3) this.d;
                File file2 = (File) this.e;
                t tVar2 = (t) this.f3025f;
                int i19 = this.c;
                ArrayList arrayList5 = new ArrayList();
                try {
                    ArrayList arrayList6 = new ArrayList();
                    if (file2 != null) {
                        arrayList6.add(file2);
                    } else {
                        tVar2.getClass();
                        arrayList6.add(Environment.getExternalStorageDirectory());
                        ((k) tVar2.e).o((Context) tVar2.d);
                        arrayList6.addAll(tVar2.e());
                    }
                    zX = n3.x(tVar2, arrayList6, arrayList5);
                    break;
                } catch (Exception unused3) {
                }
                if (Thread.currentThread().isInterrupted()) {
                    return;
                }
                arrayList5.sort(new androidx.constraintlayout.core.utils.a(10));
                n3Var2.d.post(new m0.d(n3Var2, i19, arrayList5, zX));
                return;
            default:
                u0 u0Var = (u0) this.d;
                int i20 = this.c;
                List list = (List) this.e;
                HashSet hashSet = (HashSet) this.f3025f;
                if (u0Var.isAttachedToWindow() && i20 == u0Var.f5216p && !u0Var.f5206f && u0Var.f5214n) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        String str7 = ((ResolveInfo) it.next()).activityInfo.packageName;
                        if (!str7.equals(u0Var.getContext().getPackageName()) && hashSet.add(str7)) {
                            u0Var.a(str7);
                        }
                    }
                    return;
                }
                return;
        }
    }

    public /* synthetic */ d(Object obj, Object obj2, int i9, Object obj3, int i10) {
        this.f3024b = i10;
        this.d = obj;
        this.e = obj2;
        this.c = i9;
        this.f3025f = obj3;
    }

    public /* synthetic */ d(Object obj, int i9, Object obj2, Object obj3, int i10) {
        this.f3024b = i10;
        this.d = obj;
        this.c = i9;
        this.e = obj2;
        this.f3025f = obj3;
    }
}
