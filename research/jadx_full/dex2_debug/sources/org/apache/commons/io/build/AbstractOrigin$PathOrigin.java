package org.apache.commons.io.build;

import ai.onnxruntime.c;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.Channel;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import org.apache.commons.io.RandomAccessFileMode;
import org.apache.commons.io.RandomAccessFiles;
import org.apache.commons.io.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AbstractOrigin$PathOrigin extends AbstractOrigin<Path, AbstractOrigin$PathOrigin> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin$PathOrigin(Path path) {
        super(path);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ byte[] a(long j, int i, RandomAccessFile randomAccessFile) {
        return lambda$getByteArray$0(j, i, randomAccessFile);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ byte[] lambda$getByteArray$0(long j, int i, RandomAccessFile randomAccessFile) {
        return RandomAccessFiles.read(randomAccessFile, j, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public byte[] getByteArray(long j, int i) {
        return (byte[]) RandomAccessFileMode.READ_ONLY.apply(kotlin.internal.jdk8.a.m(this.origin), new a(j, i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Channel getChannel(OpenOption... openOptionArr) {
        return d.h(getPath(), openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public File getFile() {
        return c.r(kotlin.internal.jdk8.a.m(get()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Path getPath() {
        return kotlin.internal.jdk8.a.m(get());
    }
}
