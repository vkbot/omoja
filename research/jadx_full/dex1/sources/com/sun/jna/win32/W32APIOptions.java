package com.sun.jna.win32;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface W32APIOptions extends StdCallLibrary {
    public static final Map<String, Object> ASCII_OPTIONS;
    public static final Map<String, Object> DEFAULT_OPTIONS;
    public static final Map<String, Object> UNICODE_OPTIONS;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Map<String, Object> mapUnmodifiableMap = Collections.unmodifiableMap(new W32APIOptions$1());
        UNICODE_OPTIONS = mapUnmodifiableMap;
        Map<String, Object> mapUnmodifiableMap2 = Collections.unmodifiableMap(new W32APIOptions$2());
        ASCII_OPTIONS = mapUnmodifiableMap2;
        if (Boolean.getBoolean("w32.ascii")) {
            mapUnmodifiableMap = mapUnmodifiableMap2;
        }
        DEFAULT_OPTIONS = mapUnmodifiableMap;
    }
}
