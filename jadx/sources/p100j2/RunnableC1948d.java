package p100j2;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.PowerManager;
import android.util.Log;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.core.utils.C0279a;
import androidx.fragment.app.C0566h;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1074t;
import com.example.navistart.R;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.p118io.encoding.Base64;
import p038d1.C1241a;
import p039d2.C1254j;
import p047e0.AbstractC1387m;
import p084h7.C1683k;
import p111k2.C2036h;
import p111k2.InterfaceC2032d;
import p123l2.C2197a;
import p123l2.InterfaceC2198b;
import p123l2.InterfaceC2199c;
import p132m0.C2267b;
import p132m0.C2272c;
import p132m0.C2276c3;
import p132m0.C2297h;
import p132m0.C2302i;
import p132m0.C2328n0;
import p132m0.C2331n3;
import p132m0.C2375y2;
import p132m0.DialogInterfaceOnClickListenerC2373y0;
import p132m0.RunnableC2277d;
import p190s1.C3174u0;

/* JADX INFO: renamed from: j2.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1948d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5308b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f5309c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f5310d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f5311e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Object f5312f;

    public /* synthetic */ RunnableC1948d(C2331n3 c2331n3, File file, C1074t c1074t, int i10) {
        this.f5308b = 6;
        this.f5310d = c2331n3;
        this.f5311e = file;
        this.f5312f = c1074t;
        this.f5309c = i10;
    }

    /* JADX WARN: Code duplicated, block: B:137:0x0354  */
    /* JADX WARN: Code duplicated, block: B:138:0x035d  */
    /* JADX WARN: Code duplicated, block: B:168:0x02f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z9;
        Exception exc;
        boolean z10;
        String message;
        boolean z11;
        String string;
        C1241a c1241aM1284n;
        int i10 = 0;
        boolean zM3711x = true;
        switch (this.f5308b) {
            case 0:
                final C1953i c1953i = (C1953i) this.f5310d;
                final C1254j c1254j = (C1254j) this.f5311e;
                final int i11 = this.f5309c;
                Runnable runnable = (Runnable) this.f5312f;
                InterfaceC2199c interfaceC2199c = c1953i.f5332f;
                try {
                    try {
                        InterfaceC2032d interfaceC2032d = c1953i.f5329c;
                        Objects.requireNonNull(interfaceC2032d);
                        ((C2036h) interfaceC2199c).m3136c0(new C0566h(14, interfaceC2032d));
                        NetworkInfo activeNetworkInfo = ((ConnectivityManager) c1953i.f5327a.getSystemService("connectivity")).getActiveNetworkInfo();
                        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                            ((C2036h) interfaceC2199c).m3136c0(new InterfaceC2198b() { // from class: j2.e
                                @Override // p123l2.InterfaceC2198b
                                public final Object execute() {
                                    c1953i.f5330d.m86v(c1254j, i11 + 1, false);
                                    return null;
                                }
                            });
                        } else {
                            c1953i.m3051a(c1254j, i11);
                        }
                        break;
                    } catch (C2197a unused) {
                        c1953i.f5330d.m86v(c1254j, i11 + 1, false);
                        break;
                    }
                    return;
                } finally {
                    runnable.run();
                }
            case 1:
                C2302i c2302i = (C2302i) this.f5310d;
                Context context = (Context) this.f5311e;
                int i12 = this.f5309c;
                C2297h c2297h = (C2297h) this.f5312f;
                try {
                    try {
                        C1241a c1241aM1284n2 = AbstractC1031d.m1284n(context);
                        try {
                            if (i12 == c2302i.f6136j) {
                                String strM1282l = AbstractC1031d.m1282l(context, c1241aM1284n2, c2297h.f6102b, new C2267b(c2302i, i12), new C2272c(c2302i, i12, context));
                                Log.i(AbstractC1387m.m2421h(new byte[]{-21, 114, -37, 86, 70, -100, 3, 90, -39, 113, -62, 105, 77, -87, 28, 82, -60, 118}, new byte[]{-86, 2, -85, 6, 35, -18, 110, 51}), strM1282l);
                                String[] strArrSplit = strM1282l.split(AbstractC1387m.m2421h(new byte[]{49, -22, -6, 10, 67}, new byte[]{109, -104, -59, 86, 45, -34, 6, 57}));
                                int length = strArrSplit.length;
                                int i13 = 0;
                                int i14 = 0;
                                int i15 = 0;
                                while (i13 < length) {
                                    String str = strArrSplit[i13];
                                    z9 = zM3711x;
                                    try {
                                        if (str.equals(AbstractC1387m.m2421h(new byte[]{88, -81, -52, -41, 87, -54}, new byte[]{Base64.padSymbol, -41, -91, -93, 106, -6, -86, -73}))) {
                                            i14++;
                                        } else if (str.startsWith(AbstractC1387m.m2421h(new byte[]{8, 84, 40, -46, 110}, new byte[]{109, 44, 65, -90, 83, -59, 50, -62}))) {
                                            i15++;
                                        }
                                        i13++;
                                        zM3711x = z9;
                                    } catch (Throwable th) {
                                        th = th;
                                    }
                                }
                                z9 = zM3711x;
                                String str2 = c2297h.f6102b;
                                PowerManager powerManager = (PowerManager) context.getSystemService(AbstractC1387m.m2421h(new byte[]{-63, 8, 73, 64, 104}, new byte[]{-79, 103, 62, 37, 26, -19, 28, -51}));
                                string = context.getString(R.string.app_permission_grant_commands_result, c2297h.f6101a, Integer.valueOf(i14), Integer.valueOf(i15), context.getString((powerManager == null || !powerManager.isIgnoringBatteryOptimizations(str2)) ? false : z9 ? R.string.app_permission_grant_battery_allowed : R.string.app_permission_grant_battery_denied));
                                c1241aM1284n2.close();
                                z11 = false;
                                c2302i.f6133g.post(new RunnableC2277d(c2302i, i12, z11, string));
                                return;
                            }
                            try {
                                c1241aM1284n2.close();
                                return;
                            } catch (Exception e) {
                                exc = e;
                                z9 = true;
                                if (i12 != c2302i.f6136j) {
                                    return;
                                }
                                try {
                                    c1241aM1284n = AbstractC1031d.m1284n(context);
                                    try {
                                        z10 = !AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -121, 35, -97, -103, -100, -77, 15, 46}, new byte[]{119, -60, 119, -64, -53, -39, -14, 75}).equals(c1241aM1284n.m2229y(AbstractC1387m.m2421h(new byte[]{24, 39, 79, 52, 96, 42, -10, -30, 34, 22, 98, 26, 4, 57}, new byte[]{125, 68, 39, 91, 64, 96, -75, -74})).trim());
                                        c1241aM1284n.close();
                                    } catch (Throwable th2) {
                                        try {
                                            c1241aM1284n.close();
                                            throw th2;
                                        } catch (Throwable th3) {
                                            th2.addSuppressed(th3);
                                            throw th2;
                                        }
                                    }
                                } catch (Exception unused2) {
                                    z10 = z9;
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(context.getString(R.string.app_permission_grant_error));
                                    sb.append("\n");
                                    if (exc.getMessage() == null) {
                                        message = exc.getClass().getSimpleName();
                                    } else {
                                        message = exc.getMessage();
                                    }
                                    sb.append(message);
                                    z11 = z10;
                                    string = sb.toString();
                                    c2302i.f6133g.post(new RunnableC2277d(c2302i, i12, z11, string));
                                    return;
                                }
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(context.getString(R.string.app_permission_grant_error));
                                sb2.append("\n");
                                if (exc.getMessage() == null) {
                                    message = exc.getClass().getSimpleName();
                                } else {
                                    message = exc.getMessage();
                                }
                                sb2.append(message);
                                z11 = z10;
                                string = sb2.toString();
                                c2302i.f6133g.post(new RunnableC2277d(c2302i, i12, z11, string));
                                return;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            z9 = zM3711x;
                        }
                        Throwable th5 = th;
                        try {
                            c1241aM1284n2.close();
                            throw th5;
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                            throw th5;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        exc = e;
                        if (i12 != c2302i.f6136j) {
                            return;
                        }
                        c1241aM1284n = AbstractC1031d.m1284n(context);
                        z10 = !AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -121, 35, -97, -103, -100, -77, 15, 46}, new byte[]{119, -60, 119, -64, -53, -39, -14, 75}).equals(c1241aM1284n.m2229y(AbstractC1387m.m2421h(new byte[]{24, 39, 79, 52, 96, 42, -10, -30, 34, 22, 98, 26, 4, 57}, new byte[]{125, 68, 39, 91, 64, 96, -75, -74})).trim());
                        c1241aM1284n.close();
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(context.getString(R.string.app_permission_grant_error));
                        sb3.append("\n");
                        if (exc.getMessage() == null) {
                            message = exc.getClass().getSimpleName();
                        } else {
                            message = exc.getMessage();
                        }
                        sb3.append(message);
                        z11 = z10;
                        string = sb3.toString();
                        c2302i.f6133g.post(new RunnableC2277d(c2302i, i12, z11, string));
                        return;
                    }
                } catch (Exception e10) {
                    e = e10;
                    z9 = true;
                    exc = e;
                    if (i12 != c2302i.f6136j) {
                        return;
                    }
                    c1241aM1284n = AbstractC1031d.m1284n(context);
                    z10 = !AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -121, 35, -97, -103, -100, -77, 15, 46}, new byte[]{119, -60, 119, -64, -53, -39, -14, 75}).equals(c1241aM1284n.m2229y(AbstractC1387m.m2421h(new byte[]{24, 39, 79, 52, 96, 42, -10, -30, 34, 22, 98, 26, 4, 57}, new byte[]{125, 68, 39, 91, 64, 96, -75, -74})).trim());
                    c1241aM1284n.close();
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(context.getString(R.string.app_permission_grant_error));
                    sb4.append("\n");
                    if (exc.getMessage() == null) {
                        message = exc.getClass().getSimpleName();
                    } else {
                        message = exc.getMessage();
                    }
                    sb4.append(message);
                    z11 = z10;
                    string = sb4.toString();
                    c2302i.f6133g.post(new RunnableC2277d(c2302i, i12, z11, string));
                    return;
                }
            case 2:
                C2328n0 c2328n0 = (C2328n0) this.f5310d;
                int i16 = this.f5309c;
                String str3 = (String) this.f5311e;
                ArrayList arrayList = (ArrayList) this.f5312f;
                String str4 = C2328n0.f6237k;
                if (c2328n0.m3708t(i16)) {
                    c2328n0.f6241e = str3;
                    c2328n0.f6240d = false;
                    c2328n0.f6246j.f6218a.clear();
                    c2328n0.f6246j.f6218a.addAll(arrayList);
                    c2328n0.f6246j.notifyDataSetChanged();
                    c2328n0.f6244h.setVisibility(8);
                    c2328n0.f6245i.setVisibility(0);
                    c2328n0.f6242f.setVisibility(arrayList.isEmpty() ? 8 : 0);
                    c2328n0.f6243g.setText(R.string.fullscreen_apps_empty);
                    c2328n0.f6243g.setVisibility(arrayList.isEmpty() ? 0 : 8);
                    return;
                }
                return;
            case 3:
                C2276c3 c2276c3 = (C2276c3) this.f5310d;
                File file = (File) this.f5311e;
                int i17 = this.f5309c;
                String str5 = (String) this.f5312f;
                C2375y2 c2375y2 = new C2375y2();
                C2276c3.m3658w(file, c2375y2, true);
                c2276c3.m3662F(new RunnableC1948d(c2276c3, i17, str5, c2375y2, 4));
                return;
            case 4:
                C2276c3 c2276c4 = (C2276c3) this.f5310d;
                int i18 = this.f5309c;
                String str6 = (String) this.f5311e;
                C2375y2 c2375y3 = (C2375y2) this.f5312f;
                ArrayList arrayList2 = c2276c4.f5967b;
                if (i18 != c2276c4.f5988w) {
                    return;
                }
                c2276c4.f5969d.remove(str6);
                c2276c4.f5968c.put(str6, c2375y3);
                if (c2276c4.f5970e != null) {
                    while (i10 < arrayList2.size()) {
                        if (C2276c3.m3655G((File) arrayList2.get(i10)).equals(str6)) {
                            c2276c4.f5970e.notifyItemChanged(i10);
                            return;
                        }
                        i10++;
                    }
                    return;
                }
                return;
            case 5:
                C2331n3 c2331n3 = (C2331n3) this.f5310d;
                int i19 = this.f5309c;
                ArrayList arrayList3 = (ArrayList) this.f5311e;
                C1074t c1074t = (C1074t) this.f5312f;
                if (c2331n3.getView() == null || i19 != c2331n3.f6258g) {
                    return;
                }
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(c2331n3.getString(R.string.video_all_sources));
                arrayList4.add(c2331n3.getString(R.string.video_device));
                int size = arrayList3.size();
                while (i10 < size) {
                    Object obj = arrayList3.get(i10);
                    i10++;
                    arrayList4.add(((File) obj).getAbsolutePath());
                }
                AlertDialog alertDialog = c2331n3.f6268q;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(c2331n3.requireContext(), R.style.ThemeOverlay_JCarTools_VideoAlert);
                c2331n3.f6268q = builder.setTitle(R.string.video_source).setAdapter(new ArrayAdapter(builder.getContext(), R.layout.video_browser_item, arrayList4), new DialogInterfaceOnClickListenerC2373y0(c2331n3, c1074t, arrayList3, 2)).show();
                return;
            case 6:
                C2331n3 c2331n4 = (C2331n3) this.f5310d;
                File file2 = (File) this.f5311e;
                C1074t c1074t2 = (C1074t) this.f5312f;
                int i20 = this.f5309c;
                ArrayList arrayList5 = new ArrayList();
                try {
                    ArrayList arrayList6 = new ArrayList();
                    if (file2 != null) {
                        arrayList6.add(file2);
                    } else {
                        c1074t2.getClass();
                        arrayList6.add(Environment.getExternalStorageDirectory());
                        ((C1683k) c1074t2.f1185e).m2797o((Context) c1074t2.f1184d);
                        arrayList6.addAll(c1074t2.m1361e());
                    }
                    zM3711x = C2331n3.m3711x(c1074t2, arrayList6, arrayList5);
                    break;
                } catch (Exception unused3) {
                }
                if (Thread.currentThread().isInterrupted()) {
                    return;
                }
                arrayList5.sort(new C0279a(10));
                c2331n4.f6255d.post(new RunnableC2277d(c2331n4, i20, arrayList5, zM3711x));
                return;
            default:
                C3174u0 c3174u0 = (C3174u0) this.f5310d;
                int i21 = this.f5309c;
                List list = (List) this.f5311e;
                HashSet hashSet = (HashSet) this.f5312f;
                if (c3174u0.isAttachedToWindow() && i21 == c3174u0.f9233p && !c3174u0.f9223f && c3174u0.f9231n) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        String str7 = ((ResolveInfo) it.next()).activityInfo.packageName;
                        if (!str7.equals(c3174u0.getContext().getPackageName()) && hashSet.add(str7)) {
                            c3174u0.m5086a(str7);
                        }
                    }
                    return;
                }
                return;
        }
    }

    public /* synthetic */ RunnableC1948d(Object obj, Object obj2, int i10, Object obj3, int i11) {
        this.f5308b = i11;
        this.f5310d = obj;
        this.f5311e = obj2;
        this.f5309c = i10;
        this.f5312f = obj3;
    }

    public /* synthetic */ RunnableC1948d(Object obj, int i10, Object obj2, Object obj3, int i11) {
        this.f5308b = i11;
        this.f5310d = obj;
        this.f5309c = i10;
        this.f5311e = obj2;
        this.f5312f = obj3;
    }
}
