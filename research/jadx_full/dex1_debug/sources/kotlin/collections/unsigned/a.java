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
import l9.i;
import y0.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class a {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean a(int i9) {
        if (i9 == 1 || i9 == 2 || i9 == 3) {
            return false;
        }
        if (i9 == 4 || i9 == 5) {
            return true;
        }
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(CharSequence charSequence, Function1 function1) {
        charSequence.getClass();
        function1.getClass();
        return charSequence.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object c(CharSequence charSequence, int i9, Function1 function1) {
        return function1.invoke(Character.valueOf(charSequence.charAt(i9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object d(byte[] bArr, int i9, Function1 function1) {
        return function1.invoke(UByte.m107boximpl(UByteArray.m171getw2LRezQ(bArr, i9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object e(int[] iArr, int i9, Function1 function1) {
        return function1.invoke(UInt.m184boximpl(UIntArray.m250getpVg5ArA(iArr, i9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Iterator f(Sequence sequence, Function1 function1) {
        sequence.getClass();
        function1.getClass();
        return sequence.iterator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type: y0.d */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void g(d dVar) throws Exception {
        boolean zIsTerminated;
        if (dVar instanceof AutoCloseable) {
            dVar.close();
            return;
        }
        if (!(dVar instanceof ExecutorService)) {
            i.a();
            return;
        }
        ExecutorService executorService = (ExecutorService) dVar;
        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
            return;
        }
        executorService.shutdown();
        boolean z8 = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z8) {
                    executorService.shutdownNow();
                    z8 = true;
                }
            }
        }
        if (z8) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String h(int i9) {
        if (i9 != 1) {
            return i9 != 2 ? "null" : "PLAINTEXT";
        }
        return "TLS";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String i(int i9) {
        if (i9 != 1) {
            return i9 != 2 ? "null" : "OUTBOUND";
        }
        return "INBOUND";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String j(int i9) {
        switch (i9) {
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
