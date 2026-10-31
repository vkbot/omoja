package org.apache.commons.p161io.channels;

import java.lang.reflect.Proxy;
import java.nio.channels.Channel;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class CloseShieldChannel {
    private static final Class<?>[] EMPTY = new Class[0];

    private CloseShieldChannel() {
    }

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

    public static <T extends Channel> T wrap(T t) {
        Objects.requireNonNull(t, "channel");
        if (Proxy.isProxyClass(t.getClass()) && (Proxy.getInvocationHandler(t) instanceof CloseShieldChannelHandler)) {
            return t;
        }
        Set<Class<?>> setCollectChannelInterfaces = collectChannelInterfaces(t.getClass(), new LinkedHashSet());
        return (T) Proxy.newProxyInstance(t.getClass().getClassLoader(), setCollectChannelInterfaces.isEmpty() ? new Class[]{Channel.class} : (Class[]) setCollectChannelInterfaces.toArray(EMPTY), new CloseShieldChannelHandler(t));
    }
}
