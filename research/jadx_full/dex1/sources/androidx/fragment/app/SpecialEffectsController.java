package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b \u0018\u0000 *2\u00020\u0001:\u0003*+,B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0016\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J#\u0010\u001a\u001a\u00020\u000f2\u0011\u0010\u001b\u001a\r\u0012\t\u0012\u00070\f¢\u0006\u0002\b\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\bH&J\u0006\u0010\u001f\u001a\u00020\u000fJ\u0012\u0010 \u001a\u0004\u0018\u00010\f2\u0006\u0010!\u001a\u00020\"H\u0002J\u0012\u0010#\u001a\u0004\u0018\u00010\f2\u0006\u0010!\u001a\u00020\"H\u0002J\u0006\u0010$\u001a\u00020\u000fJ\u0006\u0010%\u001a\u00020\u000fJ\u0010\u0010&\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010'\u001a\u00020\u000fJ\b\u0010(\u001a\u00020\u000fH\u0002J\u000e\u0010)\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController;", "", "container", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", "getContainer", "()Landroid/view/ViewGroup;", "isContainerPostponed", "", "operationDirectionIsPop", "pendingOperations", "", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "runningOperations", "enqueue", "", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "lifecycleImpact", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "fragmentStateManager", "Landroidx/fragment/app/FragmentStateManager;", "enqueueAdd", "enqueueHide", "enqueueRemove", "enqueueShow", "executeOperations", "operations", "", "Lkotlin/jvm/JvmSuppressWildcards;", "isPop", "executePendingOperations", "findPendingOperation", "fragment", "Landroidx/fragment/app/Fragment;", "findRunningOperation", "forceCompleteAllOperations", "forcePostponedExecutePendingOperations", "getAwaitingCompletionLifecycleImpact", "markPostponedState", "updateFinalState", "updateOperationDirection", "Companion", "FragmentStateManagerOperation", "Operation", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,710:1\n288#2,2:711\n288#2,2:713\n533#2,6:715\n*S KotlinDebug\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController\n*L\n69#1:711,2\n75#1:713,2\n166#1:715,6\n*E\n"})
public abstract class SpecialEffectsController {
    public static final SpecialEffectsController$Companion Companion = new SpecialEffectsController$Companion(null);
    private final ViewGroup container;
    private boolean isContainerPostponed;
    private boolean operationDirectionIsPop;
    private final List<SpecialEffectsController$Operation> pendingOperations;
    private final List<SpecialEffectsController$Operation> runningOperations;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpecialEffectsController(ViewGroup viewGroup) {
        viewGroup.getClass();
        this.container = viewGroup;
        this.pendingOperations = new ArrayList();
        this.runningOperations = new ArrayList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(SpecialEffectsController specialEffectsController, SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation) {
        enqueue$lambda$4$lambda$2(specialEffectsController, specialEffectsController$FragmentStateManagerOperation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(SpecialEffectsController specialEffectsController, SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation) {
        enqueue$lambda$4$lambda$3(specialEffectsController, specialEffectsController$FragmentStateManagerOperation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void enqueue(SpecialEffectsController$Operation$State finalState, SpecialEffectsController$Operation$LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager) {
        synchronized (this.pendingOperations) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            Fragment fragment = fragmentStateManager.getFragment();
            fragment.getClass();
            SpecialEffectsController$Operation specialEffectsController$OperationFindPendingOperation = findPendingOperation(fragment);
            if (specialEffectsController$OperationFindPendingOperation != null) {
                specialEffectsController$OperationFindPendingOperation.mergeWith(finalState, lifecycleImpact);
                return;
            }
            SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = new SpecialEffectsController$FragmentStateManagerOperation(finalState, lifecycleImpact, fragmentStateManager, cancellationSignal);
            this.pendingOperations.add(specialEffectsController$FragmentStateManagerOperation);
            specialEffectsController$FragmentStateManagerOperation.addCompletionListener(new j(this, specialEffectsController$FragmentStateManagerOperation, 0));
            specialEffectsController$FragmentStateManagerOperation.addCompletionListener(new j(this, specialEffectsController$FragmentStateManagerOperation, 1));
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void enqueue$lambda$4$lambda$2(SpecialEffectsController specialEffectsController, SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation) {
        specialEffectsController.getClass();
        specialEffectsController$FragmentStateManagerOperation.getClass();
        if (specialEffectsController.pendingOperations.contains(specialEffectsController$FragmentStateManagerOperation)) {
            SpecialEffectsController$Operation$State finalState = specialEffectsController$FragmentStateManagerOperation.getFinalState();
            View view = specialEffectsController$FragmentStateManagerOperation.getFragment().mView;
            view.getClass();
            finalState.applyState(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void enqueue$lambda$4$lambda$3(SpecialEffectsController specialEffectsController, SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation) {
        specialEffectsController.getClass();
        specialEffectsController$FragmentStateManagerOperation.getClass();
        specialEffectsController.pendingOperations.remove(specialEffectsController$FragmentStateManagerOperation);
        specialEffectsController.runningOperations.remove(specialEffectsController$FragmentStateManagerOperation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final SpecialEffectsController$Operation findPendingOperation(Fragment fragment) {
        Object next;
        Iterator<T> it = this.pendingOperations.iterator();
        while (it.hasNext()) {
            next = it.next();
            SpecialEffectsController$Operation specialEffectsController$Operation = (SpecialEffectsController$Operation) next;
            if (Intrinsics.areEqual(specialEffectsController$Operation.getFragment(), fragment) && !specialEffectsController$Operation.getIsCanceled()) {
                return (SpecialEffectsController$Operation) next;
            }
        }
        next = null;
        return (SpecialEffectsController$Operation) next;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final SpecialEffectsController$Operation findRunningOperation(Fragment fragment) {
        Object next;
        Iterator<T> it = this.runningOperations.iterator();
        while (it.hasNext()) {
            next = it.next();
            SpecialEffectsController$Operation specialEffectsController$Operation = (SpecialEffectsController$Operation) next;
            if (Intrinsics.areEqual(specialEffectsController$Operation.getFragment(), fragment) && !specialEffectsController$Operation.getIsCanceled()) {
                return (SpecialEffectsController$Operation) next;
            }
        }
        next = null;
        return (SpecialEffectsController$Operation) next;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final SpecialEffectsController getOrCreateController(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return Companion.getOrCreateController(viewGroup, fragmentManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void updateFinalState() {
        for (SpecialEffectsController$Operation specialEffectsController$Operation : this.pendingOperations) {
            if (specialEffectsController$Operation.getLifecycleImpact() == SpecialEffectsController$Operation$LifecycleImpact.ADDING) {
                View viewRequireView = specialEffectsController$Operation.getFragment().requireView();
                viewRequireView.getClass();
                specialEffectsController$Operation.mergeWith(SpecialEffectsController$Operation$State.Companion.from(viewRequireView.getVisibility()), SpecialEffectsController$Operation$LifecycleImpact.NONE);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void enqueueAdd(SpecialEffectsController$Operation$State finalState, FragmentStateManager fragmentStateManager) {
        finalState.getClass();
        fragmentStateManager.getClass();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing add operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(finalState, SpecialEffectsController$Operation$LifecycleImpact.ADDING, fragmentStateManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void enqueueHide(FragmentStateManager fragmentStateManager) {
        fragmentStateManager.getClass();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing hide operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(SpecialEffectsController$Operation$State.GONE, SpecialEffectsController$Operation$LifecycleImpact.NONE, fragmentStateManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void enqueueRemove(FragmentStateManager fragmentStateManager) {
        fragmentStateManager.getClass();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing remove operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(SpecialEffectsController$Operation$State.REMOVED, SpecialEffectsController$Operation$LifecycleImpact.REMOVING, fragmentStateManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void enqueueShow(FragmentStateManager fragmentStateManager) {
        fragmentStateManager.getClass();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing show operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(SpecialEffectsController$Operation$State.VISIBLE, SpecialEffectsController$Operation$LifecycleImpact.NONE, fragmentStateManager);
    }

    public abstract void executeOperations(List<SpecialEffectsController$Operation> operations, boolean isPop);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void executePendingOperations() {
        if (this.isContainerPostponed) {
            return;
        }
        if (!ViewCompat.isAttachedToWindow(this.container)) {
            forceCompleteAllOperations();
            this.operationDirectionIsPop = false;
            return;
        }
        synchronized (this.pendingOperations) {
            try {
                if (!this.pendingOperations.isEmpty()) {
                    List<SpecialEffectsController$Operation> mutableList = CollectionsKt.toMutableList((Collection) this.runningOperations);
                    this.runningOperations.clear();
                    for (SpecialEffectsController$Operation specialEffectsController$Operation : mutableList) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentManager.TAG, "SpecialEffectsController: Cancelling operation " + specialEffectsController$Operation);
                        }
                        specialEffectsController$Operation.cancel();
                        if (!specialEffectsController$Operation.getIsComplete()) {
                            this.runningOperations.add(specialEffectsController$Operation);
                        }
                    }
                    updateFinalState();
                    List<SpecialEffectsController$Operation> mutableList2 = CollectionsKt.toMutableList((Collection) this.pendingOperations);
                    this.pendingOperations.clear();
                    this.runningOperations.addAll(mutableList2);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Executing pending operations");
                    }
                    Iterator<SpecialEffectsController$Operation> it = mutableList2.iterator();
                    while (it.hasNext()) {
                        it.next().onStart();
                    }
                    executeOperations(mutableList2, this.operationDirectionIsPop);
                    this.operationDirectionIsPop = false;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Finished executing pending operations");
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void forceCompleteAllOperations() {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean zIsAttachedToWindow = ViewCompat.isAttachedToWindow(this.container);
        synchronized (this.pendingOperations) {
            try {
                updateFinalState();
                Iterator<SpecialEffectsController$Operation> it = this.pendingOperations.iterator();
                while (it.hasNext()) {
                    it.next().onStart();
                }
                for (SpecialEffectsController$Operation specialEffectsController$Operation : CollectionsKt.toMutableList((Collection) this.runningOperations)) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: " + (zIsAttachedToWindow ? "" : "Container " + this.container + " is not attached to window. ") + "Cancelling running operation " + specialEffectsController$Operation);
                    }
                    specialEffectsController$Operation.cancel();
                }
                for (SpecialEffectsController$Operation specialEffectsController$Operation2 : CollectionsKt.toMutableList((Collection) this.pendingOperations)) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: " + (zIsAttachedToWindow ? "" : "Container " + this.container + " is not attached to window. ") + "Cancelling pending operation " + specialEffectsController$Operation2);
                    }
                    specialEffectsController$Operation2.cancel();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void forcePostponedExecutePendingOperations() {
        if (this.isContainerPostponed) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "SpecialEffectsController: Forcing postponed operations");
            }
            this.isContainerPostponed = false;
            executePendingOperations();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final SpecialEffectsController$Operation$LifecycleImpact getAwaitingCompletionLifecycleImpact(FragmentStateManager fragmentStateManager) {
        fragmentStateManager.getClass();
        Fragment fragment = fragmentStateManager.getFragment();
        fragment.getClass();
        SpecialEffectsController$Operation specialEffectsController$OperationFindPendingOperation = findPendingOperation(fragment);
        SpecialEffectsController$Operation$LifecycleImpact lifecycleImpact = specialEffectsController$OperationFindPendingOperation != null ? specialEffectsController$OperationFindPendingOperation.getLifecycleImpact() : null;
        SpecialEffectsController$Operation specialEffectsController$OperationFindRunningOperation = findRunningOperation(fragment);
        SpecialEffectsController$Operation$LifecycleImpact lifecycleImpact2 = specialEffectsController$OperationFindRunningOperation != null ? specialEffectsController$OperationFindRunningOperation.getLifecycleImpact() : null;
        int i9 = lifecycleImpact == null ? -1 : SpecialEffectsController$WhenMappings.$EnumSwitchMapping$0[lifecycleImpact.ordinal()];
        return (i9 == -1 || i9 == 1) ? lifecycleImpact2 : lifecycleImpact;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ViewGroup getContainer() {
        return this.container;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void markPostponedState() {
        SpecialEffectsController$Operation specialEffectsController$OperationPrevious;
        synchronized (this.pendingOperations) {
            try {
                updateFinalState();
                List<SpecialEffectsController$Operation> list = this.pendingOperations;
                ListIterator<SpecialEffectsController$Operation> listIterator = list.listIterator(list.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        specialEffectsController$OperationPrevious = null;
                        break;
                    }
                    specialEffectsController$OperationPrevious = listIterator.previous();
                    SpecialEffectsController$Operation specialEffectsController$Operation = specialEffectsController$OperationPrevious;
                    SpecialEffectsController$Operation$State$Companion specialEffectsController$Operation$State$Companion = SpecialEffectsController$Operation$State.Companion;
                    View view = specialEffectsController$Operation.getFragment().mView;
                    view.getClass();
                    SpecialEffectsController$Operation$State specialEffectsController$Operation$StateAsOperationState = specialEffectsController$Operation$State$Companion.asOperationState(view);
                    SpecialEffectsController$Operation$State finalState = specialEffectsController$Operation.getFinalState();
                    SpecialEffectsController$Operation$State specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.VISIBLE;
                    if (finalState == specialEffectsController$Operation$State && specialEffectsController$Operation$StateAsOperationState != specialEffectsController$Operation$State) {
                        break;
                    }
                }
                SpecialEffectsController$Operation specialEffectsController$Operation2 = specialEffectsController$OperationPrevious;
                Fragment fragment = specialEffectsController$Operation2 != null ? specialEffectsController$Operation2.getFragment() : null;
                this.isContainerPostponed = fragment != null ? fragment.isPostponed() : false;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void updateOperationDirection(boolean isPop) {
        this.operationDirectionIsPop = isPop;
    }

    @JvmStatic
    public static final SpecialEffectsController getOrCreateController(ViewGroup viewGroup, SpecialEffectsControllerFactory specialEffectsControllerFactory) {
        return Companion.getOrCreateController(viewGroup, specialEffectsControllerFactory);
    }
}
