package androidx.fragment.app;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.os.CancellationSignal;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\b\u0012\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "signal", "Landroidx/core/os/CancellationSignal;", "(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V", "isVisibilityUnchanged", "", "()Z", "getOperation", "()Landroidx/fragment/app/SpecialEffectsController$Operation;", "getSignal", "()Landroidx/core/os/CancellationSignal;", "completeSpecialEffect", "", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public class DefaultSpecialEffectsController$SpecialEffectsInfo {
    private final SpecialEffectsController$Operation operation;
    private final CancellationSignal signal;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DefaultSpecialEffectsController$SpecialEffectsInfo(SpecialEffectsController$Operation specialEffectsController$Operation, CancellationSignal cancellationSignal) {
        specialEffectsController$Operation.getClass();
        cancellationSignal.getClass();
        this.operation = specialEffectsController$Operation;
        this.signal = cancellationSignal;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void completeSpecialEffect() {
        this.operation.completeSpecialEffect(this.signal);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final SpecialEffectsController$Operation getOperation() {
        return this.operation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CancellationSignal getSignal() {
        return this.signal;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isVisibilityUnchanged() {
        SpecialEffectsController$Operation$State$Companion specialEffectsController$Operation$State$Companion = SpecialEffectsController$Operation$State.Companion;
        View view = this.operation.getFragment().mView;
        view.getClass();
        SpecialEffectsController$Operation$State specialEffectsController$Operation$StateAsOperationState = specialEffectsController$Operation$State$Companion.asOperationState(view);
        SpecialEffectsController$Operation$State finalState = this.operation.getFinalState();
        if (specialEffectsController$Operation$StateAsOperationState == finalState) {
            return true;
        }
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.VISIBLE;
        return (specialEffectsController$Operation$StateAsOperationState == specialEffectsController$Operation$State || finalState == specialEffectsController$Operation$State) ? false : true;
    }
}
