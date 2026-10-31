package f5;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.FirebaseCommonRegistrar;
import java.io.File;
import java.nio.file.Path;
import java.time.chrono.ChronoZonedDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map$Entry;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;
import java.util.logging.Logger;
import m0.s0;
import n7.x0;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.AgeFileFilter;
import org.apache.commons.io.filefilter.EmptyFileFilter;
import org.apache.commons.io.filefilter.HiddenFileFilter;
import org.apache.commons.io.filefilter.SizeFileFilter;
import org.apache.commons.io.function.IOBiConsumer;
import org.apache.commons.io.function.IOBooleanSupplier;
import org.apache.commons.io.function.IOFunction;
import org.apache.commons.io.function.IOQuadFunction;
import org.apache.commons.io.function.IOSupplier;
import org.apache.commons.io.function.IOTriConsumer;
import org.apache.commons.io.function.IOTriFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements b8.a, b8.c, k5.a, j1.u, l2.b, k2.f, IOBooleanSupplier, IOSupplier, IOBiConsumer, IOQuadFunction, IOTriConsumer, IOTriFunction, t4.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2196b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(s0 s0Var, p0.b bVar, p0.a aVar) {
        this.f2196b = 12;
        this.c = s0Var;
        this.d = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:16:0x0047  */
    @Override // t4.c
    public Object a(d2.h hVar) {
        String strValueOf;
        switch (this.f2196b) {
            case 24:
                String str = (String) this.c;
                n0.b bVar = (n0.b) this.d;
                Context context = (Context) hVar.b(Context.class);
                switch (bVar.f3779b) {
                    case 8:
                        ApplicationInfo applicationInfo = context.getApplicationInfo();
                        if (applicationInfo == null) {
                            strValueOf = "";
                        } else {
                            strValueOf = String.valueOf(applicationInfo.targetSdkVersion);
                        }
                        break;
                    case 9:
                        ApplicationInfo applicationInfo2 = context.getApplicationInfo();
                        if (applicationInfo2 == null) {
                            strValueOf = "";
                        } else {
                            strValueOf = String.valueOf(applicationInfo2.minSdkVersion);
                        }
                        break;
                    case 10:
                        if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
                            strValueOf = "tv";
                        } else if (context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
                            strValueOf = "watch";
                        } else if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
                            strValueOf = "auto";
                        } else if (Build$VERSION.SDK_INT >= 26 && context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                            strValueOf = "embedded";
                        } else {
                            strValueOf = "";
                        }
                        break;
                    default:
                        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                        if (installerPackageName == null) {
                            strValueOf = "";
                        } else {
                            strValueOf = FirebaseCommonRegistrar.a(installerPackageName);
                        }
                        break;
                }
                return new r5.a(str, strValueOf);
            default:
                String str2 = (String) this.c;
                t4.a aVar = (t4.a) this.d;
                try {
                    Trace.beginSection(str2);
                    return aVar.f5385f.a(hVar);
                } finally {
                    Trace.endSection();
                }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void accept(Object obj, Object obj2) {
        IOBiConsumer.j((IOBiConsumer) this.c, (IOBiConsumer) this.d, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:126:0x0420  */
    /* JADX WARN: Code duplicated, block: B:135:0x0471  */
    /* JADX WARN: Code duplicated, block: B:198:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x0103 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x00ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0078  */
    /* JADX WARN: Code duplicated, block: B:25:0x008a  */
    /* JADX WARN: Code duplicated, block: B:30:0x00b5 A[Catch: all -> 0x013c, TryCatch #11 {all -> 0x013c, blocks: (B:28:0x00af, B:30:0x00b5, B:32:0x00c5, B:33:0x00d1), top: B:183:0x00af }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00c5 A[Catch: all -> 0x013c, TryCatch #11 {all -> 0x013c, blocks: (B:28:0x00af, B:30:0x00b5, B:32:0x00c5, B:33:0x00d1), top: B:183:0x00af }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:44:0x011d A[LOOP:4: B:42:0x0117->B:44:0x011d, LOOP_END] */
    @Override // b8.c
    public Object apply(Object obj) throws Throwable {
        boolean z8;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        ApplicationInfo applicationInfo2;
        Bundle bundle2;
        String str;
        HashMap map;
        StringBuilder sb;
        int i9;
        Cursor cursorQuery;
        ListIterator listIterator;
        k2.b bVar;
        long j9;
        d2.h hVarC;
        long j10;
        Set hashSet;
        Object obj2;
        boolean z9 = true;
        boolean z10 = false;
        switch (this.f2196b) {
            case 1:
                o oVar = (o) this.c;
                HashSet hashSet2 = (HashSet) this.d;
                y5.c cVar = (y5.c) obj;
                oVar.getClass();
                e3.d.m("Existing impressions: ".concat(cVar.toString()));
                y5.b bVarQ = y5.c.q();
                for (y5.a aVar : cVar.o()) {
                    if (!hashSet2.contains(aVar.n())) {
                        bVarQ.c();
                        y5.c.n((y5.c) bVarQ.c, aVar);
                    }
                }
                y5.c cVar2 = (y5.c) bVarQ.a();
                e3.d.m("New cleared impression list: ".concat(cVar2.toString()));
                y yVar = oVar.f2221a;
                yVar.getClass();
                return new g8.d(new g8.b(new x(1, yVar, cVar2)), d8.b.d, new f(2, oVar, cVar2));
            case 2:
            case 4:
            default:
                k2.h hVar = (k2.h) this.c;
                d2.j jVar = (d2.j) this.d;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                k2.a aVar2 = hVar.e;
                ArrayList arrayListS = hVar.S(sQLiteDatabase, jVar, aVar2.f3159b);
                for (a2.b bVar2 : a2.b.values()) {
                    if (bVar2 != jVar.c) {
                        int size = aVar2.f3159b - arrayListS.size();
                        if (size > 0) {
                            String str2 = jVar.f1683a;
                            if (str2 == null) {
                                obj2 = null;
                                n0.b.n("Null backendName");
                            } else if (bVar2 != null) {
                                arrayListS.addAll(hVar.S(sQLiteDatabase, new d2.j(str2, jVar.f1684b, bVar2), size));
                            } else {
                                obj2 = null;
                                n0.b.n("Null priority");
                            }
                            return obj2;
                        }
                        map = new HashMap();
                        sb = new StringBuilder("event_id IN (");
                        for (i9 = 0; i9 < arrayListS.size(); i9++) {
                            sb.append(((k2.b) arrayListS.get(i9)).f3160a);
                            if (i9 < arrayListS.size() - 1) {
                                sb.append(',');
                            }
                        }
                        sb.append(')');
                        cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null);
                        while (cursorQuery.moveToNext()) {
                            try {
                                j10 = cursorQuery.getLong(0);
                                hashSet = (Set) map.get(Long.valueOf(j10));
                                if (hashSet == null) {
                                    hashSet = new HashSet();
                                    map.put(Long.valueOf(j10), hashSet);
                                }
                                hashSet.add(new k2.g(cursorQuery.getString(1), cursorQuery.getString(2)));
                            } catch (Throwable th) {
                                cursorQuery.close();
                                throw th;
                            }
                            break;
                        }
                        cursorQuery.close();
                        listIterator = arrayListS.listIterator();
                        while (listIterator.hasNext()) {
                            bVar = (k2.b) listIterator.next();
                            j9 = bVar.f3160a;
                            if (!map.containsKey(Long.valueOf(j9))) {
                                hVarC = bVar.c.c();
                                for (k2.g gVar : (Set) map.get(Long.valueOf(j9))) {
                                    hVarC.j(gVar.f3163a, gVar.f3164b);
                                }
                                listIterator.set(new k2.b(j9, bVar.f3161b, hVarC.l()));
                            }
                        }
                        return arrayListS;
                    }
                }
                map = new HashMap();
                sb = new StringBuilder("event_id IN (");
                while (i9 < arrayListS.size()) {
                    sb.append(((k2.b) arrayListS.get(i9)).f3160a);
                    if (i9 < arrayListS.size() - 1) {
                        sb.append(',');
                    }
                }
                sb.append(')');
                cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null);
                while (cursorQuery.moveToNext()) {
                    j10 = cursorQuery.getLong(0);
                    hashSet = (Set) map.get(Long.valueOf(j10));
                    if (hashSet == null) {
                        hashSet = new HashSet();
                        map.put(Long.valueOf(j10), hashSet);
                    }
                    hashSet.add(new k2.g(cursorQuery.getString(1), cursorQuery.getString(2)));
                    break;
                }
                cursorQuery.close();
                listIterator = arrayListS.listIterator();
                while (listIterator.hasNext()) {
                    bVar = (k2.b) listIterator.next();
                    j9 = bVar.f3160a;
                    if (!map.containsKey(Long.valueOf(j9))) {
                        hVarC = bVar.c.c();
                        while (r7.hasNext()) {
                            hVarC.j(gVar.f3163a, gVar.f3164b);
                        }
                        listIterator.set(new k2.b(j9, bVar.f3161b, hVarC.l()));
                    }
                }
                return arrayListS;
            case 3:
                t tVar = (t) this.c;
                x7.e eVar = (x7.e) this.d;
                y5.c cVar3 = (y5.c) obj;
                android.support.v4.media.h hVar2 = tVar.f2238n;
                l0 l0Var = (l0) hVar2.c;
                o4.f fVar = l0Var.f2216a;
                fVar.a();
                boolean zContains = ((Application) fVar.f4088a).getSharedPreferences("com.google.firebase.inappmessaging", 0).contains("auto_init");
                o4.f fVar2 = l0Var.f2216a;
                Context context = fVar2.f4088a;
                if (zContains) {
                    fVar2.a();
                    SharedPreferences sharedPreferences = ((Application) context).getSharedPreferences("com.google.firebase.inappmessaging", 0);
                    if (sharedPreferences.contains("auto_init")) {
                        z8 = sharedPreferences.getBoolean("auto_init", true);
                    } else {
                        z8 = true;
                    }
                } else {
                    fVar2.a();
                    Application application = (Application) context;
                    try {
                        PackageManager packageManager = application.getPackageManager();
                        if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(application.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_inapp_messaging_auto_data_collection_enabled")) {
                            z8 = ((AtomicBoolean) hVar2.d).get();
                        } else {
                            fVar2.a();
                            try {
                                PackageManager packageManager2 = application.getPackageManager();
                                if (packageManager2 == null || (applicationInfo2 = packageManager2.getApplicationInfo(application.getPackageName(), 128)) == null || (bundle2 = applicationInfo2.metaData) == null || !bundle2.containsKey("firebase_inapp_messaging_auto_data_collection_enabled")) {
                                    z8 = true;
                                } else {
                                    z8 = applicationInfo2.metaData.getBoolean("firebase_inapp_messaging_auto_data_collection_enabled");
                                }
                                break;
                            } catch (PackageManager$NameNotFoundException unused) {
                            }
                        }
                    } catch (PackageManager$NameNotFoundException unused2) {
                    }
                }
                if (!z8) {
                    e3.d.n("Automatic data collection is disabled, not attempting campaign fetch from service.");
                    y5.h hVarR = y5.i.r();
                    hVarR.c();
                    y5.i.n((y5.i) hVarR.c, 1L);
                    return x7.e.a((y5.i) hVarR.a());
                }
                e0.g gVar2 = new e0.g(16);
                eVar.getClass();
                i8.k kVar = new i8.k(new i8.f(eVar, gVar2, 0), new f(5, tVar, cVar3), 1);
                y5.h hVarR2 = y5.i.r();
                hVarR2.c();
                y5.i.n((y5.i) hVarR2.c, 1L);
                x7.e eVarE = kVar.e(x7.e.a((y5.i) hVarR2.a()));
                e0.g gVar3 = new e0.g(17);
                z3.f fVar3 = d8.b.d;
                i8.r rVar = new i8.r(new i8.r(eVarE, gVar3, fVar3), new q(tVar, 0), fVar3);
                b bVar3 = tVar.f2234j;
                Objects.requireNonNull(bVar3);
                i8.r rVar2 = new i8.r(rVar, new androidx.fragment.app.h(9, bVar3), fVar3);
                m0 m0Var = tVar.f2235k;
                Objects.requireNonNull(m0Var);
                return new i8.r(new i8.r(rVar2, new androidx.fragment.app.h(10, m0Var), fVar3), fVar3, new e0.g(18)).b(i8.d.f2733b);
            case 5:
                t tVar2 = (t) this.c;
                y5.c cVar4 = (y5.c) this.d;
                d dVar = (d) obj;
                c cVar5 = tVar2.e;
                cVar5.getClass();
                e3.d.n("Fetching campaigns from service.");
                z zVar = cVar5.d;
                zVar.getClass();
                try {
                    y2.a.a(zVar.f2256a);
                } catch (p2.b | p2.c e) {
                    e.printStackTrace();
                }
                l lVar = (l) cVar5.f2190a.get();
                y5.f fVarS = y5.g.s();
                o4.f fVar4 = cVar5.f2191b;
                fVar4.a();
                String str3 = fVar4.c.e;
                fVarS.c();
                y5.g.n((y5.g) fVarS.c, str3);
                com.google.protobuf.a0 a0VarO = cVar4.o();
                fVarS.c();
                y5.g.o((y5.g) fVarS.c, a0VarO);
                n4.a aVarR = n4.b.r();
                String strValueOf = String.valueOf(Build$VERSION.SDK_INT);
                aVarR.c();
                n4.b.p((n4.b) aVarR.c, strValueOf);
                String string = Locale.getDefault().toString();
                aVarR.c();
                n4.b.q((n4.b) aVarR.c, string);
                String id = TimeZone.getDefault().getID();
                aVarR.c();
                n4.b.o((n4.b) aVarR.c, id);
                Application application2 = cVar5.c;
                try {
                    str = application2.getPackageManager().getPackageInfo(application2.getPackageName(), 0).versionName;
                } catch (PackageManager$NameNotFoundException e6) {
                    Log.e("FIAM.Headless", "Error finding versionName : " + e6.getMessage());
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    aVarR.c();
                    n4.b.n((n4.b) aVarR.c, str);
                }
                n4.b bVar4 = (n4.b) aVarR.a();
                fVarS.c();
                y5.g.p((y5.g) fVarS.c, bVar4);
                y5.d dVarQ = y5.e.q();
                o4.f fVar5 = cVar5.f2191b;
                fVar5.a();
                String str4 = fVar5.c.f4097b;
                dVarQ.c();
                y5.e.n((y5.e) dVarQ.c, str4);
                String str5 = dVar.f2192a;
                dVarQ.c();
                y5.e.o((y5.e) dVarQ.c, str5);
                String str6 = dVar.f2193b.f3287a;
                dVarQ.c();
                y5.e.p((y5.e) dVarQ.c, str6);
                y5.e eVar2 = (y5.e) dVarQ.a();
                fVarS.c();
                y5.g.q((y5.g) fVarS.c, eVar2);
                y5.g gVar4 = (y5.g) fVarS.a();
                y5.j jVar2 = lVar.f2215a;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                n7.d dVar2 = jVar2.f6132a;
                n7.c cVar6 = jVar2.f6133b;
                cVar6.getClass();
                if (timeUnit == null) {
                    n0.b.n("units");
                    return null;
                }
                n7.o oVar2 = new n7.o(30000000000L);
                c2.k kVarB = n7.c.b(cVar6);
                kVarB.c = oVar2;
                n7.c cVar7 = new n7.c(kVarB);
                o4.b.i(dVar2, "channel");
                x0 x0Var = y5.k.f6134a;
                if (x0Var == null) {
                    synchronized (y5.k.class) {
                        try {
                            x0Var = y5.k.f6134a;
                            if (x0Var == null) {
                                String strA = x0.a("google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing", "FetchEligibleCampaigns");
                                y5.g gVarR = y5.g.r();
                                com.google.protobuf.p pVar = t7.c.f5418a;
                                x0 x0Var2 = new x0(strA, new t7.b(gVarR), new t7.b(y5.i.o()));
                                y5.k.f6134a = x0Var2;
                                x0Var = x0Var2;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                Logger logger = u7.e.f5492a;
                u7.c cVar8 = new u7.c();
                c2.k kVarB2 = n7.c.b(cVar7.c(u7.e.c, u7.b.f5489b));
                kVarB2.d = cVar8;
                n7.t tVarF = dVar2.f(x0Var, new n7.c(kVarB2));
                try {
                    try {
                        u7.a aVarB = u7.e.b(tVarF, gVar4);
                        while (!aVarB.isDone()) {
                            try {
                                cVar8.a();
                            } catch (InterruptedException e9) {
                                try {
                                    tVarF.a("Thread interrupted", e9);
                                    z10 = true;
                                } catch (Error e10) {
                                    e = e10;
                                    u7.e.a(tVarF, e);
                                    throw null;
                                } catch (RuntimeException e11) {
                                    e = e11;
                                    u7.e.a(tVarF, e);
                                    throw null;
                                }
                            }
                        }
                        cVar8.shutdown();
                        Object objC = u7.e.c(aVarB);
                        if (z10) {
                            Thread.currentThread().interrupt();
                        }
                        y5.i iVar = (y5.i) objC;
                        if (iVar.p() < System.currentTimeMillis() + 60000 || iVar.p() > System.currentTimeMillis() + 259200000) {
                            com.google.protobuf.w wVar = (com.google.protobuf.w) iVar.e(5);
                            if (!wVar.f1578b.equals(iVar)) {
                                wVar.c();
                                com.google.protobuf.w.d(wVar.c, iVar);
                            }
                            y5.h hVar3 = (y5.h) wVar;
                            long jCurrentTimeMillis = System.currentTimeMillis() + 86400000;
                            hVar3.c();
                            y5.i.n((y5.i) hVar3.c, jCurrentTimeMillis);
                            iVar = (y5.i) hVar3.a();
                        }
                        return iVar;
                    } catch (Throwable th3) {
                        th = th3;
                        if (z9) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (Error e12) {
                    e = e12;
                    u7.e.a(tVarF, e);
                    throw null;
                } catch (RuntimeException e13) {
                    e = e13;
                    u7.e.a(tVarF, e);
                    throw null;
                } catch (Throwable th4) {
                    th = th4;
                    z9 = z10;
                    if (z9) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
                break;
                break;
            case 6:
                t tVar3 = (t) this.c;
                String str7 = (String) this.d;
                x5.c cVar9 = (x5.c) obj;
                tVar3.getClass();
                if (cVar9.q() || !str7.equals("ON_FOREGROUND")) {
                    return x7.e.a(cVar9);
                }
                i0 i0Var = tVar3.f2232h;
                j5.b bVar5 = tVar3.f2233i;
                x7.e eVar3 = i0Var.c;
                y yVar2 = i0Var.f2207a;
                com.google.protobuf.x0 x0VarP = f0.p();
                yVar2.getClass();
                i8.l lVar2 = new i8.l(new x(0, yVar2, x0VarP));
                h0 h0Var = new h0(i0Var, 0);
                z3.f fVar6 = d8.b.d;
                return new i8.k(new i8.g(0, new k8.a(new k8.a(new i8.n(new i8.f(new i8.k(new i8.r(eVar3.e(new i8.r(lVar2, h0Var, fVar6)), fVar6, new h0(i0Var, 1)).e(x7.e.a(f0.n())), new g0(i0Var, bVar5), 1), new g0(i0Var, bVar5), 0)), new e0.g(14), 1), new d8.a(0, new k8.b()), 2), new e0.g(15)), new p(cVar9), 1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.u
    public void c(Context context) {
        j1.o.i((Integer) this.d, (String) this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k5.a
    public void e(k5.b bVar) {
        switch (this.f2196b) {
            case 7:
                a0 a0Var = (a0) this.c;
                p2.e eVar = (p2.e) this.d;
                if (a0Var.f2186b == a0.c) {
                    return;
                }
                a0 a0VarA = ((b0) bVar.get()).a(eVar);
                a0Var.f2186b = a0VarA;
                synchronized (a0Var) {
                    try {
                        if (!a0Var.f2185a.isEmpty()) {
                            a0VarA.a(a0Var.f2185a);
                            a0Var.f2185a = new HashSet();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                k5.a aVar = (k5.a) this.c;
                k5.a aVar2 = (k5.a) this.d;
                aVar.e(bVar);
                aVar2.e(bVar);
                return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l2.b
    public Object execute() {
        switch (this.f2196b) {
            case 9:
                j2.i iVar = (j2.i) this.c;
                Iterable iterable = (Iterable) this.d;
                k2.h hVar = (k2.h) iVar.c;
                hVar.getClass();
                if (iterable.iterator().hasNext()) {
                    hVar.b().compileStatement("DELETE FROM events WHERE _id in ".concat(k2.h.d0(iterable))).execute();
                    break;
                }
                break;
            default:
                j2.i iVar2 = (j2.i) this.c;
                for (Map$Entry map$Entry : ((HashMap) this.d).entrySet()) {
                    ((k2.h) iVar2.f3036i).V(((Integer) map$Entry.getValue()).intValue(), g2.c.INVALID_PAYLOD, (String) map$Entry.getKey());
                }
                break;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object get() {
        switch (this.f2196b) {
            case 14:
                return AgeFileFilter.a((AgeFileFilter) this.c, (Path) this.d);
            case 15:
                return EmptyFileFilter.a((EmptyFileFilter) this.c, (Path) this.d);
            case 16:
                return HiddenFileFilter.a((HiddenFileFilter) this.c, (Path) this.d);
            case 17:
                return SizeFileFilter.a((SizeFileFilter) this.c, (Path) this.d);
            case 18:
            default:
                return IOFunction.i((IOFunction) this.c, (Supplier) this.d);
            case 19:
                return IOFunction.k((IOFunction) this.c, (IOSupplier) this.d);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getAsBoolean() {
        return FileUtils.t((File) this.c, (ChronoZonedDateTime) this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.a
    public void run() {
        switch (this.f2196b) {
            case 0:
                ((g) this.c).d = (y5.i) this.d;
                break;
            default:
                o oVar = (o) this.c;
                y5.c cVar = (y5.c) this.d;
                oVar.getClass();
                oVar.f2222b = x7.e.a(cVar);
                break;
        }
    }

    public /* synthetic */ f(int i9, Object obj, Object obj2) {
        this.f2196b = i9;
        this.c = obj;
        this.d = obj2;
    }

    public void accept(Object obj, Object obj2, Object obj3) {
        IOTriConsumer.n((IOTriConsumer) this.c, (IOTriConsumer) this.d, obj, obj2, obj3);
    }

    public Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
        return IOQuadFunction.g((IOQuadFunction) this.c, (IOFunction) this.d, obj, obj2, obj3, obj4);
    }

    public Object apply(Object obj, Object obj2, Object obj3) {
        return IOTriFunction.b((IOTriFunction) this.c, (IOFunction) this.d, obj, obj2, obj3);
    }
}
