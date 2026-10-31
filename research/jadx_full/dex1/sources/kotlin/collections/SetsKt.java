package kotlin.collections;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.navigation.NavBackStackEntry;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"kotlin/collections/SetsKt__SetsJVMKt", "kotlin/collections/SetsKt__SetsKt", "kotlin/collections/SetsKt___SetsKt"}, k = 4, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX)
public final class SetsKt extends SetsKt___SetsKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SetsKt() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Set a(Set set, NavBackStackEntry navBackStackEntry) {
        return SetsKt___SetsKt.minus((Set<? extends NavBackStackEntry>) set, navBackStackEntry);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Set b(Set set, NavBackStackEntry navBackStackEntry) {
        return SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) set, navBackStackEntry);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Set c(Set set, Set set2) {
        return SetsKt___SetsKt.plus(set, (Iterable) set2);
    }
}
