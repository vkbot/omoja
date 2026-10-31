package org.apache.commons.p161io.input;

import ai.onnxruntime.AbstractC0074a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class UnsupportedOperationExceptions {
    private static final String MARK_RESET = "mark/reset";

    public static UnsupportedOperationException mark() {
        return method(MARK_RESET);
    }

    public static UnsupportedOperationException method(String str) {
        return new UnsupportedOperationException(AbstractC0074a.m148C(str, " not supported"));
    }

    public static UnsupportedOperationException reset() {
        return method(MARK_RESET);
    }
}
