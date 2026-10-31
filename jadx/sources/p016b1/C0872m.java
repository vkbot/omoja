package p016b1;

import ai.onnxruntime.AbstractC0074a;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.LounchB;
import com.example.navistart.Notik;
import com.google.protobuf.AbstractC1178q;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import p005a4.RunnableC0010c;
import p006a5.C0023h;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1428u1;
import p047e0.RunnableC1375j2;
import p052e5.InterfaceC1495b;
import p059f2.InterfaceC1534b;
import p062f5.C1542c;
import p062f5.C1576z;
import p062f5.RunnableC1556j;
import p067g0.InterfaceC1602d;
import p072g5.C1619a;
import p077h.InterfaceC1643e;
import p078h0.C1652b;
import p092i5.C1750a;
import p097j.C1884b;
import p097j.C1906r;
import p097j.C1912x;
import p097j.InterfaceC1889d0;
import p097j.ThreadFactoryC1882a;
import p099j1.C1929i;
import p111k2.InterfaceC2032d;
import p123l2.InterfaceC2199c;
import p132m0.C2270b2;
import p132m0.C2304i1;
import p132m0.RunnableC2269b1;
import p148n7.AbstractC2522k0;
import p148n7.C2525l0;
import p155o4.C2591f;
import p157o7.AbstractC2694p4;
import p157o7.C2632f2;
import p157o7.C2722u2;
import p157o7.C2736w4;
import p157o7.C2744y1;
import p180r0.C3088a;
import p180r0.C3092e;
import p198t1.C3232j;
import p204t8.InterfaceC3268a;
import p225w0.EnumC3477m0;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: b1.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0872m implements InterfaceC1602d, InterfaceC1495b, InterfaceC1534b, Callback {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f600b;

    /* JADX INFO: renamed from: c */
    public Object f601c;

    /* JADX INFO: renamed from: d */
    public Object f602d;

    /* JADX INFO: renamed from: e */
    public Object f603e;

    /* JADX INFO: renamed from: f */
    public Object f604f;

    public C0872m(LounchB lounchB) {
        this.f600b = 13;
        this.f604f = lounchB;
        if (m980d()) {
            this.f603e = new C3088a(lounchB);
            this.f602d = new C3232j(lounchB);
            C1428u1 c1428u1 = new C1428u1(lounchB, AbstractC1387m.m2421h(new byte[]{-89, 111, -4, -1, 70, -38, -78, -116, -66, 110, -1, -27, 112, -13, -103, -100, -67, 69, -32, -22, 92, -10}, new byte[]{-54, 26, -112, -117, 47, -123, -16, -7}));
            C1652b.m2734a();
            InterfaceC3692a interfaceC3692aMo3013b = C1652b.m2738g().mo3013b();
            C3232j c3232j = (C3232j) this.f602d;
            C1652b.m2734a();
            WindowManager windowManagerMo1145g = interfaceC3692aMo3013b.mo1145g(c3232j, C1652b.m2744n().getGuPassDisplayID(), c1428u1.f3431c);
            this.f601c = windowManagerMo1145g;
            c1428u1.m2476a((C3232j) this.f602d, windowManagerMo1145g, new RunnableC1556j(15, this));
            c1428u1.m2479d();
            int i10 = 9;
            ((C3232j) this.f602d).m5172e(new RunnableC0010c(this, 0, i10), new RunnableC0010c(this, 1, i10), new RunnableC0010c(this, 2, i10), new RunnableC0010c(this, 3, i10), new RunnableC0010c(this, 4, i10), new RunnableC0010c(this, 5, i10), new RunnableC0010c(this, 6, i10), new RunnableC0010c(this, 7, i10));
            Drawable[] drawableArrM4924a = C3092e.m4924a(lounchB);
            C3232j c3232j2 = (C3232j) this.f602d;
            if (c3232j2 != null) {
                c3232j2.setImageRun(drawableArrM4924a);
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m974f(File file) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                m974f(file2);
            }
        }
        file.delete();
    }

    /* JADX INFO: renamed from: i */
    public static void m975i(ContentResolver contentResolver, String str) {
        try {
            String string = Settings.Secure.getString(contentResolver, AbstractC1387m.m2421h(new byte[]{-94, -85, -17, 79, 49, 54, 83, 102, -90, -90, -19, 72, 46, 32, 94, 91, -82, -87, -25, 89, 36, 12, 68, 92, -75, -77, -25, 78, 56, 32}, new byte[]{-57, -59, -114, 45, 93, 83, 55, 57}));
            if (TextUtils.isEmpty(string)) {
                return;
            }
            String[] strArrSplit = string.split(AbstractC1387m.m2421h(new byte[]{93}, new byte[]{103, -26, -86, 72, -37, -88, 29, 55}));
            ArrayList arrayList = new ArrayList();
            boolean z9 = false;
            for (String str2 : strArrSplit) {
                if (str2.equalsIgnoreCase(str)) {
                    z9 = true;
                } else {
                    arrayList.add(str2);
                }
            }
            if (z9) {
                Settings.Secure.putString(contentResolver, AbstractC1387m.m2421h(new byte[]{97, -18, 17, ByteCompanionObject.MAX_VALUE, -43, 22, 15, 97, 101, -29, 19, 120, -54, 0, 2, 92, 109, -20, 25, 105, -64, 44, 24, 91, 118, -10, 25, 126, -36, 0}, new byte[]{4, ByteCompanionObject.MIN_VALUE, 112, 29, -71, 115, 107, 62}), TextUtils.join(AbstractC1387m.m2421h(new byte[]{-65}, new byte[]{-123, 8, 107, 34, -117, 10, -48, -27}), arrayList));
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: j */
    public static void m976j(ContentResolver contentResolver, String str) {
        try {
            String string = Settings.Secure.getString(contentResolver, AbstractC1387m.m2421h(new byte[]{86, -45, -112, -9, -115, -79, 28, 38, 82, -34, -110, -16, -110, -89, 17, 27, 90, -47, -104, -31, -104, -117, 11, 28, 65, -53, -104, -10, -124, -89}, new byte[]{51, -67, -15, -107, -31, -44, 120, 121}));
            int i10 = 0;
            if (!TextUtils.isEmpty(string)) {
                for (String str2 : string.split(AbstractC1387m.m2421h(new byte[]{-29}, new byte[]{-39, 23, ByteCompanionObject.MIN_VALUE, -62, 55, 43, 11, -77}))) {
                    if (str2.equalsIgnoreCase(str)) {
                        m975i(contentResolver, str);
                        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{4, -114, -13, 53, 97, 121, -45, -38, 51, -114, -13}, new byte[]{84, -21, -127, 88, 44, 24, -67, -69})).schedule(new RunnableC1375j2(i10, contentResolver, str), 5000L, TimeUnit.MILLISECONDS);
                        return;
                    }
                }
            }
            if (!TextUtils.isEmpty(string)) {
                str = string + AbstractC1387m.m2421h(new byte[]{23}, new byte[]{45, -71, -11, -59, 112, -80, 72, 70}) + str;
            }
            Settings.Secure.putString(contentResolver, AbstractC1387m.m2421h(new byte[]{-61, -11, -43, 20, 38, 111, -4, -106, -57, -8, -41, 19, 57, 121, -15, -85, -49, -9, -35, 2, 51, 85, -21, -84, -44, -19, -35, 21, 47, 121}, new byte[]{-90, -101, -76, 118, 74, 10, -104, -55}), str);
            Settings.Secure.putInt(contentResolver, AbstractC1387m.m2421h(new byte[]{110, -66, 75, -11, 92, -25, -97, 113, 102, -79, 65, -28, 86, -53, -109, 125, 110, -65, 68, -11, 75}, new byte[]{15, -35, 40, -112, 47, -108, -10, 19}), 1);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: a */
    public synchronized void m977a(InterfaceC1643e interfaceC1643e, C1912x c1912x) {
        C1884b c1884b = (C1884b) ((HashMap) this.f602d).put(interfaceC1643e, new C1884b(interfaceC1643e, c1912x, (ReferenceQueue) this.f603e));
        if (c1884b != null) {
            c1884b.f4865c = null;
            c1884b.clear();
        }
    }

    /* JADX INFO: renamed from: b */
    public void m978b(C1884b c1884b) {
        InterfaceC1889d0 interfaceC1889d0;
        synchronized (this) {
            ((HashMap) this.f602d).remove(c1884b.f4863a);
            if (c1884b.f4864b && (interfaceC1889d0 = c1884b.f4865c) != null) {
                ((C1906r) this.f604f).m2966e(c1884b.f4863a, new C1912x(interfaceC1889d0, true, false, c1884b.f4863a, (C1906r) this.f604f));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: c */
    public boolean m979c(File file) {
        String str = (String) this.f602d;
        try {
            InputStream inputStreamOpen = ((Context) this.f601c).getAssets().open(str);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = inputStreamOpen.read(bArr);
                        if (i10 == -1) {
                            fileOutputStream.close();
                            inputStreamOpen.close();
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i10);
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (Throwable th) {
                                th.addSuppressed(th);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                throw th4;
            }
        } catch (Exception e) {
            Log.e(AbstractC1387m.m2421h(new byte[]{77, 73, 124, -42, 37, -44, -7, -104, 110, 120, 113, -18, 32, -61}, new byte[]{26, 44, 30, -127, 76, -80, -98, -3}), AbstractC1178q.m2078l(new byte[]{92, 107, -67, 99, -72, -2, -126, 75, 122, 107, -73, 45, -75, -1, -52, 93, 115, 111, -73, 45, -96, -29, -58, 94, 122, 126, -13}, new byte[]{31, 10, -45, 13, -41, -118, -94, 57}, new StringBuilder(), str), e);
            return false;
        }
    }

    /* JADX INFO: renamed from: d */
    public boolean m980d() {
        Display[] displays = ((DisplayManager) ((LounchB) this.f604f).getSystemService(AbstractC1387m.m2421h(new byte[]{103, 0, -15, 90, -99, 111, 93}, new byte[]{3, 105, -126, 42, -15, 14, 36, 28}))).getDisplays();
        C1652b.m2734a();
        int guPassDisplayID = C1652b.m2744n().getGuPassDisplayID();
        return guPassDisplayID > -1 && guPassDisplayID < displays.length;
    }

    /* JADX INFO: renamed from: e */
    public boolean m981e(String str) {
        File file = (File) this.f604f;
        if (str == null || str.trim().isEmpty() || ((String) this.f603e).equals(str)) {
            return false;
        }
        File file2 = new File(file, str);
        try {
            File canonicalFile = file.getCanonicalFile();
            File canonicalFile2 = file2.getCanonicalFile();
            String path = canonicalFile.getPath();
            if (canonicalFile2.getPath().startsWith(path + File.separator) && canonicalFile2.isDirectory()) {
                m974f(canonicalFile2);
                return !canonicalFile2.exists();
            }
            return false;
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: g */
    public void m982g() {
        synchronized (AbstractC0880u.class) {
            try {
                if (new File(new File((File) this.f604f, (String) this.f603e), AbstractC1387m.m2421h(new byte[]{11, -36, -115, 37, -113, 85, 60, -29, 15, -34}, new byte[]{98, -78, -23, 64, -9, 123, 84, -105})).isFile()) {
                    return;
                }
                File file = new File(((Context) this.f601c).getCacheDir(), (String) this.f602d);
                if (!m979c(file)) {
                    throw new IOException(AbstractC1387m.m2421h(new byte[]{51, 8, 5, 27, -10, -38, -122, -61, 21, 8, 15, 85, -5, -37, -56, -43, 28, 12, 15, 85, -18, -57, -62, -42, 21, 29, 75}, new byte[]{112, 105, 107, 117, -103, -82, -90, -79}) + ((String) this.f602d));
                }
                AbstractC0880u.m1004r(file, (File) this.f604f, false);
                if (new File(new File((File) this.f604f, (String) this.f603e), AbstractC1387m.m2421h(new byte[]{-110, -122, -84, 106, 125, -120, 57, -62, -106, -124}, new byte[]{-5, -24, -56, 15, 5, -90, 81, -74})).isFile()) {
                    return;
                }
                throw new IOException(AbstractC1387m.m2421h(new byte[]{-29, -62, 78, 115, 104, 5, -125, 7, -42, -34, 68, 112, 97, 20, -57, 79, -64, -60, 0, 121, 107, 64, -114, 73, -59, -46, 88, 57, 108, 20, -118, 75, -101, -105}, new byte[]{-95, -73, 32, 23, 4, 96, -25, 39}) + ((String) this.f602d));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p204t8.InterfaceC3268a
    public Object get() {
        switch (this.f600b) {
            case 5:
                C0023h c0023h = (C0023h) this.f601c;
                return new C1542c((InterfaceC3268a) this.f602d, (C2591f) c0023h.f81c, (Application) ((C1619a) this.f603e).get(), (C1750a) c0023h.f83e, (C1576z) ((C1619a) this.f604f).get());
            default:
                return new C0872m(7, (Executor) ((InterfaceC3268a) this.f601c).get(), (InterfaceC2032d) ((InterfaceC3268a) this.f602d).get(), (C0023h) ((C0023h) this.f603e).get(), (InterfaceC2199c) ((InterfaceC3268a) this.f604f).get());
        }
    }

    /* JADX INFO: renamed from: h */
    public ArrayList m983h() {
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = ((File) this.f604f).listFiles(new C2270b2());
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (!file.getName().equals((String) this.f603e) && !file.getName().startsWith(AbstractC1387m.m2421h(new byte[]{-13, -10, 29, -85, 0, -88, 25, 114, -16}, new byte[]{-35, -97, 115, -40, 116, -55, 117, 30})) && !file.getName().startsWith(AbstractC1387m.m2421h(new byte[]{-64, -15, -46, 124, -17, 116, -61, -21}, new byte[]{-18, -109, -77, 31, -124, 1, -77, -58}))) {
                    arrayList.add(file.getName());
                }
            }
        }
        return arrayList;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        C2304i1 c2304i1 = (C2304i1) this.f604f;
        RecyclerView recyclerView = (RecyclerView) this.f603e;
        RunnableC2269b1 runnableC2269b1 = new RunnableC2269b1((Context) this.f601c, (String) this.f602d, 1);
        String str = C2304i1.f6142i;
        c2304i1.m3699z(recyclerView, runnableC2269b1);
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) {
        RecyclerView recyclerView = (RecyclerView) this.f603e;
        C2304i1 c2304i1 = (C2304i1) this.f604f;
        try {
            try {
                if (response.isSuccessful()) {
                    C2304i1.m3694u(c2304i1, response.body().string(), recyclerView);
                } else {
                    RunnableC2269b1 runnableC2269b1 = new RunnableC2269b1((Context) this.f601c, (String) this.f602d, 0);
                    String str = C2304i1.f6142i;
                    c2304i1.m3699z(recyclerView, runnableC2269b1);
                }
                response.close();
            } catch (Throwable th) {
                if (response != null) {
                    try {
                        response.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception unused) {
        }
    }

    public C0872m(int i10) {
        this.f600b = i10;
        switch (i10) {
            case 4:
                break;
            case 6:
                ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC1882a());
                this.f602d = new HashMap();
                this.f603e = new ReferenceQueue();
                this.f601c = executorServiceNewSingleThreadExecutor;
                executorServiceNewSingleThreadExecutor.execute(new RunnableC1054m(6, this));
                break;
            case 11:
                C2722u2 c2722u2 = C2722u2.f7798d;
                this.f602d = AbstractC2694p4.m4208b();
                this.f603e = AbstractC2694p4.m4208b();
                this.f604f = AbstractC2694p4.m4208b();
                this.f601c = c2722u2;
                break;
            default:
                String strM2421h = AbstractC1387m.m2421h(new byte[]{6, -33, 48, 20, 119, 32, -119, -122, Base64.padSymbol, -62, 59, 20}, new byte[]{98, -74, 67, 96, 22, 78, -22, -29});
                String strM2421h2 = AbstractC1387m.m2421h(new byte[]{105, -101, -48, -84, 50, 105, -93, 42, 110, -91, -55, -117, 53}, new byte[]{10, -6, -67, -13, 65, 25, -58, 79});
                this.f602d = strM2421h.trim();
                this.f603e = strM2421h2.trim();
                this.f601c = "";
                this.f604f = "";
                break;
        }
    }

    public C0872m(EnumC3477m0 enumC3477m0, String str, String str2, List list) {
        this.f600b = 14;
        this.f601c = enumC3477m0;
        this.f602d = str;
        this.f603e = str2;
        this.f604f = Collections.unmodifiableList(new ArrayList(list));
    }

    public C0872m(Context context, String str, File file, String str2) {
        this.f600b = 0;
        this.f601c = context;
        this.f602d = str;
        this.f604f = file;
        this.f603e = str2;
    }

    public /* synthetic */ C0872m(int i10, Object obj, Object obj2, Object obj3, Object obj4) {
        this.f600b = i10;
        this.f601c = obj;
        this.f602d = obj2;
        this.f603e = obj3;
        this.f604f = obj4;
    }

    public C0872m(Context context) {
        this.f600b = 1;
        this.f603e = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-123, 81, 41, -1, ByteCompanionObject.MAX_VALUE, -59, -94, 7, -78, 81, 41}, new byte[]{-43, 52, 91, -110, 50, -92, -52, 102}));
        this.f602d = AbstractC1387m.m2421h(new byte[]{95, -6, 72, 91, 30, 116, 70, -100, 76, -7, 64, 91, 21, 109, 81, -104, 79, -31, 68, 7, 15, 35, 68, -98, 81, -69, 64, 13, 26, 97, 87, -99, 89, -69, 75, 20, 13, 101, 84, -123, 93, -25, 81, 91, 54, 117, 102, -64, 13, -20, 118, 16, 9, 122, 78, -110, 89}, new byte[]{60, -107, 37, 117, 123, 12, 39, -15});
        this.f601c = context;
        this.f604f = context.getContentResolver();
    }

    public C0872m(Context context, String str, String str2) {
        this.f600b = 0;
        this.f601c = context;
        this.f602d = "";
        this.f604f = new File(context.getFilesDir(), str);
        this.f603e = str2;
    }

    public C0872m(C0023h c0023h, LinkedHashMap linkedHashMap, ArrayList arrayList, String str) {
        this.f600b = 15;
        this.f601c = c0023h;
        this.f603e = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
        this.f604f = Collections.unmodifiableList(new ArrayList(arrayList));
        this.f602d = str;
    }

    public C0872m(Notik notik, Notik notik2) {
        this.f600b = 3;
        this.f604f = new Handler(Looper.getMainLooper());
        this.f601c = notik;
        this.f603e = notik2;
        LinearLayout linearLayout = new LinearLayout(notik);
        this.f602d = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    }

    public C0872m(C2736w4 c2736w4, C2744y1 c2744y1) {
        this.f600b = 10;
        this.f604f = c2736w4;
        this.f601c = c2744y1;
        C2525l0 c2525l0 = (C2525l0) c2736w4.f7859c;
        String str = (String) c2736w4.f7860d;
        AbstractC2522k0 abstractC2522k0M3959b = c2525l0.m3959b(str);
        this.f603e = abstractC2522k0M3959b;
        if (abstractC2522k0M3959b != null) {
            this.f602d = abstractC2522k0M3959b.mo3952b(c2744y1);
        } else {
            C1929i.m3030l(AbstractC0074a.m162m("Could not find policy '", str, "'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."));
            throw null;
        }
    }

    public C0872m(C2304i1 c2304i1, RecyclerView recyclerView, Context context, String str) {
        this.f600b = 9;
        this.f604f = c2304i1;
        this.f603e = recyclerView;
        this.f601c = context;
        this.f602d = str;
    }

    public C0872m(C2632f2 c2632f2) {
        this.f600b = 12;
        this.f604f = c2632f2;
        this.f601c = new Object();
        this.f602d = new HashSet();
    }
}
