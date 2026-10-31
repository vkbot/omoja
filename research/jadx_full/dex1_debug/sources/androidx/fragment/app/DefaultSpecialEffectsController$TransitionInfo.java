package androidx.fragment.app;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.os.CancellationSignal;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\u0014\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0011H\u0002J\u0006\u0010\u0016\u001a\u00020\u0007R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013¨\u0006\u0017"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "signal", "Landroidx/core/os/CancellationSignal;", "isPop", "", "providesSharedElementTransition", "(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V", "handlingImpl", "Landroidx/fragment/app/FragmentTransitionImpl;", "getHandlingImpl", "()Landroidx/fragment/app/FragmentTransitionImpl;", "isOverlapAllowed", "()Z", "sharedElementTransition", "", "getSharedElementTransition", "()Ljava/lang/Object;", "transition", "getTransition", "hasSharedElementTransition", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class DefaultSpecialEffectsController$TransitionInfo extends DefaultSpecialEffectsController$SpecialEffectsInfo {
    private final boolean isOverlapAllowed;
    private final Object sharedElementTransition;
    private final Object transition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSpecialEffectsController$TransitionInfo(SpecialEffectsController$Operation specialEffectsController$Operation, CancellationSignal cancellationSignal, boolean z8, boolean z9) {
        Object returnTransition;
        super(specialEffectsController$Operation, cancellationSignal);
        specialEffectsController$Operation.getClass();
        cancellationSignal.getClass();
        SpecialEffectsController$Operation$State finalState = specialEffectsController$Operation.getFinalState();
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.VISIBLE;
        if (finalState == specialEffectsController$Operation$State) {
            Fragment fragment = specialEffectsController$Operation.getFragment();
            returnTransition = z8 ? fragment.getReenterTransition() : fragment.getEnterTransition();
        } else {
            Fragment fragment2 = specialEffectsController$Operation.getFragment();
            returnTransition = z8 ? fragment2.getReturnTransition() : fragment2.getExitTransition();
        }
        this.transition = returnTransition;
        this.isOverlapAllowed = specialEffectsController$Operation.getFinalState() == specialEffectsController$Operation$State ? z8 ? specialEffectsController$Operation.getFragment().getAllowReturnTransitionOverlap() : specialEffectsController$Operation.getFragment().getAllowEnterTransitionOverlap() : true;
        this.sharedElementTransition = z9 ? z8 ? specialEffectsController$Operation.getFragment().getSharedElementReturnTransition() : specialEffectsController$Operation.getFragment().getSharedElementEnterTransition() : null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final FragmentTransitionImpl getHandlingImpl(Object transition) {
        if (transition == null) {
            return null;
        }
        FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.PLATFORM_IMPL;
        if (fragmentTransitionImpl != null && fragmentTransitionImpl.canHandle(transition)) {
            return fragmentTransitionImpl;
        }
        FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.SUPPORT_IMPL;
        if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.canHandle(transition)) {
            return fragmentTransitionImpl2;
        }
        StringBuilder sb = new StringBuilder("Transition ");
        sb.append(transition);
        Fragment fragment = getOperation().getFragment();
        sb.append(" for fragment ");
        sb.append(fragment);
        sb.append(" is not a valid framework Transition or AndroidX Transition");
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object getSharedElementTransition() {
        return this.sharedElementTransition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object getTransition() {
        return this.transition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean hasSharedElementTransition() {
        return this.sharedElementTransition != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isOverlapAllowed, reason: from getter */
    public final boolean getIsOverlapAllowed() {
        return this.isOverlapAllowed;
    }

    public final FragmentTransitionImpl getHandlingImpl() {
        FragmentTransitionImpl handlingImpl = getHandlingImpl(this.transition);
        FragmentTransitionImpl handlingImpl2 = getHandlingImpl(this.sharedElementTransition);
        if (handlingImpl == null || handlingImpl2 == null || handlingImpl == handlingImpl2) {
            return handlingImpl == null ? handlingImpl2 : handlingImpl;
        }
        StringBuilder sb = new StringBuilder("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
        sb.append(getOperation().getFragment());
        sb.append(" returned Transition ");
        sb.append(this.transition);
        androidx.navigation.b.l(sb, " which uses a different Transition  type than its shared element transition ", this.sharedElementTransition);
        return null;
    }
}
