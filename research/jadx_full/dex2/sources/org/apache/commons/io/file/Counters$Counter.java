package org.apache.commons.io.file;

import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface Counters$Counter {
    void add(long j);

    long get();

    BigInteger getBigInteger();

    Long getLong();

    void increment();

    default void reset() {
    }
}
