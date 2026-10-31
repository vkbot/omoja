package okhttp3.internal.cache2;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import p130l9.C2242l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ%\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\rR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0010¨\u0006\u0011"}, m3159d2 = {"Lokhttp3/internal/cache2/FileOperator;", "", "Ljava/nio/channels/FileChannel;", "fileChannel", "<init>", "(Ljava/nio/channels/FileChannel;)V", "", "pos", "Ll9/l;", "source", "byteCount", "", "write", "(JLl9/l;J)V", "sink", "read", "Ljava/nio/channels/FileChannel;", "okhttp"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        fileChannel.getClass();
        this.fileChannel = fileChannel;
    }

    public final void read(long pos, C2242l sink, long byteCount) throws IOException {
        sink.getClass();
        if (byteCount < 0) {
            throw new IndexOutOfBoundsException();
        }
        long j10 = pos;
        long j11 = byteCount;
        while (j11 > 0) {
            long jTransferTo = this.fileChannel.transferTo(j10, j11, sink);
            j10 += jTransferTo;
            j11 -= jTransferTo;
        }
    }

    public final void write(long pos, C2242l source, long byteCount) throws IOException {
        source.getClass();
        if (byteCount < 0 || byteCount > source.f5878c) {
            throw new IndexOutOfBoundsException();
        }
        long j10 = pos;
        long j11 = byteCount;
        while (j11 > 0) {
            long jTransferFrom = this.fileChannel.transferFrom(source, j10, j11);
            j10 += jTransferFrom;
            j11 -= jTransferFrom;
        }
    }
}
