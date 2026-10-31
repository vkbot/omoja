package org.apache.commons.io.output;

import java.io.PrintStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class NullPrintStream extends PrintStream {
    public static final NullPrintStream INSTANCE;

    @Deprecated
    public static final NullPrintStream NULL_PRINT_STREAM;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        NullPrintStream nullPrintStream = new NullPrintStream();
        INSTANCE = nullPrintStream;
        NULL_PRINT_STREAM = nullPrintStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public NullPrintStream() {
        super(NullOutputStream.INSTANCE);
    }
}
