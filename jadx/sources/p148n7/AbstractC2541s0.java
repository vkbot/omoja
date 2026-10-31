package p148n7;

import ai.onnxruntime.AbstractC0074a;
import java.util.BitSet;
import java.util.Locale;
import java.util.logging.Level;
import p050e3.C1461d;
import p091i4.AbstractC1744b;
import p099j1.C1929i;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.s0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2541s0 {

    /* JADX INFO: renamed from: d */
    public static final BitSet f7020d;

    /* JADX INFO: renamed from: a */
    public final String f7021a;

    /* JADX INFO: renamed from: b */
    public final byte[] f7022b;

    /* JADX INFO: renamed from: c */
    public final Object f7023c;

    static {
        BitSet bitSet = new BitSet(127);
        bitSet.set(45);
        bitSet.set(95);
        bitSet.set(46);
        for (char c = '0'; c <= '9'; c = (char) (c + 1)) {
            bitSet.set(c);
        }
        for (char c10 = 'a'; c10 <= 'z'; c10 = (char) (c10 + 1)) {
            bitSet.set(c10);
        }
        f7020d = bitSet;
    }

    public AbstractC2541s0(String str, boolean z9, Object obj) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        AbstractC2587b.m4042i(lowerCase, "name");
        AbstractC2587b.m4037d("token must have at least 1 tchar", !lowerCase.isEmpty());
        if (lowerCase.equals("connection")) {
            C2547v0.f7037c.log(Level.WARNING, "Metadata key is 'Connection', which should not be used. That is used by HTTP/1 for connection-specific headers which are not to be forwarded. There is probably an HTTP/1 conversion bug. Simply removing the Connection header is not enough; you should remove all headers it references as well. See RFC 7230 section 6.1", (Throwable) new RuntimeException("exception to show backtrace"));
        }
        for (int i10 = 0; i10 < lowerCase.length(); i10++) {
            char cCharAt = lowerCase.charAt(i10);
            if ((!z9 || cCharAt != ':' || i10 != 0) && !f7020d.get(cCharAt)) {
                C1929i.m3029k(C1461d.m2512l("Invalid character '%s' in key name '%s'", Character.valueOf(cCharAt), lowerCase));
                throw null;
            }
        }
        this.f7021a = lowerCase;
        this.f7022b = lowerCase.getBytes(AbstractC1744b.f4558a);
        this.f7023c = obj;
    }

    /* JADX INFO: renamed from: a */
    public abstract Object mo3967a(byte[] bArr);

    /* JADX INFO: renamed from: b */
    public abstract byte[] mo3968b(Object obj);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f7021a.equals(((AbstractC2541s0) obj).f7021a);
    }

    public final int hashCode() {
        return this.f7021a.hashCode();
    }

    public final String toString() {
        return AbstractC0074a.m165p(new StringBuilder("Key{name='"), this.f7021a, "'}");
    }
}
