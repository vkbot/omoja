package kotlin.io.path;

import java.nio.file.Path;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3219b;
    public final /* synthetic */ boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9, boolean z8) {
        this.f3219b = i9;
        this.c = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        CopyActionContext copyActionContext = (CopyActionContext) obj;
        Path path = (Path) obj2;
        Path path2 = (Path) obj3;
        switch (this.f3219b) {
            case 0:
                return PathsKt__PathRecursiveFunctionsKt.a(this.c, copyActionContext, path, path2);
            default:
                return PathsKt__PathRecursiveFunctionsKt.d(this.c, copyActionContext, path, path2);
        }
    }
}
