package androidx.lifecycle;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import p010a9.AbstractC0055q;
import p034c9.C1018d;
import p099j1.C1929i;
import p224v8.AbstractC3366a0;
import p224v8.AbstractC3387h0;
import p224v8.C3437y0;
import p224v8.InterfaceC3434x;
import p224v8.InterfaceC3439z0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0006\u0010\u0012\u001a\u00020\rR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\u00020\u0004X\u0090\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, m3159d2 = {"Landroidx/lifecycle/LifecycleCoroutineScopeImpl;", "Landroidx/lifecycle/LifecycleCoroutineScope;", "Landroidx/lifecycle/LifecycleEventObserver;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/CoroutineContext;)V", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "getLifecycle$lifecycle_common", "()Landroidx/lifecycle/Lifecycle;", "onStateChanged", "", "source", "Landroidx/lifecycle/LifecycleOwner;", NotificationCompat.CATEGORY_EVENT, "Landroidx/lifecycle/Lifecycle$Event;", "register", "lifecycle-common"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class LifecycleCoroutineScopeImpl extends LifecycleCoroutineScope implements LifecycleEventObserver {
    private final CoroutineContext coroutineContext;
    private final Lifecycle lifecycle;

    /* JADX INFO: renamed from: androidx.lifecycle.LifecycleCoroutineScopeImpl$register$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, m3159d2 = {"Lv8/x;", "", "<anonymous>", "(Lv8/x;)V"}, m3160k = 3, m3161mv = {1, 8, 0})
    @DebugMetadata(m3255c = "androidx.lifecycle.LifecycleCoroutineScopeImpl$register$1", m3256f = "Lifecycle.kt", m3257i = {}, m3258l = {}, m3259m = "invokeSuspend", m3260n = {}, m3261s = {})
    public static final class C05801 extends SuspendLambda implements Function2<InterfaceC3434x, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        public C05801(Continuation<? super C05801> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05801 c05801 = LifecycleCoroutineScopeImpl.this.new C05801(continuation);
            c05801.L$0 = obj;
            return c05801;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InterfaceC3434x interfaceC3434x, Continuation<? super Unit> continuation) {
            return ((C05801) create(interfaceC3434x, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            InterfaceC3434x interfaceC3434x = (InterfaceC3434x) this.L$0;
            if (LifecycleCoroutineScopeImpl.this.getLifecycle().getState().compareTo(Lifecycle.State.INITIALIZED) >= 0) {
                LifecycleCoroutineScopeImpl.this.getLifecycle().addObserver(LifecycleCoroutineScopeImpl.this);
            } else {
                InterfaceC3439z0 interfaceC3439z0 = (InterfaceC3439z0) interfaceC3434x.getCoroutineContext().get(C3437y0.f9916b);
                if (interfaceC3439z0 != null) {
                    interfaceC3439z0.mo5330c(null);
                }
            }
            return Unit.INSTANCE;
        }
    }

    public LifecycleCoroutineScopeImpl(Lifecycle lifecycle, CoroutineContext coroutineContext) {
        InterfaceC3439z0 interfaceC3439z0;
        lifecycle.getClass();
        coroutineContext.getClass();
        this.lifecycle = lifecycle;
        this.coroutineContext = coroutineContext;
        if (getLifecycle().getState() != Lifecycle.State.DESTROYED || (interfaceC3439z0 = (InterfaceC3439z0) getCoroutineContext().get(C3437y0.f9916b)) == null) {
            return;
        }
        interfaceC3439z0.mo5330c(null);
    }

    @Override // androidx.lifecycle.LifecycleCoroutineScope, p224v8.InterfaceC3434x
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // androidx.lifecycle.LifecycleCoroutineScope
    /* JADX INFO: renamed from: getLifecycle$lifecycle_common, reason: from getter */
    public Lifecycle getLifecycle() {
        return this.lifecycle;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        source.getClass();
        event.getClass();
        if (getLifecycle().getState().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            getLifecycle().removeObserver(this);
            InterfaceC3439z0 interfaceC3439z0 = (InterfaceC3439z0) getCoroutineContext().get(C3437y0.f9916b);
            if (interfaceC3439z0 != null) {
                interfaceC3439z0.mo5330c(null);
            }
        }
    }

    public final void register() {
        C1018d c1018d = AbstractC3387h0.f9879a;
        AbstractC3366a0.m5284c(this, AbstractC0055q.f145a.f10512d, new C05801(null), 2);
    }
}
