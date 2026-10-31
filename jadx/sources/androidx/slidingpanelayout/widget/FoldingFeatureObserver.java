package androidx.slidingpanelayout.widget;

import android.app.Activity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowLayoutInfo;
import java.util.Iterator;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import p034c9.C1018d;
import p099j1.C1929i;
import p224v8.AbstractC3365a;
import p224v8.AbstractC3387h0;
import p224v8.AbstractC3413q;
import p224v8.C3373c1;
import p224v8.C3406n1;
import p224v8.C3420s0;
import p224v8.C3437y0;
import p224v8.InterfaceC3434x;
import p224v8.InterfaceC3439z0;
import p253y8.AbstractC3674k;
import p253y8.C3668e;
import p253y8.C3673j;
import p253y8.InterfaceC3669f;
import p253y8.InterfaceC3670g;
import p253y8.InterfaceC3683t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u001eB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u000f¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0019R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u001d¨\u0006\u001f"}, m3159d2 = {"Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;", "", "Landroidx/window/layout/WindowInfoTracker;", "windowInfoTracker", "Ljava/util/concurrent/Executor;", "executor", "<init>", "(Landroidx/window/layout/WindowInfoTracker;Ljava/util/concurrent/Executor;)V", "Landroidx/window/layout/WindowLayoutInfo;", "windowLayoutInfo", "Landroidx/window/layout/FoldingFeature;", "getFoldingFeature", "(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;", "Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;", "onFoldingFeatureChangeListener", "", "setOnFoldingFeatureChangeListener", "(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;)V", "Landroid/app/Activity;", "activity", "registerLayoutStateChangeCallback", "(Landroid/app/Activity;)V", "unregisterLayoutStateChangeCallback", "()V", "Landroidx/window/layout/WindowInfoTracker;", "Ljava/util/concurrent/Executor;", "Lv8/z0;", "job", "Lv8/z0;", "Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;", "OnFoldingFeatureChangeListener", "slidingpanelayout_release"}, m3160k = 1, m3161mv = {1, 6, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FoldingFeatureObserver {
    private final Executor executor;
    private InterfaceC3439z0 job;
    private OnFoldingFeatureChangeListener onFoldingFeatureChangeListener;
    private final WindowInfoTracker windowInfoTracker;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m3159d2 = {"Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;", "", "onFoldingFeatureChange", "", "foldingFeature", "Landroidx/window/layout/FoldingFeature;", "slidingpanelayout_release"}, m3160k = 1, m3161mv = {1, 6, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public interface OnFoldingFeatureChangeListener {
        void onFoldingFeatureChange(FoldingFeature foldingFeature);
    }

    /* JADX INFO: renamed from: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, m3159d2 = {"Lv8/x;", "", "<anonymous>", "(Lv8/x;)V"}, m3160k = 3, m3161mv = {1, 6, 0})
    @DebugMetadata(m3255c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1", m3256f = "FoldingFeatureObserver.kt", m3257i = {}, m3258l = {97}, m3259m = "invokeSuspend", m3260n = {}, m3261s = {})
    public static final class C07621 extends SuspendLambda implements Function2<InterfaceC3434x, Continuation<? super Unit>, Object> {
        final /* synthetic */ Activity $activity;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07621(Activity activity, Continuation<? super C07621> continuation) {
            super(2, continuation);
            this.$activity = activity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FoldingFeatureObserver.this.new C07621(this.$activity, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InterfaceC3434x interfaceC3434x, Continuation<? super Unit> continuation) {
            return ((C07621) create(interfaceC3434x, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1] */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v2, types: [y8.f] */
        /* JADX WARN: Type inference failed for: r3v3 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ?? c3668e;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                final InterfaceC3669f interfaceC3669fWindowLayoutInfo = FoldingFeatureObserver.this.windowInfoTracker.windowLayoutInfo(this.$activity);
                final FoldingFeatureObserver foldingFeatureObserver = FoldingFeatureObserver.this;
                ?? r9 = new InterfaceC3669f() { // from class: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1

                    /* JADX INFO: renamed from: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2, reason: invalid class name */
                    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
                    @Metadata(m3158d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, m3159d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Ly8/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m3160k = 1, m3161mv = {1, 6, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
                    public static final class AnonymousClass2 implements InterfaceC3670g {
                        final /* synthetic */ InterfaceC3670g $this_unsafeFlow$inlined;
                        final /* synthetic */ FoldingFeatureObserver this$0;

                        /* JADX INFO: renamed from: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                        @Metadata(m3160k = 3, m3161mv = {1, 6, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
                        @DebugMetadata(m3255c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2", m3256f = "FoldingFeatureObserver.kt", m3257i = {}, m3258l = {138}, m3259m = "emit", m3260n = {}, m3261s = {})
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(InterfaceC3670g interfaceC3670g, FoldingFeatureObserver foldingFeatureObserver) {
                            this.$this_unsafeFlow$inlined = interfaceC3670g;
                            this.this$0 = foldingFeatureObserver;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // p253y8.InterfaceC3670g
                        public Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i10 = anonymousClass1.label;
                                if ((i10 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.label = i10 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.result;
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            int i11 = anonymousClass1.label;
                            if (i11 == 0) {
                                ResultKt.throwOnFailure(obj2);
                                InterfaceC3670g interfaceC3670g = this.$this_unsafeFlow$inlined;
                                FoldingFeature foldingFeature = this.this$0.getFoldingFeature((WindowLayoutInfo) obj);
                                if (foldingFeature != null) {
                                    anonymousClass1.label = 1;
                                    if (interfaceC3670g.emit(foldingFeature, anonymousClass1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                            } else {
                                if (i11 != 1) {
                                    C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.throwOnFailure(obj2);
                            }
                            return Unit.INSTANCE;
                        }
                    }

                    @Override // p253y8.InterfaceC3669f
                    public Object collect(InterfaceC3670g interfaceC3670g, Continuation continuation) {
                        Object objCollect = interfaceC3669fWindowLayoutInfo.collect(new AnonymousClass2(interfaceC3670g, foldingFeatureObserver), continuation);
                        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                    }
                };
                if (r9 instanceof InterfaceC3683t) {
                    C3673j c3673j = AbstractC3674k.f10880a;
                    c3668e = r9;
                } else {
                    c3668e = new C3668e(r9, AbstractC3674k.f10880a, AbstractC3674k.f10881b);
                }
                final FoldingFeatureObserver foldingFeatureObserver2 = FoldingFeatureObserver.this;
                InterfaceC3670g interfaceC3670g = new InterfaceC3670g() { // from class: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$collect$1
                    @Override // p253y8.InterfaceC3670g
                    public Object emit(FoldingFeature foldingFeature, Continuation<? super Unit> continuation) {
                        Unit unit;
                        FoldingFeature foldingFeature2 = foldingFeature;
                        FoldingFeatureObserver.OnFoldingFeatureChangeListener onFoldingFeatureChangeListener = foldingFeatureObserver2.onFoldingFeatureChangeListener;
                        if (onFoldingFeatureChangeListener == null) {
                            unit = null;
                        } else {
                            onFoldingFeatureChangeListener.onFoldingFeatureChange(foldingFeature2);
                            unit = Unit.INSTANCE;
                        }
                        return unit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unit : Unit.INSTANCE;
                    }
                };
                this.label = 1;
                if (c3668e.collect(interfaceC3670g, this) == coroutine_suspended) {
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

    public FoldingFeatureObserver(WindowInfoTracker windowInfoTracker, Executor executor) {
        windowInfoTracker.getClass();
        executor.getClass();
        this.windowInfoTracker = windowInfoTracker;
        this.executor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FoldingFeature getFoldingFeature(WindowLayoutInfo windowLayoutInfo) {
        Object next;
        Iterator<T> it = windowLayoutInfo.getDisplayFeatures().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((DisplayFeature) next) instanceof FoldingFeature));
        if (next instanceof FoldingFeature) {
            return (FoldingFeature) next;
        }
        return null;
    }

    public final void registerLayoutStateChangeCallback(Activity activity) {
        activity.getClass();
        InterfaceC3439z0 interfaceC3439z0 = this.job;
        if (interfaceC3439z0 != null) {
            interfaceC3439z0.mo5330c(null);
        }
        CoroutineContext c3420s0 = new C3420s0(this.executor);
        if (c3420s0.get(C3437y0.f9916b) == null) {
            c3420s0 = c3420s0.plus(new C3373c1());
        }
        C07621 c07621 = new C07621(activity, null);
        CoroutineContext coroutineContextM5352a = AbstractC3413q.m5352a(c3420s0, (3 & 1) != 0 ? EmptyCoroutineContext.INSTANCE : null, true);
        C1018d c1018d = AbstractC3387h0.f9879a;
        if (coroutineContextM5352a != c1018d && coroutineContextM5352a.get(ContinuationInterceptor.INSTANCE) == null) {
            coroutineContextM5352a = coroutineContextM5352a.plus(c1018d);
        }
        AbstractC3365a c3406n1 = new C3406n1(coroutineContextM5352a, true);
        c3406n1.m5279L(1, c3406n1, c07621);
        this.job = c3406n1;
    }

    public final void setOnFoldingFeatureChangeListener(OnFoldingFeatureChangeListener onFoldingFeatureChangeListener) {
        onFoldingFeatureChangeListener.getClass();
        this.onFoldingFeatureChangeListener = onFoldingFeatureChangeListener;
    }

    public final void unregisterLayoutStateChangeCallback() {
        InterfaceC3439z0 interfaceC3439z0 = this.job;
        if (interfaceC3439z0 == null) {
            return;
        }
        interfaceC3439z0.mo5330c(null);
    }
}
