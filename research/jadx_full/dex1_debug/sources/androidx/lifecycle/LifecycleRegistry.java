package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap$IteratorWithAdditions;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.app.NotificationCompat;
import j1.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map$Entry;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u0000 42\u00020\u0001:\u000245B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001cH\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010\u0014\u001a\u00020\u0003H\u0002J\u0010\u0010%\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u001cH\u0002J\u0010\u0010&\u001a\u00020\"2\u0006\u0010'\u001a\u00020(H\u0003J\u0010\u0010)\u001a\u00020\"2\u0006\u0010\u0014\u001a\u00020\u0003H\u0002J\u0010\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020\"2\u0006\u0010\n\u001a\u00020\u000bH\u0017J\u0010\u0010.\u001a\u00020\"2\u0006\u0010/\u001a\u00020\u000bH\u0002J\b\u00100\u001a\u00020\"H\u0002J\u0010\u00101\u001a\u00020\"2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u00102\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001cH\u0016J\b\u00103\u001a\u00020\"H\u0002R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\u001fj\b\u0012\u0004\u0012\u00020\u000b` X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry;", "Landroidx/lifecycle/Lifecycle;", "provider", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;)V", "enforceMainThread", "", "(Landroidx/lifecycle/LifecycleOwner;Z)V", "addingObserverCounter", "", "state", "Landroidx/lifecycle/Lifecycle$State;", "currentState", "getCurrentState", "()Landroidx/lifecycle/Lifecycle$State;", "setCurrentState", "(Landroidx/lifecycle/Lifecycle$State;)V", "handlingEvent", "isSynced", "()Z", "lifecycleOwner", "Ljava/lang/ref/WeakReference;", "newEventOccurred", "observerCount", "getObserverCount", "()I", "observerMap", "Landroidx/arch/core/internal/FastSafeIterableMap;", "Landroidx/lifecycle/LifecycleObserver;", "Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;", "parentStates", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "addObserver", "", "observer", "backwardPass", "calculateTargetState", "enforceMainThreadIfNeeded", "methodName", "", "forwardPass", "handleLifecycleEvent", NotificationCompat.CATEGORY_EVENT, "Landroidx/lifecycle/Lifecycle$Event;", "markState", "moveToState", "next", "popParentState", "pushParentState", "removeObserver", "sync", "Companion", "ObserverWithState", "lifecycle-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public class LifecycleRegistry extends Lifecycle {
    public static final LifecycleRegistry$Companion Companion = new LifecycleRegistry$Companion(null);
    private int addingObserverCounter;
    private final boolean enforceMainThread;
    private boolean handlingEvent;
    private final WeakReference<LifecycleOwner> lifecycleOwner;
    private boolean newEventOccurred;
    private FastSafeIterableMap<LifecycleObserver, LifecycleRegistry$ObserverWithState> observerMap;
    private ArrayList<Lifecycle$State> parentStates;
    private Lifecycle$State state;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z8) {
        this.enforceMainThread = z8;
        this.observerMap = new FastSafeIterableMap<>();
        this.state = Lifecycle$State.INITIALIZED;
        this.parentStates = new ArrayList<>();
        this.lifecycleOwner = new WeakReference<>(lifecycleOwner);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void backwardPass(LifecycleOwner lifecycleOwner) {
        Iterator<Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState>> itDescendingIterator = this.observerMap.descendingIterator();
        itDescendingIterator.getClass();
        while (itDescendingIterator.hasNext() && !this.newEventOccurred) {
            Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState> next = itDescendingIterator.next();
            next.getClass();
            LifecycleObserver key = next.getKey();
            LifecycleRegistry$ObserverWithState value = next.getValue();
            while (value.getState().compareTo(this.state) > 0 && !this.newEventOccurred && this.observerMap.contains(key)) {
                Lifecycle$Event lifecycle$EventDownFrom = Lifecycle$Event.Companion.downFrom(value.getState());
                if (lifecycle$EventDownFrom == null) {
                    ai.onnxruntime.b.u(value.getState(), "no event down from ");
                    return;
                } else {
                    pushParentState(lifecycle$EventDownFrom.getTargetState());
                    value.dispatchEvent(lifecycleOwner, lifecycle$EventDownFrom);
                    popParentState();
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final Lifecycle$State calculateTargetState(LifecycleObserver observer) {
        LifecycleRegistry$ObserverWithState value;
        Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState> map$EntryCeil = this.observerMap.ceil(observer);
        Lifecycle$State lifecycle$State = null;
        Lifecycle$State state = (map$EntryCeil == null || (value = map$EntryCeil.getValue()) == null) ? null : value.getState();
        if (!this.parentStates.isEmpty()) {
            ArrayList<Lifecycle$State> arrayList = this.parentStates;
            lifecycle$State = arrayList.get(arrayList.size() - 1);
        }
        LifecycleRegistry$Companion lifecycleRegistry$Companion = Companion;
        return lifecycleRegistry$Companion.min$lifecycle_runtime_release(lifecycleRegistry$Companion.min$lifecycle_runtime_release(this.state, state), lifecycle$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    @VisibleForTesting
    public static final LifecycleRegistry createUnsafe(LifecycleOwner lifecycleOwner) {
        return Companion.createUnsafe(lifecycleOwner);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void enforceMainThreadIfNeeded(String methodName) {
        if (this.enforceMainThread && !ArchTaskExecutor.getInstance().isMainThread()) {
            throw new IllegalStateException(ai.onnxruntime.a.m("Method ", methodName, " must be called on the main thread").toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void forwardPass(LifecycleOwner lifecycleOwner) {
        SafeIterableMap$IteratorWithAdditions safeIterableMap$IteratorWithAdditionsIteratorWithAdditions = this.observerMap.iteratorWithAdditions();
        safeIterableMap$IteratorWithAdditionsIteratorWithAdditions.getClass();
        while (safeIterableMap$IteratorWithAdditionsIteratorWithAdditions.hasNext() && !this.newEventOccurred) {
            Map$Entry next = safeIterableMap$IteratorWithAdditionsIteratorWithAdditions.next();
            LifecycleObserver lifecycleObserver = (LifecycleObserver) next.getKey();
            LifecycleRegistry$ObserverWithState lifecycleRegistry$ObserverWithState = (LifecycleRegistry$ObserverWithState) next.getValue();
            while (lifecycleRegistry$ObserverWithState.getState().compareTo(this.state) < 0 && !this.newEventOccurred && this.observerMap.contains(lifecycleObserver)) {
                pushParentState(lifecycleRegistry$ObserverWithState.getState());
                Lifecycle$Event lifecycle$EventUpFrom = Lifecycle$Event.Companion.upFrom(lifecycleRegistry$ObserverWithState.getState());
                if (lifecycle$EventUpFrom == null) {
                    ai.onnxruntime.b.u(lifecycleRegistry$ObserverWithState.getState(), "no event up from ");
                    return;
                } else {
                    lifecycleRegistry$ObserverWithState.dispatchEvent(lifecycleOwner, lifecycle$EventUpFrom);
                    popParentState();
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean isSynced() {
        if (this.observerMap.size() == 0) {
            return true;
        }
        Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState> map$EntryEldest = this.observerMap.eldest();
        map$EntryEldest.getClass();
        Lifecycle$State state = map$EntryEldest.getValue().getState();
        Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState> map$EntryNewest = this.observerMap.newest();
        map$EntryNewest.getClass();
        Lifecycle$State state2 = map$EntryNewest.getValue().getState();
        return state == state2 && this.state == state2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final Lifecycle$State min$lifecycle_runtime_release(Lifecycle$State lifecycle$State, Lifecycle$State lifecycle$State2) {
        return Companion.min$lifecycle_runtime_release(lifecycle$State, lifecycle$State2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void moveToState(Lifecycle$State next) {
        Lifecycle$State lifecycle$State = this.state;
        if (lifecycle$State == next) {
            return;
        }
        if (lifecycle$State == Lifecycle$State.INITIALIZED && next == Lifecycle$State.DESTROYED) {
            StringBuilder sb = new StringBuilder("no event down from ");
            sb.append(this.state);
            LifecycleOwner lifecycleOwner = this.lifecycleOwner.get();
            sb.append(" in component ");
            sb.append(lifecycleOwner);
            throw new IllegalStateException(sb.toString().toString());
        }
        this.state = next;
        if (this.handlingEvent || this.addingObserverCounter != 0) {
            this.newEventOccurred = true;
            return;
        }
        this.handlingEvent = true;
        sync();
        this.handlingEvent = false;
        if (this.state == Lifecycle$State.DESTROYED) {
            this.observerMap = new FastSafeIterableMap<>();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void popParentState() {
        ArrayList<Lifecycle$State> arrayList = this.parentStates;
        arrayList.remove(arrayList.size() - 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void pushParentState(Lifecycle$State state) {
        this.parentStates.add(state);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void sync() {
        LifecycleOwner lifecycleOwner = this.lifecycleOwner.get();
        if (lifecycleOwner == null) {
            i.l("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
            return;
        }
        while (!isSynced()) {
            this.newEventOccurred = false;
            Lifecycle$State lifecycle$State = this.state;
            Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState> map$EntryEldest = this.observerMap.eldest();
            map$EntryEldest.getClass();
            if (lifecycle$State.compareTo(map$EntryEldest.getValue().getState()) < 0) {
                backwardPass(lifecycleOwner);
            }
            Map$Entry<LifecycleObserver, LifecycleRegistry$ObserverWithState> map$EntryNewest = this.observerMap.newest();
            if (!this.newEventOccurred && map$EntryNewest != null && this.state.compareTo(map$EntryNewest.getValue().getState()) > 0) {
                forwardPass(lifecycleOwner);
            }
        }
        this.newEventOccurred = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Lifecycle
    public void addObserver(LifecycleObserver observer) {
        LifecycleOwner lifecycleOwner;
        observer.getClass();
        enforceMainThreadIfNeeded("addObserver");
        Lifecycle$State lifecycle$State = this.state;
        Lifecycle$State lifecycle$State2 = Lifecycle$State.DESTROYED;
        if (lifecycle$State != lifecycle$State2) {
            lifecycle$State2 = Lifecycle$State.INITIALIZED;
        }
        LifecycleRegistry$ObserverWithState lifecycleRegistry$ObserverWithState = new LifecycleRegistry$ObserverWithState(observer, lifecycle$State2);
        if (this.observerMap.putIfAbsent(observer, lifecycleRegistry$ObserverWithState) == null && (lifecycleOwner = this.lifecycleOwner.get()) != null) {
            boolean z8 = this.addingObserverCounter != 0 || this.handlingEvent;
            Lifecycle$State lifecycle$StateCalculateTargetState = calculateTargetState(observer);
            this.addingObserverCounter++;
            while (lifecycleRegistry$ObserverWithState.getState().compareTo(lifecycle$StateCalculateTargetState) < 0 && this.observerMap.contains(observer)) {
                pushParentState(lifecycleRegistry$ObserverWithState.getState());
                Lifecycle$Event lifecycle$EventUpFrom = Lifecycle$Event.Companion.upFrom(lifecycleRegistry$ObserverWithState.getState());
                if (lifecycle$EventUpFrom == null) {
                    ai.onnxruntime.b.u(lifecycleRegistry$ObserverWithState.getState(), "no event up from ");
                    return;
                } else {
                    lifecycleRegistry$ObserverWithState.dispatchEvent(lifecycleOwner, lifecycle$EventUpFrom);
                    popParentState();
                    lifecycle$StateCalculateTargetState = calculateTargetState(observer);
                }
            }
            if (!z8) {
                sync();
            }
            this.addingObserverCounter--;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Lifecycle
    /* JADX INFO: renamed from: getCurrentState, reason: from getter */
    public Lifecycle$State getState() {
        return this.state;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getObserverCount() {
        enforceMainThreadIfNeeded("getObserverCount");
        return this.observerMap.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void handleLifecycleEvent(Lifecycle$Event event) {
        event.getClass();
        enforceMainThreadIfNeeded("handleLifecycleEvent");
        moveToState(event.getTargetState());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated(message = "Override [currentState].")
    @MainThread
    public void markState(Lifecycle$State state) {
        state.getClass();
        enforceMainThreadIfNeeded("markState");
        setCurrentState(state);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Lifecycle
    public void removeObserver(LifecycleObserver observer) {
        observer.getClass();
        enforceMainThreadIfNeeded("removeObserver");
        this.observerMap.remove(observer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCurrentState(Lifecycle$State lifecycle$State) {
        lifecycle$State.getClass();
        enforceMainThreadIfNeeded("setCurrentState");
        moveToState(lifecycle$State);
    }

    public /* synthetic */ LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z8, DefaultConstructorMarker defaultConstructorMarker) {
        this(lifecycleOwner, z8);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LifecycleRegistry(LifecycleOwner lifecycleOwner) {
        this(lifecycleOwner, true);
        lifecycleOwner.getClass();
    }
}
