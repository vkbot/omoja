package e3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.os.Build$VERSION;
import android.os.Looper;
import android.provider.Settings$Secure;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.ViewCompat;
import com.example.navistart.MainActivity;
import e0.m;
import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static ClassLoader f2032b;
    public static Thread c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2033a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(int i9) {
        this.f2033a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long a(AtomicLong atomicLong, long j9) {
        long j10;
        do {
            j10 = atomicLong.get();
            if (j10 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j10, b(j10, j9)));
        return j10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long b(long j9, long j10) {
        long j11 = j9 + j10;
        if (j11 < 0) {
            return Long.MAX_VALUE;
        }
        return j11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        n0.b.n(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(Object obj, String str, String str2) {
        String strJ = j(str);
        if (Log.isLoggable(strJ, 3)) {
            Log.d(strJ, String.format(str2, obj));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int e(Context context, float f8) {
        return Math.round(f8 * context.getResources().getDisplayMetrics().density);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(String str, String str2, Exception exc) {
        String strJ = j(str);
        if (Log.isLoggable(strJ, 6)) {
            Log.e(strJ, str2, exc);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String g(File file) {
        byte[] bArr;
        StringBuilder sb = new StringBuilder();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr2 = new byte[3072];
                while (true) {
                    int i9 = fileInputStream.read(bArr2);
                    if (i9 == -1) {
                        String string = sb.toString();
                        fileInputStream.close();
                        return string;
                    }
                    if (i9 != 3072) {
                        bArr = new byte[i9];
                        System.arraycopy(bArr2, 0, bArr, 0, i9);
                    } else {
                        bArr = bArr2;
                    }
                    sb.append(Base64.encodeToString(bArr, 2));
                    Log.e(m.h(new byte[]{122, -64, 79, -22, 7, 70, -37, -45, 106, -45, 83, -3}, new byte[]{56, -127, 28, -81, 49, 114, -124, -106}), Log.getStackTraceString(th));
                    return m.h(new byte[]{-106, -56, -41, -91, -42, 43, -101}, new byte[]{-45, -102, -123, -22, -124, 17, -69, -89}) + th;
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
            Log.e(m.h(new byte[]{122, -64, 79, -22, 7, 70, -37, -45, 106, -45, 83, -3}, new byte[]{56, -127, 28, -81, 49, 114, -124, -106}), Log.getStackTraceString(th3));
            return m.h(new byte[]{-106, -56, -41, -91, -42, 43, -101}, new byte[]{-45, -102, -123, -22, -124, 17, -69, -89}) + th3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Bitmap h(int i9, String str) {
        if (str == null) {
            return null;
        }
        try {
            f6.b bVarD = com.bumptech.glide.d.d(i9, i9, str);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i9, i9, Bitmap$Config.RGB_565);
            for (int i10 = 0; i10 < i9; i10++) {
                for (int i11 = 0; i11 < i9; i11++) {
                    bitmapCreateBitmap.setPixel(i10, i11, bVarD.b(i10, i11) ? ViewCompat.MEASURED_STATE_MASK : -1);
                }
            }
            return bitmapCreateBitmap;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Bitmap i(MainActivity mainActivity) {
        String str;
        String string = Settings$Secure.getString(mainActivity.getContentResolver(), m.h(new byte[]{-34, 32, -79, -102, 53, -78, -98, 39, -42, 42}, new byte[]{-65, 78, -43, -24, 90, -37, -6, 120}));
        try {
            str = m.h(new byte[]{-89, 2, -21, 36, 44, -55, -35, -96, -91, 21, -2, 38, 43, -100, -99, -29, -68, 88, -19, 33, 112, -125, -109, -10, -32, 73, -6, 57, 62, -102, -98, -78}, new byte[]{-49, 118, -97, 84, 95, -13, -14, -113}) + URLEncoder.encode(h0.b.o().loadString(string, ""), m.h(new byte[]{16, 77, -39, 100, 12}, new byte[]{69, 25, -97, 73, 52, 119, 43, 114})) + m.h(new byte[]{-2, -22, -33, -123, -109, -125, -112, 94, -79, -22, -121}, new byte[]{-40, -114, -70, -13, -6, -32, -11, 1}) + URLEncoder.encode(string, m.h(new byte[]{124, -5, -28, -103, 16}, new byte[]{41, -81, -94, -76, 40, -45, -48, -120}));
        } catch (UnsupportedEncodingException unused) {
            str = null;
        }
        return h(500, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String j(String str) {
        if (Build$VERSION.SDK_INT >= 26) {
            return "TRuntime.".concat(str);
        }
        String strConcat = "TRuntime.".concat(str);
        return strConcat.length() > 23 ? strConcat.substring(0, 23) : strConcat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String l(String str, Object... objArr) {
        int iIndexOf;
        String string;
        String strValueOf = String.valueOf(str);
        int i9 = 0;
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e) {
                    String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger("e3.d").log(Level.WARNING, "Exception during lenientFormat for ".concat(str2), (Throwable) e);
                    StringBuilder sbX = ai.onnxruntime.a.x("<", str2, " threw ");
                    sbX.append(e.getClass().getName());
                    sbX.append(">");
                    string = sbX.toString();
                }
            }
            objArr[i10] = string;
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + strValueOf.length());
        int i11 = 0;
        while (i9 < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i11)) != -1) {
            sb.append((CharSequence) strValueOf, i11, iIndexOf);
            sb.append(objArr[i9]);
            i11 = iIndexOf + 2;
            i9++;
        }
        sb.append((CharSequence) strValueOf, i11, strValueOf.length());
        if (i9 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i9]);
            for (int i12 = i9 + 1; i12 < objArr.length; i12++) {
                sb.append(", ");
                sb.append(objArr[i12]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void m(String str) {
        if (Log.isLoggable("FIAM.Headless", 3)) {
            Log.d("FIAM.Headless", str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void n(String str) {
        if (Log.isLoggable("FIAM.Headless", 4)) {
            Log.i("FIAM.Headless", str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void o(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + cls.getDeclaredConstructor(null).newInstance(null));
            } catch (IllegalAccessException e) {
                q(cls, e);
                throw null;
            } catch (InstantiationException e6) {
                q(cls, e6);
                throw null;
            } catch (NoSuchMethodException e9) {
                q(cls, e9);
                throw null;
            } catch (InvocationTargetException e10) {
                q(cls, e10);
                throw null;
            }
        } catch (ClassNotFoundException e11) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e11);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void p(AtomicLong atomicLong, long j9) {
        long j10;
        long j11;
        do {
            j10 = atomicLong.get();
            if (j10 == Long.MAX_VALUE) {
                return;
            }
            j11 = j10 - j9;
            if (j11 < 0) {
                a.a.s(new IllegalStateException(ai.onnxruntime.a.h(j11, "More produced than requested: ")));
                j11 = 0;
            }
        } while (!atomicLong.compareAndSet(j10, j11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void q(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException(ai.onnxruntime.a.j(cls, "Unable to instantiate GlideModule implementation for "), reflectiveOperationException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:53:0x00ab A[Catch: all -> 0x00a7, PHI: r1
  0x00ab: PHI (r1v4 java.lang.Thread) = (r1v3 java.lang.Thread), (r1v15 java.lang.Thread) binds: [B:7:0x000a, B:47:0x00a4] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000c, B:46:0x00a2, B:61:0x00d1, B:12:0x001f, B:52:0x00aa, B:53:0x00ab, B:64:0x00d5, B:65:0x00d6, B:54:0x00ac, B:60:0x00d0, B:59:0x00b6, B:13:0x0020, B:15:0x002d, B:25:0x0047, B:26:0x004e, B:28:0x0059, B:34:0x006e, B:35:0x0075, B:43:0x0086, B:44:0x00a0, B:18:0x003c), top: B:77:0x0003, inners: #2, #6 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static synchronized ClassLoader r() {
        SecurityException e;
        Thread thread;
        ThreadGroup threadGroup;
        if (f2032b == null) {
            Thread thread2 = c;
            ClassLoader contextClassLoader = null;
            if (thread2 != null) {
                synchronized (thread2) {
                    try {
                        contextClassLoader = c.getContextClassLoader();
                    } catch (SecurityException e6) {
                        Log.w("DynamiteLoaderV2CL", "Failed to get thread context classloader " + e6.getMessage());
                    }
                }
                f2032b = contextClassLoader;
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
                                int i9 = 0;
                                int i10 = 0;
                                while (true) {
                                    if (i10 >= iActiveGroupCount) {
                                        threadGroup = null;
                                        break;
                                    }
                                    threadGroup = threadGroupArr[i10];
                                    if ("dynamiteLoader".equals(threadGroup.getName())) {
                                        break;
                                    }
                                    i10++;
                                }
                                if (threadGroup == null) {
                                    threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                                }
                                int iActiveCount = threadGroup.activeCount();
                                Thread[] threadArr = new Thread[iActiveCount];
                                threadGroup.enumerate(threadArr);
                                while (true) {
                                    if (i9 >= iActiveCount) {
                                        thread = null;
                                        break;
                                    }
                                    thread = threadArr[i9];
                                    if ("GmsDynamite".equals(thread.getName())) {
                                        break;
                                    }
                                    i9++;
                                }
                                if (thread == null) {
                                    try {
                                        m.a aVar = new m.a(threadGroup, "GmsDynamite");
                                        try {
                                            aVar.setContextClassLoader(null);
                                            aVar.start();
                                            thread = aVar;
                                        } catch (SecurityException e9) {
                                            e = e9;
                                            thread = aVar;
                                            Log.w("DynamiteLoaderV2CL", "Failed to enumerate thread/threadgroup " + e.getMessage());
                                        }
                                    } catch (SecurityException e10) {
                                        e = e10;
                                    }
                                }
                            } catch (SecurityException e11) {
                                e = e11;
                                thread = null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    thread2 = thread;
                }
                c = thread2;
                if (thread2 != null) {
                    synchronized (thread2) {
                        contextClassLoader = c.getContextClassLoader();
                    }
                }
                f2032b = contextClassLoader;
            }
        }
        return f2032b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ViewPropertyAnimator k(int i9, View view) {
        switch (this.f2033a) {
            case 0:
                return view.animate().translationY(i9);
            case 1:
                return view.animate().translationX(-i9);
            default:
                return view.animate().translationX(i9);
        }
    }
}
