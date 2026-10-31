package org.apache.commons.io.file;

import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class Counters$NoopCounter implements Counters$Counter {
    static final Counters$NoopCounter INSTANCE = new Counters$NoopCounter();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Counters$NoopCounter() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$Counter
    public long get() {
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$Counter
    public BigInteger getBigInteger() {
        return BigInteger.ZERO;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$Counter
    public Long getLong() {
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "0";
    }

    @Override // org.apache.commons.io.file.Counters$Counter
    public void increment() {
    }

    @Override // org.apache.commons.io.file.Counters$Counter
    public void add(long j) {
    }
}
