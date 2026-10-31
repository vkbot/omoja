package j0;

import java.lang.reflect.Array;
import java.util.function.IntFunction;
import org.apache.commons.io.comparator.CompositeFileComparator;
import org.apache.commons.io.monitor.FileAlterationObserver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements IntFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2866a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9) {
        this.f2866a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.IntFunction
    public final Object apply(int i9) {
        switch (this.f2866a) {
            case 0:
                return (Enum[]) Array.newInstance((Class<?>) n0.d.class, i9);
            case 1:
                return CompositeFileComparator.b(i9);
            default:
                return FileAlterationObserver.g(i9);
        }
    }
}
