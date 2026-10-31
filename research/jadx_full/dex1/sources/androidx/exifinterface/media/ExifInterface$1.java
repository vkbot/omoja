package androidx.exifinterface.media;

import android.media.MediaDataSource;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExifInterface$1 extends MediaDataSource {
    long mPosition;
    final /* synthetic */ ExifInterface this$0;
    final /* synthetic */ ExifInterface$SeekableByteOrderedDataInputStream val$in;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExifInterface$1(ExifInterface exifInterface, ExifInterface$SeekableByteOrderedDataInputStream exifInterface$SeekableByteOrderedDataInputStream) {
        this.this$0 = exifInterface;
        this.val$in = exifInterface$SeekableByteOrderedDataInputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.MediaDataSource
    public long getSize() {
        return -1L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.MediaDataSource
    public int readAt(long j9, byte[] bArr, int i9, int i10) {
        if (i10 == 0) {
            return 0;
        }
        if (j9 < 0) {
            return -1;
        }
        try {
            long j10 = this.mPosition;
            if (j10 != j9) {
                if (j10 >= 0 && j9 >= j10 + ((long) this.val$in.available())) {
                    return -1;
                }
                this.val$in.seek(j9);
                this.mPosition = j9;
            }
            if (i10 > this.val$in.available()) {
                i10 = this.val$in.available();
            }
            int i11 = this.val$in.read(bArr, i9, i10);
            if (i11 >= 0) {
                this.mPosition += (long) i11;
                return i11;
            }
        } catch (IOException unused) {
        }
        this.mPosition = -1L;
        return -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
