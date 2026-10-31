package androidx.lifecycle;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import p099j1.C1929i;
import p120l.C2187d;
import p224v8.InterfaceC3434x;
import p243x8.AbstractC3603g;
import p243x8.InterfaceC3613q;
import p243x8.InterfaceC3614r;
import p253y8.InterfaceC3669f;
import p253y8.InterfaceC3670g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a5\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m3159d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Ly8/f;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/lifecycle/Lifecycle$State;", "minActiveState", "flowWithLifecycle", "(Ly8/f;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Ly8/f;", "lifecycle-runtime-ktx_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FlowExtKt {

    /* JADX INFO: renamed from: androidx.lifecycle.FlowExtKt$flowWithLifecycle$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m3159d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lx8/q;", "", "<anonymous>", "(Lx8/q;)V"}, m3160k = 3, m3161mv = {1, 8, 0})
    @DebugMetadata(m3255c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1", m3256f = "FlowExt.kt", m3257i = {0}, m3258l = {91}, m3259m = "invokeSuspend", m3260n = {"$this$callbackFlow"}, m3261s = {"L$0"})
    public static final class C05751 extends SuspendLambda implements Function2<InterfaceC3613q, Continuation<? super Unit>, Object> {
        final /* synthetic */ Lifecycle $lifecycle;
        final /* synthetic */ Lifecycle.State $minActiveState;
        final /* synthetic */ InterfaceC3669f $this_flowWithLifecycle;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1, reason: invalid class name */
        /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
        @Metadata(m3158d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m3159d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lv8/x;", "", "<anonymous>", "(Lv8/x;)V"}, m3160k = 3, m3161mv = {1, 8, 0})
        @DebugMetadata(m3255c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1", m3256f = "FlowExt.kt", m3257i = {}, m3258l = {92}, m3259m = "invokeSuspend", m3260n = {}, m3261s = {})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<InterfaceC3434x, Continuation<? super Unit>, Object> {
            final /* synthetic */ InterfaceC3613q $$this$callbackFlow;
            final /* synthetic */ InterfaceC3669f $this_flowWithLifecycle;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(InterfaceC3669f interfaceC3669f, InterfaceC3613q interfaceC3613q, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$this_flowWithLifecycle = interfaceC3669f;
                this.$$this$callbackFlow = interfaceC3613q;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$this_flowWithLifecycle, this.$$this$callbackFlow, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(InterfaceC3434x interfaceC3434x, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(interfaceC3434x, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    InterfaceC3669f interfaceC3669f = this.$this_flowWithLifecycle;
                    final InterfaceC3613q interfaceC3613q = this.$$this$callbackFlow;
                    InterfaceC3670g interfaceC3670g = new InterfaceC3670g() { // from class: androidx.lifecycle.FlowExtKt.flowWithLifecycle.1.1.1
                        @Override // p253y8.InterfaceC3670g
                        public final Object emit(T t, Continuation<? super Unit> continuation) {
                            Object objMo5733f = ((AbstractC3603g) interfaceC3613q).f10693e.mo5733f(t, continuation);
                            return objMo5733f == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo5733f : Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (interfaceC3669f.collect(interfaceC3670g, this) == coroutine_suspended) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05751(Lifecycle lifecycle, Lifecycle.State state, InterfaceC3669f interfaceC3669f, Continuation<? super C05751> continuation) {
            super(2, continuation);
            this.$lifecycle = lifecycle;
            this.$minActiveState = state;
            this.$this_flowWithLifecycle = interfaceC3669f;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05751 c05751 = new C05751(this.$lifecycle, this.$minActiveState, this.$this_flowWithLifecycle, continuation);
            c05751.L$0 = obj;
            return c05751;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InterfaceC3613q interfaceC3613q, Continuation<? super Unit> continuation) {
            return ((C05751) create(interfaceC3613q, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            InterfaceC3614r interfaceC3614r;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                InterfaceC3613q interfaceC3613q = (InterfaceC3613q) this.L$0;
                Lifecycle lifecycle = this.$lifecycle;
                Lifecycle.State state = this.$minActiveState;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_flowWithLifecycle, interfaceC3613q, null);
                this.L$0 = interfaceC3613q;
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                interfaceC3614r = interfaceC3613q;
            } else {
                if (i10 != 1) {
                    C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                interfaceC3614r = (InterfaceC3613q) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            ((AbstractC3603g) interfaceC3614r).f10693e.m5735h(false, null);
            return Unit.INSTANCE;
        }
    }

    public static final <T> InterfaceC3669f flowWithLifecycle(InterfaceC3669f interfaceC3669f, Lifecycle lifecycle, Lifecycle.State state) {
        interfaceC3669f.getClass();
        lifecycle.getClass();
        state.getClass();
        return new C2187d((Function2) new C05751(lifecycle, state, interfaceC3669f, null));
    }

    public static /* synthetic */ InterfaceC3669f flowWithLifecycle$default(InterfaceC3669f interfaceC3669f, Lifecycle lifecycle, Lifecycle.State state, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        return flowWithLifecycle(interfaceC3669f, lifecycle, state);
    }
}
