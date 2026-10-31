package r7;

import java.io.IOException;
import java.util.Locale;
import java.util.logging.Logger;
import kotlin.UByte;
import l9.a0;
import l9.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f5025a = Logger.getLogger(g.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o f5026b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        o oVar = o.e;
        f5026b = w7.c.k("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(a0 a0Var) {
        return (a0Var.readByte() & UByte.MAX_VALUE) | ((a0Var.readByte() & UByte.MAX_VALUE) << 16) | ((a0Var.readByte() & UByte.MAX_VALUE) << 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(int i9, byte b9, short s5) throws IOException {
        if ((b9 & 8) != 0) {
            i9--;
        }
        if (s5 <= i9) {
            return (short) (i9 - s5);
        }
        c("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s5), Integer.valueOf(i9));
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(Locale.US, str, objArr));
    }
}
