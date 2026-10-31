package org.apache.commons.p161io.output;

import java.io.PrintStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class NullPrintStream extends PrintStream {
    public static final NullPrintStream INSTANCE;

    @Deprecated
    public static final NullPrintStream NULL_PRINT_STREAM;

    static {
        NullPrintStream nullPrintStream = new NullPrintStream();
        INSTANCE = nullPrintStream;
        NULL_PRINT_STREAM = nullPrintStream;
    }

    @Deprecated
    public NullPrintStream() {
        super(NullOutputStream.INSTANCE);
    }
}
