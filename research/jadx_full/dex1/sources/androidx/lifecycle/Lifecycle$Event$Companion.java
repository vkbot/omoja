package androidx.lifecycle;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\n"}, d2 = {"Landroidx/lifecycle/Lifecycle$Event$Companion;", "", "()V", "downFrom", "Landroidx/lifecycle/Lifecycle$Event;", "state", "Landroidx/lifecycle/Lifecycle$State;", "downTo", "upFrom", "upTo", "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Lifecycle$Event$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Lifecycle$Event$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final Lifecycle$Event downFrom(Lifecycle$State state) {
        state.getClass();
        int i9 = Lifecycle$Event$Companion$WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i9 == 1) {
            return Lifecycle$Event.ON_DESTROY;
        }
        if (i9 == 2) {
            return Lifecycle$Event.ON_STOP;
        }
        if (i9 != 3) {
            return null;
        }
        return Lifecycle$Event.ON_PAUSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final Lifecycle$Event downTo(Lifecycle$State state) {
        state.getClass();
        int i9 = Lifecycle$Event$Companion$WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i9 == 1) {
            return Lifecycle$Event.ON_STOP;
        }
        if (i9 == 2) {
            return Lifecycle$Event.ON_PAUSE;
        }
        if (i9 != 4) {
            return null;
        }
        return Lifecycle$Event.ON_DESTROY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final Lifecycle$Event upFrom(Lifecycle$State state) {
        state.getClass();
        int i9 = Lifecycle$Event$Companion$WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i9 == 1) {
            return Lifecycle$Event.ON_START;
        }
        if (i9 == 2) {
            return Lifecycle$Event.ON_RESUME;
        }
        if (i9 != 5) {
            return null;
        }
        return Lifecycle$Event.ON_CREATE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final Lifecycle$Event upTo(Lifecycle$State state) {
        state.getClass();
        int i9 = Lifecycle$Event$Companion$WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i9 == 1) {
            return Lifecycle$Event.ON_CREATE;
        }
        if (i9 == 2) {
            return Lifecycle$Event.ON_START;
        }
        if (i9 != 3) {
            return null;
        }
        return Lifecycle$Event.ON_RESUME;
    }

    private Lifecycle$Event$Companion() {
    }
}
