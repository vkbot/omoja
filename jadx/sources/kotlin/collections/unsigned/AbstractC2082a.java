package kotlin.collections.unsigned;

import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;
import org.apache.commons.net.imap.IMAPSClient;
import p130l9.C2237i;
import p245y0.C3626d;

/* JADX INFO: renamed from: kotlin.collections.unsigned.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2082a {
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ boolean m3235a(int i10) {
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return false;
        }
        if (i10 == 4 || i10 == 5) {
            return true;
        }
        throw null;
    }

    /* JADX INFO: renamed from: b */
    public static int m3236b(CharSequence charSequence, Function1 function1) {
        charSequence.getClass();
        function1.getClass();
        return charSequence.length();
    }

    /* JADX INFO: renamed from: c */
    public static Object m3237c(CharSequence charSequence, int i10, Function1 function1) {
        return function1.invoke(Character.valueOf(charSequence.charAt(i10)));
    }

    /* JADX INFO: renamed from: d */
    public static Object m3238d(byte[] bArr, int i10, Function1 function1) {
        return function1.invoke(UByte.m6100boximpl(UByteArray.m6164getw2LRezQ(bArr, i10)));
    }

    /* JADX INFO: renamed from: e */
    public static Object m3239e(int[] iArr, int i10, Function1 function1) {
        return function1.invoke(UInt.m6177boximpl(UIntArray.m6243getpVg5ArA(iArr, i10)));
    }

    /* JADX INFO: renamed from: f */
    public static Iterator m3240f(Sequence sequence, Function1 function1) {
        sequence.getClass();
        function1.getClass();
        return sequence.iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m3241g(C3626d c3626d) throws Exception {
        boolean zIsTerminated;
        if (c3626d instanceof AutoCloseable) {
            c3626d.close();
            return;
        }
        if (!(c3626d instanceof ExecutorService)) {
            C2237i.m3594a();
            return;
        }
        ExecutorService executorService = (ExecutorService) c3626d;
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

    /* JADX INFO: renamed from: h */
    public static /* synthetic */ String m3242h(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? "null" : "PLAINTEXT";
        }
        return IMAPSClient.DEFAULT_PROTOCOL;
    }

    /* JADX INFO: renamed from: i */
    public static /* synthetic */ String m3243i(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? "null" : "OUTBOUND";
        }
        return "INBOUND";
    }

    /* JADX INFO: renamed from: j */
    public static /* synthetic */ String m3244j(int i10) {
        switch (i10) {
            case 1:
                return "BEGIN_ARRAY";
            case 2:
                return "END_ARRAY";
            case 3:
                return "BEGIN_OBJECT";
            case 4:
                return "END_OBJECT";
            case 5:
                return "NAME";
            case 6:
                return "STRING";
            case 7:
                return "NUMBER";
            case 8:
                return "BOOLEAN";
            case 9:
                return "NULL";
            case 10:
                return "END_DOCUMENT";
            default:
                return "null";
        }
    }
}
