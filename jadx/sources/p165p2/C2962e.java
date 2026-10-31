package p165p2;

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
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.C0674b;
import androidx.profileinstaller.RunnableC0707c;
import com.bumptech.glide.manager.InterfaceC1061g;
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
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import okhttp3.OkHttpClient;
import p000a.AbstractC0000a;
import p004a3.AbstractC0007a;
import p009a8.C0033e;
import p023b8.InterfaceC0928b;
import p023b8.InterfaceC0929c;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1357g;
import p047e0.C1396n3;
import p047e0.C1440x1;
import p050e3.C1461d;
import p062f5.C1544d;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p099j1.InterfaceC1943w;
import p108k.InterfaceC2014b;
import p126l5.C2206a;
import p141n.C2436b0;
import p141n.C2445g;
import p141n.C2465z;
import p141n.InterfaceC2457r;
import p141n.InterfaceC2458s;
import p142n0.EnumC2472g;
import p155o4.AbstractC2587b;
import p172q.AbstractC3010c0;
import p172q.InterfaceC3014e0;
import p172q.InterfaceC3026p;
import p181r2.AbstractC3093a;
import p208u2.BinderC3284b;
import p217v1.C3326d;
import p218v2.C3327a;
import p218v2.C3329c;
import p218v2.C3330d;
import p218v2.C3332f;
import p218v2.C3333g;
import p218v2.InterfaceC3328b;
import p227w2.AbstractC3515c;
import p228w3.AbstractC3518c;
import p250y5.AbstractC3656k;
import p255z0.InterfaceC3692a;
import p258z3.C3729o;

