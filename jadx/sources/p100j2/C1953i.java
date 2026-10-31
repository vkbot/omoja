package p100j2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.SparseArray;
import androidx.fragment.app.C0566h;
import com.google.android.datatransport.cct.CctBackendFactory;
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
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import p003a2.C0004a;
import p006a5.C0023h;
import p017b2.C0881a;
import p017b2.C0882b;
import p017b2.C0883c;
import p027c2.C0958h;
import p027c2.C0959i;
import p027c2.C0960j;
import p027c2.C0961k;
import p027c2.C0962l;
import p027c2.C0963m;
import p027c2.C0965o;
import p027c2.EnumC0971u;
import p027c2.EnumC0972v;
import p027c2.EnumC0974x;
import p039d2.AbstractC1258n;
import p039d2.C1252h;
import p039d2.C1253i;
import p039d2.C1254j;
import p039d2.C1256l;
import p049e2.C1453a;
import p049e2.C1454b;
import p049e2.C1456d;
import p049e2.InterfaceC1457e;
import p050e3.C1461d;
import p062f5.C1548f;
import p069g2.C1605a;
import p099j1.C1929i;
import p111k2.C2030b;
import p111k2.C2036h;
import p111k2.InterfaceC2031c;
import p111k2.InterfaceC2032d;
import p123l2.InterfaceC2198b;
import p123l2.InterfaceC2199c;
import p133m2.InterfaceC2380a;

