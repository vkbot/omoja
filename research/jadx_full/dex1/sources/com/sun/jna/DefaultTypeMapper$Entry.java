package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DefaultTypeMapper$Entry {
    public Object converter;
    public Class<?> type;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DefaultTypeMapper$Entry(Class<?> cls, Object obj) {
        this.type = cls;
        this.converter = obj;
    }
}
