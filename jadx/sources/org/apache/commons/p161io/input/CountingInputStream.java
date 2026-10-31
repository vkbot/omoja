package org.apache.commons.p161io.input;

import java.io.InputStream;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class CountingInputStream extends ProxyInputStream {
    private long count;

    public CountingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream
    public synchronized void afterRead(int i10) {
        if (i10 != -1) {
            try {
                this.count += (long) i10;
            } catch (Throwable th) {
                throw th;
            }
        }
        super.afterRead(i10);
    }

    public synchronized long getByteCount() {
        return this.count;
    }

    @Deprecated
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

    @Deprecated
    public int resetCount() {
        long jResetByteCount = resetByteCount();
        if (jResetByteCount <= 2147483647L) {
            return (int) jResetByteCount;
        }
        C2467b.m3825f(jResetByteCount);
        return 0;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j10) {
        long jSkip;
        jSkip = super.skip(j10);
        this.count += jSkip;
        return jSkip;
    }

    public CountingInputStream(InputStream inputStream, ProxyInputStream.AbstractBuilder<?, ?> abstractBuilder) {
        super(inputStream, abstractBuilder);
    }

    public CountingInputStream(ProxyInputStream.AbstractBuilder<?, ?> abstractBuilder) {
        super(abstractBuilder);
    }
}
