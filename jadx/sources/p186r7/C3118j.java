package p186r7;

import java.io.IOException;
import java.util.Locale;
import java.util.logging.Logger;
import kotlin.UByte;
import p130l9.C2222a0;
import p130l9.C2245o;
import p232w7.C3537c;

/* JADX INFO: renamed from: r7.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3118j {

    /* JADX INFO: renamed from: a */
    public static final Logger f8928a = Logger.getLogger(AbstractC3115g.class.getName());

    /* JADX INFO: renamed from: b */
    public static final C2245o f8929b;

    static {
        C2245o c2245o = C2245o.f5879e;
        f8929b = C3537c.m5648k("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    }

    /* JADX INFO: renamed from: a */
    public static int m4967a(C2222a0 c2222a0) {
        return (c2222a0.readByte() & UByte.MAX_VALUE) | ((c2222a0.readByte() & UByte.MAX_VALUE) << 16) | ((c2222a0.readByte() & UByte.MAX_VALUE) << 8);
    }

    /* JADX INFO: renamed from: b */
    public static int m4968b(int i10, byte b10, short s5) {
        if ((b10 & 8) != 0) {
            i10--;
        }
        if (s5 <= i10) {
            return (short) (i10 - s5);
        }
        m4969c("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s5), Integer.valueOf(i10));
        throw null;
    }

    /* JADX INFO: renamed from: c */
    public static void m4969c(String str, Object... objArr) {
        throw new IOException(String.format(Locale.US, str, objArr));
    }
}
