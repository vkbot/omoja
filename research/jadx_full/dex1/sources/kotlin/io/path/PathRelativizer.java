package kotlin.io.path;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.nio.file.Path;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lkotlin/io/path/PathRelativizer;", "", "<init>", "()V", "emptyPath", "Ljava/nio/file/Path;", "kotlin.jvm.PlatformType", "parentPath", "tryRelativeTo", "path", "base", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
final class PathRelativizer {
    public static final PathRelativizer INSTANCE = new PathRelativizer();
    private static final Path emptyPath = kotlin.internal.jdk8.a.s(new String[0]);
    private static final Path parentPath = kotlin.internal.jdk8.a.C(new String[0]);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PathRelativizer() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Path tryRelativeTo(Path path, Path base) {
        path.getClass();
        base.getClass();
        Path pathD = kotlin.internal.jdk8.a.D(base);
        Path pathD2 = kotlin.internal.jdk8.a.D(path);
        Path pathB = kotlin.internal.jdk8.a.B(pathD, pathD2);
        int iMin = Math.min(kotlin.internal.jdk8.a.a(pathD), kotlin.internal.jdk8.a.a(pathD2));
        for (int i9 = 0; i9 < iMin; i9++) {
            Path pathP = kotlin.internal.jdk8.a.p(pathD, i9);
            Path path2 = parentPath;
            if (!Intrinsics.areEqual(pathP, path2)) {
                break;
            }
            if (!Intrinsics.areEqual(kotlin.internal.jdk8.a.p(pathD2, i9), path2)) {
                i.k("Unable to compute relative path");
                return null;
            }
        }
        if (Intrinsics.areEqual(pathD2, pathD) || !Intrinsics.areEqual(pathD, emptyPath)) {
            String string = pathB.toString();
            String strD = kotlin.internal.jdk8.a.d(kotlin.internal.jdk8.a.g(pathB));
            strD.getClass();
            pathD2 = StringsKt.r(string, strD) ? kotlin.internal.jdk8.a.n(kotlin.internal.jdk8.a.g(pathB), StringsKt.dropLast(string, kotlin.internal.jdk8.a.d(kotlin.internal.jdk8.a.g(pathB)).length()), new String[0]) : pathB;
        }
        pathD2.getClass();
        return pathD2;
    }
}