/* JADX INFO: renamed from: j2.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1953i {

    /* JADX INFO: renamed from: a */
    public final Context f5327a;

    /* JADX INFO: renamed from: b */
    public final C1456d f5328b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC2032d f5329c;

    /* JADX INFO: renamed from: d */
    public final C0023h f5330d;

    /* JADX INFO: renamed from: e */
    public final Executor f5331e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC2199c f5332f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC2380a f5333g;

    /* JADX INFO: renamed from: h */
    public final InterfaceC2380a f5334h;

    /* JADX INFO: renamed from: i */
    public final InterfaceC2031c f5335i;

    public C1953i(Context context, C1456d c1456d, InterfaceC2032d interfaceC2032d, C0023h c0023h, Executor executor, InterfaceC2199c interfaceC2199c, InterfaceC2380a interfaceC2380a, InterfaceC2380a interfaceC2380a2, InterfaceC2031c interfaceC2031c) {
        this.f5327a = context;
        this.f5328b = c1456d;
        this.f5329c = interfaceC2032d;
        this.f5330d = c0023h;
        this.f5331e = executor;
        this.f5332f = interfaceC2199c;
        this.f5333g = interfaceC2380a;
        this.f5334h = interfaceC2380a2;
        this.f5335i = interfaceC2031c;
    }

    /* JADX WARN: Code duplicated, block: B:204:0x0229 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x01ce  */
    /* JADX INFO: renamed from: a */
    public final void m3051a(C1254j c1254j, int i10) {
        InterfaceC1457e interfaceC1457eCreate;
        InterfaceC1457e interfaceC1457e;
        long j10;
        C1453a c1453a;
        String str;
        int i11;
        C0882b c0882bM820f;
        String str2;
        Integer numValueOf;
        C0961k c0961k;
        int type;
        int subtype;
        HashMap map;
        int i12;
        final C1254j c1254j2 = c1254j;
        C1456d c1456d = this.f5328b;
        String str3 = c1254j2.f2964a;
        synchronized (c1456d) {
            if (c1456d.f3534c.containsKey(str3)) {
                interfaceC1457eCreate = (InterfaceC1457e) c1456d.f3534c.get(str3);
            } else {
                CctBackendFactory cctBackendFactoryM241e = c1456d.f3532a.m241e(str3);
                if (cctBackendFactoryM241e == null) {
                    interfaceC1457eCreate = null;
                } else {
                    C0023h c0023h = c1456d.f3533b;
                    interfaceC1457eCreate = cctBackendFactoryM241e.create(new C1454b((Context) c0023h.f81c, (InterfaceC2380a) c0023h.f82d, (InterfaceC2380a) c0023h.f83e, str3));
                    c1456d.f3534c.put(str3, interfaceC1457eCreate);
                }
            }
        }
        InterfaceC1457e interfaceC1457e2 = interfaceC1457eCreate;
        long jMax = 0;
        while (true) {
            final int i13 = 0;
            boolean zBooleanValue = ((Boolean) ((C2036h) this.f5332f).m3136c0(new InterfaceC2198b(this) { // from class: j2.f

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ C1953i f5317c;

                {
                    this.f5317c = this;
                }

                @Override // p123l2.InterfaceC2198b
                public final Object execute() {
                    Boolean bool;
                    switch (i13) {
                        case 0:
                            C1254j c1254j3 = c1254j2;
                            C2036h c2036h = (C2036h) this.f5317c.f5329c;
                            SQLiteDatabase sQLiteDatabaseM3135b = c2036h.m3135b();
                            sQLiteDatabaseM3135b.beginTransaction();
                            try {
                                Long lM3130c = C2036h.m3130c(sQLiteDatabaseM3135b, c1254j3);
                                if (lM3130c == null) {
                                    bool = Boolean.FALSE;
                                } else {
                                    Cursor cursorRawQuery = c2036h.m3135b().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lM3130c.toString()});
                                    try {
                                        Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                                        cursorRawQuery.close();
                                        bool = boolValueOf;
                                    } catch (Throwable th) {
                                        cursorRawQuery.close();
                                        throw th;
                                    }
                                }
                                sQLiteDatabaseM3135b.setTransactionSuccessful();
                                sQLiteDatabaseM3135b.endTransaction();
                                return bool;
                            } catch (Throwable th2) {
                                sQLiteDatabaseM3135b.endTransaction();
                                throw th2;
                            }
                        default:
                            C2036h c2036h2 = (C2036h) this.f5317c.f5329c;
                            c2036h2.getClass();
                            return (Iterable) c2036h2.m3137y(new C1548f(11, c2036h2, c1254j2));
                    }
                }
            })).booleanValue();
            InterfaceC2199c interfaceC2199c = this.f5332f;
            if (!zBooleanValue) {
                ((C2036h) interfaceC2199c).m3136c0(new C1952h(jMax, this, c1254j2));
                return;
            }
            final int i14 = 1;
            Iterable iterable = (Iterable) ((C2036h) interfaceC2199c).m3136c0(new InterfaceC2198b(this) { // from class: j2.f

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ C1953i f5317c;

                {
                    this.f5317c = this;
                }

                @Override // p123l2.InterfaceC2198b
                public final Object execute() {
                    Boolean bool;
                    switch (i14) {
                        case 0:
                            C1254j c1254j3 = c1254j2;
                            C2036h c2036h = (C2036h) this.f5317c.f5329c;
                            SQLiteDatabase sQLiteDatabaseM3135b = c2036h.m3135b();
                            sQLiteDatabaseM3135b.beginTransaction();
                            try {
                                Long lM3130c = C2036h.m3130c(sQLiteDatabaseM3135b, c1254j3);
                                if (lM3130c == null) {
                                    bool = Boolean.FALSE;
                                } else {
                                    Cursor cursorRawQuery = c2036h.m3135b().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lM3130c.toString()});
                                    try {
                                        Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                                        cursorRawQuery.close();
                                        bool = boolValueOf;
                                    } catch (Throwable th) {
                                        cursorRawQuery.close();
                                        throw th;
                                    }
                                }
                                sQLiteDatabaseM3135b.setTransactionSuccessful();
                                sQLiteDatabaseM3135b.endTransaction();
                                return bool;
                            } catch (Throwable th2) {
                                sQLiteDatabaseM3135b.endTransaction();
                                throw th2;
                            }
                        default:
                            C2036h c2036h2 = (C2036h) this.f5317c.f5329c;
                            c2036h2.getClass();
                            return (Iterable) c2036h2.m3137y(new C1548f(11, c2036h2, c1254j2));
                    }
                }
            });
            if (!iterable.iterator().hasNext()) {
                return;
            }
            if (interfaceC1457e2 == null) {
                C1461d.m2505d(c1254j2, "Uploader", "Unknown backend for %s, deleting event batch for it...");
                c1453a = new C1453a(3, -1L);
                interfaceC1457e = interfaceC1457e2;
                j10 = jMax;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((C2030b) it.next()).f5548c);
                }
                if (c1254j2.f2965b != null) {
                    InterfaceC2199c interfaceC2199c2 = this.f5332f;
                    InterfaceC2031c interfaceC2031c = this.f5335i;
                    Objects.requireNonNull(interfaceC2031c);
                    C1605a c1605a = (C1605a) ((C2036h) interfaceC2199c2).m3136c0(new C0566h(13, interfaceC2031c));
                    C1252h c1252h = new C1252h();
                    c1252h.f2957f = new HashMap();
                    c1252h.f2955d = Long.valueOf(this.f5333g.mo1142d());
                    c1252h.f2956e = Long.valueOf(this.f5334h.mo1142d());
                    c1252h.f2952a = "GDT_CLIENT_METRICS";
                    C0004a c0004a = new C0004a("proto");
                    c1605a.getClass();
                    C0023h c0023h2 = AbstractC1258n.f2976a;
                    c0023h2.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        c0023h2.m73g(c1605a, byteArrayOutputStream);
                    } catch (IOException unused) {
                    }
                    c1252h.f2954c = new C1256l(c0004a, byteArrayOutputStream.toByteArray());
                    C1253i c1253iM2250l = c1252h.m2250l();
                    C0883c c0883c = (C0883c) interfaceC1457e2;
                    Context context = c0883c.f656c;
                    NetworkInfo activeNetworkInfo = c0883c.f655b.getActiveNetworkInfo();
                    C1252h c1252hM2258c = c1253iM2250l.m2258c();
                    int i15 = Build.VERSION.SDK_INT;
                    HashMap map2 = (HashMap) c1252hM2258c.f2957f;
                    if (map2 == null) {
                        C1929i.m3030l("Property \"autoMetadata\" has not been set");
                        return;
                    }
                    map2.put("sdk-version", String.valueOf(i15));
                    c1252hM2258c.m2248j("model", Build.MODEL);
                    c1252hM2258c.m2248j("hardware", Build.HARDWARE);
                    c1252hM2258c.m2248j("device", Build.DEVICE);
                    c1252hM2258c.m2248j("product", Build.PRODUCT);
                    c1252hM2258c.m2248j("os-uild", Build.ID);
                    c1252hM2258c.m2248j("manufacturer", Build.MANUFACTURER);
                    c1252hM2258c.m2248j("fingerprint", Build.FINGERPRINT);
                    Calendar.getInstance();
                    long offset = TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
                    HashMap map3 = (HashMap) c1252hM2258c.f2957f;
                    if (map3 == null) {
                        C1929i.m3030l("Property \"autoMetadata\" has not been set");
                        return;
                    }
                    map3.put("tz-offset", String.valueOf(offset));
                    if (activeNetworkInfo == null) {
                        SparseArray sparseArray = EnumC0972v.f899b;
                        type = -1;
                    } else {
                        type = activeNetworkInfo.getType();
                    }
                    HashMap map4 = (HashMap) c1252hM2258c.f2957f;
                    if (map4 == null) {
                        C1929i.m3030l("Property \"autoMetadata\" has not been set");
                        return;
                    }
                    map4.put("net-type", String.valueOf(type));
                    if (activeNetworkInfo == null) {
                        SparseArray sparseArray2 = EnumC0971u.f897b;
                    } else {
                        subtype = activeNetworkInfo.getSubtype();
                        if (subtype == -1) {
                            SparseArray sparseArray3 = EnumC0971u.f897b;
                            subtype = 100;
                        } else if (((EnumC0971u) EnumC0971u.f897b.get(subtype)) == null) {
                        }
                        map = (HashMap) c1252hM2258c.f2957f;
                        if (map != null) {
                            C1929i.m3030l("Property \"autoMetadata\" has not been set");
                            return;
                        }
                        map.put("mobile-subtype", String.valueOf(subtype));
                        c1252hM2258c.m2248j("country", Locale.getDefault().getCountry());
                        c1252hM2258c.m2248j("locale", Locale.getDefault().getLanguage());
                        c1252hM2258c.m2248j("mcc_mnc", ((TelephonyManager) context.getSystemService("phone")).getSimOperator());
                        try {
                            i12 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                        } catch (PackageManager.NameNotFoundException e) {
                            C1461d.m2507f("CctTransportBackend", "Unable to find version code for package", e);
                            i12 = -1;
                        }
                        c1252hM2258c.m2248j("application_build", Integer.toString(i12));
                        arrayList.add(c1252hM2258c.m2250l());
                    }
                    subtype = 0;
                    map = (HashMap) c1252hM2258c.f2957f;
                    if (map != null) {
                        C1929i.m3030l("Property \"autoMetadata\" has not been set");
                        return;
                    }
                    map.put("mobile-subtype", String.valueOf(subtype));
                    c1252hM2258c.m2248j("country", Locale.getDefault().getCountry());
                    c1252hM2258c.m2248j("locale", Locale.getDefault().getLanguage());
                    c1252hM2258c.m2248j("mcc_mnc", ((TelephonyManager) context.getSystemService("phone")).getSimOperator());
                    i12 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                    c1252hM2258c.m2248j("application_build", Integer.toString(i12));
                    arrayList.add(c1252hM2258c.m2250l());
                }
                byte[] bArr = c1254j2.f2965b;
                C0883c c0883c2 = (C0883c) interfaceC1457e2;
                HashMap map5 = new HashMap();
                int size = arrayList.size();
                int i16 = 0;
                while (i16 < size) {
                    Object obj = arrayList.get(i16);
                    i16++;
                    C1253i c1253i = (C1253i) obj;
                    byte[] bArr2 = bArr;
                    String str4 = c1253i.f2958a;
                    if (map5.containsKey(str4)) {
                        ((List) map5.get(str4)).add(c1253i);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(c1253i);
                        map5.put(str4, arrayList2);
                    }
                    bArr = bArr2;
                    interfaceC1457e2 = interfaceC1457e2;
                }
                byte[] bArr3 = bArr;
                interfaceC1457e = interfaceC1457e2;
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = map5.entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry entry = (Map.Entry) it2.next();
                    C1253i c1253i2 = (C1253i) ((List) entry.getValue()).get(0);
                    EnumC0974x enumC0974x = EnumC0974x.f901b;
                    long jMo1142d = c0883c2.f659f.mo1142d();
                    long jMo1142d2 = c0883c2.f658e.mo1142d();
                    C0960j c0960j = new C0960j(new C0958h(Integer.valueOf(c1253i2.m2257b("sdk-version")), c1253i2.m2256a("model"), c1253i2.m2256a("hardware"), c1253i2.m2256a("device"), c1253i2.m2256a("product"), c1253i2.m2256a("os-uild"), c1253i2.m2256a("manufacturer"), c1253i2.m2256a("fingerprint"), c1253i2.m2256a("locale"), c1253i2.m2256a("country"), c1253i2.m2256a("mcc_mnc"), c1253i2.m2256a("application_build")));
                    try {
                        numValueOf = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
                        str2 = null;
                    } catch (NumberFormatException unused2) {
                        str2 = (String) entry.getKey();
                        numValueOf = null;
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (C1253i c1253i3 : (List) entry.getValue()) {
                        C1256l c1256l = c1253i3.f2960c;
                        Iterator it3 = it2;
                        C0004a c0004a2 = c1256l.f2973a;
                        byte[] bArr4 = c1256l.f2974b;
                        long j11 = jMax;
                        if (c0004a2.equals(new C0004a("proto"))) {
                            c0961k = new C0961k(0);
                            c0961k.f876g = bArr4;
                        } else {
                            if (c0004a2.equals(new C0004a("json"))) {
                                String str5 = new String(bArr4, Charset.forName("UTF-8"));
                                C0961k c0961k2 = new C0961k(0);
                                c0961k2.f877h = str5;
                                c0961k = c0961k2;
                            } else {
                                String strM2511j = C1461d.m2511j("CctTransportBackend");
                                if (Log.isLoggable(strM2511j, 5)) {
                                    Log.w(strM2511j, "Received event of unsupported encoding " + c0004a2 + ". Skipping...");
                                }
                            }
                            it2 = it3;
                            jMax = j11;
                        }
                        c0961k.f872c = Long.valueOf(c1253i3.f2961d);
                        c0961k.f873d = Long.valueOf(c1253i3.f2962e);
                        String str6 = (String) c1253i3.f2963f.get("tz-offset");
                        c0961k.f874e = Long.valueOf(str6 == null ? 0L : Long.valueOf(str6).longValue());
                        c0961k.f878i = new C0965o((EnumC0972v) EnumC0972v.f899b.get(c1253i3.m2257b("net-type")), (EnumC0971u) EnumC0971u.f897b.get(c1253i3.m2257b("mobile-subtype")));
                        Integer num = c1253i3.f2959b;
                        if (num != null) {
                            c0961k.f875f = num;
                        }
                        String strConcat = ((Long) c0961k.f872c) == null ? " eventTimeMs" : "";
                        if (((Long) c0961k.f873d) == null) {
                            strConcat = strConcat.concat(" eventUptimeMs");
                        }
                        if (((Long) c0961k.f874e) == null) {
                            strConcat = strConcat.concat(" timezoneOffsetSeconds");
                        }
                        if (!strConcat.isEmpty()) {
                            C1929i.m3030l("Missing required properties:".concat(strConcat));
                            return;
                        } else {
                            arrayList4.add(new C0962l(((Long) c0961k.f872c).longValue(), (Integer) c0961k.f875f, ((Long) c0961k.f873d).longValue(), (byte[]) c0961k.f876g, (String) c0961k.f877h, ((Long) c0961k.f874e).longValue(), (C0965o) c0961k.f878i));
                            it2 = it3;
                            jMax = j11;
                        }
                    }
                    arrayList3.add(new C0963m(jMo1142d, jMo1142d2, c0960j, numValueOf, str2, arrayList4));
                    it2 = it2;
                }
                j10 = jMax;
                C0959i c0959i = new C0959i(arrayList3);
                URL urlM1014a = c0883c2.f657d;
                if (bArr3 != null) {
                    try {
                        C0881a c0881aM1011a = C0881a.m1011a(bArr3);
                        String str7 = c0881aM1011a.f650b;
                        if (str7 == null) {
                            str7 = null;
                        }
                        urlM1014a = C0883c.m1014a(c0881aM1011a.f649a);
                        str = str7;
                    } catch (IllegalArgumentException unused3) {
                        c1453a = new C1453a(3, -1L);
                    }
                } else {
                    str = null;
                }
                int i17 = 3;
                try {
                    C0023h c0023h3 = new C0023h(urlM1014a, c0959i, str, 1);
                    C0566h c0566h = new C0566h(i17, c0883c2);
                    int i18 = 5;
                    do {
                        c0882bM820f = c0566h.m820f(c0023h3);
                        URL url = (URL) c0882bM820f.f653c;
                        if (url != null) {
                            C1461d.m2505d(url, "CctTransportBackend", "Following redirect to: %s");
                            c0023h3 = new C0023h(url, (C0959i) c0023h3.f82d, (String) c0023h3.f83e, 1);
                        } else {
                            c0023h3 = null;
                        }
                        if (c0023h3 == null) {
                            break;
                        } else {
                            i18--;
                        }
                    } while (i18 >= 1);
                    int i19 = c0882bM820f.f652b;
                    if (i19 == 200) {
                        c1453a = new C1453a(1, c0882bM820f.f651a);
                    } else if (i19 >= 500 || i19 == 404) {
                        c1453a = new C1453a(2, -1L);
                    } else if (i19 == 400) {
                        try {
                            c1453a = new C1453a(4, -1L);
                        } catch (IOException e6) {
                            e = e6;
                            C1461d.m2507f("CctTransportBackend", "Could not make request to the backend", e);
                            i11 = 2;
                            c1453a = new C1453a(2, -1L);
                        }
                    } else {
                        c1453a = new C1453a(3, -1L);
                    }
                } catch (IOException e10) {
                    e = e10;
                }
            }
            i11 = 2;
            int i20 = c1453a.f3526a;
            InterfaceC2199c interfaceC2199c3 = this.f5332f;
            if (i20 == i11) {
                ((C2036h) interfaceC2199c3).m3136c0(new C1951g(this, iterable, c1254j, j10));
                this.f5330d.m86v(c1254j, i10 + 1, true);
                return;
            }
            c1254j2 = c1254j;
            jMax = j10;
            ((C2036h) interfaceC2199c3).m3136c0(new C1548f(9, this, iterable));
            int i21 = c1453a.f3526a;
            if (i21 == 1) {
                jMax = Math.max(jMax, c1453a.f3527b);
                if (c1254j2.f2965b != null) {
                    ((C2036h) this.f5332f).m3136c0(new C0566h(15, this));
                }
            } else if (i21 == 4) {
                HashMap map6 = new HashMap();
                Iterator it4 = iterable.iterator();
                while (it4.hasNext()) {
                    String str8 = ((C2030b) it4.next()).f5548c.f2958a;
                    if (map6.containsKey(str8)) {
                        map6.put(str8, Integer.valueOf(((Integer) map6.get(str8)).intValue() + 1));
                    } else {
                        map6.put(str8, 1);
                    }
                }
                ((C2036h) this.f5332f).m3136c0(new C1548f(10, this, map6));
            }
            interfaceC1457e2 = interfaceC1457e;
        }
    }
}
