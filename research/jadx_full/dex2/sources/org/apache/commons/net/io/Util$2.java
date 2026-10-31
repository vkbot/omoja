package org.apache.commons.net.io;

import java.io.IOException;
import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.io.output.ProxyOutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class Util$2 extends ProxyOutputStream {
    final /* synthetic */ OutputStream val$dest;
    final /* synthetic */ boolean val$flush;
    final /* synthetic */ CopyStreamListener val$listener;
    final /* synthetic */ long val$streamSize;
    final /* synthetic */ AtomicLong val$total;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Util$2(OutputStream outputStream, boolean z, OutputStream outputStream2, CopyStreamListener copyStreamListener, AtomicLong atomicLong, long j) {
        super(outputStream);
        this.val$flush = z;
        this.val$dest = outputStream2;
        this.val$listener = copyStreamListener;
        this.val$total = atomicLong;
        this.val$streamSize = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.ProxyOutputStream
    public void afterWrite(int i) throws IOException {
        if (this.val$flush) {
            this.val$dest.flush();
        }
        this.val$listener.bytesTransferred(this.val$total.addAndGet(i), i, this.val$streamSize);
    }
}
