package org.apache.commons.io.file;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface Counters$PathCounters {
    Counters$Counter getByteCounter();

    Counters$Counter getDirectoryCounter();

    Counters$Counter getFileCounter();

    default void reset() {
    }
}
