package androidx.lifecycle;

import d9.c;
import d9.e;
import d9.j;
import j1.i;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import v8.a0;
import v8.x;
import v8.y;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lv8/x;", "", "<anonymous>", "(Lv8/x;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", i = {0, 1}, l = {171, 110}, m = "invokeSuspend", n = {"$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$0"})
@SourceDebugExtension({"SMAP\nRepeatOnLifecycle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,165:1\n107#2,10:166\n*S KotlinDebug\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1\n*L\n109#1:166,10\n*E\n"})
public final class RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1 extends SuspendLambda implements Function2<x, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<x, Continuation<? super Unit>, Object> $block;
    final /* synthetic */ d9.a $mutex;
    Object L$0;
    Object L$1;
    int label;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1(d9.a aVar, Function2<? super x, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1> continuation) {
        super(2, continuation);
        this.$mutex = aVar;
        this.$block = function2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1(this.$mutex, this.$block, continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(x xVar, Continuation<? super Unit> continuation) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1) create(xVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        d9.a aVar;
        Function2<x, Continuation<? super Unit>, Object> function2;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i9;
        Object objQ;
        d9.a aVar2;
        Throwable th;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                aVar = this.$mutex;
                function2 = this.$block;
                this.L$0 = aVar;
                this.L$1 = function2;
                this.label = 1;
                e eVar = (e) aVar;
                eVar.getClass();
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e.g;
                while (true) {
                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = j.f;
                    int i11 = atomicIntegerFieldUpdater2.get(eVar);
                    if (i11 > 1) {
                        do {
                            atomicIntegerFieldUpdater = j.f;
                            i9 = atomicIntegerFieldUpdater.get(eVar);
                            if (i9 <= 1) {
                                break;
                            }
                        } while (!atomicIntegerFieldUpdater.compareAndSet(eVar, i9, 1));
                    } else {
                        if (i11 <= 0) {
                            v8.e eVarB = a0.b(IntrinsicsKt.intercepted(this));
                            try {
                                eVar.a(new c(eVar, eVarB));
                                objQ = eVarB.q();
                                if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    DebugProbesKt.probeCoroutineSuspended(this);
                                }
                                if (objQ != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    objQ = Unit.INSTANCE;
                                }
                                if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    break;
                                }
                                objQ = Unit.INSTANCE;
                                break;
                            } catch (Throwable th2) {
                                eVarB.x();
                                throw th2;
                            }
                        }
                        if (atomicIntegerFieldUpdater2.compareAndSet(eVar, i11, i11 - 1)) {
                            atomicReferenceFieldUpdater.set(eVar, null);
                            objQ = Unit.INSTANCE;
                            break;
                        }
                    }
                }
                if (objQ != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i10 != 1) {
                if (i10 != 2) {
                    i.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                aVar2 = (d9.a) this.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    Unit unit = Unit.INSTANCE;
                    ((e) aVar2).c((Object) null);
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    ((e) aVar2).c((Object) null);
                    throw th;
                }
            }
            function2 = (Function2) this.L$1;
            d9.a aVar3 = (d9.a) this.L$0;
            ResultKt.throwOnFailure(obj);
            aVar = aVar3;
            RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(function2, null);
            this.L$0 = aVar;
            this.L$1 = null;
            this.label = 2;
            if (y.a(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1, this) != coroutine_suspended) {
                aVar2 = aVar;
                Unit unit2 = Unit.INSTANCE;
                ((e) aVar2).c((Object) null);
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Throwable th4) {
            aVar2 = aVar;
            th = th4;
            ((e) aVar2).c((Object) null);
            throw th;
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(x xVar, Continuation<? super Unit> continuation) {
        return invoke2(xVar, continuation);
    }
}
