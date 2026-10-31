package androidx.versionedparcelable;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VersionedParcelStream$1 extends FilterInputStream {
    final /* synthetic */ VersionedParcelStream this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VersionedParcelStream$1(VersionedParcelStream versionedParcelStream, InputStream inputStream) {
        super(inputStream);
        this.this$0 = versionedParcelStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        VersionedParcelStream versionedParcelStream = this.this$0;
        int i11 = versionedParcelStream.mFieldSize;
        if (i11 != -1 && versionedParcelStream.mCount >= i11) {
            throw new IOException();
        }
        int i12 = super.read(bArr, i9, i10);
        if (i12 > 0) {
            this.this$0.mCount += i12;
        }
        return i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j9) throws IOException {
        VersionedParcelStream versionedParcelStream = this.this$0;
        int i9 = versionedParcelStream.mFieldSize;
        if (i9 != -1 && versionedParcelStream.mCount >= i9) {
            throw new IOException();
        }
        long jSkip = super.skip(j9);
        if (jSkip > 0) {
            this.this$0.mCount += (int) jSkip;
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        VersionedParcelStream versionedParcelStream = this.this$0;
        int i9 = versionedParcelStream.mFieldSize;
        if (i9 != -1 && versionedParcelStream.mCount >= i9) {
            throw new IOException();
        }
        int i10 = super.read();
        this.this$0.mCount++;
        return i10;
    }
}
