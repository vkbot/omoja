package org.apache.commons.io.file;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class Counters$AbstractPathCounters implements Counters$PathCounters {
    private final Counters$Counter byteCounter;
    private final Counters$Counter directoryCounter;
    private final Counters$Counter fileCounter;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Counters$AbstractPathCounters(Counters$Counter counters$Counter, Counters$Counter counters$Counter2, Counters$Counter counters$Counter3) {
        this.byteCounter = counters$Counter;
        this.directoryCounter = counters$Counter2;
        this.fileCounter = counters$Counter3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Counters$AbstractPathCounters)) {
            return false;
        }
        Counters$AbstractPathCounters counters$AbstractPathCounters = (Counters$AbstractPathCounters) obj;
        return Objects.equals(this.byteCounter, counters$AbstractPathCounters.byteCounter) && Objects.equals(this.directoryCounter, counters$AbstractPathCounters.directoryCounter) && Objects.equals(this.fileCounter, counters$AbstractPathCounters.fileCounter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$PathCounters
    public Counters$Counter getByteCounter() {
        return this.byteCounter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$PathCounters
    public Counters$Counter getDirectoryCounter() {
        return this.directoryCounter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$PathCounters
    public Counters$Counter getFileCounter() {
        return this.fileCounter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return Objects.hash(this.byteCounter, this.directoryCounter, this.fileCounter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.file.Counters$PathCounters
    public void reset() {
        this.byteCounter.reset();
        this.directoryCounter.reset();
        this.fileCounter.reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return String.format("%,d files, %,d directories, %,d bytes", Long.valueOf(this.fileCounter.get()), Long.valueOf(this.directoryCounter.get()), Long.valueOf(this.byteCounter.get()));
    }
}
