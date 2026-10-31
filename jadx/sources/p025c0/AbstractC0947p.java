package p025c0;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Collection;
import p099j1.C1929i;

/* JADX INFO: renamed from: c0.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0947p {

    /* JADX INFO: renamed from: a */
    public static final char[] f810a = "0123456789abcdef".toCharArray();

    /* JADX INFO: renamed from: b */
    public static final char[] f811b = new char[64];

    /* JADX INFO: renamed from: c */
    public static volatile Handler f812c;

    /* JADX INFO: renamed from: a */
    public static void m1084a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        C1929i.m3029k("You must call this method on the main thread");
    }

    /* JADX INFO: renamed from: b */
    public static boolean m1085b(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    /* JADX INFO: renamed from: c */
    public static int m1086c(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        }
        StringBuilder sb = new StringBuilder("Cannot obtain size for recycled Bitmap: ");
        sb.append(bitmap);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap.Config config = bitmap.getConfig();
        sb.append("[");
        sb.append(width);
        sb.append("x");
        sb.append(height);
        sb.append("] ");
        sb.append(config);
        throw new IllegalStateException(sb.toString());
    }

    /* JADX INFO: renamed from: d */
    public static int m1087d(Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i10 = AbstractC0946o.f809a[config.ordinal()];
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2 && i10 != 3) {
                return i10 != 4 ? 4 : 8;
            }
        }
        return i11;
    }

    /* JADX INFO: renamed from: e */
    public static ArrayList m1088e(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (Object obj : collection) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: f */
    public static Handler m1089f() {
        if (f812c == null) {
            synchronized (AbstractC0947p.class) {
                try {
                    if (f812c == null) {
                        f812c = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f812c;
    }

    /* JADX INFO: renamed from: g */
    public static int m1090g(int i10, int i11) {
        return (i11 * 31) + i10;
    }

    /* JADX INFO: renamed from: h */
    public static int m1091h(int i10, Object obj) {
        return m1090g(obj == null ? 0 : obj.hashCode(), i10);
    }

    /* JADX INFO: renamed from: i */
    public static boolean m1092i(int i10, int i11) {
        if (i10 > 0 || i10 == Integer.MIN_VALUE) {
            return i11 > 0 || i11 == Integer.MIN_VALUE;
        }
        return false;
    }
}
