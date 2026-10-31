package androidx.lifecycle;

import a9.q;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import c9.d;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.i;
import v8.e;
import v8.h0;
import v8.t;
import w8.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a5\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a-\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a-\u0010\n\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\n\u0010\t\u001a-\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\t\u001a5\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\r\u001a-\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\b\u0010\u000e\u001a-\u0010\n\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000e\u001a-\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\f2\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u000e\u001a5\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u000e\b\u0004\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0081Hø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0007\u001aC\u0010\u0014\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0081@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"R", "Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/Lifecycle$State;", "state", "Lkotlin/Function0;", "block", "withStateAtLeast", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withCreated", "(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withStarted", "withResumed", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withStateAtLeastUnchecked", "", "dispatchNeeded", "Lv8/t;", "lifecycleDispatcher", "suspendWithStateAtLeastUnchecked", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLv8/t;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nWithLifecycleState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WithLifecycleState.kt\nandroidx/lifecycle/WithLifecycleStateKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,206:1\n154#1,8:207\n154#1,8:215\n154#1,8:223\n154#1,8:231\n43#1,5:239\n154#1,8:244\n43#1,5:252\n154#1,8:257\n154#1,8:265\n154#1,8:273\n154#1,8:281\n314#2,11:289\n*S KotlinDebug\n*F\n+ 1 WithLifecycleState.kt\nandroidx/lifecycle/WithLifecycleStateKt\n*L\n47#1:207,8\n58#1:215,8\n71#1:223,8\n84#1:231,8\n98#1:239,5\n98#1:244,8\n98#1:252,5\n98#1:257,8\n111#1:265,8\n124#1:273,8\n137#1:281,8\n177#1:289,11\n*E\n"})
public final class WithLifecycleStateKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @PublishedApi
    public static final <R> Object suspendWithStateAtLeastUnchecked(Lifecycle lifecycle, Lifecycle$State lifecycle$State, boolean z8, t tVar, Function0<? extends R> function0, Continuation<? super R> continuation) {
        e eVar = new e(1, IntrinsicsKt.intercepted(continuation));
        eVar.r();
        WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 = new WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1(lifecycle$State, lifecycle, eVar, function0);
        if (z8) {
            tVar.dispatch(EmptyCoroutineContext.INSTANCE, new WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$1(lifecycle, withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1));
        } else {
            lifecycle.addObserver(withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1);
        }
        eVar.t(new WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2(tVar, lifecycle, withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1));
        Object objQ = eVar.q();
        if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objQ;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <R> Object withCreated(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
        d dVar = h0.a;
        c cVar = q.a.d;
        boolean zIsDispatchNeeded = cVar.isDispatchNeeded(continuation.get$context());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle$State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(lifecycle$State) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, lifecycle$State, zIsDispatchNeeded, cVar, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final <R> Object withCreated$$forInline(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        lifecycleOwner.getLifecycle();
        Lifecycle$State lifecycle$State = Lifecycle$State.DESTROYED;
        d dVar = h0.a;
        c cVar = q.a.d;
        InlineMarker.mark(3);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <R> Object withResumed(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle$State lifecycle$State = Lifecycle$State.RESUMED;
        d dVar = h0.a;
        c cVar = q.a.d;
        boolean zIsDispatchNeeded = cVar.isDispatchNeeded(continuation.get$context());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle$State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(lifecycle$State) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, lifecycle$State, zIsDispatchNeeded, cVar, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final <R> Object withResumed$$forInline(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        lifecycleOwner.getLifecycle();
        Lifecycle$State lifecycle$State = Lifecycle$State.DESTROYED;
        d dVar = h0.a;
        c cVar = q.a.d;
        InlineMarker.mark(3);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <R> Object withStarted(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle$State lifecycle$State = Lifecycle$State.STARTED;
        d dVar = h0.a;
        c cVar = q.a.d;
        boolean zIsDispatchNeeded = cVar.isDispatchNeeded(continuation.get$context());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle$State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(lifecycle$State) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, lifecycle$State, zIsDispatchNeeded, cVar, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final <R> Object withStarted$$forInline(LifecycleOwner lifecycleOwner, Function0<? extends R> function0, Continuation<? super R> continuation) {
        lifecycleOwner.getLifecycle();
        Lifecycle$State lifecycle$State = Lifecycle$State.DESTROYED;
        d dVar = h0.a;
        c cVar = q.a.d;
        InlineMarker.mark(3);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <R> Object withStateAtLeast(LifecycleOwner lifecycleOwner, Lifecycle$State lifecycle$State, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle$State.compareTo(Lifecycle$State.CREATED) < 0) {
            i.e(lifecycle$State, "target state must be CREATED or greater, found ");
            return null;
        }
        d dVar = h0.a;
        c cVar = q.a.d;
        boolean zIsDispatchNeeded = cVar.isDispatchNeeded(continuation.get$context());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle$State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(lifecycle$State) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, lifecycle$State, zIsDispatchNeeded, cVar, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final <R> Object withStateAtLeast$$forInline(LifecycleOwner lifecycleOwner, Lifecycle$State lifecycle$State, Function0<? extends R> function0, Continuation<? super R> continuation) {
        lifecycleOwner.getLifecycle();
        if (lifecycle$State.compareTo(Lifecycle$State.CREATED) < 0) {
            throw new IllegalArgumentException(("target state must be CREATED or greater, found " + lifecycle$State).toString());
        }
        d dVar = h0.a;
        c cVar = q.a.d;
        InlineMarker.mark(3);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @PublishedApi
    public static final <R> Object withStateAtLeastUnchecked(Lifecycle lifecycle, Lifecycle$State lifecycle$State, Function0<? extends R> function0, Continuation<? super R> continuation) {
        d dVar = h0.a;
        c cVar = q.a.d;
        boolean zIsDispatchNeeded = cVar.isDispatchNeeded(continuation.get$context());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() == Lifecycle$State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getState().compareTo(lifecycle$State) >= 0) {
                return function0.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, lifecycle$State, zIsDispatchNeeded, cVar, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @PublishedApi
    private static final <R> Object withStateAtLeastUnchecked$$forInline(Lifecycle lifecycle, Lifecycle$State lifecycle$State, Function0<? extends R> function0, Continuation<? super R> continuation) {
        d dVar = h0.a;
        c cVar = q.a.d;
        InlineMarker.mark(3);
        throw null;
    }

    private static final <R> Object withCreated$$forInline(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle$State lifecycle$State = Lifecycle$State.DESTROYED;
        d dVar = h0.a;
        c cVar = q.a.d;
        InlineMarker.mark(3);
        throw null;
    }

    private static final <R> Object withResumed$$forInline(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle$State lifecycle$State = Lifecycle$State.DESTROYED;
        d dVar = h0.a;
        c cVar = q.a.d;
        InlineMarker.mark(3);
        throw null;
    }

    private static final <R> Object withStarted$$forInline(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle$State lifecycle$State = Lifecycle$State.DESTROYED;
        d dVar = h0.a;
        c cVar = q.a.d;
        InlineMarker.mark(3);
        throw null;
    }

    private static final <R> Object withStateAtLeast$$forInline(Lifecycle lifecycle, Lifecycle$State lifecycle$State, Function0<? extends R> function0, Continuation<? super R> continuation) {
        if (lifecycle$State.compareTo(Lifecycle$State.CREATED) >= 0) {
            d dVar = h0.a;
            c cVar = q.a.d;
            InlineMarker.mark(3);
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + lifecycle$State).toString());
    }

    public static final <R> Object withCreated(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
        d dVar = h0.a;
        c cVar = q.a.d;
        boolean zIsDispatchNeeded = cVar.isDispatchNeeded(continuation.get$context());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() != Lifecycle$State.DESTROYED) {
                if (lifecycle.getState().compareTo(lifecycle$State) >= 0) {
                    return function0.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, lifecycle$State, zIsDispatchNeeded, cVar, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    public static final <R> Object withResumed(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle$State lifecycle$State = Lifecycle$State.RESUMED;
        d dVar = h0.a;
        c cVar = q.a.d;
        boolean zIsDispatchNeeded = cVar.isDispatchNeeded(continuation.get$context());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() != Lifecycle$State.DESTROYED) {
                if (lifecycle.getState().compareTo(lifecycle$State) >= 0) {
                    return function0.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, lifecycle$State, zIsDispatchNeeded, cVar, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    public static final <R> Object withStarted(Lifecycle lifecycle, Function0<? extends R> function0, Continuation<? super R> continuation) {
        Lifecycle$State lifecycle$State = Lifecycle$State.STARTED;
        d dVar = h0.a;
        c cVar = q.a.d;
        boolean zIsDispatchNeeded = cVar.isDispatchNeeded(continuation.get$context());
        if (!zIsDispatchNeeded) {
            if (lifecycle.getState() != Lifecycle$State.DESTROYED) {
                if (lifecycle.getState().compareTo(lifecycle$State) >= 0) {
                    return function0.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, lifecycle$State, zIsDispatchNeeded, cVar, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
    }

    public static final <R> Object withStateAtLeast(Lifecycle lifecycle, Lifecycle$State lifecycle$State, Function0<? extends R> function0, Continuation<? super R> continuation) {
        if (lifecycle$State.compareTo(Lifecycle$State.CREATED) >= 0) {
            d dVar = h0.a;
            c cVar = q.a.d;
            boolean zIsDispatchNeeded = cVar.isDispatchNeeded(continuation.get$context());
            if (!zIsDispatchNeeded) {
                if (lifecycle.getState() != Lifecycle$State.DESTROYED) {
                    if (lifecycle.getState().compareTo(lifecycle$State) >= 0) {
                        return function0.invoke();
                    }
                } else {
                    throw new LifecycleDestroyedException();
                }
            }
            return suspendWithStateAtLeastUnchecked(lifecycle, lifecycle$State, zIsDispatchNeeded, cVar, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(function0), continuation);
        }
        i.e(lifecycle$State, "target state must be CREATED or greater, found ");
        return null;
    }
}
