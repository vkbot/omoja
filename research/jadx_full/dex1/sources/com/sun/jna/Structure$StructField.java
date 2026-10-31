package com.sun.jna;

import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Structure$StructField {
    public FromNativeContext context;
    public Field field;
    public boolean isReadOnly;
    public boolean isVolatile;
    public String name;
    public FromNativeConverter readConverter;
    public Class<?> type;
    public ToNativeConverter writeConverter;
    public int size = -1;
    public int offset = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.name + "@" + this.offset + "[" + this.size + "] (" + this.type + ")";
    }
}
