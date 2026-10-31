package org.apache.commons.io.file;

import java.nio.file.Path;
import java.util.Objects;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class h implements Function {
    public final /* synthetic */ int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(int i) {
        this.b = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Path path = (Path) obj;
        switch (this.b) {
            case 0:
                return path.toString();
            case 1:
                return PathUtils.a(path);
            default:
                return Objects.toString(path);
        }
    }
}
