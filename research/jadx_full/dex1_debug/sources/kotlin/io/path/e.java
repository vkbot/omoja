package kotlin.io.path;

import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3226b;
    public final /* synthetic */ Function3 c;
    public final /* synthetic */ Path d;
    public final /* synthetic */ Path e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Path f3227f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(ArrayList arrayList, Function3 function3, Path path, Path path2, Path path3) {
        this.f3226b = arrayList;
        this.c = function3;
        this.d = path;
        this.e = path2;
        this.f3227f = path3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return PathsKt__PathRecursiveFunctionsKt.b(this.f3226b, this.c, this.d, this.e, this.f3227f, (Path) obj, (IOException) obj2);
    }
}
