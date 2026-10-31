package kotlin.contracts;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.navigation.b;
import kotlin.Function;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ContractBuilder$DefaultImpls {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CallsInPlace callsInPlace$default(ContractBuilder contractBuilder, Function function, InvocationKind invocationKind, int i9, Object obj) {
        if (obj != null) {
            b.g("Super calls with default arguments not supported in this target, function: callsInPlace");
            return null;
        }
        if ((i9 & 2) != 0) {
            invocationKind = InvocationKind.UNKNOWN;
        }
        return contractBuilder.callsInPlace(function, invocationKind);
    }
}
