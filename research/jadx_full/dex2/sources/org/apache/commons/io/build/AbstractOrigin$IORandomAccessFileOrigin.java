package org.apache.commons.io.build;

import c5.h;
import java.io.File;
import java.nio.file.Path;
import org.apache.commons.io.IORandomAccessFile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AbstractOrigin$IORandomAccessFileOrigin extends AbstractOrigin$AbstractRandomAccessFileOrigin<IORandomAccessFile, AbstractOrigin$IORandomAccessFileOrigin> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin$IORandomAccessFileOrigin(IORandomAccessFile iORandomAccessFile) {
        super(iORandomAccessFile);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: T */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public File getFile() {
        return ((IORandomAccessFile) get()).getFile();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Path getPath() {
        return h.i(getFile());
    }
}
