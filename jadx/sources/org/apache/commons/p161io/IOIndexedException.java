package org.apache.commons.p161io;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class IOIndexedException extends IOException {
    private static final long serialVersionUID = 1;
    private final int index;

    public IOIndexedException(int i10, Throwable th) {
        super(toMessage(i10, th), th);
        this.index = i10;
    }

    public static String toMessage(int i10, Throwable th) {
        return String.format("%s #%,d: %s", th == null ? "Null" : th.getClass().getSimpleName(), Integer.valueOf(i10), th != null ? th.getMessage() : "Null");
    }

    public int getIndex() {
        return this.index;
    }
}
