package org.apache.commons.io;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class IOUtils$ScratchChars implements AutoCloseable {
    private final char[] buffer;
    private static final ThreadLocal<Object[]> LOCAL = new x(new w(1), 1);
    private static final IOUtils$ScratchChars INSTANCE = new IOUtils$ScratchChars(null);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private IOUtils$ScratchChars(char[] cArr) {
        this.buffer = cArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ThreadLocal access$200() {
        return LOCAL;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Object[] b() {
        return lambda$static$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static IOUtils$ScratchChars get() {
        Object[] objArr = LOCAL.get();
        if (((Boolean) objArr[0]).booleanValue()) {
            return new IOUtils$ScratchChars(IOUtils.access$000());
        }
        objArr[0] = Boolean.TRUE;
        return INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Object[] lambda$static$0() {
        return new Object[]{Boolean.FALSE, IOUtils.access$000()};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public char[] array() {
        char[] cArr = this.buffer;
        return cArr != null ? cArr : (char[]) LOCAL.get()[1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.buffer == null) {
            Object[] objArr = LOCAL.get();
            Arrays.fill((char[]) objArr[1], (char) 0);
            objArr[0] = Boolean.FALSE;
        }
    }
}
