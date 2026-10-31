package org.apache.commons.io.file;

import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.PosixFileAttributes;
import org.apache.commons.io.function.IOFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class l implements IOFunction {
    public final /* synthetic */ LinkOption[] b;
    public final /* synthetic */ DeleteOption[] c;
    public final /* synthetic */ Path d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l(Path path, LinkOption[] linkOptionArr, DeleteOption[] deleteOptionArr) {
        this.b = linkOptionArr;
        this.c = deleteOptionArr;
        this.d = path;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public final Object apply(Object obj) {
        return PathUtils.b(this.b, this.c, this.d, (PosixFileAttributes) obj);
    }
}
