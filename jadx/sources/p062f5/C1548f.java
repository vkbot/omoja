package p062f5;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.support.v4.media.C0090h;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.C0566h;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.protobuf.AbstractC1196w;
import com.google.protobuf.C1175p;
import com.google.protobuf.InterfaceC1129a0;
import com.google.protobuf.InterfaceC1200x0;
import java.io.File;
import java.nio.file.Path;
import java.time.chrono.ChronoZonedDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;
import java.util.logging.Logger;
import org.apache.commons.p161io.FileUtils;
import org.apache.commons.p161io.filefilter.AgeFileFilter;
import org.apache.commons.p161io.filefilter.EmptyFileFilter;
import org.apache.commons.p161io.filefilter.HiddenFileFilter;
import org.apache.commons.p161io.filefilter.SizeFileFilter;
import org.apache.commons.p161io.function.IOBiConsumer;
import org.apache.commons.p161io.function.IOBooleanSupplier;
import org.apache.commons.p161io.function.IOFunction;
import org.apache.commons.p161io.function.IOQuadFunction;
import org.apache.commons.p161io.function.IOSupplier;
import org.apache.commons.p161io.function.IOTriConsumer;
import org.apache.commons.p161io.function.IOTriFunction;
import p003a2.EnumC0005b;
import p023b8.InterfaceC0927a;
import p023b8.InterfaceC0928b;
import p023b8.InterfaceC0929c;
import p027c2.C0961k;
import p039d2.C1252h;
import p039d2.C1254j;
import p045d8.AbstractC1314b;
import p045d8.CallableC1313a;
import p047e0.C1357g;
import p050e3.C1461d;
import p069g2.EnumC1607c;
import p075g8.C1626b;
import p075g8.C1628d;
import p095i8.C1779d;
import p095i8.C1781f;
import p095i8.C1782g;
import p095i8.C1786k;
import p095i8.C1789n;
import p095i8.C1793r;
import p095i8.CallableC1787l;
import p099j1.C1935o;
import p099j1.InterfaceC1941u;
import p100j2.C1953i;
import p103j5.C1980b;
import p111k2.C2029a;
import p111k2.C2030b;
import p111k2.C2035g;
import p111k2.C2036h;
import p111k2.InterfaceC2034f;
import p114k5.InterfaceC2049a;
import p114k5.InterfaceC2050b;
import p116k8.C2057a;
import p116k8.C2058b;
import p123l2.InterfaceC2198b;
import p132m0.C2349s0;
import p142n0.C2467b;
import p145n4.C2475a;
import p145n4.C2476b;
import p148n7.AbstractC2500d;
import p148n7.AbstractC2542t;
import p148n7.C2497c;
import p148n7.C2532o;
import p148n7.C2551x0;
import p155o4.AbstractC2587b;
import p155o4.C2591f;
import p164p0.C2948a;
import p164p0.C2949b;
import p165p2.C2959b;
import p165p2.C2960c;
import p165p2.C2962e;
import p184r5.C3103a;
import p200t4.C3240a;
import p200t4.InterfaceC3242c;
import p203t7.AbstractC3267c;
import p203t7.C3266b;
import p214u7.AbstractC3308e;
import p214u7.C3304a;
import p214u7.EnumC3305b;
import p214u7.ExecutorC3306c;
import p240x5.C3577c;
import p242x7.AbstractC3588e;
import p247y2.AbstractC3643a;
import p250y5.AbstractC3656k;
import p250y5.C3646a;
import p250y5.C3647b;
import p250y5.C3648c;
import p250y5.C3649d;
import p250y5.C3650e;
import p250y5.C3651f;
import p250y5.C3652g;
import p250y5.C3653h;
import p250y5.C3654i;
import p250y5.C3655j;
import p258z3.C3720f;

