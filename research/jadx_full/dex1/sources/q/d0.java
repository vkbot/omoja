package q;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d0 extends MediaDataSource {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ByteBuffer f4712b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d0(ByteBuffer byteBuffer) {
        this.f4712b = byteBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.f4712b.limit();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.MediaDataSource
    public final int readAt(long j9, byte[] bArr, int i9, int i10) {
        ByteBuffer byteBuffer = this.f4712b;
        if (j9 >= byteBuffer.limit()) {
            return -1;
        }
        byteBuffer.position((int) j9);
        int iMin = Math.min(i10, byteBuffer.remaining());
        byteBuffer.get(bArr, i9, iMin);
        return iMin;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
