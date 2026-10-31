package kotlin.io.path;

import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3223b;
    public final /* synthetic */ Function3 c;
    public final /* synthetic */ Path d;
    public final /* synthetic */ Path e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Path f3224f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Function3 f3225g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(ArrayList arrayList, Function3 function3, Path path, Path path2, Path path3, Function3 function4) {
        this.f3223b = arrayList;
        this.c = function3;
        this.d = path;
        this.e = path2;
        this.f3224f = path3;
        this.f3225g = function4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return PathsKt__PathRecursiveFunctionsKt.e(this.f3223b, this.c, this.d, this.e, this.f3224f, this.f3225g, (Path) obj, (BasicFileAttributes) obj2);
    }
}
