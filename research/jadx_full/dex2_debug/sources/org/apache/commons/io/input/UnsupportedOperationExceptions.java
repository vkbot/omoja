package org.apache.commons.io.input;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class UnsupportedOperationExceptions {
    private static final String MARK_RESET = "mark/reset";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UnsupportedOperationException mark() {
        return method(MARK_RESET);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UnsupportedOperationException method(String str) {
        return new UnsupportedOperationException(ai.onnxruntime.a.C(str, " not supported"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UnsupportedOperationException reset() {
        return method(MARK_RESET);
    }
}
