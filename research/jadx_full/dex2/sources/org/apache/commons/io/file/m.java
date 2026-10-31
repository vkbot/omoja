package org.apache.commons.io.file;

import java.io.IOException;
import java.nio.file.Path;
import org.apache.commons.io.function.IOBiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class m implements IOBiFunction {
    public final /* synthetic */ int a;
    public final /* synthetic */ SimplePathVisitor b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ m(SimplePathVisitor simplePathVisitor, int i) {
        this.a = i;
        this.b = simplePathVisitor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOBiFunction
    public final Object apply(Object obj, Object obj2) {
        Path path = (Path) obj;
        IOException iOException = (IOException) obj2;
        switch (this.a) {
            case 0:
                return SimplePathVisitor.b(this.b, path, iOException);
            default:
                return SimplePathVisitor.a(this.b, path, iOException);
        }
    }
}
