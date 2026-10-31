package org.apache.commons.p161io.file;

import java.nio.file.Path;
import java.util.Objects;
import java.util.function.Function;

/* JADX INFO: renamed from: org.apache.commons.io.file.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2798h implements Function {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7953b;

    public /* synthetic */ C2798h(int i10) {
        this.f7953b = i10;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Path path = (Path) obj;
        switch (this.f7953b) {
            case 0:
                return path.toString();
            case 1:
                return PathUtils.lambda$directoryAndFileContentEquals$1(path);
            default:
                return Objects.toString(path);
        }
    }
}
