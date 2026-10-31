package p050e3;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.MainActivity;
import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000a.AbstractC0000a;
import p047e0.AbstractC1387m;
import p063f6.C1578b;
import p078h0.C1652b;
import p131m.C2257a;
import p142n0.C2467b;

/* JADX INFO: renamed from: e3.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1461d {

    /* JADX INFO: renamed from: b */
    public static ClassLoader f3542b;

    /* JADX INFO: renamed from: c */
    public static Thread f3543c;

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3544a;

    /* JADX INFO: renamed from: a */
    public static long m2502a(AtomicLong atomicLong, long j10) {
        long j11;
        do {
            j11 = atomicLong.get();
            if (j11 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j11, m2503b(j11, j10)));
        return j11;
    }

    /* JADX INFO: renamed from: b */
    public static long m2503b(long j10, long j11) {
        long j12 = j10 + j11;
        if (j12 < 0) {
            return Long.MAX_VALUE;
        }
        return j12;
    }

    /* JADX INFO: renamed from: c */
    public static void m2504c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        C2467b.m3828n(str);
    }

    /* JADX INFO: renamed from: d */
    public static void m2505d(Object obj, String str, String str2) {
        String strM2511j = m2511j(str);
        if (Log.isLoggable(strM2511j, 3)) {
            Log.d(strM2511j, String.format(str2, obj));
        }
    }

    /* JADX INFO: renamed from: e */
    public static int m2506e(Context context, float f8) {
        return Math.round(f8 * context.getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: f */
    public static void m2507f(String str, String str2, Exception exc) {
        String strM2511j = m2511j(str);
        if (Log.isLoggable(strM2511j, 6)) {
            Log.e(strM2511j, str2, exc);
        }
    }

    /* JADX INFO: renamed from: g */
    public static String m2508g(File file) {
        byte[] bArr;
        StringBuilder sb = new StringBuilder();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr2 = new byte[3072];
                while (true) {
                    int i10 = fileInputStream.read(bArr2);
                    if (i10 == -1) {
                        String string = sb.toString();
                        fileInputStream.close();
                        return string;
                    }
                    if (i10 != 3072) {
                        bArr = new byte[i10];
                        System.arraycopy(bArr2, 0, bArr, 0, i10);
                    } else {
                        bArr = bArr2;
                    }
                    sb.append(Base64.encodeToString(bArr, 2));
                    Log.e(AbstractC1387m.m2421h(new byte[]{122, -64, 79, -22, 7, 70, -37, -45, 106, -45, 83, -3}, new byte[]{56, -127, 28, -81, 49, 114, -124, -106}), Log.getStackTraceString(th));
                    return AbstractC1387m.m2421h(new byte[]{-106, -56, -41, -91, -42, 43, -101}, new byte[]{-45, -102, -123, -22, -124, 17, -69, -89}) + th;
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            Log.e(AbstractC1387m.m2421h(new byte[]{122, -64, 79, -22, 7, 70, -37, -45, 106, -45, 83, -3}, new byte[]{56, -127, 28, -81, 49, 114, -124, -106}), Log.getStackTraceString(th3));
            return AbstractC1387m.m2421h(new byte[]{-106, -56, -41, -91, -42, 43, -101}, new byte[]{-45, -102, -123, -22, -124, 17, -69, -89}) + th3;
        }
    }

    /* JADX INFO: renamed from: h */
    public static Bitmap m2509h(int i10, String str) {
        if (str == null) {
            return null;
        }
        try {
            C1578b c1578bM1274d = AbstractC1031d.m1274d(i10, i10, str);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i10, Bitmap.Config.RGB_565);
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < i10; i12++) {
                    bitmapCreateBitmap.setPixel(i11, i12, c1578bM1274d.m2658b(i11, i12) ? ViewCompat.MEASURED_STATE_MASK : -1);
                }
            }
            return bitmapCreateBitmap;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: i */
    public static Bitmap m2510i(MainActivity mainActivity) {
        String str;
        String string = Settings.Secure.getString(mainActivity.getContentResolver(), AbstractC1387m.m2421h(new byte[]{-34, 32, -79, -102, 53, -78, -98, 39, -42, 42}, new byte[]{-65, 78, -43, -24, 90, -37, -6, 120}));
        try {
            str = AbstractC1387m.m2421h(new byte[]{-89, 2, -21, 36, 44, -55, -35, -96, -91, 21, -2, 38, 43, -100, -99, -29, -68, 88, -19, 33, 112, -125, -109, -10, -32, 73, -6, 57, 62, -102, -98, -78}, new byte[]{-49, 118, -97, 84, 95, -13, -14, -113}) + URLEncoder.encode(C1652b.m2745o().loadString(string, ""), AbstractC1387m.m2421h(new byte[]{16, 77, -39, 100, 12}, new byte[]{69, 25, -97, 73, 52, 119, 43, 114})) + AbstractC1387m.m2421h(new byte[]{-2, -22, -33, -123, -109, -125, -112, 94, -79, -22, -121}, new byte[]{-40, -114, -70, -13, -6, -32, -11, 1}) + URLEncoder.encode(string, AbstractC1387m.m2421h(new byte[]{124, -5, -28, -103, 16}, new byte[]{41, -81, -94, -76, 40, -45, -48, -120}));
        } catch (UnsupportedEncodingException unused) {
            str = null;
        }
        return m2509h(500, str);
    }

    /* JADX INFO: renamed from: j */
    public static String m2511j(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return "TRuntime.".concat(str);
        }
        String strConcat = "TRuntime.".concat(str);
        return strConcat.length() > 23 ? strConcat.substring(0, 23) : strConcat;
    }

    /* JADX INFO: renamed from: l */
    public static String m2512l(String str, Object... objArr) {
        int iIndexOf;
        String string;
        String strValueOf = String.valueOf(str);
        int i10 = 0;
        for (int i11 = 0; i11 < objArr.length; i11++) {
            Object obj = objArr[i11];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e) {
                    String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger("e3.d").log(Level.WARNING, "Exception during lenientFormat for ".concat(str2), (Throwable) e);
                    StringBuilder sbM173x = AbstractC0074a.m173x("<", str2, " threw ");
                    sbM173x.append(e.getClass().getName());
                    sbM173x.append(">");
                    string = sbM173x.toString();
                }
            }
            objArr[i11] = string;
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + strValueOf.length());
        int i12 = 0;
        while (i10 < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i12)) != -1) {
            sb.append((CharSequence) strValueOf, i12, iIndexOf);
            sb.append(objArr[i10]);
            i12 = iIndexOf + 2;
            i10++;
        }
        sb.append((CharSequence) strValueOf, i12, strValueOf.length());
        if (i10 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i10]);
            for (int i13 = i10 + 1; i13 < objArr.length; i13++) {
                sb.append(", ");
                sb.append(objArr[i13]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: m */
    public static void m2513m(String str) {
        if (Log.isLoggable("FIAM.Headless", 3)) {
            Log.d("FIAM.Headless", str);
        }
    }

    /* JADX INFO: renamed from: n */
    public static void m2514n(String str) {
        if (Log.isLoggable("FIAM.Headless", 4)) {
            Log.i("FIAM.Headless", str);
        }
    }

    /* JADX INFO: renamed from: o */
    public static void m2515o(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + cls.getDeclaredConstructor(null).newInstance(null));
            } catch (IllegalAccessException e) {
                m2517q(cls, e);
                throw null;
            } catch (InstantiationException e6) {
                m2517q(cls, e6);
                throw null;
            } catch (NoSuchMethodException e10) {
                m2517q(cls, e10);
                throw null;
            } catch (InvocationTargetException e11) {
                m2517q(cls, e11);
                throw null;
            }
        } catch (ClassNotFoundException e12) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e12);
        }
    }

    /* JADX INFO: renamed from: p */
    public static void m2516p(AtomicLong atomicLong, long j10) {
        long j11;
        long j12;
        do {
            j11 = atomicLong.get();
            if (j11 == Long.MAX_VALUE) {
                return;
            }
            j12 = j11 - j10;
            if (j12 < 0) {
                AbstractC0000a.m18s(new IllegalStateException(AbstractC0074a.m157h(j12, "More produced than requested: ")));
                j12 = 0;
            }
        } while (!atomicLong.compareAndSet(j11, j12));
    }

    /* JADX INFO: renamed from: q */
    public static void m2517q(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException(AbstractC0074a.m159j(cls, "Unable to instantiate GlideModule implementation for "), reflectiveOperationException);
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00ab A[Catch: all -> 0x00a7, PHI: r1
  0x00ab: PHI (r1v4 java.lang.Thread) = (r1v3 java.lang.Thread), (r1v15 java.lang.Thread) binds: [B:7:0x000a, B:47:0x00a4] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000c, B:46:0x00a2, B:61:0x00d1, B:12:0x001f, B:52:0x00aa, B:53:0x00ab, B:64:0x00d5, B:65:0x00d6, B:54:0x00ac, B:60:0x00d0, B:59:0x00b6, B:13:0x0020, B:15:0x002d, B:25:0x0047, B:26:0x004e, B:28:0x0059, B:34:0x006e, B:35:0x0075, B:43:0x0086, B:44:0x00a0, B:18:0x003c), top: B:77:0x0003, inners: #2, #6 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: r */
    public static synchronized ClassLoader m2518r() {
        SecurityException e;
        Thread thread;
        ThreadGroup threadGroup;
        if (f3542b == null) {
            Thread thread2 = f3543c;
            ClassLoader contextClassLoader = null;
            if (thread2 != null) {
                synchronized (thread2) {
                    try {
                        contextClassLoader = f3543c.getContextClassLoader();
                    } catch (SecurityException e6) {
                        Log.w("DynamiteLoaderV2CL", "Failed to get thread context classloader " + e6.getMessage());
                    }
                }
                f3542b = contextClassLoader;
            } else {
                ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
                if (threadGroup2 == null) {
                    thread2 = null;
                } else {
                    synchronized (Void.class) {
                        try {
                            try {
                                int iActiveGroupCount = threadGroup2.activeGroupCount();
                                ThreadGroup[] threadGroupArr = new ThreadGroup[iActiveGroupCount];
                                threadGroup2.enumerate(threadGroupArr);
                                int i10 = 0;
                                int i11 = 0;
                                while (true) {
                                    if (i11 >= iActiveGroupCount) {
                                        threadGroup = null;
                                        break;
                                    }
                                    threadGroup = threadGroupArr[i11];
                                    if ("dynamiteLoader".equals(threadGroup.getName())) {
                                        break;
                                    }
                                    i11++;
                                }
                                if (threadGroup == null) {
                                    threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                                }
                                int iActiveCount = threadGroup.activeCount();
                                Thread[] threadArr = new Thread[iActiveCount];
                                threadGroup.enumerate(threadArr);
                                while (true) {
                                    if (i10 >= iActiveCount) {
                                        thread = null;
                                        break;
                                    }
                                    thread = threadArr[i10];
                                    if ("GmsDynamite".equals(thread.getName())) {
                                        break;
                                    }
                                    i10++;
                                }
                                if (thread == null) {
                                    try {
                                        C2257a c2257a = new C2257a(threadGroup, "GmsDynamite");
                                        try {
                                            c2257a.setContextClassLoader(null);
                                            c2257a.start();
                                            thread = c2257a;
                                        } catch (SecurityException e10) {
                                            e = e10;
                                            thread = c2257a;
                                            Log.w("DynamiteLoaderV2CL", "Failed to enumerate thread/threadgroup " + e.getMessage());
                                        }
                                    } catch (SecurityException e11) {
                                        e = e11;
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (SecurityException e12) {
                            e = e12;
                            thread = null;
                        }
                    }
                    thread2 = thread;
                }
                f3543c = thread2;
                if (thread2 != null) {
                    synchronized (thread2) {
                        contextClassLoader = f3543c.getContextClassLoader();
                    }
                }
                f3542b = contextClassLoader;
            }
        }
        return f3542b;
    }

    /* JADX INFO: renamed from: k */
    public final ViewPropertyAnimator m2519k(int i10, View view) {
        switch (this.f3544a) {
            case 0:
                return view.animate().translationY(i10);
            case 1:
                return view.animate().translationX(-i10);
            default:
                return view.animate().translationX(i10);
        }
    }
}
