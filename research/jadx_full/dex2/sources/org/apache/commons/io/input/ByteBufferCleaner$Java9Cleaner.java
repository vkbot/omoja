package org.apache.commons.io.input;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class ByteBufferCleaner$Java9Cleaner implements ByteBufferCleaner$Cleaner {
    private final Method invokeCleaner;
    private final Object theUnsafe;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ByteBufferCleaner$Java9Cleaner() throws NoSuchFieldException, ClassNotFoundException {
        Class<?> cls = Class.forName("sun.misc.Unsafe");
        Field declaredField = cls.getDeclaredField("theUnsafe");
        declaredField.setAccessible(true);
        this.theUnsafe = declaredField.get(null);
        this.invokeCleaner = cls.getMethod("invokeCleaner", ByteBuffer.class);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ByteBufferCleaner$Cleaner
    public void clean(ByteBuffer byteBuffer) throws IllegalAccessException, InvocationTargetException {
        this.invokeCleaner.invoke(this.theUnsafe, byteBuffer);
    }

    public /* synthetic */ ByteBufferCleaner$Java9Cleaner(ByteBufferCleaner$1 byteBufferCleaner$1) {
        this();
    }
}
