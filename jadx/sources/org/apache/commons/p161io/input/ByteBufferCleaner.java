package org.apache.commons.p161io.input;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class ByteBufferCleaner {
    private static final Cleaner INSTANCE = getCleaner();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface Cleaner {
        void clean(ByteBuffer byteBuffer);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class Java8Cleaner implements Cleaner {
        private final Method cleanMethod;
        private final Method cleanerMethod;

        private Java8Cleaner() {
            this.cleanMethod = Class.forName("sun.misc.Cleaner").getMethod("clean", null);
            this.cleanerMethod = Class.forName("sun.nio.ch.DirectBuffer").getMethod("cleaner", null);
        }

        @Override // org.apache.commons.io.input.ByteBufferCleaner.Cleaner
        public void clean(ByteBuffer byteBuffer) throws IllegalAccessException, InvocationTargetException {
            Object objInvoke = this.cleanerMethod.invoke(byteBuffer, null);
            if (objInvoke != null) {
                this.cleanMethod.invoke(objInvoke, null);
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class Java9Cleaner implements Cleaner {
        private final Method invokeCleaner;
        private final Object theUnsafe;

        private Java9Cleaner() throws NoSuchFieldException, ClassNotFoundException {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            this.theUnsafe = declaredField.get(null);
            this.invokeCleaner = cls.getMethod("invokeCleaner", ByteBuffer.class);
        }

        @Override // org.apache.commons.io.input.ByteBufferCleaner.Cleaner
        public void clean(ByteBuffer byteBuffer) throws IllegalAccessException, InvocationTargetException {
            this.invokeCleaner.invoke(this.theUnsafe, byteBuffer);
        }
    }

    public static void clean(ByteBuffer byteBuffer) {
        try {
            INSTANCE.clean(byteBuffer);
        } catch (Exception e) {
            throw new IllegalStateException("Failed to clean direct buffer.", e);
        }
    }

    private static Cleaner getCleaner() {
        try {
            return new Java8Cleaner();
        } catch (Exception e) {
            try {
                return new Java9Cleaner();
            } catch (Exception unused) {
                throw new IllegalStateException("Failed to initialize a Cleaner.", e);
            }
        }
    }

    public static boolean isSupported() {
        return INSTANCE != null;
    }
}
