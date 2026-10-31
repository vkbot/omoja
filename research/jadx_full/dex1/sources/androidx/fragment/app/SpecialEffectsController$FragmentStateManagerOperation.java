package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.os.CancellationSignal;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "lifecycleImpact", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "fragmentStateManager", "Landroidx/fragment/app/FragmentStateManager;", "cancellationSignal", "Landroidx/core/os/CancellationSignal;", "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V", "complete", "", "onStart", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SpecialEffectsController$FragmentStateManagerOperation extends SpecialEffectsController$Operation {
    private final FragmentStateManager fragmentStateManager;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Illegal instructions before constructor call */
    public SpecialEffectsController$FragmentStateManagerOperation(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact, FragmentStateManager fragmentStateManager, CancellationSignal cancellationSignal) {
        specialEffectsController$Operation$State.getClass();
        specialEffectsController$Operation$LifecycleImpact.getClass();
        fragmentStateManager.getClass();
        cancellationSignal.getClass();
        Fragment fragment = fragmentStateManager.getFragment();
        fragment.getClass();
        super(specialEffectsController$Operation$State, specialEffectsController$Operation$LifecycleImpact, fragment, cancellationSignal);
        this.fragmentStateManager = fragmentStateManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.SpecialEffectsController$Operation
    public void complete() {
        super.complete();
        this.fragmentStateManager.moveToExpectedState();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.SpecialEffectsController$Operation
    public void onStart() {
        if (getLifecycleImpact() != SpecialEffectsController$Operation$LifecycleImpact.ADDING) {
            if (getLifecycleImpact() == SpecialEffectsController$Operation$LifecycleImpact.REMOVING) {
                Fragment fragment = this.fragmentStateManager.getFragment();
                fragment.getClass();
                View viewRequireView = fragment.requireView();
                viewRequireView.getClass();
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "Clearing focus " + viewRequireView.findFocus() + " on view " + viewRequireView + " for Fragment " + fragment);
                }
                viewRequireView.clearFocus();
                return;
            }
            return;
        }
        Fragment fragment2 = this.fragmentStateManager.getFragment();
        fragment2.getClass();
        View viewFindFocus = fragment2.mView.findFocus();
        if (viewFindFocus != null) {
            fragment2.setFocusedView(viewFindFocus);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragment2);
            }
        }
        View viewRequireView2 = getFragment().requireView();
        viewRequireView2.getClass();
        if (viewRequireView2.getParent() == null) {
            this.fragmentStateManager.addViewToContainer();
            viewRequireView2.setAlpha(0.0f);
        }
        if (viewRequireView2.getAlpha() == 0.0f && viewRequireView2.getVisibility() == 0) {
            viewRequireView2.setVisibility(4);
        }
        viewRequireView2.setAlpha(fragment2.getPostOnViewCreatedAlpha());
    }
}
