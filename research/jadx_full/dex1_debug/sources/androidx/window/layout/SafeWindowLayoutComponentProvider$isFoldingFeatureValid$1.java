package androidx.window.layout;

import android.graphics.Rect;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 6, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1 extends Lambda implements Function0<Boolean> {
    final /* synthetic */ ClassLoader $classLoader;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1(ClassLoader classLoader) {
        super(0);
        this.$classLoader = classLoader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Code duplicated, block: B:15:0x005a  */
    @Override // kotlin.jvm.functions.Function0
    public final Boolean invoke() throws NoSuchMethodException {
        boolean z8;
        SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = SafeWindowLayoutComponentProvider.INSTANCE;
        Class clsAccess$foldingFeatureClass = SafeWindowLayoutComponentProvider.access$foldingFeatureClass(safeWindowLayoutComponentProvider, this.$classLoader);
        Method method = clsAccess$foldingFeatureClass.getMethod("getBounds", null);
        Method method2 = clsAccess$foldingFeatureClass.getMethod("getType", null);
        Method method3 = clsAccess$foldingFeatureClass.getMethod("getState", null);
        method.getClass();
        if (SafeWindowLayoutComponentProvider.access$doesReturn(safeWindowLayoutComponentProvider, method, Reflection.getOrCreateKotlinClass(Rect.class)) && SafeWindowLayoutComponentProvider.access$isPublic(safeWindowLayoutComponentProvider, method)) {
            method2.getClass();
            Class cls = Integer.TYPE;
            if (SafeWindowLayoutComponentProvider.access$doesReturn(safeWindowLayoutComponentProvider, method2, Reflection.getOrCreateKotlinClass(cls)) && SafeWindowLayoutComponentProvider.access$isPublic(safeWindowLayoutComponentProvider, method2)) {
                method3.getClass();
                if (SafeWindowLayoutComponentProvider.access$doesReturn(safeWindowLayoutComponentProvider, method3, Reflection.getOrCreateKotlinClass(cls)) && SafeWindowLayoutComponentProvider.access$isPublic(safeWindowLayoutComponentProvider, method3)) {
                    z8 = true;
                } else {
                    z8 = false;
                }
            } else {
                z8 = false;
            }
        } else {
            z8 = false;
        }
        return Boolean.valueOf(z8);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Boolean invoke() {
        return invoke();
    }
}
