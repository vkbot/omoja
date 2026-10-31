package org.apache.commons.io.build;

import c5.h;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.Channel;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import org.apache.commons.io.RandomAccessFileMode;
import org.apache.commons.io.RandomAccessFiles;
import org.apache.commons.io.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AbstractOrigin$FileOrigin extends AbstractOrigin<File, AbstractOrigin$FileOrigin> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin$FileOrigin(File file) {
        super(file);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: T */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public byte[] getByteArray(long j, int i) throws IOException {
        RandomAccessFile randomAccessFileCreate = RandomAccessFileMode.READ_ONLY.create((File) this.origin);
        try {
            byte[] bArr = RandomAccessFiles.read(randomAccessFileCreate, j, i);
            if (randomAccessFileCreate != null) {
                randomAccessFileCreate.close();
            }
            return bArr;
        } catch (Throwable th) {
            if (randomAccessFileCreate != null) {
                try {
                    randomAccessFileCreate.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Channel getChannel(OpenOption... openOptionArr) {
        return d.h(getPath(), openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public File getFile() {
        return get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Path getPath() {
        return h.i(get());
    }
}
