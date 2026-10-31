package org.apache.commons.io.file;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class Counters$NoopPathCounters extends Counters$AbstractPathCounters {
    static final Counters$NoopPathCounters INSTANCE = new Counters$NoopPathCounters();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Counters$NoopPathCounters() {
        super(Counters.noopCounter(), Counters.noopCounter(), Counters.noopCounter());
    }
}
