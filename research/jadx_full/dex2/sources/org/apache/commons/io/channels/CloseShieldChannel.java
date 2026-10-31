package org.apache.commons.io.channels;

import java.lang.reflect.Proxy;
import java.nio.channels.Channel;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class CloseShieldChannel {
    private static final Class<?>[] EMPTY = new Class[0];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CloseShieldChannel() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Set<Class<?>> collectChannelInterfaces(Class<?> cls, Set<Class<?>> set) {
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (CloseShieldChannelHandler.isSupported(cls2) && set.add(cls2)) {
                    collectChannelInterfaces(cls2, set);
                }
            }
            cls = cls.getSuperclass();
        }
        return set;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends Channel> T wrap(T t) {
        Objects.requireNonNull(t, "channel");
        if (Proxy.isProxyClass(t.getClass()) && (Proxy.getInvocationHandler(t) instanceof CloseShieldChannelHandler)) {
            return t;
        }
        Set<Class<?>> setCollectChannelInterfaces = collectChannelInterfaces(t.getClass(), new LinkedHashSet());
        return (T) Proxy.newProxyInstance(t.getClass().getClassLoader(), setCollectChannelInterfaces.isEmpty() ? new Class[]{Channel.class} : (Class[]) setCollectChannelInterfaces.toArray(EMPTY), new CloseShieldChannelHandler(t));
    }
}
