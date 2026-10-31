package org.apache.commons.io.channels;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.nio.channels.ByteChannel;
import java.nio.channels.Channel;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.InterruptibleChannel;
import java.nio.channels.NetworkChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.apache.commons.io.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class CloseShieldChannelHandler implements InvocationHandler {
    private static final Set<Class<? extends Channel>> SUPPORTED_INTERFACES;
    private volatile boolean closed;
    private final Channel delegate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        HashSet hashSet = new HashSet();
        hashSet.add(d.g());
        hashSet.add(ByteChannel.class);
        hashSet.add(Channel.class);
        hashSet.add(GatheringByteChannel.class);
        hashSet.add(InterruptibleChannel.class);
        hashSet.add(NetworkChannel.class);
        hashSet.add(ReadableByteChannel.class);
        hashSet.add(ScatteringByteChannel.class);
        hashSet.add(SeekableByteChannel.class);
        hashSet.add(WritableByteChannel.class);
        SUPPORTED_INTERFACES = Collections.unmodifiableSet(hashSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CloseShieldChannelHandler(Channel channel) {
        Objects.requireNonNull(channel, "delegate");
        this.delegate = channel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object invokeObjectMethod(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        name.getClass();
        switch (name) {
            case "toString":
                return "CloseShieldChannel(" + this.delegate + ")";
            case "equals":
                Object obj2 = objArr[0];
                if (obj2 == null) {
                    return Boolean.FALSE;
                }
                if (obj == obj2) {
                    return Boolean.TRUE;
                }
                if (Proxy.isProxyClass(obj2.getClass())) {
                    InvocationHandler invocationHandler = Proxy.getInvocationHandler(obj2);
                    if (invocationHandler instanceof CloseShieldChannelHandler) {
                        return Boolean.valueOf(Objects.equals(((CloseShieldChannelHandler) invocationHandler).delegate, this.delegate));
                    }
                }
                return Boolean.FALSE;
            case "hashCode":
                return Integer.valueOf(Objects.hashCode(this.delegate));
            default:
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isAllowedAfterClose(Class<?> cls, String str, int i) {
        return i == 0 && str.equals("supportedOptions") && NetworkChannel.class.equals(cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isSupported(Class<?> cls) {
        return SUPPORTED_INTERFACES.contains(cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean returnsThis(Class<?> cls, String str, int i) {
        if (SeekableByteChannel.class.equals(cls)) {
            return i == 1 && (str.equals("position") || str.equals("truncate"));
        }
        return NetworkChannel.class.equals(cls) && ((i == 1 && str.equals("bind")) || (i == 2 && str.equals("setOption")));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        Class<?> declaringClass = method.getDeclaringClass();
        String name = method.getName();
        int length = method.getParameterTypes().length;
        if (declaringClass == Object.class) {
            return invokeObjectMethod(obj, method, objArr);
        }
        if (length == 0 && name.equals("close")) {
            this.closed = true;
            return null;
        }
        if (length == 0 && name.equals("isOpen")) {
            return Boolean.valueOf(!this.closed && this.delegate.isOpen());
        }
        if (this.closed && !isAllowedAfterClose(declaringClass, name, length)) {
            throw new ClosedChannelException();
        }
        try {
            return returnsThis(declaringClass, name, length) ? obj : method.invoke(this.delegate, objArr);
        } catch (InvocationTargetException e) {
            throw e.getCause();
        }
    }
}
