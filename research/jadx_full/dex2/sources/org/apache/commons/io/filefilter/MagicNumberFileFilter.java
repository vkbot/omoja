package org.apache.commons.io.filefilter;

import c5.h;
import j1.i;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.file.FileVisitResult;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Arrays;
import java.util.Objects;
import org.apache.commons.io.RandomAccessFileMode;
import org.apache.commons.io.RandomAccessFiles;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class MagicNumberFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -547733176983104172L;
    private final long byteOffset;
    private final byte[] magicNumbers;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MagicNumberFileFilter(byte[] bArr, long j) {
        Objects.requireNonNull(bArr, "magicNumbers");
        if (bArr.length == 0) {
            i.k("The magic number must contain at least one byte");
            throw null;
        }
        if (j < 0) {
            i.k("The offset cannot be negative");
            throw null;
        }
        this.magicNumbers = (byte[]) bArr.clone();
        this.byteOffset = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Boolean a(MagicNumberFileFilter magicNumberFileFilter, RandomAccessFile randomAccessFile) {
        return magicNumberFileFilter.lambda$accept$0(randomAccessFile);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Boolean lambda$accept$0(RandomAccessFile randomAccessFile) {
        byte[] bArr = this.magicNumbers;
        return Boolean.valueOf(Arrays.equals(bArr, RandomAccessFiles.read(randomAccessFile, this.byteOffset, bArr.length)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.filefilter.IOFileFilter, org.apache.commons.io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        if (path != null && kotlin.io.path.f.B(path, new LinkOption[0]) && kotlin.io.path.a.B(path)) {
            try {
                FileChannel fileChannelD = org.apache.commons.io.file.f.d(path, new OpenOption[0]);
                try {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.magicNumbers.length);
                    fileChannelD.position(this.byteOffset);
                    int i = fileChannelD.read(byteBufferAllocate);
                    byte[] bArr = this.magicNumbers;
                    FileVisitResult fileVisitResultW = i != bArr.length ? kotlin.io.path.a.w() : toFileVisitResult(Arrays.equals(bArr, byteBufferAllocate.array()));
                    fileChannelD.close();
                    return fileVisitResultW;
                } catch (Throwable th) {
                    if (fileChannelD != null) {
                        try {
                            fileChannelD.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException unused) {
            }
        }
        return kotlin.io.path.a.w();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder(super.toString());
        sb.append("(");
        sb.append(new String(this.magicNumbers, Charset.defaultCharset()));
        sb.append(",");
        return ai.onnxruntime.a.n(sb, this.byteOffset, ")");
    }

    public MagicNumberFileFilter(byte[] bArr) {
        this(bArr, 0L);
    }

    public MagicNumberFileFilter(String str) {
        this(str, 0L);
    }

    public MagicNumberFileFilter(String str, long j) {
        this(str.getBytes(Charset.defaultCharset()), j);
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        if (!isFile(file) || !file.canRead()) {
            return false;
        }
        try {
            return ((Boolean) RandomAccessFileMode.READ_ONLY.apply(h.i(file), new androidx.fragment.app.h(23, this))).booleanValue();
        } catch (IOException unused) {
            return false;
        }
    }
}
