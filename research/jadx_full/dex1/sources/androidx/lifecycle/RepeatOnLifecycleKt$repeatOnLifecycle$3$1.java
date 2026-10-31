package androidx.lifecycle;

import j1.i;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.SourceDebugExtension;
import v8.e;
import v8.x;
import v8.z0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lv8/x;", "", "<anonymous>", "(Lv8/x;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", i = {0, 0}, l = {166}, m = "invokeSuspend", n = {"launchedJob", "observer"}, s = {"L$0", "L$1"})
@SourceDebugExtension({"SMAP\nRepeatOnLifecycle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,165:1\n314#2,11:166\n*S KotlinDebug\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1\n*L\n97#1:166,11\n*E\n"})
public final class RepeatOnLifecycleKt$repeatOnLifecycle$3$1 extends SuspendLambda implements Function2<x, Continuation<? super Unit>, Object> {
    final /* synthetic */ x $$this$coroutineScope;
    final /* synthetic */ Function2<x, Continuation<? super Unit>, Object> $block;
    final /* synthetic */ Lifecycle$State $state;
    final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepeatOnLifecycleKt$repeatOnLifecycle$3$1(Lifecycle lifecycle, Lifecycle$State lifecycle$State, x xVar, Function2<? super x, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super RepeatOnLifecycleKt$repeatOnLifecycle$3$1> continuation) {
        super(2, continuation);
        this.$this_repeatOnLifecycle = lifecycle;
        this.$state = lifecycle$State;
        this.$$this$coroutineScope = xVar;
        this.$block = function2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RepeatOnLifecycleKt$repeatOnLifecycle$3$1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(x xVar, Continuation<? super Unit> continuation) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3$1) create(xVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r11v0, resolved type: androidx.lifecycle.Lifecycle */
    /* JADX WARN: Code duplicated, block: B:28:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00be  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:45:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [T, androidx.lifecycle.LifecycleObserver, androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$ObjectRef ref$ObjectRef;
        Throwable th;
        Ref$ObjectRef ref$ObjectRef2;
        z0 z0Var;
        LifecycleEventObserver lifecycleEventObserver;
        z0 z0Var2;
        LifecycleEventObserver lifecycleEventObserver2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 != 0) {
            if (i9 != 1) {
                i.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$ObjectRef = (Ref$ObjectRef) this.L$1;
            ref$ObjectRef2 = (Ref$ObjectRef) this.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                z0Var2 = (z0) ref$ObjectRef2.element;
                if (z0Var2 != null) {
                    z0Var2.c((CancellationException) null);
                }
                lifecycleEventObserver2 = (LifecycleEventObserver) ref$ObjectRef.element;
                if (lifecycleEventObserver2 != null) {
                    this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver2);
                }
                return Unit.INSTANCE;
            } catch (Throwable th2) {
                th = th2;
                z0Var = (z0) ref$ObjectRef2.element;
                if (z0Var != null) {
                    z0Var.c((CancellationException) null);
                }
                lifecycleEventObserver = (LifecycleEventObserver) ref$ObjectRef.element;
                if (lifecycleEventObserver != null) {
                    throw th;
                }
                this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver);
                throw th;
            }
        }
        ResultKt.throwOnFailure(obj);
        if (this.$this_repeatOnLifecycle.getState() == Lifecycle$State.DESTROYED) {
            return Unit.INSTANCE;
        }
        Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        ref$ObjectRef = new Ref$ObjectRef();
        try {
            Lifecycle$State lifecycle$State = this.$state;
            Lifecycle lifecycle = this.$this_repeatOnLifecycle;
            x xVar = this.$$this$coroutineScope;
            Function2<x, Continuation<? super Unit>, Object> function2 = this.$block;
            this.L$0 = ref$ObjectRef3;
            this.L$1 = ref$ObjectRef;
            this.L$2 = lifecycle$State;
            this.L$3 = lifecycle;
            this.L$4 = xVar;
            this.L$5 = function2;
            this.label = 1;
            e eVar = new e(1, IntrinsicsKt.intercepted(this));
            eVar.r();
            Lifecycle$Event$Companion lifecycle$Event$Companion = Lifecycle$Event.Companion;
            ?? repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1(lifecycle$Event$Companion.upTo(lifecycle$State), ref$ObjectRef3, xVar, lifecycle$Event$Companion.downFrom(lifecycle$State), eVar, new d9.e(), function2);
            ref$ObjectRef.element = repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;
            lifecycle.addObserver(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1);
            Object objQ = eVar.q();
            if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(this);
            }
            if (objQ == coroutine_suspended) {
                return coroutine_suspended;
            }
            ref$ObjectRef2 = ref$ObjectRef3;
            z0Var2 = (z0) ref$ObjectRef2.element;
            if (z0Var2 != null) {
                z0Var2.c((CancellationException) null);
            }
            lifecycleEventObserver2 = (LifecycleEventObserver) ref$ObjectRef.element;
            if (lifecycleEventObserver2 != null) {
                this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver2);
            }
            return Unit.INSTANCE;
        } catch (Throwable th3) {
            th = th3;
            ref$ObjectRef2 = ref$ObjectRef3;
            z0Var = (z0) ref$ObjectRef2.element;
            if (z0Var != null) {
                z0Var.c((CancellationException) null);
            }
            lifecycleEventObserver = (LifecycleEventObserver) ref$ObjectRef.element;
            if (lifecycleEventObserver != null) {
                throw th;
            }
            this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver);
            throw th;
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(x xVar, Continuation<? super Unit> continuation) {
        return invoke2(xVar, continuation);
    }
}
