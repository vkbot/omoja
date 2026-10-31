package p098j0;

import java.lang.reflect.Array;
import java.util.function.IntFunction;
import org.apache.commons.p161io.comparator.CompositeFileComparator;
import org.apache.commons.p161io.monitor.FileAlterationObserver;
import p142n0.EnumC2469d;

/* JADX INFO: renamed from: j0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1915a implements IntFunction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f5046a;

    public /* synthetic */ C1915a(int i10) {
        this.f5046a = i10;
    }

    @Override // java.util.function.IntFunction
    public final Object apply(int i10) {
        switch (this.f5046a) {
            case 0:
                return (Enum[]) Array.newInstance((Class<?>) EnumC2469d.class, i10);
            case 1:
                return CompositeFileComparator.lambda$new$0(i10);
            default:
                return FileAlterationObserver.lambda$listFileEntries$6(i10);
        }
    }
}
