package p2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import androidx.fragment.app.FragmentActivity;
import com.example.navistart.MainActivity;
import com.example.navistart.MyA11yService;
import com.example.navistart.PermActivity;
import com.example.navistart.boot;
import com.example.navistart.cores.CarCmdProxy;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.InterB;
import com.example.navistart.cores.ProBroProxy;
import com.example.navistart.cores.ProLanProxy;
import com.example.navistart.cores.SettingsdProxy;
import com.example.navistart.punto;
import com.google.android.gms.dynamite.DynamiteModule$DynamiteLoaderClassLoader;
import e0.m;
import e0.n3;
import e0.x1;
import j1.w;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import n.b0;
import n.r;
import n.s;
import n.z;
import okhttp3.OkHttpClient;
import q.c0;
import q.e0;
import q.p;
import y5.k;
import z3.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements com.bumptech.glide.manager.g, b8.c, b8.b, InterB, w, z0.a, s, p, e0, v2.b {
    public static e c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4577b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(e0.g gVar) {
        this.f4577b = 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e n(int i9, Context context) {
        Preconditions.checkArgument(i9 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i9, a3.a.r);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0));
        w3.c.a(context, typedArrayObtainStyledAttributes, 4);
        w3.c.a(context, typedArrayObtainStyledAttributes, 9);
        w3.c.a(context, typedArrayObtainStyledAttributes, 7);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        o.a(context, typedArrayObtainStyledAttributes.getResourceId(5, 0), typedArrayObtainStyledAttributes.getResourceId(6, 0)).a();
        typedArrayObtainStyledAttributes.recycle();
        e eVar = new e(3);
        Preconditions.checkArgumentNonnegative(rect.left);
        Preconditions.checkArgumentNonnegative(rect.top);
        Preconditions.checkArgumentNonnegative(rect.right);
        Preconditions.checkArgumentNonnegative(rect.bottom);
        return eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final g o(PackageInfo packageInfo, g... gVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            h hVar = new h(packageInfo.signatures[0].toByteArray());
            for (int i9 = 0; i9 < gVarArr.length; i9++) {
                if (gVarArr[i9].equals(hVar)) {
                    return gVarArr[i9];
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:23:0x0036  */
    /* JADX WARN: Code duplicated, block: B:24:0x003d  */
    /* JADX WARN: Code duplicated, block: B:26:0x004b A[RETURN] */
    public static final boolean p(PackageInfo packageInfo) {
        PackageInfo packageInfo2;
        boolean z8;
        g gVarO;
        if (packageInfo != null) {
            if ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName)) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z8 = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
                packageInfo2 = packageInfo;
            } else {
                packageInfo2 = packageInfo;
            }
            if (packageInfo != null && packageInfo2.signatures != null) {
                if (z8) {
                    gVarO = o(packageInfo2, i.f4579a);
                } else {
                    gVarO = o(packageInfo2, i.f4579a[0]);
                }
                if (gVarO != null) {
                    return true;
                }
            }
            return false;
        }
        packageInfo2 = null;
        z8 = true;
        if (packageInfo != null) {
            if (z8) {
                gVarO = o(packageInfo2, i.f4579a);
            } else {
                gVarO = o(packageInfo2, i.f4579a[0]);
            }
            if (gVarO != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v2.b
    public int a(Context context) {
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors.com.google.android.gms.providerinstaller.dynamite.ModuleDescriptor");
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (r2.a.d(declaredField.get(null), "com.google.android.gms.providerinstaller.dynamite")) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id 'com.google.android.gms.providerinstaller.dynamite'");
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for com.google.android.gms.providerinstaller.dynamite not found.");
            return 0;
        } catch (Exception e) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e.getMessage())));
            return 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.b
    public void accept(Object obj) {
        a.a.s(new a8.e((Throwable) obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.c
    public Object apply(Object obj) {
        Object[] objArr = (Object[]) obj;
        if (objArr.length == 2) {
            return new f5.d((String) objArr[0], (l5.a) objArr[1]);
        }
        androidx.navigation.b.b(objArr.length, "Array of size 2 expected but got ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public void bind(String str) {
        x1.f1989q = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:100:0x017d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b1 A[Catch: all -> 0x0039, TryCatch #13 {all -> 0x0039, blocks: (B:10:0x0029, B:12:0x0035, B:52:0x00ba, B:17:0x003e, B:19:0x0045, B:21:0x004b, B:26:0x0051, B:28:0x0055, B:31:0x005e, B:33:0x0066, B:36:0x006d, B:43:0x0099, B:44:0x00a1, B:39:0x0074, B:41:0x007a, B:42:0x008b, B:47:0x00a4, B:50:0x00a7, B:51:0x00b1, B:18:0x0041), top: B:151:0x0029, inners: #6 }] */
    @Override // v2.b
    public int c(Context context, boolean z8) {
        Throwable th;
        RemoteException e;
        int i9;
        Cursor cursor;
        try {
            synchronized (v2.c.class) {
                Boolean bool = v2.c.c;
                boolean z9 = true;
                Cursor cursor2 = null;
                if (bool == null) {
                    try {
                        Field declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteModule$DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                        synchronized (declaredField.getDeclaringClass()) {
                            try {
                                ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                                if (classLoader == ClassLoader.getSystemClassLoader()) {
                                    bool = Boolean.FALSE;
                                } else if (classLoader != null) {
                                    try {
                                        v2.c.c(classLoader);
                                    } catch (v2.a unused) {
                                    }
                                    bool = Boolean.TRUE;
                                } else {
                                    if (!v2.c.d(context)) {
                                        return 0;
                                    }
                                    if (v2.c.e) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    } else {
                                        Boolean bool2 = Boolean.TRUE;
                                        if (bool2.equals(null)) {
                                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                                            bool = Boolean.FALSE;
                                        } else {
                                            try {
                                                int iB = v2.c.b(context, z8, true);
                                                String str = v2.c.d;
                                                if (str != null && !str.isEmpty()) {
                                                    ClassLoader classLoaderR = e3.d.r();
                                                    if (classLoaderR == null) {
                                                        if (Build$VERSION.SDK_INT >= 29) {
                                                            c0.c();
                                                            String str2 = v2.c.d;
                                                            r2.a.b(str2);
                                                            classLoaderR = c0.b(str2, ClassLoader.getSystemClassLoader());
                                                        } else {
                                                            String str3 = v2.c.d;
                                                            r2.a.b(str3);
                                                            classLoaderR = new v2.d(str3, ClassLoader.getSystemClassLoader());
                                                        }
                                                    }
                                                    v2.c.c(classLoaderR);
                                                    declaredField.set(null, classLoaderR);
                                                    v2.c.c = bool2;
                                                    return iB;
                                                }
                                                return iB;
                                            } catch (v2.a unused2) {
                                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                                bool = Boolean.FALSE;
                                            }
                                        }
                                    }
                                }
                                v2.c.c = bool;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e6) {
                        Log.w("DynamiteModule", "Failed to load module via V2: " + e6.toString());
                        bool = Boolean.FALSE;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return v2.c.b(context, z8, false);
                    } catch (v2.a e9) {
                        Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e9.getMessage());
                        return 0;
                    }
                }
                v2.g gVarE = v2.c.e(context);
                try {
                    if (gVarE == null) {
                        return 0;
                    }
                    try {
                        Parcel parcelB = gVarE.b(gVarE.c(), 6);
                        int i10 = parcelB.readInt();
                        parcelB.recycle();
                        if (i10 < 3) {
                            if (i10 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                u2.b bVar = new u2.b(context);
                                Parcel parcelC = gVarE.c();
                                w2.c.a(parcelC, bVar);
                                parcelC.writeString("com.google.android.gms.providerinstaller.dynamite");
                                parcelC.writeInt(z8 ? 1 : 0);
                                Parcel parcelB2 = gVarE.b(parcelC, 5);
                                i9 = parcelB2.readInt();
                                parcelB2.recycle();
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                u2.b bVar2 = new u2.b(context);
                                Parcel parcelC2 = gVarE.c();
                                w2.c.a(parcelC2, bVar2);
                                parcelC2.writeString("com.google.android.gms.providerinstaller.dynamite");
                                parcelC2.writeInt(z8 ? 1 : 0);
                                Parcel parcelB3 = gVarE.b(parcelC2, 3);
                                i9 = parcelB3.readInt();
                                parcelB3.recycle();
                            }
                            return i9;
                        }
                        ThreadLocal threadLocal = v2.c.f5520h;
                        v2.f fVar = (v2.f) threadLocal.get();
                        if (fVar != null && (cursor = fVar.f5526a) != null) {
                            return cursor.getInt(0);
                        }
                        Cursor cursor3 = (Cursor) u2.b.d(gVarE.g(new u2.b(context), z8, ((Long) v2.c.f5521i.get()).longValue()));
                        if (cursor3 != null) {
                            try {
                                if (cursor3.moveToFirst()) {
                                    int i11 = cursor3.getInt(0);
                                    if (i11 > 0) {
                                        v2.f fVar2 = (v2.f) threadLocal.get();
                                        if (fVar2 == null || fVar2.f5526a != null) {
                                            z9 = false;
                                        } else {
                                            fVar2.f5526a = cursor3;
                                        }
                                        cursor2 = z9 ? null : cursor3;
                                    }
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    return i11;
                                }
                            } catch (RemoteException e10) {
                                e = e10;
                                cursor2 = cursor3;
                                Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e.getMessage());
                                if (cursor2 == null) {
                                    return 0;
                                }
                                cursor2.close();
                                return 0;
                            } catch (Throwable th3) {
                                th = th3;
                                cursor2 = cursor3;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                throw th;
                            }
                        }
                        Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                        if (cursor3 == null) {
                            return 0;
                        }
                        cursor3.close();
                        return 0;
                    } catch (RemoteException e11) {
                        e = e11;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        } catch (Throwable th5) {
            try {
                r2.a.b(context);
            } catch (Exception e12) {
                Log.e("CrashUtils", "Error adding exception to DropBox!", e12);
            }
            throw th5;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public void e(String str, Context context) {
        if (str == null) {
            return;
        }
        if (context == null) {
            h0.b.a();
            context = h0.b.h();
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return;
        }
        try {
            j0.e eVarB = j0.f.b(context, strTrim);
            if (j0.f.d(eVarB)) {
                h0.b.a();
                h0.b.f().j(eVarB, null);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z0.a
    public WindowManager f(View view, WindowManager$LayoutParams windowManager$LayoutParams) {
        switch (this.f4577b) {
            case 14:
                return null;
            default:
                return g(view, 0, windowManager$LayoutParams);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public void fuul(Context context) {
        n3.e.execute(new androidx.profileinstaller.c(context, 7));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z0.a
    public WindowManager g(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        WindowManager windowManagerX = null;
        switch (this.f4577b) {
            default:
                if (MyA11yService.f() && h0.b.o().loadBoolean(m.h(new byte[]{46, -110, 72, 12, -1, 112, -4, -81, 54, -115, 73, 25, -59, 119, -10, -125, 45, -98, 65}, new byte[]{89, -5, 44, 107, -102, 4, -113, -16}), false)) {
                    MyA11yService myA11yService = MyA11yService.c;
                    if (myA11yService != null) {
                        windowManagerX = (WindowManager) myA11yService.getSystemService(m.h(new byte[]{-97, 39, -12, -35, 93, -111}, new byte[]{-24, 78, -102, -71, 50, -26, -121, -112}));
                    }
                } else {
                    windowManagerX = o4.b.x(0);
                }
                if (windowManagerX != null) {
                    try {
                        windowManagerX.addView(view, viewGroup$LayoutParams);
                    } catch (Exception e) {
                        h0.b.w(m.h(new byte[]{-20, -16, 28, -37, 2, 0, -26, -20, -51, -44, 7, -47, 7, 0, -86, -88}, new byte[]{-87, -126, 110, -76, 112, 32, -121, -120}) + e.getMessage(), ColorText.RED);
                    }
                    break;
                }
            case 14:
                return windowManagerX;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public CarCmdProxy gcmdp() {
        h0.b.a();
        return h0.b.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public Class getA(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public String getK() {
        return n3.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public int getR(String str) {
        h0.b.a();
        Context contextH = h0.b.h();
        if (str == null) {
            return 0;
        }
        String strReplace = str.replace(m.h(new byte[]{5, 117}, new byte[]{87, 91, 14, 35, -9, -55, 52, 84}), "").replace(m.h(new byte[]{-7, -106, 94, 71, 35, -24, -56, 108}, new byte[]{-104, -8, 58, 53, 76, -127, -84, 66}), "");
        if (strReplace.contains(m.h(new byte[]{-21}, new byte[]{-60, -32, -47, -115, 73, 19, -57, 53}))) {
            String[] strArrSplit = strReplace.split(m.h(new byte[]{-77}, new byte[]{-100, -28, 57, 87, 19, -102, 79, -88}));
            if (strArrSplit.length == 2) {
                return contextH.getResources().getIdentifier(strArrSplit[1], strArrSplit[0], contextH.getPackageName());
            }
        }
        if (strReplace.contains(m.h(new byte[]{-109}, new byte[]{-67, 112, 1, -3, -92, 1, 43, 29}))) {
            String[] strArrSplit2 = strReplace.split(m.h(new byte[]{33, 39}, new byte[]{125, 9, 9, 111, -92, 11, -55, -36}));
            if (strArrSplit2.length >= 2) {
                return contextH.getResources().getIdentifier(strArrSplit2[strArrSplit2.length - 1], strArrSplit2[strArrSplit2.length - 2], contextH.getPackageName());
            }
        }
        return contextH.getResources().getIdentifier(strReplace, null, contextH.getPackageName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public ScheduledThreadPoolExecutor getScheduler(String str) {
        return e0.w.c(-1, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public String getbind() {
        return x1.f1989q;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public long getl() {
        boolean z8 = boot.f891u;
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public byte[] getmir() {
        return m.f1893g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public byte[] getmiru() {
        return m.f1892f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public byte[] getmur() {
        return m.f1896j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public byte[] getp2() {
        return m.f1895i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public SettingsdProxy getsettingsd() {
        return h0.b.o();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public ProBroProxy gprobrop() {
        h0.b.a();
        return h0.b.r();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public ProLanProxy gprolanp() {
        h0.b.a();
        return h0.b.n();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.e0
    public void h(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.w
    public void i(Context context) {
        if (!h0.b.o().loadBoolean(m.h(new byte[]{-76, 94, -52, 106, -90, 55, 48, -92, -98, 90, -33, 113, -87, 51, 26, -125, -102, 90, -35}, new byte[]{-5, 40, -87, 24, -54, 86, 73, -9}), false) || ContextCompat.checkSelfPermission(context, m.h(new byte[]{-94, 122, -72, 119, -24, -113, 77, 101, -77, 113, -82, 104, -18, -107, 90, 34, -84, 122, -14, 87, -62, -91, 102, 25, -121, 75, -99, 80, -61, -81, 102}, new byte[]{-61, 20, -36, 5, -121, -26, 41, 75})) == 0) {
            return;
        }
        String[] strArr = {m.h(new byte[]{-62, -78, -18, 123, -43, -117, 87, -66, -45, -71, -8, 100, -45, -111, 64, -7, -52, -78, -92, 91, -1, -95, 124, -62, -25, -125, -53, 92, -2, -85, 124}, new byte[]{-93, -36, -118, 9, -70, -30, 51, -112})};
        String str = PermActivity.c;
        Intent intent = new Intent(context, (Class<?>) PermActivity.class);
        intent.putExtra(PermActivity.d, strArr);
        k.u(context, intent.addFlags(268435456), null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.s
    public r j(z zVar) {
        return new b0(zVar.b(n.g.class, InputStream.class), 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.w
    public void k(AccessibilityEvent accessibilityEvent, AccessibilityNodeInfo accessibilityNodeInfo) {
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByViewId;
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText;
        if (accessibilityEvent == null || accessibilityNodeInfo == null || accessibilityEvent.getEventType() != 32) {
            return;
        }
        String strValueOf = String.valueOf(accessibilityEvent.getPackageName());
        String strValueOf2 = String.valueOf(accessibilityEvent.getClassName());
        if (!strValueOf.contains(m.h(new byte[]{-78, 119, -1, -100, 86, 48, -66, -63, -83, 124, -18, -98, 81, 55, -65, -57, -82, 126, -24, -125}, new byte[]{-62, 18, -115, -15, 63, 67, -51, -88})) || !strValueOf2.contains(m.h(new byte[]{5, 43, 81, 70, -100, 35, 19, 54, 47, 48, 67, 91, -127, 28, 24, 55, 3, 58, 68, 65, -98, 26, 2, Base64.padSymbol}, new byte[]{66, 89, 48, 40, -24, 115, 118, 68})) || (listFindAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId(m.h(new byte[]{-29, 36, 6, -74, -91, 73, 26, -110, -17, 34, 15, -74, -76, 66, 12, -115, -23, 56, 24, -15, -85, 73, 29, -113, -18, 63, 25, -9, -88, 75, 27, -110, -70, 34, 15, -73, -80, 81, 33, -108, -23, 63, 7, -3}, new byte[]{ByteCompanionObject.MIN_VALUE, 75, 107, -104, -60, 39, 126, -32}))) == null || listFindAccessibilityNodeInfosByViewId.isEmpty()) {
            return;
        }
        String strValueOf3 = String.valueOf(listFindAccessibilityNodeInfosByViewId.get(0).getText());
        if ((!strValueOf3.contains(m.h(new byte[]{-17, 35, 96, -69, -23, -121, -67, -3, -42}, new byte[]{-91, 96, 1, -55, -67, -24, -46, -111})) && !strValueOf3.contains(m.h(new byte[]{-54, -26, 46, 52, -13, -101, -24, -27, -54, -56, 46, 52, -14, -85, -24, -29, -53, -5}, new byte[]{26, 123, -2, -124, 35, 41, 56, 93}))) || (listFindAccessibilityNodeInfosByText = accessibilityNodeInfo.findAccessibilityNodeInfosByText(m.h(new byte[]{-94, -79, 71, 110, -54, 64, 105, 9, -93, -92, 71, 108, -53, 121, 105, 11}, new byte[]{114, 35, -105, -44, 26, -5, -72, -121}))) == null || listFindAccessibilityNodeInfosByText.isEmpty()) {
            return;
        }
        for (AccessibilityNodeInfo accessibilityNodeInfo2 : listFindAccessibilityNodeInfosByText) {
            if (m.h(new byte[]{108, 0, 79, 123, 81, 88, -19, 89, 122, 7, 79, 110, 91, 69, -89, 53, 120, 26, 95, 102, 80}, new byte[]{13, 110, 43, 9, 62, 49, -119, 119}).equals(accessibilityNodeInfo2.getClassName()) || m.h(new byte[]{53, 68, 77, -87, 73, 110, -107, 72, 35, 67, 77, -68, 67, 115, -33, 52, 53, 78, 64, -76, 100, 114, -123, 18, 59, 68}, new byte[]{84, 42, 41, -37, 38, 7, -15, 102}).equals(accessibilityNodeInfo2.getClassName())) {
                if (accessibilityNodeInfo2.performAction(16)) {
                    new Handler(Looper.getMainLooper()).post(new f5.j(4, accessibilityNodeInfo2));
                    return;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public void l(String str) {
        v1.d.a().d().e.postValue(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public void li(String str) {
        h0.b.v(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z0.a
    public int m() {
        switch (this.f4577b) {
            case 14:
                return 2038;
            default:
                if (MyA11yService.f() && h0.b.o().loadBoolean(m.h(new byte[]{67, -126, -97, 31, -90, 41, -97, -49, 91, -99, -98, 10, -100, 46, -107, -29, 64, -114, -106}, new byte[]{52, -21, -5, 120, -61, 93, -20, -112}), false)) {
                    return 2032;
                }
                return Build$VERSION.SDK_INT >= 26 ? 2038 : 2002;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public void mb() {
        h0.b.a();
        h0.b.k().c(n0.g.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public void mn() {
        h0.b.a();
        h0.b.k().c(n0.g.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public void mpa() {
        h0.b.a();
        h0.b.k().c(n0.g.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.content.ContextWrapper, h0.c] */
    @Override // com.example.navistart.cores.InterB
    public void pc() {
        ?? r1 = h0.b.f2431q;
        if (r1 != 0) {
            r1.d();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.InterB
    public void setMediaVolumePercent(int i9, Context context) {
        if (context == null) {
            h0.b.a();
            context = h0.b.h();
        }
        k.t(i9, context);
    }

    @Override // com.example.navistart.cores.InterB
    public void li(String str, ColorText colorText) {
        h0.b.w(str, colorText);
    }

    @Override // com.example.navistart.cores.InterB
    public ScheduledExecutorService getScheduler(String str, int i9) {
        return e0.w.b(i9, str);
    }

    public /* synthetic */ e(int i9) {
        this.f4577b = i9;
    }

    @Override // com.example.navistart.cores.InterB
    public OkHttpClient h() {
        h0.b.a();
        return h0.b.m();
    }

    @Override // q.p
    public void l(Bitmap bitmap, k.b bVar) {
    }

    @Override // q.p
    public void d() {
    }

    @Override // com.example.navistart.cores.InterB
    public void ss() {
    }

    @Override // com.bumptech.glide.manager.g
    public void b(FragmentActivity fragmentActivity) {
    }

    @Override // com.example.navistart.cores.InterB
    public void setMO(boolean z8) {
    }

    @Override // q.e0
    public void e(MediaExtractor mediaExtractor, Object obj) throws IOException {
        mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // com.example.navistart.cores.InterB
    public void lf(Context context, Class cls, Bundle bundle) {
    }

    @Override // com.example.navistart.cores.InterB
    public void a(Boolean bool, String str, Long l9, Long l10) {
        if (bool != null) {
            punto.t = bool;
        }
        if (str != null) {
            punto.f1002s = str;
        }
        if (l9 != null) {
            MainActivity.f692j1 = l9;
        }
    }
}
