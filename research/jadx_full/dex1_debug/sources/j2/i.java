package j2;

import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build$VERSION;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.SparseArray;
import c2.k;
import c2.m;
import c2.o;
import c2.u;
import c2.v;
import c2.x;
import com.google.android.datatransport.cct.CctBackendFactory;
import d2.j;
import d2.l;
import d2.n;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map$Entry;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e2.d f3032b;
    public final k2.d c;
    public final a5.h d;
    public final Executor e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final l2.c f3033f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final m2.a f3034g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final m2.a f3035h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final k2.c f3036i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(Context context, e2.d dVar, k2.d dVar2, a5.h hVar, Executor executor, l2.c cVar, m2.a aVar, m2.a aVar2, k2.c cVar2) {
        this.f3031a = context;
        this.f3032b = dVar;
        this.c = dVar2;
        this.d = hVar;
        this.e = executor;
        this.f3033f = cVar;
        this.f3034g = aVar;
        this.f3035h = aVar2;
        this.f3036i = cVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:204:0x0229 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x01ce  */
    public final void a(j jVar, int i9) {
        e2.e eVarCreate;
        e2.e eVar;
        long j9;
        e2.a aVar;
        String str;
        int i10;
        b2.b bVarF;
        String str2;
        Integer numValueOf;
        k kVar;
        int type;
        int subtype;
        HashMap map;
        int i11;
        j jVar2 = jVar;
        e2.d dVar = this.f3032b;
        String str3 = jVar2.f1683a;
        synchronized (dVar) {
            if (dVar.c.containsKey(str3)) {
                eVarCreate = (e2.e) dVar.c.get(str3);
            } else {
                CctBackendFactory cctBackendFactoryE = dVar.f2025a.e(str3);
                if (cctBackendFactoryE == null) {
                    eVarCreate = null;
                } else {
                    a5.h hVar = dVar.f2026b;
                    eVarCreate = cctBackendFactoryE.create(new e2.b((Context) hVar.c, (m2.a) hVar.d, (m2.a) hVar.e, str3));
                    dVar.c.put(str3, eVarCreate);
                }
            }
        }
        e2.e eVar2 = eVarCreate;
        long jMax = 0;
        while (true) {
            boolean zBooleanValue = ((Boolean) ((k2.h) this.f3033f).c0(new f(this, jVar2, 0))).booleanValue();
            l2.c cVar = this.f3033f;
            if (!zBooleanValue) {
                ((k2.h) cVar).c0(new h(jMax, this, jVar2));
                return;
            }
            Iterable iterable = (Iterable) ((k2.h) cVar).c0(new f(this, jVar2, 1));
            if (!iterable.iterator().hasNext()) {
                return;
            }
            if (eVar2 == null) {
                e3.d.d(jVar2, "Uploader", "Unknown backend for %s, deleting event batch for it...");
                aVar = new e2.a(3, -1L);
                eVar = eVar2;
                j9 = jMax;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((k2.b) it.next()).c);
                }
                if (jVar2.f1684b != null) {
                    l2.c cVar2 = this.f3033f;
                    k2.c cVar3 = this.f3036i;
                    Objects.requireNonNull(cVar3);
                    g2.a aVar2 = (g2.a) ((k2.h) cVar2).c0(new androidx.fragment.app.h(13, cVar3));
                    d2.h hVar2 = new d2.h();
                    hVar2.f1679f = new HashMap();
                    hVar2.d = Long.valueOf(this.f3034g.d());
                    hVar2.e = Long.valueOf(this.f3035h.d());
                    hVar2.f1677a = "GDT_CLIENT_METRICS";
                    a2.a aVar3 = new a2.a("proto");
                    aVar2.getClass();
                    a5.h hVar3 = n.f1691a;
                    hVar3.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        hVar3.g(aVar2, byteArrayOutputStream);
                    } catch (IOException unused) {
                    }
                    hVar2.c = new l(aVar3, byteArrayOutputStream.toByteArray());
                    d2.i iVarL = hVar2.l();
                    b2.c cVar4 = (b2.c) eVar2;
                    Context context = cVar4.c;
                    NetworkInfo activeNetworkInfo = cVar4.f302b.getActiveNetworkInfo();
                    d2.h hVarC = iVarL.c();
                    int i12 = Build$VERSION.SDK_INT;
                    HashMap map2 = (HashMap) hVarC.f1679f;
                    if (map2 == null) {
                        j1.i.l("Property \"autoMetadata\" has not been set");
                        return;
                    }
                    map2.put("sdk-version", String.valueOf(i12));
                    hVarC.j("model", Build.MODEL);
                    hVarC.j("hardware", Build.HARDWARE);
                    hVarC.j("device", Build.DEVICE);
                    hVarC.j("product", Build.PRODUCT);
                    hVarC.j("os-uild", Build.ID);
                    hVarC.j("manufacturer", Build.MANUFACTURER);
                    hVarC.j("fingerprint", Build.FINGERPRINT);
                    Calendar.getInstance();
                    long offset = TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
                    HashMap map3 = (HashMap) hVarC.f1679f;
                    if (map3 == null) {
                        j1.i.l("Property \"autoMetadata\" has not been set");
                        return;
                    }
                    map3.put("tz-offset", String.valueOf(offset));
                    if (activeNetworkInfo == null) {
                        SparseArray sparseArray = v.f471b;
                        type = -1;
                    } else {
                        type = activeNetworkInfo.getType();
                    }
                    HashMap map4 = (HashMap) hVarC.f1679f;
                    if (map4 == null) {
                        j1.i.l("Property \"autoMetadata\" has not been set");
                        return;
                    }
                    map4.put("net-type", String.valueOf(type));
                    if (activeNetworkInfo == null) {
                        SparseArray sparseArray2 = u.f470b;
                    } else {
                        subtype = activeNetworkInfo.getSubtype();
                        if (subtype == -1) {
                            SparseArray sparseArray3 = u.f470b;
                            subtype = 100;
                        } else if (((u) u.f470b.get(subtype)) == null) {
                        }
                        map = (HashMap) hVarC.f1679f;
                        if (map != null) {
                            j1.i.l("Property \"autoMetadata\" has not been set");
                            return;
                        }
                        map.put("mobile-subtype", String.valueOf(subtype));
                        hVarC.j("country", Locale.getDefault().getCountry());
                        hVarC.j("locale", Locale.getDefault().getLanguage());
                        hVarC.j("mcc_mnc", ((TelephonyManager) context.getSystemService("phone")).getSimOperator());
                        try {
                            i11 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                        } catch (PackageManager$NameNotFoundException e) {
                            e3.d.f("CctTransportBackend", "Unable to find version code for package", e);
                            i11 = -1;
                        }
                        hVarC.j("application_build", Integer.toString(i11));
                        arrayList.add(hVarC.l());
                    }
                    subtype = 0;
                    map = (HashMap) hVarC.f1679f;
                    if (map != null) {
                        j1.i.l("Property \"autoMetadata\" has not been set");
                        return;
                    }
                    map.put("mobile-subtype", String.valueOf(subtype));
                    hVarC.j("country", Locale.getDefault().getCountry());
                    hVarC.j("locale", Locale.getDefault().getLanguage());
                    hVarC.j("mcc_mnc", ((TelephonyManager) context.getSystemService("phone")).getSimOperator());
                    i11 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                    hVarC.j("application_build", Integer.toString(i11));
                    arrayList.add(hVarC.l());
                }
                byte[] bArr = jVar2.f1684b;
                b2.c cVar5 = (b2.c) eVar2;
                HashMap map5 = new HashMap();
                int size = arrayList.size();
                int i13 = 0;
                while (i13 < size) {
                    Object obj = arrayList.get(i13);
                    i13++;
                    d2.i iVar = (d2.i) obj;
                    byte[] bArr2 = bArr;
                    String str4 = iVar.f1680a;
                    if (map5.containsKey(str4)) {
                        ((List) map5.get(str4)).add(iVar);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(iVar);
                        map5.put(str4, arrayList2);
                    }
                    bArr = bArr2;
                    eVar2 = eVar2;
                }
                byte[] bArr3 = bArr;
                eVar = eVar2;
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = map5.entrySet().iterator();
                while (it2.hasNext()) {
                    Map$Entry map$Entry = (Map$Entry) it2.next();
                    d2.i iVar2 = (d2.i) ((List) map$Entry.getValue()).get(0);
                    x xVar = x.f472b;
                    long jD = cVar5.f303f.d();
                    long jD2 = cVar5.e.d();
                    c2.j jVar3 = new c2.j(new c2.h(Integer.valueOf(iVar2.b("sdk-version")), iVar2.a("model"), iVar2.a("hardware"), iVar2.a("device"), iVar2.a("product"), iVar2.a("os-uild"), iVar2.a("manufacturer"), iVar2.a("fingerprint"), iVar2.a("locale"), iVar2.a("country"), iVar2.a("mcc_mnc"), iVar2.a("application_build")));
                    try {
                        numValueOf = Integer.valueOf(Integer.parseInt((String) map$Entry.getKey()));
                        str2 = null;
                    } catch (NumberFormatException unused2) {
                        str2 = (String) map$Entry.getKey();
                        numValueOf = null;
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (d2.i iVar3 : (List) map$Entry.getValue()) {
                        l lVar = iVar3.c;
                        Iterator it3 = it2;
                        a2.a aVar4 = lVar.f1688a;
                        byte[] bArr4 = lVar.f1689b;
                        long j10 = jMax;
                        if (aVar4.equals(new a2.a("proto"))) {
                            kVar = new k(0);
                            kVar.f456g = bArr4;
                        } else {
                            if (aVar4.equals(new a2.a("json"))) {
                                String str5 = new String(bArr4, Charset.forName("UTF-8"));
                                k kVar2 = new k(0);
                                kVar2.f457h = str5;
                                kVar = kVar2;
                            } else {
                                String strJ = e3.d.j("CctTransportBackend");
                                if (Log.isLoggable(strJ, 5)) {
                                    Log.w(strJ, "Received event of unsupported encoding " + aVar4 + ". Skipping...");
                                }
                            }
                            it2 = it3;
                            jMax = j10;
                        }
                        kVar.c = Long.valueOf(iVar3.d);
                        kVar.d = Long.valueOf(iVar3.e);
                        String str6 = (String) iVar3.f1682f.get("tz-offset");
                        kVar.e = Long.valueOf(str6 == null ? 0L : Long.valueOf(str6).longValue());
                        kVar.f458i = new o((v) v.f471b.get(iVar3.b("net-type")), (u) u.f470b.get(iVar3.b("mobile-subtype")));
                        Integer num = iVar3.f1681b;
                        if (num != null) {
                            kVar.f455f = num;
                        }
                        String strConcat = ((Long) kVar.c) == null ? " eventTimeMs" : "";
                        if (((Long) kVar.d) == null) {
                            strConcat = strConcat.concat(" eventUptimeMs");
                        }
                        if (((Long) kVar.e) == null) {
                            strConcat = strConcat.concat(" timezoneOffsetSeconds");
                        }
                        if (!strConcat.isEmpty()) {
                            j1.i.l("Missing required properties:".concat(strConcat));
                            return;
                        } else {
                            arrayList4.add(new c2.l(((Long) kVar.c).longValue(), (Integer) kVar.f455f, ((Long) kVar.d).longValue(), (byte[]) kVar.f456g, (String) kVar.f457h, ((Long) kVar.e).longValue(), (o) kVar.f458i));
                            it2 = it3;
                            jMax = j10;
                        }
                    }
                    arrayList3.add(new m(jD, jD2, jVar3, numValueOf, str2, arrayList4));
                    it2 = it2;
                }
                j9 = jMax;
                c2.i iVar4 = new c2.i(arrayList3);
                URL urlA = cVar5.d;
                if (bArr3 != null) {
                    try {
                        b2.a aVarA = b2.a.a(bArr3);
                        String str7 = aVarA.f298b;
                        if (str7 == null) {
                            str7 = null;
                        }
                        urlA = b2.c.a(aVarA.f297a);
                        str = str7;
                    } catch (IllegalArgumentException unused3) {
                        aVar = new e2.a(3, -1L);
                    }
                } else {
                    str = null;
                }
                try {
                    a5.h hVar4 = new a5.h(urlA, iVar4, str, 1);
                    androidx.fragment.app.h hVar5 = new androidx.fragment.app.h(3, cVar5);
                    int i14 = 5;
                    do {
                        bVarF = hVar5.f(hVar4);
                        URL url = (URL) bVarF.c;
                        if (url != null) {
                            e3.d.d(url, "CctTransportBackend", "Following redirect to: %s");
                            hVar4 = new a5.h(url, (c2.i) hVar4.d, (String) hVar4.e, 1);
                        } else {
                            hVar4 = null;
                        }
                        if (hVar4 == null) {
                            break;
                        } else {
                            i14--;
                        }
                    } while (i14 >= 1);
                    int i15 = bVarF.f300b;
                    if (i15 == 200) {
                        aVar = new e2.a(1, bVarF.f299a);
                    } else if (i15 >= 500 || i15 == 404) {
                        aVar = new e2.a(2, -1L);
                    } else if (i15 == 400) {
                        try {
                            aVar = new e2.a(4, -1L);
                        } catch (IOException e6) {
                            e = e6;
                            e3.d.f("CctTransportBackend", "Could not make request to the backend", e);
                            i10 = 2;
                            aVar = new e2.a(2, -1L);
                        }
                    } else {
                        aVar = new e2.a(3, -1L);
                    }
                } catch (IOException e9) {
                    e = e9;
                }
            }
            i10 = 2;
            int i16 = aVar.f2021a;
            l2.c cVar6 = this.f3033f;
            if (i16 == i10) {
                ((k2.h) cVar6).c0(new g(this, iterable, jVar, j9));
                this.d.v(jVar, i9 + 1, true);
                return;
            }
            jVar2 = jVar;
            jMax = j9;
            ((k2.h) cVar6).c0(new f5.f(9, this, iterable));
            int i17 = aVar.f2021a;
            if (i17 == 1) {
                jMax = Math.max(jMax, aVar.f2022b);
                if (jVar2.f1684b != null) {
                    ((k2.h) this.f3033f).c0(new androidx.fragment.app.h(15, this));
                }
            } else if (i17 == 4) {
                HashMap map6 = new HashMap();
                Iterator it4 = iterable.iterator();
                while (it4.hasNext()) {
                    String str8 = ((k2.b) it4.next()).c.f1680a;
                    if (map6.containsKey(str8)) {
                        map6.put(str8, Integer.valueOf(((Integer) map6.get(str8)).intValue() + 1));
                    } else {
                        map6.put(str8, 1);
                    }
                }
                ((k2.h) this.f3033f).c0(new f5.f(10, this, map6));
            }
            eVar2 = eVar;
        }
    }
}
