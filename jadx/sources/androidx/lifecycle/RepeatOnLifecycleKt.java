package androidx.lifecycle;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import p010a9.AbstractC0055q;
import p034c9.C1018d;
import p046d9.C1317c;
import p046d9.C1319e;
import p046d9.C1324j;
import p046d9.InterfaceC1315a;
import p099j1.C1929i;
import p224v8.AbstractC3366a0;
import p224v8.AbstractC3387h0;
import p224v8.AbstractC3436y;
import p224v8.C3377e;
import p224v8.InterfaceC3374d;
import p224v8.InterfaceC3434x;
import p224v8.InterfaceC3439z0;
import p233w8.C3540c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aH\u0010\n\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003¢\u0006\u0002\b\bH\u0086@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001aH\u0010\n\u001a\u00020\u0006*\u00020\f2\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003¢\u0006\u0002\b\bH\u0086@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m3159d2 = {"Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/Lifecycle$State;", "state", "Lkotlin/Function2;", "Lv8/x;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "repeatOnLifecycle", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/lifecycle/LifecycleOwner;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lifecycle-runtime-ktx_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class RepeatOnLifecycleKt {

    /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, m3159d2 = {"Lv8/x;", "", "<anonymous>", "(Lv8/x;)V"}, m3160k = 3, m3161mv = {1, 8, 0})
    @DebugMetadata(m3255c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", m3256f = "RepeatOnLifecycle.kt", m3257i = {}, m3258l = {84}, m3259m = "invokeSuspend", m3260n = {}, m3261s = {})
    public static final class C05833 extends SuspendLambda implements Function2<InterfaceC3434x, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<InterfaceC3434x, Continuation<? super Unit>, Object> $block;
        final /* synthetic */ Lifecycle.State $state;
        final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1, reason: invalid class name */
        /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
        @Metadata(m3158d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, m3159d2 = {"Lv8/x;", "", "<anonymous>", "(Lv8/x;)V"}, m3160k = 3, m3161mv = {1, 8, 0})
        @DebugMetadata(m3255c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", m3256f = "RepeatOnLifecycle.kt", m3257i = {0, 0}, m3258l = {166}, m3259m = "invokeSuspend", m3260n = {"launchedJob", "observer"}, m3261s = {"L$0", "L$1"})
        @SourceDebugExtension({"SMAP\nRepeatOnLifecycle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,165:1\n314#2,11:166\n*S KotlinDebug\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1\n*L\n97#1:166,11\n*E\n"})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<InterfaceC3434x, Continuation<? super Unit>, Object> {
            final /* synthetic */ InterfaceC3434x $$this$coroutineScope;
            final /* synthetic */ Function2<InterfaceC3434x, Continuation<? super Unit>, Object> $block;
            final /* synthetic */ Lifecycle.State $state;
            final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
            Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            Object L$4;
            Object L$5;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, InterfaceC3434x interfaceC3434x, Function2<? super InterfaceC3434x, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$this_repeatOnLifecycle = lifecycle;
                this.$state = state;
                this.$$this$coroutineScope = interfaceC3434x;
                this.$block = function2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(InterfaceC3434x interfaceC3434x, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(interfaceC3434x, continuation)).invokeSuspend(Unit.INSTANCE);
            }

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
                Ref.ObjectRef objectRef;
                Throwable th;
                Ref.ObjectRef objectRef2;
                InterfaceC3439z0 interfaceC3439z0;
                LifecycleEventObserver lifecycleEventObserver;
                InterfaceC3439z0 interfaceC3439z1;
                LifecycleEventObserver lifecycleEventObserver2;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 != 1) {
                        C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    objectRef = (Ref.ObjectRef) this.L$1;
                    objectRef2 = (Ref.ObjectRef) this.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                        interfaceC3439z1 = (InterfaceC3439z0) objectRef2.element;
                        if (interfaceC3439z1 != null) {
                            interfaceC3439z1.mo5330c(null);
                        }
                        lifecycleEventObserver2 = (LifecycleEventObserver) objectRef.element;
                        if (lifecycleEventObserver2 != null) {
                            this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver2);
                        }
                        return Unit.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                        interfaceC3439z0 = (InterfaceC3439z0) objectRef2.element;
                        if (interfaceC3439z0 != null) {
                            interfaceC3439z0.mo5330c(null);
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) objectRef.element;
                        if (lifecycleEventObserver != null) {
                            throw th;
                        }
                        this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver);
                        throw th;
                    }
                }
                ResultKt.throwOnFailure(obj);
                if (this.$this_repeatOnLifecycle.getState() == Lifecycle.State.DESTROYED) {
                    return Unit.INSTANCE;
                }
                final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                objectRef = new Ref.ObjectRef();
                try {
                    Lifecycle.State state = this.$state;
                    Lifecycle lifecycle = this.$this_repeatOnLifecycle;
                    final InterfaceC3434x interfaceC3434x = this.$$this$coroutineScope;
                    final Function2<InterfaceC3434x, Continuation<? super Unit>, Object> function2 = this.$block;
                    this.L$0 = objectRef3;
                    this.L$1 = objectRef;
                    this.L$2 = state;
                    this.L$3 = lifecycle;
                    this.L$4 = interfaceC3434x;
                    this.L$5 = function2;
                    this.label = 1;
                    final C3377e c3377e = new C3377e(1, IntrinsicsKt.intercepted(this));
                    c3377e.m5307r();
                    Lifecycle.Event.Companion companion = Lifecycle.Event.INSTANCE;
                    final Lifecycle.Event eventUpTo = companion.upTo(state);
                    final Lifecycle.Event eventDownFrom = companion.downFrom(state);
                    final C1319e c1319e = new C1319e();
                    ?? r9 = new LifecycleEventObserver() { // from class: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1

                        /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1 */
                        /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
                        @Metadata(m3158d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, m3159d2 = {"Lv8/x;", "", "<anonymous>", "(Lv8/x;)V"}, m3160k = 3, m3161mv = {1, 8, 0})
                        @DebugMetadata(m3255c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", m3256f = "RepeatOnLifecycle.kt", m3257i = {0, 1}, m3258l = {171, 110}, m3259m = "invokeSuspend", m3260n = {"$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, m3261s = {"L$0", "L$0"})
                        @SourceDebugExtension({"SMAP\nRepeatOnLifecycle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,165:1\n107#2,10:166\n*S KotlinDebug\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1\n*L\n109#1:166,10\n*E\n"})
                        public static final class C05841 extends SuspendLambda implements Function2<InterfaceC3434x, Continuation<? super Unit>, Object> {
                            final /* synthetic */ Function2<InterfaceC3434x, Continuation<? super Unit>, Object> $block;
                            final /* synthetic */ InterfaceC1315a $mutex;
                            Object L$0;
                            Object L$1;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            public C05841(InterfaceC1315a interfaceC1315a, Function2<? super InterfaceC3434x, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C05841> continuation) {
                                super(2, continuation);
                                this.$mutex = interfaceC1315a;
                                this.$block = function2;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                return new C05841(this.$mutex, this.$block, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(InterfaceC3434x interfaceC3434x, Continuation<? super Unit> continuation) {
                                return ((C05841) create(interfaceC3434x, continuation)).invokeSuspend(Unit.INSTANCE);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) throws Throwable {
                                InterfaceC1315a interfaceC1315a;
                                Function2<InterfaceC3434x, Continuation<? super Unit>, Object> function2;
                                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
                                int i10;
                                Object objM5306q;
                                InterfaceC1315a interfaceC1315a2;
                                Throwable th;
                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                int i11 = this.label;
                                try {
                                    if (i11 == 0) {
                                        ResultKt.throwOnFailure(obj);
                                        interfaceC1315a = this.$mutex;
                                        function2 = this.$block;
                                        this.L$0 = interfaceC1315a;
                                        this.L$1 = function2;
                                        this.label = 1;
                                        C1319e c1319e = (C1319e) interfaceC1315a;
                                        c1319e.getClass();
                                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C1319e.f3143g;
                                        while (true) {
                                            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = C1324j.f3153f;
                                            int i12 = atomicIntegerFieldUpdater2.get(c1319e);
                                            if (i12 > 1) {
                                                do {
                                                    atomicIntegerFieldUpdater = C1324j.f3153f;
                                                    i10 = atomicIntegerFieldUpdater.get(c1319e);
                                                    if (i10 <= 1) {
                                                        break;
                                                    }
                                                } while (!atomicIntegerFieldUpdater.compareAndSet(c1319e, i10, 1));
                                            } else {
                                                if (i12 <= 0) {
                                                    C3377e c3377eM5283b = AbstractC3366a0.m5283b(IntrinsicsKt.intercepted(this));
                                                    try {
                                                        c1319e.m2363a(new C1317c(c1319e, c3377eM5283b));
                                                        objM5306q = c3377eM5283b.m5306q();
                                                        if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                                            DebugProbesKt.probeCoroutineSuspended(this);
                                                        }
                                                        if (objM5306q != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                                            objM5306q = Unit.INSTANCE;
                                                        }
                                                        if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                                            break;
                                                        }
                                                        objM5306q = Unit.INSTANCE;
                                                        break;
                                                    } catch (Throwable th2) {
                                                        c3377eM5283b.m5312x();
                                                        throw th2;
                                                    }
                                                }
                                                if (atomicIntegerFieldUpdater2.compareAndSet(c1319e, i12, i12 - 1)) {
                                                    atomicReferenceFieldUpdater.set(c1319e, null);
                                                    objM5306q = Unit.INSTANCE;
                                                    break;
                                                }
                                            }
                                        }
                                        if (objM5306q != coroutine_suspended) {
                                        }
                                        return coroutine_suspended;
                                    }
                                    if (i11 != 1) {
                                        if (i11 != 2) {
                                            C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                                            return null;
                                        }
                                        interfaceC1315a2 = (InterfaceC1315a) this.L$0;
                                        try {
                                            ResultKt.throwOnFailure(obj);
                                            Unit unit = Unit.INSTANCE;
                                            ((C1319e) interfaceC1315a2).m2362c(null);
                                            return Unit.INSTANCE;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            ((C1319e) interfaceC1315a2).m2362c(null);
                                            throw th;
                                        }
                                    }
                                    function2 = (Function2) this.L$1;
                                    InterfaceC1315a interfaceC1315a3 = (InterfaceC1315a) this.L$0;
                                    ResultKt.throwOnFailure(obj);
                                    interfaceC1315a = interfaceC1315a3;
                                    RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(function2, null);
                                    this.L$0 = interfaceC1315a;
                                    this.L$1 = null;
                                    this.label = 2;
                                    if (AbstractC3436y.m5359a(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1, this) != coroutine_suspended) {
                                        interfaceC1315a2 = interfaceC1315a;
                                        Unit unit2 = Unit.INSTANCE;
                                        ((C1319e) interfaceC1315a2).m2362c(null);
                                        return Unit.INSTANCE;
                                    }
                                    return coroutine_suspended;
                                } catch (Throwable th4) {
                                    interfaceC1315a2 = interfaceC1315a;
                                    th = th4;
                                    ((C1319e) interfaceC1315a2).m2362c(null);
                                    throw th;
                                }
                            }
                        }

                        /* JADX WARN: Type inference failed for: r6v5, types: [T, v8.n1] */
                        @Override // androidx.lifecycle.LifecycleEventObserver
                        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                            lifecycleOwner.getClass();
                            event.getClass();
                            if (event == eventUpTo) {
                                objectRef3.element = AbstractC3366a0.m5284c(interfaceC3434x, null, new C05841(c1319e, function2, null), 3);
                                return;
                            }
                            if (event == eventDownFrom) {
                                InterfaceC3439z0 interfaceC3439z2 = objectRef3.element;
                                if (interfaceC3439z2 != null) {
                                    interfaceC3439z2.mo5330c(null);
                                }
                                objectRef3.element = null;
                            }
                            if (event == Lifecycle.Event.ON_DESTROY) {
                                InterfaceC3374d interfaceC3374d = c3377e;
                                Result.Companion companion2 = Result.INSTANCE;
                                interfaceC3374d.resumeWith(Result.m6088constructorimpl(Unit.INSTANCE));
                            }
                        }
                    };
                    objectRef.element = r9;
                    lifecycle.addObserver(r9);
                    Object objM5306q = c3377e.m5306q();
                    if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(this);
                    }
                    if (objM5306q == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    objectRef2 = objectRef3;
                    interfaceC3439z1 = (InterfaceC3439z0) objectRef2.element;
                    if (interfaceC3439z1 != null) {
                        interfaceC3439z1.mo5330c(null);
                    }
                    lifecycleEventObserver2 = (LifecycleEventObserver) objectRef.element;
                    if (lifecycleEventObserver2 != null) {
                        this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver2);
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    objectRef2 = objectRef3;
                    interfaceC3439z0 = (InterfaceC3439z0) objectRef2.element;
                    if (interfaceC3439z0 != null) {
                        interfaceC3439z0.mo5330c(null);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) objectRef.element;
                    if (lifecycleEventObserver != null) {
                        throw th;
                    }
                    this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver);
                    throw th;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C05833(Lifecycle lifecycle, Lifecycle.State state, Function2<? super InterfaceC3434x, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C05833> continuation) {
            super(2, continuation);
            this.$this_repeatOnLifecycle = lifecycle;
            this.$state = state;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05833 c05833 = new C05833(this.$this_repeatOnLifecycle, this.$state, this.$block, continuation);
            c05833.L$0 = obj;
            return c05833;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InterfaceC3434x interfaceC3434x, Continuation<? super Unit> continuation) {
            return ((C05833) create(interfaceC3434x, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                InterfaceC3434x interfaceC3434x = (InterfaceC3434x) this.L$0;
                C1018d c1018d = AbstractC3387h0.f9879a;
                C3540c c3540c = AbstractC0055q.f145a.f10512d;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, interfaceC3434x, this.$block, null);
                this.label = 1;
                if (AbstractC3366a0.m5286e(c3540c, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static final Object repeatOnLifecycle(Lifecycle lifecycle, Lifecycle.State state, Function2<? super InterfaceC3434x, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        if (state == Lifecycle.State.INITIALIZED) {
            C1929i.m3029k("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
            return null;
        }
        if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
            return Unit.INSTANCE;
        }
        Object objM5359a = AbstractC3436y.m5359a(new C05833(lifecycle, state, function2, null), continuation);
        return objM5359a == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM5359a : Unit.INSTANCE;
    }

    public static final Object repeatOnLifecycle(LifecycleOwner lifecycleOwner, Lifecycle.State state, Function2<? super InterfaceC3434x, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object objRepeatOnLifecycle = repeatOnLifecycle(lifecycleOwner.getLifecycle(), state, function2, continuation);
        return objRepeatOnLifecycle == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRepeatOnLifecycle : Unit.INSTANCE;
    }
}
