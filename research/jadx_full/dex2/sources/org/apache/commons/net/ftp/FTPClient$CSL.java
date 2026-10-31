package org.apache.commons.net.ftp;

import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.time.Duration;
import kotlin.io.path.f;
import org.apache.commons.net.io.CopyStreamEvent;
import org.apache.commons.net.io.CopyStreamListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class FTPClient$CSL implements CopyStreamListener {
    private int acksAcked;
    private final int currentSoTimeoutMillis;
    private final long idleMillis;
    private int ioErrors;
    private long lastIdleTimeMillis = System.currentTimeMillis();
    private int notAcked;
    private final FTPClient parent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPClient$CSL(FTPClient fTPClient, Duration duration, Duration duration2) throws SocketException {
        this.idleMillis = f.c(duration);
        this.parent = fTPClient;
        this.currentSoTimeoutMillis = fTPClient.getSoTimeout();
        fTPClient.setSoTimeout(DurationUtils.toMillisInt(duration2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.io.CopyStreamListener
    public void bytesTransferred(long j, int i, long j2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastIdleTimeMillis > this.idleMillis) {
            try {
                this.parent.__noop();
                this.acksAcked++;
            } catch (SocketTimeoutException unused) {
                this.notAcked++;
            } catch (IOException unused2) {
                this.ioErrors++;
            }
            this.lastIdleTimeMillis = jCurrentTimeMillis;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] cleanUp() throws SocketException {
        FTPClient fTPClient;
        int i = this.notAcked;
        while (true) {
            try {
                int i2 = this.notAcked;
                fTPClient = this.parent;
                if (i2 <= 0) {
                    break;
                }
                fTPClient.getReply();
                this.notAcked--;
            } catch (SocketTimeoutException unused) {
                this.parent.setSoTimeout(this.currentSoTimeoutMillis);
            } catch (Throwable th) {
                this.parent.setSoTimeout(this.currentSoTimeoutMillis);
                throw th;
            }
        }
        fTPClient.setSoTimeout(this.currentSoTimeoutMillis);
        return new int[]{this.acksAcked, i, this.notAcked, this.ioErrors};
    }

    @Override // org.apache.commons.net.io.CopyStreamListener
    public void bytesTransferred(CopyStreamEvent copyStreamEvent) {
        bytesTransferred(copyStreamEvent.getTotalBytesTransferred(), copyStreamEvent.getBytesTransferred(), copyStreamEvent.getStreamSize());
    }
}
