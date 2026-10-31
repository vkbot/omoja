package androidx.exifinterface.media;

import j1.i;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExifInterface$SeekableByteOrderedDataInputStream extends ExifInterface$ByteOrderedDataInputStream {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExifInterface$SeekableByteOrderedDataInputStream(InputStream inputStream) {
        super(inputStream);
        if (inputStream.markSupported()) {
            this.mDataInputStream.mark(Integer.MAX_VALUE);
        } else {
            i.k("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void seek(long j9) throws IOException {
        int i9 = this.mPosition;
        if (i9 > j9) {
            this.mPosition = 0;
            this.mDataInputStream.reset();
        } else {
            j9 -= (long) i9;
        }
        skipFully((int) j9);
    }

    public ExifInterface$SeekableByteOrderedDataInputStream(byte[] bArr) {
        super(bArr);
        this.mDataInputStream.mark(Integer.MAX_VALUE);
    }
}
