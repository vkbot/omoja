package org.apache.commons.io.file;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class Counters {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public Counters() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$Counter bigIntegerCounter() {
        return new Counters$BigIntegerCounter(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters bigIntegerPathCounters() {
        return new Counters$BigIntegerPathCounters();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$Counter longCounter() {
        return new Counters$LongCounter(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters longPathCounters() {
        return new Counters$LongPathCounters();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$Counter noopCounter() {
        return Counters$NoopCounter.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Counters$PathCounters noopPathCounters() {
        return Counters$NoopPathCounters.INSTANCE;
    }
}
