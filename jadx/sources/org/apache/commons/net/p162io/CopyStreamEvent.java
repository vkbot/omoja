package org.apache.commons.net.p162io;

import ai.onnxruntime.AbstractC0074a;
import java.util.EventObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CopyStreamEvent extends EventObject {
    public static final long UNKNOWN_STREAM_SIZE = -1;
    private static final long serialVersionUID = -964927635655051867L;
    private final int bytesTransferred;
    private final long streamSize;
    private final long totalBytesTransferred;

    public CopyStreamEvent(Object obj, long j10, int i10, long j11) {
        super(obj);
        this.bytesTransferred = i10;
        this.totalBytesTransferred = j10;
        this.streamSize = j11;
    }

    public int getBytesTransferred() {
        return this.bytesTransferred;
    }

    public long getStreamSize() {
        return this.streamSize;
    }

    public long getTotalBytesTransferred() {
        return this.totalBytesTransferred;
    }

    @Override // java.util.EventObject
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getName());
        sb.append("[source=");
        sb.append(((EventObject) this).source);
        sb.append(", total=");
        sb.append(this.totalBytesTransferred);
        sb.append(", bytes=");
        sb.append(this.bytesTransferred);
        sb.append(", size=");
        return AbstractC0074a.m163n(sb, this.streamSize, "]");
    }
}
