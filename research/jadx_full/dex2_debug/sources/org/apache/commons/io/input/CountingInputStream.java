package org.apache.commons.io.input;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Deprecated
public class CountingInputStream extends ProxyInputStream {
    private long count;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CountingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream
    public synchronized void afterRead(int i) {
        if (i != -1) {
            try {
                this.count += (long) i;
            } catch (Throwable th) {
                throw th;
            }
        }
        super.afterRead(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized long getByteCount() {
        return this.count;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getCount() {
        long byteCount = getByteCount();
        if (byteCount <= 2147483647L) {
            return (int) byteCount;
        }
        n0.b.f(byteCount);
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized long resetByteCount() {
        long j;
        j = this.count;
        this.count = 0L;
        return j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int resetCount() {
        long jResetByteCount = resetByteCount();
        if (jResetByteCount <= 2147483647L) {
            return (int) jResetByteCount;
        }
        n0.b.f(jResetByteCount);
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) {
        long jSkip;
        jSkip = super.skip(j);
        this.count += jSkip;
        return jSkip;
    }

    public CountingInputStream(InputStream inputStream, ProxyInputStream$AbstractBuilder<?, ?> proxyInputStream$AbstractBuilder) {
        super(inputStream, proxyInputStream$AbstractBuilder);
    }

    public CountingInputStream(ProxyInputStream$AbstractBuilder<?, ?> proxyInputStream$AbstractBuilder) {
        super(proxyInputStream$AbstractBuilder);
    }
}
