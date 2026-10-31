package org.apache.commons.net.io;

import java.io.IOException;
import java.io.Writer;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.io.output.ProxyWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class Util$1 extends ProxyWriter {
    final /* synthetic */ Writer val$dest;
    final /* synthetic */ CopyStreamListener val$listener;
    final /* synthetic */ long val$streamSize;
    final /* synthetic */ AtomicLong val$total;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Util$1(Writer writer, Writer writer2, CopyStreamListener copyStreamListener, AtomicLong atomicLong, long j) {
        super(writer);
        this.val$dest = writer2;
        this.val$listener = copyStreamListener;
        this.val$total = atomicLong;
        this.val$streamSize = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.ProxyWriter
    public void afterWrite(int i) throws IOException {
        this.val$dest.flush();
        this.val$listener.bytesTransferred(this.val$total.addAndGet(i), i, this.val$streamSize);
    }
}
