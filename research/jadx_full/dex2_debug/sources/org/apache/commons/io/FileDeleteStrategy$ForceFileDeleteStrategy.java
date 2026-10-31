package org.apache.commons.io;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FileDeleteStrategy$ForceFileDeleteStrategy extends FileDeleteStrategy {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileDeleteStrategy$ForceFileDeleteStrategy() {
        super("Force");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.FileDeleteStrategy
    public boolean doDelete(File file) {
        FileUtils.forceDelete(file);
        return true;
    }
}
