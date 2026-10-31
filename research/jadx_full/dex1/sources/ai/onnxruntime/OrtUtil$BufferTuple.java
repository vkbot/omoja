package ai.onnxruntime;

import java.nio.Buffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OrtUtil$BufferTuple {
    final long byteSize;
    final Buffer data;
    final boolean isCopy;
    final int pos;
    final long size;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtUtil$BufferTuple(Buffer buffer, int i9, long j9, long j10, boolean z8) {
        this.data = buffer;
        this.pos = i9;
        this.byteSize = j9;
        this.size = j10;
        this.isCopy = z8;
    }
}
