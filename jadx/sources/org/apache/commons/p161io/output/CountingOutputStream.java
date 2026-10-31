package org.apache.commons.p161io.output;

import java.io.OutputStream;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CountingOutputStream extends ProxyOutputStream {
    private long count;

    public CountingOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.apache.commons.p161io.output.ProxyOutputStream
    public synchronized void beforeWrite(int i10) {
        this.count += (long) i10;
    }

    public synchronized long getByteCount() {
        return this.count;
    }

    public int getCount() {
        long byteCount = getByteCount();
        if (byteCount <= 2147483647L) {
            return (int) byteCount;
        }
        C2467b.m3825f(byteCount);
        return 0;
    }

    public synchronized long resetByteCount() {
        long j10;
        j10 = this.count;
        this.count = 0L;
        return j10;
    }

    public int resetCount() {
        long jResetByteCount = resetByteCount();
        if (jResetByteCount <= 2147483647L) {
            return (int) jResetByteCount;
        }
        C2467b.m3825f(jResetByteCount);
        return 0;
    }
}
