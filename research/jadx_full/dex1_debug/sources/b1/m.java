package b1;

import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings$Secure;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.LounchB;
import com.example.navistart.Notik;
import e0.j2;
import e0.u1;
import e0.w;
import f5.z;
import j.d0;
import j.x;
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
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.b1;
import m0.b2;
import m0.i1;
import n7.k0;
import n7.l0;
import o7.f2;
import o7.p4;
import o7.u2;
import o7.w4;
import o7.y1;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import w0.m0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m implements g0.d, e5.b, f2.b, Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f269b;
    public Object c;
    public Object d;
    public Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f270f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(LounchB lounchB) {
        this.f269b = 13;
        this.f270f = lounchB;
        if (d()) {
            this.e = new r0.a(lounchB);
            this.d = new t1.j(lounchB);
            u1 u1Var = new u1(lounchB, e0.m.h(new byte[]{-89, 111, -4, -1, 70, -38, -78, -116, -66, 110, -1, -27, 112, -13, -103, -100, -67, 69, -32, -22, 92, -10}, new byte[]{-54, 26, -112, -117, 47, -123, -16, -7}));
            h0.b.a();
            z0.a aVarB = h0.b.g().b();
            t1.j jVar = (t1.j) this.d;
            h0.b.a();
            WindowManager windowManagerG = aVarB.g(jVar, h0.b.n().getGuPassDisplayID(), u1Var.c);
            this.c = windowManagerG;
            u1Var.a((t1.j) this.d, windowManagerG, new f5.j(15, this));
            u1Var.d();
            ((t1.j) this.d).e(new a4.c(this, 0, 9), new a4.c(this, 1, 9), new a4.c(this, 2, 9), new a4.c(this, 3, 9), new a4.c(this, 4, 9), new a4.c(this, 5, 9), new a4.c(this, 6, 9), new a4.c(this, 7, 9));
            Drawable[] drawableArrA = r0.e.a(lounchB);
            t1.j jVar2 = (t1.j) this.d;
            if (jVar2 != null) {
                jVar2.setImageRun(drawableArrA);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(File file) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                f(file2);
            }
        }
        file.delete();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void i(ContentResolver contentResolver, String str) {
        try {
            String string = Settings$Secure.getString(contentResolver, e0.m.h(new byte[]{-94, -85, -17, 79, 49, 54, 83, 102, -90, -90, -19, 72, 46, 32, 94, 91, -82, -87, -25, 89, 36, 12, 68, 92, -75, -77, -25, 78, 56, 32}, new byte[]{-57, -59, -114, 45, 93, 83, 55, 57}));
            if (TextUtils.isEmpty(string)) {
                return;
            }
            String[] strArrSplit = string.split(e0.m.h(new byte[]{93}, new byte[]{103, -26, -86, 72, -37, -88, 29, 55}));
            ArrayList arrayList = new ArrayList();
            boolean z8 = false;
            for (String str2 : strArrSplit) {
                if (str2.equalsIgnoreCase(str)) {
                    z8 = true;
                } else {
                    arrayList.add(str2);
                }
            }
            if (z8) {
                Settings$Secure.putString(contentResolver, e0.m.h(new byte[]{97, -18, 17, ByteCompanionObject.MAX_VALUE, -43, 22, 15, 97, 101, -29, 19, 120, -54, 0, 2, 92, 109, -20, 25, 105, -64, 44, 24, 91, 118, -10, 25, 126, -36, 0}, new byte[]{4, ByteCompanionObject.MIN_VALUE, 112, 29, -71, 115, 107, 62}), TextUtils.join(e0.m.h(new byte[]{-65}, new byte[]{-123, 8, 107, 34, -117, 10, -48, -27}), arrayList));
            }
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void j(ContentResolver contentResolver, String str) {
        try {
            String string = Settings$Secure.getString(contentResolver, e0.m.h(new byte[]{86, -45, -112, -9, -115, -79, 28, 38, 82, -34, -110, -16, -110, -89, 17, 27, 90, -47, -104, -31, -104, -117, 11, 28, 65, -53, -104, -10, -124, -89}, new byte[]{51, -67, -15, -107, -31, -44, 120, 121}));
            if (!TextUtils.isEmpty(string)) {
                for (String str2 : string.split(e0.m.h(new byte[]{-29}, new byte[]{-39, 23, ByteCompanionObject.MIN_VALUE, -62, 55, 43, 11, -77}))) {
                    if (str2.equalsIgnoreCase(str)) {
                        i(contentResolver, str);
                        w.c(-1, e0.m.h(new byte[]{4, -114, -13, 53, 97, 121, -45, -38, 51, -114, -13}, new byte[]{84, -21, -127, 88, 44, 24, -67, -69})).schedule(new j2(0, contentResolver, str), 5000L, TimeUnit.MILLISECONDS);
                        return;
                    }
                }
            }
            if (!TextUtils.isEmpty(string)) {
                str = string + e0.m.h(new byte[]{23}, new byte[]{45, -71, -11, -59, 112, -80, 72, 70}) + str;
            }
            Settings$Secure.putString(contentResolver, e0.m.h(new byte[]{-61, -11, -43, 20, 38, 111, -4, -106, -57, -8, -41, 19, 57, 121, -15, -85, -49, -9, -35, 2, 51, 85, -21, -84, -44, -19, -35, 21, 47, 121}, new byte[]{-90, -101, -76, 118, 74, 10, -104, -55}), str);
            Settings$Secure.putInt(contentResolver, e0.m.h(new byte[]{110, -66, 75, -11, 92, -25, -97, 113, 102, -79, 65, -28, 86, -53, -109, 125, 110, -65, 68, -11, 75}, new byte[]{15, -35, 40, -112, 47, -108, -10, 19}), 1);
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized void a(h.e eVar, x xVar) {
        j.b bVar = (j.b) ((HashMap) this.d).put(eVar, new j.b(eVar, xVar, (ReferenceQueue) this.e));
        if (bVar != null) {
            bVar.c = null;
            bVar.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void b(j.b bVar) {
        d0 d0Var;
        synchronized (this) {
            ((HashMap) this.d).remove(bVar.f2749a);
            if (bVar.f2750b && (d0Var = bVar.c) != null) {
                ((j.r) this.f270f).e(bVar.f2749a, new x(d0Var, true, false, bVar.f2749a, (j.r) this.f270f));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:36:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public boolean c(File file) {
        String str = (String) this.d;
        try {
            InputStream inputStreamOpen = ((Context) this.c).getAssets().open(str);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i9 = inputStreamOpen.read(bArr);
                        if (i9 == -1) {
                            fileOutputStream.close();
                            inputStreamOpen.close();
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i9);
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
            Log.e(e0.m.h(new byte[]{77, 73, 124, -42, 37, -44, -7, -104, 110, 120, 113, -18, 32, -61}, new byte[]{26, 44, 30, -127, 76, -80, -98, -3}), com.google.protobuf.q.l(new byte[]{92, 107, -67, 99, -72, -2, -126, 75, 122, 107, -73, 45, -75, -1, -52, 93, 115, 111, -73, 45, -96, -29, -58, 94, 122, 126, -13}, new byte[]{31, 10, -45, 13, -41, -118, -94, 57}, new StringBuilder(), str), e);
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean d() {
        Display[] displays = ((DisplayManager) ((LounchB) this.f270f).getSystemService(e0.m.h(new byte[]{103, 0, -15, 90, -99, 111, 93}, new byte[]{3, 105, -126, 42, -15, 14, 36, 28}))).getDisplays();
        h0.b.a();
        int guPassDisplayID = h0.b.n().getGuPassDisplayID();
        return guPassDisplayID > -1 && guPassDisplayID < displays.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean e(String str) {
        File file = (File) this.f270f;
        if (str == null || str.trim().isEmpty() || ((String) this.e).equals(str)) {
            return false;
        }
        File file2 = new File(file, str);
        try {
            File canonicalFile = file.getCanonicalFile();
            File canonicalFile2 = file2.getCanonicalFile();
            String path = canonicalFile.getPath();
            if (canonicalFile2.getPath().startsWith(path + File.separator) && canonicalFile2.isDirectory()) {
                f(canonicalFile2);
                return !canonicalFile2.exists();
            }
            return false;
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void g() {
        synchronized (u.class) {
            try {
                if (new File(new File((File) this.f270f, (String) this.e), e0.m.h(new byte[]{11, -36, -115, 37, -113, 85, 60, -29, 15, -34}, new byte[]{98, -78, -23, 64, -9, 123, 84, -105})).isFile()) {
                    return;
                }
                File file = new File(((Context) this.c).getCacheDir(), (String) this.d);
                if (!c(file)) {
                    throw new IOException(e0.m.h(new byte[]{51, 8, 5, 27, -10, -38, -122, -61, 21, 8, 15, 85, -5, -37, -56, -43, 28, 12, 15, 85, -18, -57, -62, -42, 21, 29, 75}, new byte[]{112, 105, 107, 117, -103, -82, -90, -79}) + ((String) this.d));
                }
                u.r(file, (File) this.f270f, false);
                if (new File(new File((File) this.f270f, (String) this.e), e0.m.h(new byte[]{-110, -122, -84, 106, 125, -120, 57, -62, -106, -124}, new byte[]{-5, -24, -56, 15, 5, -90, 81, -74})).isFile()) {
                    return;
                }
                throw new IOException(e0.m.h(new byte[]{-29, -62, 78, 115, 104, 5, -125, 7, -42, -34, 68, 112, 97, 20, -57, 79, -64, -60, 0, 121, 107, 64, -114, 73, -59, -46, 88, 57, 108, 20, -118, 75, -101, -105}, new byte[]{-95, -73, 32, 23, 4, 96, -25, 39}) + ((String) this.d));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public Object get() {
        switch (this.f269b) {
            case 5:
                a5.h hVar = (a5.h) this.c;
                return new f5.c((t8.a) this.d, (o4.f) hVar.c, (Application) ((g5.a) this.e).get(), (i5.a) hVar.e, (z) ((g5.a) this.f270f).get());
            default:
                return new m(7, (Executor) ((t8.a) this.c).get(), (k2.d) ((t8.a) this.d).get(), (a5.h) ((a5.h) this.e).get(), (l2.c) ((t8.a) this.f270f).get());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList h() {
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = ((File) this.f270f).listFiles(new b2());
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (!file.getName().equals((String) this.e) && !file.getName().startsWith(e0.m.h(new byte[]{-13, -10, 29, -85, 0, -88, 25, 114, -16}, new byte[]{-35, -97, 115, -40, 116, -55, 117, 30})) && !file.getName().startsWith(e0.m.h(new byte[]{-64, -15, -46, 124, -17, 116, -61, -21}, new byte[]{-18, -109, -77, 31, -124, 1, -77, -58}))) {
                    arrayList.add(file.getName());
                }
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onFailure(Call call, IOException iOException) {
        i1 i1Var = (i1) this.f270f;
        RecyclerView recyclerView = (RecyclerView) this.e;
        b1 b1Var = new b1((Context) this.c, (String) this.d, 1);
        String str = i1.f3465i;
        i1Var.z(recyclerView, b1Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onResponse(Call call, Response response) {
        RecyclerView recyclerView = (RecyclerView) this.e;
        i1 i1Var = (i1) this.f270f;
        try {
            try {
                if (response.isSuccessful()) {
                    i1.u(i1Var, response.body().string(), recyclerView);
                } else {
                    b1 b1Var = new b1((Context) this.c, (String) this.d, 0);
                    String str = i1.f3465i;
                    i1Var.z(recyclerView, b1Var);
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

    public m(int i9) {
        this.f269b = i9;
        switch (i9) {
            case 4:
                break;
            case 6:
                ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new j.a());
                this.d = new HashMap();
                this.e = new ReferenceQueue();
                this.c = executorServiceNewSingleThreadExecutor;
                executorServiceNewSingleThreadExecutor.execute(new com.bumptech.glide.m(6, this));
                break;
            case 11:
                u2 u2Var = u2.d;
                this.d = p4.b();
                this.e = p4.b();
                this.f270f = p4.b();
                this.c = u2Var;
                break;
            default:
                String strH = e0.m.h(new byte[]{6, -33, 48, 20, 119, 32, -119, -122, Base64.padSymbol, -62, 59, 20}, new byte[]{98, -74, 67, 96, 22, 78, -22, -29});
                String strH2 = e0.m.h(new byte[]{105, -101, -48, -84, 50, 105, -93, 42, 110, -91, -55, -117, 53}, new byte[]{10, -6, -67, -13, 65, 25, -58, 79});
                this.d = strH.trim();
                this.e = strH2.trim();
                this.c = "";
                this.f270f = "";
                break;
        }
    }

    public m(m0 m0Var, String str, String str2, List list) {
        this.f269b = 14;
        this.c = m0Var;
        this.d = str;
        this.e = str2;
        this.f270f = Collections.unmodifiableList(new ArrayList(list));
    }

    public m(Context context, String str, File file, String str2) {
        this.f269b = 0;
        this.c = context;
        this.d = str;
        this.f270f = file;
        this.e = str2;
    }

    public /* synthetic */ m(int i9, Object obj, Object obj2, Object obj3, Object obj4) {
        this.f269b = i9;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f270f = obj4;
    }

    public m(Context context) {
        this.f269b = 1;
        this.e = w.c(-1, e0.m.h(new byte[]{-123, 81, 41, -1, ByteCompanionObject.MAX_VALUE, -59, -94, 7, -78, 81, 41}, new byte[]{-43, 52, 91, -110, 50, -92, -52, 102}));
        this.d = e0.m.h(new byte[]{95, -6, 72, 91, 30, 116, 70, -100, 76, -7, 64, 91, 21, 109, 81, -104, 79, -31, 68, 7, 15, 35, 68, -98, 81, -69, 64, 13, 26, 97, 87, -99, 89, -69, 75, 20, 13, 101, 84, -123, 93, -25, 81, 91, 54, 117, 102, -64, 13, -20, 118, 16, 9, 122, 78, -110, 89}, new byte[]{60, -107, 37, 117, 123, 12, 39, -15});
        this.c = context;
        this.f270f = context.getContentResolver();
    }

    public m(Context context, String str, String str2) {
        this.f269b = 0;
        this.c = context;
        this.d = "";
        this.f270f = new File(context.getFilesDir(), str);
        this.e = str2;
    }

    public m(a5.h hVar, LinkedHashMap linkedHashMap, ArrayList arrayList, String str) {
        this.f269b = 15;
        this.c = hVar;
        this.e = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
        this.f270f = Collections.unmodifiableList(new ArrayList(arrayList));
        this.d = str;
    }

    public m(Notik notik, Notik notik2) {
        this.f269b = 3;
        this.f270f = new Handler(Looper.getMainLooper());
        this.c = notik;
        this.e = notik2;
        LinearLayout linearLayout = new LinearLayout(notik);
        this.d = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout$LayoutParams(-2, -2));
    }

    public m(w4 w4Var, y1 y1Var) {
        this.f269b = 10;
        this.f270f = w4Var;
        this.c = y1Var;
        l0 l0Var = (l0) w4Var.c;
        String str = (String) w4Var.d;
        k0 k0VarB = l0Var.b(str);
        this.e = k0VarB;
        if (k0VarB != null) {
            this.d = k0VarB.b(y1Var);
        } else {
            j1.i.l(ai.onnxruntime.a.m("Could not find policy '", str, "'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."));
            throw null;
        }
    }

    public m(i1 i1Var, RecyclerView recyclerView, Context context, String str) {
        this.f269b = 9;
        this.f270f = i1Var;
        this.e = recyclerView;
        this.c = context;
        this.d = str;
    }

    public m(f2 f2Var) {
        this.f269b = 12;
        this.f270f = f2Var;
        this.c = new Object();
        this.d = new HashSet();
    }
}
