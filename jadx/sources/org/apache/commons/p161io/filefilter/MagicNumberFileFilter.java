package org.apache.commons.p161io.filefilter;

import ai.onnxruntime.AbstractC0074a;
import androidx.fragment.app.C0566h;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Arrays;
import java.util.Objects;
import org.apache.commons.p161io.RandomAccessFileMode;
import org.apache.commons.p161io.RandomAccessFiles;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class MagicNumberFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -547733176983104172L;
    private final long byteOffset;
    private final byte[] magicNumbers;

    public MagicNumberFileFilter(byte[] bArr, long j10) {
        Objects.requireNonNull(bArr, "magicNumbers");
        if (bArr.length == 0) {
            C1929i.m3029k("The magic number must contain at least one byte");
            throw null;
        }
        if (j10 < 0) {
            C1929i.m3029k("The offset cannot be negative");
            throw null;
        }
        this.magicNumbers = (byte[]) bArr.clone();
        this.byteOffset = j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$accept$0(RandomAccessFile randomAccessFile) {
        byte[] bArr = this.magicNumbers;
        return Boolean.valueOf(Arrays.equals(bArr, RandomAccessFiles.read(randomAccessFile, this.byteOffset, bArr.length)));
    }

    @Override // org.apache.commons.p161io.filefilter.IOFileFilter, org.apache.commons.p161io.file.PathFilter
    public FileVisitResult accept(Path path, BasicFileAttributes basicFileAttributes) {
        if (path != null && Files.isRegularFile(path, new LinkOption[0]) && Files.isReadable(path)) {
            try {
                FileChannel fileChannelOpen = FileChannel.open(path, new OpenOption[0]);
                try {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.magicNumbers.length);
                    fileChannelOpen.position(this.byteOffset);
                    int i10 = fileChannelOpen.read(byteBufferAllocate);
                    byte[] bArr = this.magicNumbers;
                    FileVisitResult fileVisitResult = i10 != bArr.length ? FileVisitResult.TERMINATE : toFileVisitResult(Arrays.equals(bArr, byteBufferAllocate.array()));
                    fileChannelOpen.close();
                    return fileVisitResult;
                } catch (Throwable th) {
                    if (fileChannelOpen != null) {
                        try {
                            fileChannelOpen.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException unused) {
            }
        }
        return FileVisitResult.TERMINATE;
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder(super.toString());
        sb.append("(");
        sb.append(new String(this.magicNumbers, Charset.defaultCharset()));
        sb.append(",");
        return AbstractC0074a.m163n(sb, this.byteOffset, ")");
    }

    public MagicNumberFileFilter(byte[] bArr) {
        this(bArr, 0L);
    }

    public MagicNumberFileFilter(String str) {
        this(str, 0L);
    }

    public MagicNumberFileFilter(String str, long j10) {
        this(str.getBytes(Charset.defaultCharset()), j10);
    }

    @Override // org.apache.commons.p161io.filefilter.AbstractFileFilter, org.apache.commons.p161io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        if (!isFile(file) || !file.canRead()) {
            return false;
        }
        try {
            return ((Boolean) RandomAccessFileMode.READ_ONLY.apply(file.toPath(), new C0566h(23, this))).booleanValue();
        } catch (IOException unused) {
            return false;
        }
    }
}
