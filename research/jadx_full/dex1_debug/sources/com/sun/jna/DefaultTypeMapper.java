package com.sun.jna;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DefaultTypeMapper implements TypeMapper {
    private List<DefaultTypeMapper$Entry> toNativeConverters = new ArrayList();
    private List<DefaultTypeMapper$Entry> fromNativeConverters = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Class<?> getAltClass(Class<?> cls) {
        Class<?> cls2 = Boolean.TYPE;
        if (cls == Boolean.class) {
            return cls2;
        }
        if (cls == cls2) {
            return Boolean.class;
        }
        Class<?> cls3 = Byte.TYPE;
        if (cls == Byte.class) {
            return cls3;
        }
        if (cls == cls3) {
            return Byte.class;
        }
        Class<?> cls4 = Character.TYPE;
        if (cls == Character.class) {
            return cls4;
        }
        if (cls == cls4) {
            return Character.class;
        }
        Class<?> cls5 = Short.TYPE;
        if (cls == Short.class) {
            return cls5;
        }
        if (cls == cls5) {
            return Short.class;
        }
        Class<?> cls6 = Integer.TYPE;
        if (cls == Integer.class) {
            return cls6;
        }
        if (cls == cls6) {
            return Integer.class;
        }
        Class<?> cls7 = Long.TYPE;
        if (cls == Long.class) {
            return cls7;
        }
        if (cls == cls7) {
            return Long.class;
        }
        Class<?> cls8 = Float.TYPE;
        if (cls == Float.class) {
            return cls8;
        }
        if (cls == cls8) {
            return Float.class;
        }
        Class<?> cls9 = Double.TYPE;
        if (cls == Double.class) {
            return cls9;
        }
        if (cls == cls9) {
            return Double.class;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object lookupConverter(Class<?> cls, Collection<? extends DefaultTypeMapper$Entry> collection) {
        for (DefaultTypeMapper$Entry defaultTypeMapper$Entry : collection) {
            if (defaultTypeMapper$Entry.type.isAssignableFrom(cls)) {
                return defaultTypeMapper$Entry.converter;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addFromNativeConverter(Class<?> cls, FromNativeConverter fromNativeConverter) {
        this.fromNativeConverters.add(new DefaultTypeMapper$Entry(cls, fromNativeConverter));
        Class<?> altClass = getAltClass(cls);
        if (altClass != null) {
            this.fromNativeConverters.add(new DefaultTypeMapper$Entry(altClass, fromNativeConverter));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addToNativeConverter(Class<?> cls, ToNativeConverter toNativeConverter) {
        this.toNativeConverters.add(new DefaultTypeMapper$Entry(cls, toNativeConverter));
        Class<?> altClass = getAltClass(cls);
        if (altClass != null) {
            this.toNativeConverters.add(new DefaultTypeMapper$Entry(altClass, toNativeConverter));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addTypeConverter(Class<?> cls, TypeConverter typeConverter) {
        addFromNativeConverter(cls, typeConverter);
        addToNativeConverter(cls, typeConverter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.TypeMapper
    public FromNativeConverter getFromNativeConverter(Class<?> cls) {
        return (FromNativeConverter) lookupConverter(cls, this.fromNativeConverters);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.TypeMapper
    public ToNativeConverter getToNativeConverter(Class<?> cls) {
        return (ToNativeConverter) lookupConverter(cls, this.toNativeConverters);
    }
}
