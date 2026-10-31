package org.apache.commons.io.file;

import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class Counters$BigIntegerCounter implements Counters$Counter {
    private BigInteger value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Counters$BigIntegerCounter() {
        this.value = BigInteger.ZERO;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$Counter
    public void add(long j) {
        this.value = this.value.add(BigInteger.valueOf(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Counters$Counter) {
            return Objects.equals(this.value, ((Counters$Counter) obj).getBigInteger());
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$Counter
    public long get() {
        return androidx.core.app.c.c(this.value);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$Counter
    public BigInteger getBigInteger() {
        return this.value;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$Counter
    public Long getLong() {
        return Long.valueOf(androidx.core.app.c.c(this.value));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return Objects.hash(this.value);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$Counter
    public void increment() {
        this.value = this.value.add(BigInteger.ONE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$Counter
    public void reset() {
        this.value = BigInteger.ZERO;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.value.toString();
    }

    public /* synthetic */ Counters$BigIntegerCounter(Counters$1 counters$1) {
        this();
    }
}
