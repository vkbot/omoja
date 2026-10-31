package com.sun.jna.win32;

import com.sun.jna.DefaultTypeMapper;
import com.sun.jna.TypeMapper;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class W32APITypeMapper extends DefaultTypeMapper {
    public static final TypeMapper ASCII;
    public static final TypeMapper DEFAULT;
    public static final TypeMapper UNICODE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        W32APITypeMapper w32APITypeMapper = new W32APITypeMapper(true);
        UNICODE = w32APITypeMapper;
        W32APITypeMapper w32APITypeMapper2 = new W32APITypeMapper(false);
        ASCII = w32APITypeMapper2;
        if (Boolean.getBoolean("w32.ascii")) {
            w32APITypeMapper = w32APITypeMapper2;
        }
        DEFAULT = w32APITypeMapper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public W32APITypeMapper(boolean z8) {
        if (z8) {
            W32APITypeMapper$1 w32APITypeMapper$1 = new W32APITypeMapper$1(this);
            addTypeConverter(String.class, w32APITypeMapper$1);
            addToNativeConverter(String[].class, w32APITypeMapper$1);
        }
        addTypeConverter(Boolean.class, new W32APITypeMapper$2(this));
    }
}
