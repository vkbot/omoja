package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Structure$NativeStringTracking {
    private NativeString peer;
    private final Object value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Structure$NativeStringTracking(Object obj) {
        this.value = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ NativeString access$000(Structure$NativeStringTracking structure$NativeStringTracking) {
        return structure$NativeStringTracking.peer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ NativeString access$002(Structure$NativeStringTracking structure$NativeStringTracking, NativeString nativeString) {
        structure$NativeStringTracking.peer = nativeString;
        return nativeString;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Object access$100(Structure$NativeStringTracking structure$NativeStringTracking) {
        return structure$NativeStringTracking.value;
    }
}
