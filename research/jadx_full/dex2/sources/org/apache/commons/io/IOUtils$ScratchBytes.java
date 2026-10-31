package org.apache.commons.io;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class IOUtils$ScratchBytes implements AutoCloseable {
    private final byte[] buffer;
    private static final ThreadLocal<Object[]> LOCAL = new x(new w(0), 0);
    private static final IOUtils$ScratchBytes INSTANCE = new IOUtils$ScratchBytes(null);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private IOUtils$ScratchBytes(byte[] bArr) {
        this.buffer = bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ThreadLocal access$100() {
        return LOCAL;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Object[] b() {
        return lambda$static$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static IOUtils$ScratchBytes get() {
        Object[] objArr = LOCAL.get();
        if (((Boolean) objArr[0]).booleanValue()) {
            return new IOUtils$ScratchBytes(IOUtils.byteArray());
        }
        objArr[0] = Boolean.TRUE;
        return INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Object[] lambda$static$0() {
        return new Object[]{Boolean.FALSE, IOUtils.byteArray()};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] array() {
        byte[] bArr = this.buffer;
        return bArr != null ? bArr : (byte[]) LOCAL.get()[1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.buffer == null) {
            Object[] objArr = LOCAL.get();
            Arrays.fill((byte[]) objArr[1], (byte) 0);
            objArr[0] = Boolean.FALSE;
        }
    }
}
