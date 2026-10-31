package n7;

import java.util.BitSet;
import java.util.Locale;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class s0 {
    public static final BitSet d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f3971b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        BitSet bitSet = new BitSet(127);
        bitSet.set(45);
        bitSet.set(95);
        bitSet.set(46);
        for (char c = '0'; c <= '9'; c = (char) (c + 1)) {
            bitSet.set(c);
        }
        for (char c9 = 'a'; c9 <= 'z'; c9 = (char) (c9 + 1)) {
            bitSet.set(c9);
        }
        d = bitSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s0(String str, boolean z8, Object obj) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        o4.b.i(lowerCase, "name");
        o4.b.d("token must have at least 1 tchar", !lowerCase.isEmpty());
        if (lowerCase.equals("connection")) {
            v0.c.log(Level.WARNING, "Metadata key is 'Connection', which should not be used. That is used by HTTP/1 for connection-specific headers which are not to be forwarded. There is probably an HTTP/1 conversion bug. Simply removing the Connection header is not enough; you should remove all headers it references as well. See RFC 7230 section 6.1", (Throwable) new RuntimeException("exception to show backtrace"));
        }
        for (int i9 = 0; i9 < lowerCase.length(); i9++) {
            char cCharAt = lowerCase.charAt(i9);
            if ((!z8 || cCharAt != ':' || i9 != 0) && !d.get(cCharAt)) {
                j1.i.k(e3.d.l("Invalid character '%s' in key name '%s'", Character.valueOf(cCharAt), lowerCase));
                throw null;
            }
        }
        this.f3970a = lowerCase;
        this.f3971b = lowerCase.getBytes(i4.b.f2657a);
        this.c = obj;
    }

    public abstract Object a(byte[] bArr);

    public abstract byte[] b(Object obj);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f3970a.equals(((s0) obj).f3970a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f3970a.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return ai.onnxruntime.a.p(new StringBuilder("Key{name='"), this.f3970a, "'}");
    }
}
