package ai.onnxruntime;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import kotlin.ULong;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import p130l9.C2237i;

/* JADX INFO: renamed from: ai.onnxruntime.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0074a {
    /* JADX INFO: renamed from: A */
    public static /* synthetic */ void m146A(AutoCloseable autoCloseable) throws Exception {
        boolean zIsTerminated;
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
            return;
        }
        if (!(autoCloseable instanceof ExecutorService)) {
            if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
                return;
            }
            if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
                return;
            } else if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
                return;
            } else {
                C2237i.m3594a();
                return;
            }
        }
        ExecutorService executorService = (ExecutorService) autoCloseable;
        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
            return;
        }
        executorService.shutdown();
        boolean z9 = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z9) {
                    executorService.shutdownNow();
                    z9 = true;
                }
            }
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: renamed from: B */
    public static void m147B(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
    }

    /* JADX INFO: renamed from: C */
    public static String m148C(String str, String str2) {
        return str + str2;
    }

    /* JADX INFO: renamed from: D */
    public static String m149D(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    /* JADX INFO: renamed from: a */
    public static double m150a(double d, double d10, double d11) {
        return (Math.sin(d) * d10) + d11;
    }

    /* JADX INFO: renamed from: b */
    public static float m151b(float f8, float f10, float f11, float f12) {
        return ((f8 - f10) * f11) + f12;
    }

    /* JADX INFO: renamed from: c */
    public static long m152c(long j10, long j11) {
        return ULong.m6262constructorimpl(ULong.m6262constructorimpl(j10) * j11);
    }

    /* JADX INFO: renamed from: d */
    public static Object m153d(Bundle bundle, String str, String str2) {
        bundle.getClass();
        str.getClass();
        return bundle.get(str2);
    }

    /* JADX INFO: renamed from: e */
    public static String m154e(int i10, String str) {
        return str + i10;
    }

    /* JADX INFO: renamed from: f */
    public static String m155f(int i10, String str, String str2) {
        return str + i10 + str2;
    }

    /* JADX INFO: renamed from: g */
    public static String m156g(int i10, String str, String str2, int i11) {
        return str + i10 + str2 + i11;
    }

    /* JADX INFO: renamed from: h */
    public static String m157h(long j10, String str) {
        return str + j10;
    }

    /* JADX INFO: renamed from: i */
    public static String m158i(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    /* JADX INFO: renamed from: j */
    public static String m159j(Class cls, String str) {
        return str + cls;
    }

    /* JADX INFO: renamed from: k */
    public static String m160k(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    /* JADX INFO: renamed from: l */
    public static String m161l(String str, String str2) {
        return str + str2;
    }

    /* JADX INFO: renamed from: m */
    public static String m162m(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    /* JADX INFO: renamed from: n */
    public static String m163n(StringBuilder sb, long j10, String str) {
        sb.append(j10);
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: renamed from: o */
    public static String m164o(StringBuilder sb, String str, int i10) {
        sb.append(i10);
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: renamed from: p */
    public static String m165p(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* JADX INFO: renamed from: q */
    public static StringBuilder m166q(int i10, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i10);
        sb.append(str2);
        return sb;
    }

    /* JADX INFO: renamed from: r */
    public static StringBuilder m167r(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, CharSequence charSequence5) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        charSequence4.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence5);
        return sb;
    }

    /* JADX INFO: renamed from: s */
    public static StringBuilder m168s(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Function2 function2) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        charSequence4.getClass();
        function2.getClass();
        return new StringBuilder();
    }

    /* JADX INFO: renamed from: t */
    public static StringBuilder m169t(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Function2 function2, CharSequence charSequence4) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        function2.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence4);
        return sb;
    }

    /* JADX INFO: renamed from: u */
    public static StringBuilder m170u(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    /* JADX INFO: renamed from: v */
    public static StringBuilder m171v(String str, int i10, int i11, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i10);
        sb.append(str2);
        sb.append(i11);
        sb.append(str3);
        return sb;
    }

    /* JADX INFO: renamed from: w */
    public static StringBuilder m172w(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    /* JADX INFO: renamed from: x */
    public static StringBuilder m173x(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    /* JADX INFO: renamed from: y */
    public static void m174y(int i10, int i11, int i12, Canvas canvas) {
        InlineMarker.finallyStart(i10);
        canvas.restoreToCount(i11);
        InlineMarker.finallyEnd(i12);
    }

    /* JADX INFO: renamed from: z */
    public static void m175z(int i10, int i11, Function1 function1) {
        function1.invoke(Integer.valueOf(i10 + i11));
    }
}