/* JADX INFO: renamed from: p2.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2962e implements InterfaceC1061g, InterfaceC0929c, InterfaceC0928b, InterB, InterfaceC1943w, InterfaceC3692a, InterfaceC2458s, InterfaceC3026p, InterfaceC3014e0, InterfaceC3328b {

    /* JADX INFO: renamed from: c */
    public static C2962e f8241c;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8242b;

    public C2962e(C1357g c1357g) {
        this.f8242b = 4;
    }

    /* JADX INFO: renamed from: n */
    public static C2962e m4748n(int i10, Context context) {
        Preconditions.checkArgument(i10 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, AbstractC0007a.f39r);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0));
        AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, 4);
        AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, 9);
        AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, 7);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        C3729o.m5957a(context, typedArrayObtainStyledAttributes.getResourceId(5, 0), typedArrayObtainStyledAttributes.getResourceId(6, 0)).m5956a();
        typedArrayObtainStyledAttributes.recycle();
        C2962e c2962e = new C2962e(3);
        Preconditions.checkArgumentNonnegative(rect.left);
        Preconditions.checkArgumentNonnegative(rect.top);
        Preconditions.checkArgumentNonnegative(rect.right);
        Preconditions.checkArgumentNonnegative(rect.bottom);
        return c2962e;
    }

    /* JADX INFO: renamed from: o */
    public static final AbstractBinderC2964g m4749o(PackageInfo packageInfo, AbstractBinderC2964g... abstractBinderC2964gArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            BinderC2965h binderC2965h = new BinderC2965h(packageInfo.signatures[0].toByteArray());
            for (int i10 = 0; i10 < abstractBinderC2964gArr.length; i10++) {
                if (abstractBinderC2964gArr[i10].equals(binderC2965h)) {
                    return abstractBinderC2964gArr[i10];
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0036  */
    /* JADX WARN: Code duplicated, block: B:24:0x003d  */
    /* JADX WARN: Code duplicated, block: B:26:0x004b A[RETURN] */
    /* JADX INFO: renamed from: p */
    public static final boolean m4750p(PackageInfo packageInfo) {
        PackageInfo packageInfo2;
        boolean z9;
        AbstractBinderC2964g abstractBinderC2964gM4749o;
        if (packageInfo != null) {
            if ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName)) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z9 = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
                packageInfo2 = packageInfo;
            } else {
                packageInfo2 = packageInfo;
            }
            if (packageInfo != null && packageInfo2.signatures != null) {
                if (z9) {
                    abstractBinderC2964gM4749o = m4749o(packageInfo2, AbstractC2966i.f8248a);
                } else {
                    abstractBinderC2964gM4749o = m4749o(packageInfo2, AbstractC2966i.f8248a[0]);
                }
                if (abstractBinderC2964gM4749o != null) {
                    return true;
                }
            }
            return false;
        }
        packageInfo2 = null;
        z9 = true;
        if (packageInfo != null) {
            if (z9) {
                abstractBinderC2964gM4749o = m4749o(packageInfo2, AbstractC2966i.f8248a);
            } else {
                abstractBinderC2964gM4749o = m4749o(packageInfo2, AbstractC2966i.f8248a[0]);
            }
            if (abstractBinderC2964gM4749o != null) {
                return true;
            }
        }
        return false;
    }

    @Override // p218v2.InterfaceC3328b
    /* JADX INFO: renamed from: a */
    public int mo1241a(Context context) {
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors.com.google.android.gms.providerinstaller.dynamite.ModuleDescriptor");
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (AbstractC3093a.m4928d(declaredField.get(null), "com.google.android.gms.providerinstaller.dynamite")) {
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

    @Override // p023b8.InterfaceC0928b
    public void accept(Object obj) {
        AbstractC0000a.m18s(new C0033e((Throwable) obj));
    }

    @Override // p023b8.InterfaceC0929c
    public Object apply(Object obj) {
        Object[] objArr = (Object[]) obj;
        if (objArr.length == 2) {
            return new C1544d((String) objArr[0], (C2206a) objArr[1]);
        }
        C0674b.m836b(objArr.length, "Array of size 2 expected but got ");
        return null;
    }

    @Override // com.example.navistart.cores.InterB
    public void bind(String str) {
        C1440x1.f3470q = str;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x017d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b1 A[Catch: all -> 0x0039, TryCatch #13 {all -> 0x0039, blocks: (B:10:0x0029, B:12:0x0035, B:52:0x00ba, B:17:0x003e, B:19:0x0045, B:21:0x004b, B:26:0x0051, B:28:0x0055, B:31:0x005e, B:33:0x0066, B:36:0x006d, B:43:0x0099, B:44:0x00a1, B:39:0x0074, B:41:0x007a, B:42:0x008b, B:47:0x00a4, B:50:0x00a7, B:51:0x00b1, B:18:0x0041), top: B:151:0x0029, inners: #6 }] */
    @Override // p218v2.InterfaceC3328b
    /* JADX INFO: renamed from: c */
    public int mo1242c(Context context, boolean z9) {
        Throwable th;
        RemoteException e;
        int i10;
        Cursor cursor;
        try {
            synchronized (C3329c.class) {
                Boolean bool = C3329c.f9738c;
                boolean z10 = true;
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
                                        C3329c.m5248c(classLoader);
                                    } catch (C3327a unused) {
                                    }
                                    bool = Boolean.TRUE;
                                } else {
                                    if (!C3329c.m5249d(context)) {
                                        return 0;
                                    }
                                    if (C3329c.f9740e) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    } else {
                                        Boolean bool2 = Boolean.TRUE;
                                        if (bool2.equals(null)) {
                                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                                            bool = Boolean.FALSE;
                                        } else {
                                            try {
                                                int iM5247b = C3329c.m5247b(context, z9, true);
                                                String str = C3329c.f9739d;
                                                if (str != null && !str.isEmpty()) {
                                                    ClassLoader classLoaderM2518r = C1461d.m2518r();
                                                    if (classLoaderM2518r == null) {
                                                        if (Build.VERSION.SDK_INT >= 29) {
                                                            AbstractC3010c0.m4835c();
                                                            String str2 = C3329c.f9739d;
                                                            AbstractC3093a.m4926b(str2);
                                                            classLoaderM2518r = AbstractC3010c0.m4834b(str2, ClassLoader.getSystemClassLoader());
                                                        } else {
                                                            String str3 = C3329c.f9739d;
                                                            AbstractC3093a.m4926b(str3);
                                                            classLoaderM2518r = new C3330d(str3, ClassLoader.getSystemClassLoader());
                                                        }
                                                    }
                                                    C3329c.m5248c(classLoaderM2518r);
                                                    declaredField.set(null, classLoaderM2518r);
                                                    C3329c.f9738c = bool2;
                                                    return iM5247b;
                                                }
                                                return iM5247b;
                                            } catch (C3327a unused2) {
                                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                                bool = Boolean.FALSE;
                                            }
                                        }
                                    }
                                }
                                C3329c.f9738c = bool;
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
                        return C3329c.m5247b(context, z9, false);
                    } catch (C3327a e10) {
                        Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e10.getMessage());
                        return 0;
                    }
                }
                C3333g c3333gM5250e = C3329c.m5250e(context);
                try {
                    if (c3333gM5250e == null) {
                        return 0;
                    }
                    try {
                        Parcel parcelM5581b = c3333gM5250e.m5581b(c3333gM5250e.m5582c(), 6);
                        int i11 = parcelM5581b.readInt();
                        parcelM5581b.recycle();
                        if (i11 < 3) {
                            if (i11 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                BinderC3284b binderC3284b = new BinderC3284b(context);
                                Parcel parcelM5582c = c3333gM5250e.m5582c();
                                AbstractC3515c.m5583a(parcelM5582c, binderC3284b);
                                parcelM5582c.writeString("com.google.android.gms.providerinstaller.dynamite");
                                parcelM5582c.writeInt(z9 ? 1 : 0);
                                Parcel parcelM5581b2 = c3333gM5250e.m5581b(parcelM5582c, 5);
                                i10 = parcelM5581b2.readInt();
                                parcelM5581b2.recycle();
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                BinderC3284b binderC3284b2 = new BinderC3284b(context);
                                Parcel parcelM5582c2 = c3333gM5250e.m5582c();
                                AbstractC3515c.m5583a(parcelM5582c2, binderC3284b2);
                                parcelM5582c2.writeString("com.google.android.gms.providerinstaller.dynamite");
                                parcelM5582c2.writeInt(z9 ? 1 : 0);
                                Parcel parcelM5581b3 = c3333gM5250e.m5581b(parcelM5582c2, 3);
                                i10 = parcelM5581b3.readInt();
                                parcelM5581b3.recycle();
                            }
                            return i10;
                        }
                        ThreadLocal threadLocal = C3329c.f9743h;
                        C3332f c3332f = (C3332f) threadLocal.get();
                        if (c3332f != null && (cursor = c3332f.f9749a) != null) {
                            return cursor.getInt(0);
                        }
                        Cursor cursor3 = (Cursor) BinderC3284b.m5218d(c3333gM5250e.m5254g(new BinderC3284b(context), z9, ((Long) C3329c.f9744i.get()).longValue()));
                        if (cursor3 != null) {
                            try {
                                if (cursor3.moveToFirst()) {
                                    int i12 = cursor3.getInt(0);
                                    if (i12 > 0) {
                                        C3332f c3332f2 = (C3332f) threadLocal.get();
                                        if (c3332f2 == null || c3332f2.f9749a != null) {
                                            z10 = false;
                                        } else {
                                            c3332f2.f9749a = cursor3;
                                        }
                                        cursor2 = z10 ? null : cursor3;
                                    }
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    return i12;
                                }
                            } catch (RemoteException e11) {
                                e = e11;
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
                    } catch (RemoteException e12) {
                        e = e12;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        } catch (Throwable th5) {
            try {
                AbstractC3093a.m4926b(context);
            } catch (Exception e13) {
                Log.e("CrashUtils", "Error adding exception to DropBox!", e13);
            }
            throw th5;
        }
    }

    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: e */
    public void mo1620e(String str, Context context) {
        if (str == null) {
            return;
        }
        if (context == null) {
            C1652b.m2734a();
            context = C1652b.m2739h();
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return;
        }
        try {
            C1919e c1919eM3004b = AbstractC1920f.m3004b(context, strTrim);
            if (AbstractC1920f.m3006d(c1919eM3004b)) {
                C1652b.m2734a();
                C1652b.m2737f().m2994j(c1919eM3004b, null);
            }
        } catch (Exception unused) {
        }
    }

    @Override // p255z0.InterfaceC3692a
    /* JADX INFO: renamed from: f */
    public WindowManager mo1144f(View view, WindowManager.LayoutParams layoutParams) {
        switch (this.f8242b) {
            case 14:
                return null;
            default:
                return mo1145g(view, 0, layoutParams);
        }
    }

    @Override // com.example.navistart.cores.InterB
    public void fuul(Context context) {
        C1396n3.f3344e.execute(new RunnableC0707c(context, 7));
    }

    @Override // p255z0.InterfaceC3692a
    /* JADX INFO: renamed from: g */
    public WindowManager mo1145g(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        WindowManager windowManagerM4057x = null;
        switch (this.f8242b) {
            default:
                if (MyA11yService.m1479f() && C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{46, -110, 72, 12, -1, 112, -4, -81, 54, -115, 73, 25, -59, 119, -10, -125, 45, -98, 65}, new byte[]{89, -5, 44, 107, -102, 4, -113, -16}), false)) {
                    MyA11yService myA11yService = MyA11yService.f1453c;
                    if (myA11yService != null) {
                        windowManagerM4057x = (WindowManager) myA11yService.getSystemService(AbstractC1387m.m2421h(new byte[]{-97, 39, -12, -35, 93, -111}, new byte[]{-24, 78, -102, -71, 50, -26, -121, -112}));
                    }
                } else {
                    windowManagerM4057x = AbstractC2587b.m4057x(0);
                }
                if (windowManagerM4057x != null) {
                    try {
                        windowManagerM4057x.addView(view, layoutParams);
                    } catch (Exception e) {
                        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-20, -16, 28, -37, 2, 0, -26, -20, -51, -44, 7, -47, 7, 0, -86, -88}, new byte[]{-87, -126, 110, -76, 112, 32, -121, -120}) + e.getMessage(), ColorText.RED);
                    }
                    break;
                }
            case 14:
                return windowManagerM4057x;
        }
    }

    @Override // com.example.navistart.cores.InterB
    public CarCmdProxy gcmdp() {
        C1652b.m2734a();
        return C1652b.m2736d();
    }

    @Override // com.example.navistart.cores.InterB
    public Class getA(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.example.navistart.cores.InterB
    public String getK() {
        return C1396n3.f3343d;
    }

    @Override // com.example.navistart.cores.InterB
    public int getR(String str) {
        C1652b.m2734a();
        Context contextM2739h = C1652b.m2739h();
        if (str == null) {
            return 0;
        }
        String strReplace = str.replace(AbstractC1387m.m2421h(new byte[]{5, 117}, new byte[]{87, 91, 14, 35, -9, -55, 52, 84}), "").replace(AbstractC1387m.m2421h(new byte[]{-7, -106, 94, 71, 35, -24, -56, 108}, new byte[]{-104, -8, 58, 53, 76, -127, -84, 66}), "");
        if (strReplace.contains(AbstractC1387m.m2421h(new byte[]{-21}, new byte[]{-60, -32, -47, -115, 73, 19, -57, 53}))) {
            String[] strArrSplit = strReplace.split(AbstractC1387m.m2421h(new byte[]{-77}, new byte[]{-100, -28, 57, 87, 19, -102, 79, -88}));
            if (strArrSplit.length == 2) {
                return contextM2739h.getResources().getIdentifier(strArrSplit[1], strArrSplit[0], contextM2739h.getPackageName());
            }
        }
        if (strReplace.contains(AbstractC1387m.m2421h(new byte[]{-109}, new byte[]{-67, 112, 1, -3, -92, 1, 43, 29}))) {
            String[] strArrSplit2 = strReplace.split(AbstractC1387m.m2421h(new byte[]{33, 39}, new byte[]{125, 9, 9, 111, -92, 11, -55, -36}));
            if (strArrSplit2.length >= 2) {
                return contextM2739h.getResources().getIdentifier(strArrSplit2[strArrSplit2.length - 1], strArrSplit2[strArrSplit2.length - 2], contextM2739h.getPackageName());
            }
        }
        return contextM2739h.getResources().getIdentifier(strReplace, null, contextM2739h.getPackageName());
    }

    @Override // com.example.navistart.cores.InterB
    public ScheduledThreadPoolExecutor getScheduler(String str) {
        return AbstractC1434w.m2482c(-1, str);
    }

    @Override // com.example.navistart.cores.InterB
    public String getbind() {
        return C1440x1.f3470q;
    }

    @Override // com.example.navistart.cores.InterB
    public long getl() {
        boolean z9 = boot.f1709u;
        throw null;
    }

    @Override // com.example.navistart.cores.InterB
    public byte[] getmir() {
        return AbstractC1387m.f3319g;
    }

    @Override // com.example.navistart.cores.InterB
    public byte[] getmiru() {
        return AbstractC1387m.f3318f;
    }

    @Override // com.example.navistart.cores.InterB
    public byte[] getmur() {
        return AbstractC1387m.f3322j;
    }

    @Override // com.example.navistart.cores.InterB
    public byte[] getp2() {
        return AbstractC1387m.f3321i;
    }

    @Override // com.example.navistart.cores.InterB
    public SettingsdProxy getsettingsd() {
        return C1652b.m2745o();
    }

    @Override // com.example.navistart.cores.InterB
    public ProBroProxy gprobrop() {
        C1652b.m2734a();
        return C1652b.m2748r();
    }

    @Override // com.example.navistart.cores.InterB
    public ProLanProxy gprolanp() {
        C1652b.m2734a();
        return C1652b.m2744n();
    }

    @Override // p172q.InterfaceC3014e0
    /* JADX INFO: renamed from: h */
    public void mo4752h(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // p099j1.InterfaceC1943w
    /* JADX INFO: renamed from: i */
    public void mo1147i(Context context) {
        if (!C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-76, 94, -52, 106, -90, 55, 48, -92, -98, 90, -33, 113, -87, 51, 26, -125, -102, 90, -35}, new byte[]{-5, 40, -87, 24, -54, 86, 73, -9}), false) || ContextCompat.checkSelfPermission(context, AbstractC1387m.m2421h(new byte[]{-94, 122, -72, 119, -24, -113, 77, 101, -77, 113, -82, 104, -18, -107, 90, 34, -84, 122, -14, 87, -62, -91, 102, 25, -121, 75, -99, 80, -61, -81, 102}, new byte[]{-61, 20, -36, 5, -121, -26, 41, 75})) == 0) {
            return;
        }
        String[] strArr = {AbstractC1387m.m2421h(new byte[]{-62, -78, -18, 123, -43, -117, 87, -66, -45, -71, -8, 100, -45, -111, 64, -7, -52, -78, -92, 91, -1, -95, 124, -62, -25, -125, -53, 92, -2, -85, 124}, new byte[]{-93, -36, -118, 9, -70, -30, 51, -112})};
        String str = PermActivity.f1507c;
        Intent intent = new Intent(context, (Class<?>) PermActivity.class);
        intent.putExtra(PermActivity.f1508d, strArr);
        AbstractC3656k.m5875u(context, intent.addFlags(268435456), null);
    }

    @Override // p141n.InterfaceC2458s
    /* JADX INFO: renamed from: j */
    public InterfaceC2457r mo1344j(C2465z c2465z) {
        return new C2436b0(c2465z.m3816b(C2445g.class, InputStream.class), 1);
    }

    @Override // p099j1.InterfaceC1943w
    /* JADX INFO: renamed from: k */
    public void mo1149k(AccessibilityEvent accessibilityEvent, AccessibilityNodeInfo accessibilityNodeInfo) {
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByViewId;
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText;
        if (accessibilityEvent == null || accessibilityNodeInfo == null || accessibilityEvent.getEventType() != 32) {
            return;
        }
        String strValueOf = String.valueOf(accessibilityEvent.getPackageName());
        String strValueOf2 = String.valueOf(accessibilityEvent.getClassName());
        if (!strValueOf.contains(AbstractC1387m.m2421h(new byte[]{-78, 119, -1, -100, 86, 48, -66, -63, -83, 124, -18, -98, 81, 55, -65, -57, -82, 126, -24, -125}, new byte[]{-62, 18, -115, -15, 63, 67, -51, -88})) || !strValueOf2.contains(AbstractC1387m.m2421h(new byte[]{5, 43, 81, 70, -100, 35, 19, 54, 47, 48, 67, 91, -127, 28, 24, 55, 3, 58, 68, 65, -98, 26, 2, Base64.padSymbol}, new byte[]{66, 89, 48, 40, -24, 115, 118, 68})) || (listFindAccessibilityNodeInfosByViewId = accessibilityNodeInfo.findAccessibilityNodeInfosByViewId(AbstractC1387m.m2421h(new byte[]{-29, 36, 6, -74, -91, 73, 26, -110, -17, 34, 15, -74, -76, 66, 12, -115, -23, 56, 24, -15, -85, 73, 29, -113, -18, 63, 25, -9, -88, 75, 27, -110, -70, 34, 15, -73, -80, 81, 33, -108, -23, 63, 7, -3}, new byte[]{ByteCompanionObject.MIN_VALUE, 75, 107, -104, -60, 39, 126, -32}))) == null || listFindAccessibilityNodeInfosByViewId.isEmpty()) {
            return;
        }
        String strValueOf3 = String.valueOf(listFindAccessibilityNodeInfosByViewId.get(0).getText());
        if ((!strValueOf3.contains(AbstractC1387m.m2421h(new byte[]{-17, 35, 96, -69, -23, -121, -67, -3, -42}, new byte[]{-91, 96, 1, -55, -67, -24, -46, -111})) && !strValueOf3.contains(AbstractC1387m.m2421h(new byte[]{-54, -26, 46, 52, -13, -101, -24, -27, -54, -56, 46, 52, -14, -85, -24, -29, -53, -5}, new byte[]{26, 123, -2, -124, 35, 41, 56, 93}))) || (listFindAccessibilityNodeInfosByText = accessibilityNodeInfo.findAccessibilityNodeInfosByText(AbstractC1387m.m2421h(new byte[]{-94, -79, 71, 110, -54, 64, 105, 9, -93, -92, 71, 108, -53, 121, 105, 11}, new byte[]{114, 35, -105, -44, 26, -5, -72, -121}))) == null || listFindAccessibilityNodeInfosByText.isEmpty()) {
            return;
        }
        for (AccessibilityNodeInfo accessibilityNodeInfo2 : listFindAccessibilityNodeInfosByText) {
            if (AbstractC1387m.m2421h(new byte[]{108, 0, 79, 123, 81, 88, -19, 89, 122, 7, 79, 110, 91, 69, -89, 53, 120, 26, 95, 102, 80}, new byte[]{13, 110, 43, 9, 62, 49, -119, 119}).equals(accessibilityNodeInfo2.getClassName()) || AbstractC1387m.m2421h(new byte[]{53, 68, 77, -87, 73, 110, -107, 72, 35, 67, 77, -68, 67, 115, -33, 52, 53, 78, 64, -76, 100, 114, -123, 18, 59, 68}, new byte[]{84, 42, 41, -37, 38, 7, -15, 102}).equals(accessibilityNodeInfo2.getClassName())) {
                if (accessibilityNodeInfo2.performAction(16)) {
                    new Handler(Looper.getMainLooper()).post(new RunnableC1556j(4, accessibilityNodeInfo2));
                    return;
                }
            }
        }
    }

    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: l */
    public void mo1622l(String str) {
        C3326d.m5242a().m5245d().f9732e.postValue(str);
    }

    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: li */
    public void mo1624li(String str) {
        C1652b.m2750v(str);
    }

    @Override // p255z0.InterfaceC3692a
    /* JADX INFO: renamed from: m */
    public int mo1151m() {
        switch (this.f8242b) {
            case 14:
                return 2038;
            default:
                if (MyA11yService.m1479f() && C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{67, -126, -97, 31, -90, 41, -97, -49, 91, -99, -98, 10, -100, 46, -107, -29, 64, -114, -106}, new byte[]{52, -21, -5, 120, -61, 93, -20, -112}), false)) {
                    return 2032;
                }
                return Build.VERSION.SDK_INT >= 26 ? 2038 : 2002;
        }
    }

    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: mb */
    public void mo1626mb() {
        C1652b.m2734a();
        C1652b.m2741k().m2490c(EnumC2472g.f6812e);
    }

    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: mn */
    public void mo1627mn() {
        C1652b.m2734a();
        C1652b.m2741k().m2490c(EnumC2472g.f6811d);
    }

    @Override // com.example.navistart.cores.InterB
    public void mpa() {
        C1652b.m2734a();
        C1652b.m2741k().m2490c(EnumC2472g.f6810c);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.content.ContextWrapper, h0.c] */
    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: pc */
    public void mo1628pc() {
        ?? r1 = C1652b.f4208q;
        if (r1 != 0) {
            r1.mo1544d();
        }
    }

    @Override // com.example.navistart.cores.InterB
    public void setMediaVolumePercent(int i10, Context context) {
        if (context == null) {
            C1652b.m2734a();
            context = C1652b.m2739h();
        }
        AbstractC3656k.m5874t(i10, context);
    }

    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: li */
    public void mo1625li(String str, ColorText colorText) {
        C1652b.m2751w(str, colorText);
    }

    @Override // com.example.navistart.cores.InterB
    public ScheduledExecutorService getScheduler(String str, int i10) {
        return AbstractC1434w.m2481b(i10, str);
    }

    public /* synthetic */ C2962e(int i10) {
        this.f8242b = i10;
    }

    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: h */
    public OkHttpClient mo1621h() {
        C1652b.m2734a();
        return C1652b.m2743m();
    }

    @Override // p172q.InterfaceC3026p
    /* JADX INFO: renamed from: l */
    public void mo3484l(Bitmap bitmap, InterfaceC2014b interfaceC2014b) {
    }

    @Override // p172q.InterfaceC3026p
    /* JADX INFO: renamed from: d */
    public void mo3478d() {
    }

    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: ss */
    public void mo1629ss() {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1061g
    /* JADX INFO: renamed from: b */
    public void mo1339b(FragmentActivity fragmentActivity) {
    }

    @Override // com.example.navistart.cores.InterB
    public void setMO(boolean z9) {
    }

    @Override // p172q.InterfaceC3014e0
    /* JADX INFO: renamed from: e */
    public void mo4751e(MediaExtractor mediaExtractor, Object obj) throws IOException {
        mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: lf */
    public void mo1623lf(Context context, Class cls, Bundle bundle) {
    }

    @Override // com.example.navistart.cores.InterB
    /* JADX INFO: renamed from: a */
    public void mo1619a(Boolean bool, String str, Long l10, Long l11) {
        if (bool != null) {
            punto.f1869t = bool;
        }
        if (str != null) {
            punto.f1868s = str;
        }
        if (l10 != null) {
            MainActivity.f1293j1 = l10;
        }
    }
}
