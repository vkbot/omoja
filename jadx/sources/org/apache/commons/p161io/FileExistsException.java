package org.apache.commons.p161io;

import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FileExistsException extends IOException {
    private static final long serialVersionUID = 1;

    public FileExistsException(File file) {
        super("File " + file + " exists");
    }

    public FileExistsException() {
    }

    public FileExistsException(String str) {
        super(str);
    }
}
