package kotlin;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import kotlin.jvm.functions.Function0;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a \u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a(\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a*\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004¨\u0006\t"}, d2 = {"lazy", "Lkotlin/Lazy;", ExifInterface.GPS_DIRECTION_TRUE, "initializer", "Lkotlin/Function0;", "mode", "Lkotlin/LazyThreadSafetyMode;", "lock", "", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/LazyKt")
public class LazyKt__LazyJVMKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> Lazy<T> lazy(LazyThreadSafetyMode lazyThreadSafetyMode, Function0<? extends T> function0) {
        lazyThreadSafetyMode.getClass();
        function0.getClass();
        int i9 = LazyKt__LazyJVMKt$WhenMappings.$EnumSwitchMapping$0[lazyThreadSafetyMode.ordinal()];
        if (i9 == 1) {
            return new SynchronizedLazyImpl(function0, null, 2, null);
        }
        if (i9 == 2) {
            return new SafePublicationLazyImpl(function0);
        }
        if (i9 == 3) {
            return new UnsafeLazyImpl(function0);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static <T> Lazy<T> lazy(Function0<? extends T> function0) {
        function0.getClass();
        return new SynchronizedLazyImpl(function0, null, 2, null);
    }

    public static final <T> Lazy<T> lazy(Object obj, Function0<? extends T> function0) {
        function0.getClass();
        return new SynchronizedLazyImpl(function0, obj);
    }
}
