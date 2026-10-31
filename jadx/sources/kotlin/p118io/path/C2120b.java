package kotlin.p118io.path;

import java.nio.file.Path;
import kotlin.jvm.functions.Function3;

/* JADX INFO: renamed from: kotlin.io.path.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2120b implements Function3 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5644b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ boolean f5645c;

    public /* synthetic */ C2120b(int i10, boolean z9) {
        this.f5644b = i10;
        this.f5645c = z9;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        CopyActionContext copyActionContext = (CopyActionContext) obj;
        Path path = (Path) obj2;
        Path path2 = (Path) obj3;
        switch (this.f5644b) {
            case 0:
                return PathsKt__PathRecursiveFunctionsKt.copyToRecursively$lambda$1$PathsKt__PathRecursiveFunctionsKt(this.f5645c, copyActionContext, path, path2);
            default:
                return PathsKt__PathRecursiveFunctionsKt.copyToRecursively$lambda$0$PathsKt__PathRecursiveFunctionsKt(this.f5645c, copyActionContext, path, path2);
        }
    }
}
