package org.apache.commons.io.input;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class ByteBufferCleaner$Java8Cleaner implements ByteBufferCleaner$Cleaner {
    private final Method cleanMethod;
    private final Method cleanerMethod;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ByteBufferCleaner$Java8Cleaner() {
        this.cleanMethod = Class.forName("sun.misc.Cleaner").getMethod("clean", null);
        this.cleanerMethod = Class.forName("sun.nio.ch.DirectBuffer").getMethod("cleaner", null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ByteBufferCleaner$Cleaner
    public void clean(ByteBuffer byteBuffer) throws IllegalAccessException, InvocationTargetException {
        Object objInvoke = this.cleanerMethod.invoke(byteBuffer, null);
        if (objInvoke != null) {
            this.cleanMethod.invoke(objInvoke, null);
        }
    }

    public /* synthetic */ ByteBufferCleaner$Java8Cleaner(ByteBufferCleaner$1 byteBufferCleaner$1) {
        this();
    }
}
