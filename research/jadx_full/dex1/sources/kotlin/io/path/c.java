package kotlin.io.path;

import java.nio.file.Path;
import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3220b;
    public final /* synthetic */ Function3 c;
    public final /* synthetic */ Path d;
    public final /* synthetic */ Path e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Path f3221f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Function3 f3222g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(ArrayList arrayList, Function3 function3, Path path, Path path2, Path path3, Function3 function4) {
        this.f3220b = arrayList;
        this.c = function3;
        this.d = path;
        this.e = path2;
        this.f3221f = path3;
        this.f3222g = function4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return PathsKt__PathRecursiveFunctionsKt.c(this.f3220b, this.c, this.d, this.e, this.f3221f, this.f3222g, (FileVisitorBuilder) obj);
    }
}