/* JADX INFO: renamed from: f5.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1548f implements InterfaceC0927a, InterfaceC0929c, InterfaceC2049a, InterfaceC1941u, InterfaceC2198b, InterfaceC2034f, IOBooleanSupplier, IOSupplier, IOBiConsumer, IOQuadFunction, IOTriConsumer, IOTriFunction, InterfaceC3242c {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3804b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3805c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f3806d;

    public /* synthetic */ C1548f(C2349s0 c2349s0, C2949b c2949b, C2948a c2948a) {
        this.f3804b = 12;
        this.f3805c = c2349s0;
        this.f3806d = c2948a;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0047  */
    @Override // p200t4.InterfaceC3242c
    /* JADX INFO: renamed from: a */
    public Object mo817a(C1252h c1252h) {
        String strValueOf;
        switch (this.f3804b) {
            case 24:
                String str = (String) this.f3805c;
                C2467b c2467b = (C2467b) this.f3806d;
                Context context = (Context) c1252h.mo2240b(Context.class);
                switch (c2467b.f6679b) {
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
                        } else if (Build.VERSION.SDK_INT >= 26 && context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
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
                            strValueOf = FirebaseCommonRegistrar.m1886a(installerPackageName);
                        }
                        break;
                }
                return new C3103a(str, strValueOf);
            default:
                String str2 = (String) this.f3805c;
                C3240a c3240a = (C3240a) this.f3806d;
                try {
                    Trace.beginSection(str2);
                    return c3240a.f9513f.mo817a(c1252h);
                } finally {
                    Trace.endSection();
                }
        }
    }

    @Override // org.apache.commons.p161io.function.IOBiConsumer
    public void accept(Object obj, Object obj2) {
        ((IOBiConsumer) this.f3805c).lambda$andThen$0((IOBiConsumer) this.f3806d, obj, obj2);
    }

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
    @Override // p023b8.InterfaceC0929c
    public Object apply(Object obj) throws Throwable {
        boolean z9;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        ApplicationInfo applicationInfo2;
        Bundle bundle2;
        String str;
        HashMap map;
        StringBuilder sb;
        int i10;
        Cursor cursorQuery;
        ListIterator listIterator;
        C2030b c2030b;
        long j10;
        C1252h c1252hM2258c;
        long j11;
        Set hashSet;
        Object obj2;
        int i11 = 5;
        final int i12 = 1;
        final int i13 = 0;
        switch (this.f3804b) {
            case 1:
                C1565o c1565o = (C1565o) this.f3805c;
                HashSet hashSet2 = (HashSet) this.f3806d;
                C3648c c3648c = (C3648c) obj;
                c1565o.getClass();
                C1461d.m2513m("Existing impressions: ".concat(c3648c.toString()));
                C3647b c3647bM5836q = C3648c.m5836q();
                for (C3646a c3646a : c3648c.m5838o()) {
                    if (!hashSet2.contains(c3646a.m5833n())) {
                        c3647bM5836q.m2167c();
                        C3648c.m5834n((C3648c) c3647bM5836q.f2790c, c3646a);
                    }
                }
                C3648c c3648c2 = (C3648c) c3647bM5836q.m2165a();
                C1461d.m2513m("New cleared impression list: ".concat(c3648c2.toString()));
                C1575y c1575y = c1565o.f3850a;
                c1575y.getClass();
                return new C1628d(new C1626b(new CallableC1574x(i12, c1575y, c3648c2)), AbstractC1314b.f3136d, new C1548f(2, c1565o, c3648c2));
            case 2:
            case 4:
            default:
                C2036h c2036h = (C2036h) this.f3805c;
                C1254j c1254j = (C1254j) this.f3806d;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                C2029a c2029a = c2036h.f5556e;
                ArrayList arrayListM3133S = c2036h.m3133S(sQLiteDatabase, c1254j, c2029a.f5542b);
                for (EnumC0005b enumC0005b : EnumC0005b.values()) {
                    if (enumC0005b != c1254j.f2966c) {
                        int size = c2029a.f5542b - arrayListM3133S.size();
                        if (size > 0) {
                            String str2 = c1254j.f2964a;
                            if (str2 == null) {
                                obj2 = null;
                                C2467b.m3828n("Null backendName");
                            } else if (enumC0005b != null) {
                                arrayListM3133S.addAll(c2036h.m3133S(sQLiteDatabase, new C1254j(str2, c1254j.f2965b, enumC0005b), size));
                            } else {
                                obj2 = null;
                                C2467b.m3828n("Null priority");
                            }
                            return obj2;
                        }
                        map = new HashMap();
                        sb = new StringBuilder("event_id IN (");
                        for (i10 = 0; i10 < arrayListM3133S.size(); i10++) {
                            sb.append(((C2030b) arrayListM3133S.get(i10)).f5546a);
                            if (i10 < arrayListM3133S.size() - 1) {
                                sb.append(',');
                            }
                        }
                        sb.append(')');
                        cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null);
                        while (cursorQuery.moveToNext()) {
                            try {
                                j11 = cursorQuery.getLong(0);
                                hashSet = (Set) map.get(Long.valueOf(j11));
                                if (hashSet == null) {
                                    hashSet = new HashSet();
                                    map.put(Long.valueOf(j11), hashSet);
                                }
                                hashSet.add(new C2035g(cursorQuery.getString(1), cursorQuery.getString(2)));
                            } catch (Throwable th) {
                                cursorQuery.close();
                                throw th;
                            }
                            break;
                        }
                        cursorQuery.close();
                        listIterator = arrayListM3133S.listIterator();
                        while (listIterator.hasNext()) {
                            c2030b = (C2030b) listIterator.next();
                            j10 = c2030b.f5546a;
                            if (!map.containsKey(Long.valueOf(j10))) {
                                c1252hM2258c = c2030b.f5548c.m2258c();
                                for (C2035g c2035g : (Set) map.get(Long.valueOf(j10))) {
                                    c1252hM2258c.m2248j(c2035g.f5550a, c2035g.f5551b);
                                }
                                listIterator.set(new C2030b(j10, c2030b.f5547b, c1252hM2258c.m2250l()));
                            }
                        }
                        return arrayListM3133S;
                    }
                }
                map = new HashMap();
                sb = new StringBuilder("event_id IN (");
                while (i10 < arrayListM3133S.size()) {
                    sb.append(((C2030b) arrayListM3133S.get(i10)).f5546a);
                    if (i10 < arrayListM3133S.size() - 1) {
                        sb.append(',');
                    }
                }
                sb.append(')');
                cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null);
                while (cursorQuery.moveToNext()) {
                    j11 = cursorQuery.getLong(0);
                    hashSet = (Set) map.get(Long.valueOf(j11));
                    if (hashSet == null) {
                        hashSet = new HashSet();
                        map.put(Long.valueOf(j11), hashSet);
                    }
                    hashSet.add(new C2035g(cursorQuery.getString(1), cursorQuery.getString(2)));
                    break;
                }
                cursorQuery.close();
                listIterator = arrayListM3133S.listIterator();
                while (listIterator.hasNext()) {
                    c2030b = (C2030b) listIterator.next();
                    j10 = c2030b.f5546a;
                    if (!map.containsKey(Long.valueOf(j10))) {
                        c1252hM2258c = c2030b.f5548c.m2258c();
                        while (r7.hasNext()) {
                            c1252hM2258c.m2248j(c2035g.f5550a, c2035g.f5551b);
                        }
                        listIterator.set(new C2030b(j10, c2030b.f5547b, c1252hM2258c.m2250l()));
                    }
                }
                return arrayListM3133S;
            case 3:
                C1570t c1570t = (C1570t) this.f3805c;
                AbstractC3588e abstractC3588e = (AbstractC3588e) this.f3806d;
                C3648c c3648c3 = (C3648c) obj;
                C0090h c0090h = c1570t.f3874n;
                C1561l0 c1561l0 = (C1561l0) c0090h.f191c;
                C2591f c2591f = c1561l0.f3840a;
                c2591f.m4064a();
                boolean zContains = ((Application) c2591f.f7208a).getSharedPreferences("com.google.firebase.inappmessaging", 0).contains("auto_init");
                C2591f c2591f2 = c1561l0.f3840a;
                Context context = c2591f2.f7208a;
                if (zContains) {
                    c2591f2.m4064a();
                    SharedPreferences sharedPreferences = ((Application) context).getSharedPreferences("com.google.firebase.inappmessaging", 0);
                    if (sharedPreferences.contains("auto_init")) {
                        z9 = sharedPreferences.getBoolean("auto_init", true);
                    } else {
                        z9 = true;
                    }
                } else {
                    c2591f2.m4064a();
                    Application application = (Application) context;
                    try {
                        PackageManager packageManager = application.getPackageManager();
                        if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(application.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_inapp_messaging_auto_data_collection_enabled")) {
                            z9 = ((AtomicBoolean) c0090h.f192d).get();
                        } else {
                            c2591f2.m4064a();
                            try {
                                PackageManager packageManager2 = application.getPackageManager();
                                if (packageManager2 == null || (applicationInfo2 = packageManager2.getApplicationInfo(application.getPackageName(), 128)) == null || (bundle2 = applicationInfo2.metaData) == null || !bundle2.containsKey("firebase_inapp_messaging_auto_data_collection_enabled")) {
                                    z9 = true;
                                } else {
                                    z9 = applicationInfo2.metaData.getBoolean("firebase_inapp_messaging_auto_data_collection_enabled");
                                }
                                break;
                            } catch (PackageManager.NameNotFoundException unused) {
                            }
                        }
                    } catch (PackageManager.NameNotFoundException unused2) {
                    }
                }
                if (!z9) {
                    C1461d.m2514n("Automatic data collection is disabled, not attempting campaign fetch from service.");
                    C3653h c3653hM5851r = C3654i.m5851r();
                    c3653hM5851r.m2167c();
                    C3654i.m5849n((C3654i) c3653hM5851r.f2790c, 1L);
                    return AbstractC3588e.m5715a((C3654i) c3653hM5851r.m2165a());
                }
                C1357g c1357g = new C1357g(16);
                abstractC3588e.getClass();
                C1786k c1786k = new C1786k(new C1781f(abstractC3588e, c1357g, i13), new C1548f(i11, c1570t, c3648c3), i12);
                C3653h c3653hM5851r2 = C3654i.m5851r();
                c3653hM5851r2.m2167c();
                C3654i.m5849n((C3654i) c3653hM5851r2.f2790c, 1L);
                AbstractC3588e abstractC3588eM5718e = c1786k.m5718e(AbstractC3588e.m5715a((C3654i) c3653hM5851r2.m2165a()));
                C1357g c1357g2 = new C1357g(17);
                C3720f c3720f = AbstractC1314b.f3136d;
                C1793r c1793r = new C1793r(new C1793r(abstractC3588eM5718e, c1357g2, c3720f), new C1567q(c1570t, i13), c3720f);
                C1540b c1540b = c1570t.f3870j;
                Objects.requireNonNull(c1540b);
                C1793r c1793r2 = new C1793r(c1793r, new C0566h(9, c1540b), c3720f);
                C1563m0 c1563m0 = c1570t.f3871k;
                Objects.requireNonNull(c1563m0);
                return new C1793r(new C1793r(c1793r2, new C0566h(10, c1563m0), c3720f), c3720f, new C1357g(18)).m5716b(C1779d.f4673b);
            case 5:
                C1570t c1570t2 = (C1570t) this.f3805c;
                C3648c c3648c4 = (C3648c) this.f3806d;
                C1544d c1544d = (C1544d) obj;
                C1542c c1542c = c1570t2.f3865e;
                c1542c.getClass();
                C1461d.m2514n("Fetching campaigns from service.");
                C1576z c1576z = c1542c.f3798d;
                c1576z.getClass();
                try {
                    AbstractC3643a.m5830a(c1576z.f3897a);
                } catch (C2959b | C2960c e) {
                    e.printStackTrace();
                }
                C1560l c1560l = (C1560l) c1542c.f3795a.get();
                C3651f c3651fM5848s = C3652g.m5848s();
                C2591f c2591f3 = c1542c.f3796b;
                c2591f3.m4064a();
                String str3 = c2591f3.f7210c.f7226e;
                c3651fM5848s.m2167c();
                C3652g.m5843n((C3652g) c3651fM5848s.f2790c, str3);
                InterfaceC1129a0 interfaceC1129a0M5838o = c3648c4.m5838o();
                c3651fM5848s.m2167c();
                C3652g.m5844o((C3652g) c3651fM5848s.f2790c, interfaceC1129a0M5838o);
                C2475a c2475aM3845r = C2476b.m3845r();
                String strValueOf = String.valueOf(Build.VERSION.SDK_INT);
                c2475aM3845r.m2167c();
                C2476b.m3843p((C2476b) c2475aM3845r.f2790c, strValueOf);
                String string = Locale.getDefault().toString();
                c2475aM3845r.m2167c();
                C2476b.m3844q((C2476b) c2475aM3845r.f2790c, string);
                String id = TimeZone.getDefault().getID();
                c2475aM3845r.m2167c();
                C2476b.m3842o((C2476b) c2475aM3845r.f2790c, id);
                Application application2 = c1542c.f3797c;
                try {
                    str = application2.getPackageManager().getPackageInfo(application2.getPackageName(), 0).versionName;
                } catch (PackageManager.NameNotFoundException e6) {
                    Log.e("FIAM.Headless", "Error finding versionName : " + e6.getMessage());
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    c2475aM3845r.m2167c();
                    C2476b.m3841n((C2476b) c2475aM3845r.f2790c, str);
                }
                C2476b c2476b = (C2476b) c2475aM3845r.m2165a();
                c3651fM5848s.m2167c();
                C3652g.m5845p((C3652g) c3651fM5848s.f2790c, c2476b);
                C3649d c3649dM5842q = C3650e.m5842q();
                C2591f c2591f4 = c1542c.f3796b;
                c2591f4.m4064a();
                String str4 = c2591f4.f7210c.f7223b;
                c3649dM5842q.m2167c();
                C3650e.m5839n((C3650e) c3649dM5842q.f2790c, str4);
                String str5 = c1544d.f3799a;
                c3649dM5842q.m2167c();
                C3650e.m5840o((C3650e) c3649dM5842q.f2790c, str5);
                String str6 = c1544d.f3800b.f5796a;
                c3649dM5842q.m2167c();
                C3650e.m5841p((C3650e) c3649dM5842q.f2790c, str6);
                C3650e c3650e = (C3650e) c3649dM5842q.m2165a();
                c3651fM5848s.m2167c();
                C3652g.m5846q((C3652g) c3651fM5848s.f2790c, c3650e);
                C3652g c3652g = (C3652g) c3651fM5848s.m2165a();
                C3655j c3655j = c1560l.f3839a;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                AbstractC2500d abstractC2500d = c3655j.f10837a;
                C2497c c2497c = c3655j.f10838b;
                c2497c.getClass();
                if (timeUnit == null) {
                    C2467b.m3828n("units");
                    return null;
                }
                C2532o c2532o = new C2532o(30000000000L);
                C0961k c0961kM3884b = C2497c.m3884b(c2497c);
                c0961kM3884b.f872c = c2532o;
                C2497c c2497c2 = new C2497c(c0961kM3884b);
                AbstractC2587b.m4042i(abstractC2500d, "channel");
                C2551x0 c2551x0 = AbstractC3656k.f10839a;
                if (c2551x0 == null) {
                    synchronized (AbstractC3656k.class) {
                        try {
                            c2551x0 = AbstractC3656k.f10839a;
                            if (c2551x0 == null) {
                                String strM3992a = C2551x0.m3992a("google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing", "FetchEligibleCampaigns");
                                C3652g c3652gM5847r = C3652g.m5847r();
                                C1175p c1175p = AbstractC3267c.f9562a;
                                C2551x0 c2551x1 = new C2551x0(strM3992a, new C3266b(c3652gM5847r), new C3266b(C3654i.m5850o()));
                                AbstractC3656k.f10839a = c2551x1;
                                c2551x0 = c2551x1;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                Logger logger = AbstractC3308e.f9690a;
                ExecutorC3306c executorC3306c = new ExecutorC3306c();
                C0961k c0961kM3884b2 = C2497c.m3884b(c2497c2.m3886c(AbstractC3308e.f9692c, EnumC3305b.f9682b));
                c0961kM3884b2.f873d = executorC3306c;
                AbstractC2542t abstractC2542tMo3888f = abstractC2500d.mo3888f(c2551x0, new C2497c(c0961kM3884b2));
                try {
                    try {
                        C3304a c3304aM5235b = AbstractC3308e.m5235b(abstractC2542tMo3888f, c3652g);
                        while (!c3304aM5235b.isDone()) {
                            try {
                                executorC3306c.m5233a();
                            } catch (InterruptedException e10) {
                                try {
                                    abstractC2542tMo3888f.mo3969a("Thread interrupted", e10);
                                    i13 = 1;
                                } catch (Error e11) {
                                    e = e11;
                                    AbstractC3308e.m5234a(abstractC2542tMo3888f, e);
                                    throw null;
                                } catch (RuntimeException e12) {
                                    e = e12;
                                    AbstractC3308e.m5234a(abstractC2542tMo3888f, e);
                                    throw null;
                                }
                            }
                        }
                        executorC3306c.shutdown();
                        Object objM5236c = AbstractC3308e.m5236c(c3304aM5235b);
                        if (i13 != 0) {
                            Thread.currentThread().interrupt();
                        }
                        C3654i c3654i = (C3654i) objM5236c;
                        if (c3654i.m5853p() < System.currentTimeMillis() + 60000 || c3654i.m5853p() > System.currentTimeMillis() + 259200000) {
                            AbstractC1196w abstractC1196w = (AbstractC1196w) c3654i.mo2174e(5);
                            if (!abstractC1196w.f2789b.equals(c3654i)) {
                                abstractC1196w.m2167c();
                                AbstractC1196w.m2164d(abstractC1196w.f2790c, c3654i);
                            }
                            C3653h c3653h = (C3653h) abstractC1196w;
                            long jCurrentTimeMillis = System.currentTimeMillis() + 86400000;
                            c3653h.m2167c();
                            C3654i.m5849n((C3654i) c3653h.f2790c, jCurrentTimeMillis);
                            c3654i = (C3654i) c3653h.m2165a();
                        }
                        return c3654i;
                    } catch (Error e13) {
                        e = e13;
                        AbstractC3308e.m5234a(abstractC2542tMo3888f, e);
                        throw null;
                    } catch (RuntimeException e14) {
                        e = e14;
                        AbstractC3308e.m5234a(abstractC2542tMo3888f, e);
                        throw null;
                    } catch (Throwable th3) {
                        th = th3;
                        i12 = i13;
                        if (i12 != 0) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    if (i12 != 0) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
                break;
                break;
            case 6:
                C1570t c1570t3 = (C1570t) this.f3805c;
                String str7 = (String) this.f3806d;
                C3577c c3577c = (C3577c) obj;
                c1570t3.getClass();
                if (c3577c.m5695q() || !str7.equals("ON_FOREGROUND")) {
                    return AbstractC3588e.m5715a(c3577c);
                }
                final C1555i0 c1555i0 = c1570t3.f3868h;
                C1980b c1980b = c1570t3.f3869i;
                AbstractC3588e abstractC3588e2 = c1555i0.f3826c;
                C1575y c1575y2 = c1555i0.f3824a;
                InterfaceC1200x0 interfaceC1200x0M2642p = C1549f0.m2642p();
                c1575y2.getClass();
                CallableC1787l callableC1787l = new CallableC1787l(new CallableC1574x(i13, c1575y2, interfaceC1200x0M2642p));
                InterfaceC0928b interfaceC0928b = new InterfaceC0928b() { // from class: f5.h0
                    @Override // p023b8.InterfaceC0928b
                    public final void accept(Object obj3) {
                        switch (i13) {
                            case 0:
                                C1555i0 c1555i1 = c1555i0;
                                c1555i1.getClass();
                                c1555i1.f3826c = AbstractC3588e.m5715a((C1549f0) obj3);
                                break;
                            default:
                                c1555i0.f3826c = C1779d.f4673b;
                                break;
                        }
                    }
                };
                C3720f c3720f2 = AbstractC1314b.f3136d;
                return new C1786k(new C1782g(i13, new C2057a(new C2057a(new C1789n(new C1781f(new C1786k(new C1793r(abstractC3588e2.m5718e(new C1793r(callableC1787l, interfaceC0928b, c3720f2)), c3720f2, new InterfaceC0928b() { // from class: f5.h0
                    @Override // p023b8.InterfaceC0928b
                    public final void accept(Object obj3) {
                        switch (i12) {
                            case 0:
                                C1555i0 c1555i1 = c1555i0;
                                c1555i1.getClass();
                                c1555i1.f3826c = AbstractC3588e.m5715a((C1549f0) obj3);
                                break;
                            default:
                                c1555i0.f3826c = C1779d.f4673b;
                                break;
                        }
                    }
                }).m5718e(AbstractC3588e.m5715a(C1549f0.m2641n())), new C1551g0(c1555i0, c1980b), i12), new C1551g0(c1555i0, c1980b), i13)), new C1357g(14), i12), new CallableC1313a(0, new C2058b()), 2), new C1357g(15)), new C1566p(c3577c), i12);
        }
    }

    @Override // p099j1.InterfaceC1941u
    /* JADX INFO: renamed from: c */
    public void mo457c(Context context) {
        C1935o.m3035i((Integer) this.f3806d, (String) this.f3805c);
    }

    @Override // p114k5.InterfaceC2049a
    /* JADX INFO: renamed from: e */
    public void mo819e(InterfaceC2050b interfaceC2050b) {
        switch (this.f3804b) {
            case 7:
                C1539a0 c1539a0 = (C1539a0) this.f3805c;
                C2962e c2962e = (C2962e) this.f3806d;
                if (c1539a0.f3790b == C1539a0.f3788c) {
                    return;
                }
                C1539a0 c1539a0M2634a = ((C1541b0) interfaceC2050b.get()).m2634a(c2962e);
                c1539a0.f3790b = c1539a0M2634a;
                synchronized (c1539a0) {
                    try {
                        if (!c1539a0.f3789a.isEmpty()) {
                            c1539a0M2634a.m2633a(c1539a0.f3789a);
                            c1539a0.f3789a = new HashSet();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                InterfaceC2049a interfaceC2049a = (InterfaceC2049a) this.f3805c;
                InterfaceC2049a interfaceC2049a2 = (InterfaceC2049a) this.f3806d;
                interfaceC2049a.mo819e(interfaceC2050b);
                interfaceC2049a2.mo819e(interfaceC2050b);
                return;
        }
    }

    @Override // p123l2.InterfaceC2198b
    public Object execute() {
        switch (this.f3804b) {
            case 9:
                C1953i c1953i = (C1953i) this.f3805c;
                Iterable iterable = (Iterable) this.f3806d;
                C2036h c2036h = (C2036h) c1953i.f5329c;
                c2036h.getClass();
                if (iterable.iterator().hasNext()) {
                    c2036h.m3135b().compileStatement("DELETE FROM events WHERE _id in ".concat(C2036h.m3131d0(iterable))).execute();
                    break;
                }
                break;
            default:
                C1953i c1953i2 = (C1953i) this.f3805c;
                for (Map.Entry entry : ((HashMap) this.f3806d).entrySet()) {
                    ((C2036h) c1953i2.f5335i).m3134V(((Integer) entry.getValue()).intValue(), EnumC1607c.INVALID_PAYLOD, (String) entry.getKey());
                }
                break;
        }
        return null;
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public Object get() {
        switch (this.f3804b) {
            case 14:
                return ((AgeFileFilter) this.f3805c).lambda$accept$0((Path) this.f3806d);
            case 15:
                return ((EmptyFileFilter) this.f3805c).lambda$accept$0((Path) this.f3806d);
            case 16:
                return ((HiddenFileFilter) this.f3805c).lambda$accept$0((Path) this.f3806d);
            case 17:
                return ((SizeFileFilter) this.f3805c).lambda$accept$0((Path) this.f3806d);
            case 18:
            default:
                return ((IOFunction) this.f3805c).lambda$compose$8((Supplier) this.f3806d);
            case 19:
                return ((IOFunction) this.f3805c).lambda$compose$7((IOSupplier) this.f3806d);
        }
    }

    @Override // org.apache.commons.p161io.function.IOBooleanSupplier
    public boolean getAsBoolean() {
        return FileUtils.lambda$isFileNewer$1((File) this.f3805c, (ChronoZonedDateTime) this.f3806d);
    }

    @Override // p023b8.InterfaceC0927a
    public void run() {
        switch (this.f3804b) {
            case 0:
                ((C1550g) this.f3805c).f3810d = (C3654i) this.f3806d;
                break;
            default:
                C1565o c1565o = (C1565o) this.f3805c;
                C3648c c3648c = (C3648c) this.f3806d;
                c1565o.getClass();
                c1565o.f3851b = AbstractC3588e.m5715a(c3648c);
                break;
        }
    }

    public /* synthetic */ C1548f(int i10, Object obj, Object obj2) {
        this.f3804b = i10;
        this.f3805c = obj;
        this.f3806d = obj2;
    }

    @Override // org.apache.commons.p161io.function.IOTriConsumer
    public void accept(Object obj, Object obj2, Object obj3) {
        ((IOTriConsumer) this.f3805c).lambda$andThen$0((IOTriConsumer) this.f3806d, obj, obj2, obj3);
    }

    @Override // org.apache.commons.p161io.function.IOQuadFunction
    public Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
        return ((IOQuadFunction) this.f3805c).lambda$andThen$0((IOFunction) this.f3806d, obj, obj2, obj3, obj4);
    }

    @Override // org.apache.commons.p161io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        return ((IOTriFunction) this.f3805c).lambda$andThen$0((IOFunction) this.f3806d, obj, obj2, obj3);
    }
}
