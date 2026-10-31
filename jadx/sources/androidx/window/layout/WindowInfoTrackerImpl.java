package androidx.window.layout;

import android.app.Activity;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import p141n.C2455p;
import p243x8.InterfaceC3602f;
import p253y8.InterfaceC3669f;
import p253y8.InterfaceC3670g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000f¨\u0006\u0011"}, m3159d2 = {"Landroidx/window/layout/WindowInfoTrackerImpl;", "Landroidx/window/layout/WindowInfoTracker;", "Landroidx/window/layout/WindowMetricsCalculator;", "windowMetricsCalculator", "Landroidx/window/layout/WindowBackend;", "windowBackend", "<init>", "(Landroidx/window/layout/WindowMetricsCalculator;Landroidx/window/layout/WindowBackend;)V", "Landroid/app/Activity;", "activity", "Ly8/f;", "Landroidx/window/layout/WindowLayoutInfo;", "windowLayoutInfo", "(Landroid/app/Activity;)Ly8/f;", "Landroidx/window/layout/WindowMetricsCalculator;", "Landroidx/window/layout/WindowBackend;", "Companion", "window_release"}, m3160k = 1, m3161mv = {1, 6, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class WindowInfoTrackerImpl implements WindowInfoTracker {
    private static final int BUFFER_CAPACITY = 10;
    private final WindowBackend windowBackend;
    private final WindowMetricsCalculator windowMetricsCalculator;

    /* JADX INFO: renamed from: androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m3159d2 = {"Ly8/g;", "Landroidx/window/layout/WindowLayoutInfo;", "", "<anonymous>", "(Ly8/g;)V"}, m3160k = 3, m3161mv = {1, 6, 0})
    @DebugMetadata(m3255c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1", m3256f = "WindowInfoTrackerImpl.kt", m3257i = {0, 0, 1, 1}, m3258l = {ConstraintLayout.LayoutParams.Table.LAYOUT_MARGIN_BASELINE, ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE}, m3259m = "invokeSuspend", m3260n = {"$this$flow", "listener", "$this$flow", "listener"}, m3261s = {"L$0", "L$1", "L$0", "L$1"})
    public static final class C08521 extends SuspendLambda implements Function2<InterfaceC3670g, Continuation<? super Unit>, Object> {
        final /* synthetic */ Activity $activity;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C08521(Activity activity, Continuation<? super C08521> continuation) {
            super(2, continuation);
            this.$activity = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
        public static final void m6083invokeSuspend$lambda0(InterfaceC3602f interfaceC3602f, WindowLayoutInfo windowLayoutInfo) {
            windowLayoutInfo.getClass();
            interfaceC3602f.mo5732e(windowLayoutInfo);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C08521 c08521 = WindowInfoTrackerImpl.this.new C08521(this.$activity, continuation);
            c08521.L$0 = obj;
            return c08521;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InterfaceC3670g interfaceC3670g, Continuation<? super Unit> continuation) {
            return ((C08521) create(interfaceC3670g, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0070  */
        /* JADX WARN: Code duplicated, block: B:21:0x0071  */
        /* JADX WARN: Code duplicated, block: B:24:0x007d A[Catch: all -> 0x0020, TRY_LEAVE, TryCatch #0 {all -> 0x0020, blocks: (B:7:0x001a, B:18:0x0062, B:22:0x0075, B:24:0x007d, B:14:0x0036, B:17:0x005d), top: B:31:0x0008 }] */
        /* JADX WARN: Code duplicated, block: B:27:0x0092  */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
        
            if (r5.emit(r11, r10) == r0) goto L26;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x008f -> B:8:0x001d). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L3a
                if (r1 == r3) goto L2a
                if (r1 != r2) goto L23
                java.lang.Object r1 = r10.L$2
                x8.a r1 = (p243x8.C3597a) r1
                java.lang.Object r4 = r10.L$1
                androidx.core.util.Consumer r4 = (androidx.core.util.Consumer) r4
                java.lang.Object r5 = r10.L$0
                y8.g r5 = (p253y8.InterfaceC3670g) r5
                kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L20
            L1d:
                r11 = r5
                r5 = r1
                goto L62
            L20:
                r11 = move-exception
                goto L9e
            L23:
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                p099j1.C1929i.m3030l(r11)
                r11 = 0
                return r11
            L2a:
                java.lang.Object r1 = r10.L$2
                x8.a r1 = (p243x8.C3597a) r1
                java.lang.Object r4 = r10.L$1
                androidx.core.util.Consumer r4 = (androidx.core.util.Consumer) r4
                java.lang.Object r5 = r10.L$0
                y8.g r5 = (p253y8.InterfaceC3670g) r5
                kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L20
                goto L75
            L3a:
                kotlin.ResultKt.throwOnFailure(r11)
                java.lang.Object r11 = r10.L$0
                y8.g r11 = (p253y8.InterfaceC3670g) r11
                r1 = 10
                x8.b r1 = p243x8.AbstractC3606j.m5753a(r1, r2)
                androidx.window.layout.a r4 = new androidx.window.layout.a
                r4.<init>()
                androidx.window.layout.WindowInfoTrackerImpl r5 = androidx.window.layout.WindowInfoTrackerImpl.this
                androidx.window.layout.WindowBackend r5 = androidx.window.layout.WindowInfoTrackerImpl.access$getWindowBackend$p(r5)
                android.app.Activity r6 = r10.$activity
                androidx.arch.core.executor.a r7 = new androidx.arch.core.executor.a
                r8 = 2
                r7.<init>(r8)
                r5.registerLayoutChangeCallback(r6, r7, r4)
                x8.a r5 = new x8.a     // Catch: java.lang.Throwable -> L20
                r5.<init>(r1)     // Catch: java.lang.Throwable -> L20
            L62:
                r10.L$0 = r11     // Catch: java.lang.Throwable -> L20
                r10.L$1 = r4     // Catch: java.lang.Throwable -> L20
                r10.L$2 = r5     // Catch: java.lang.Throwable -> L20
                r10.label = r3     // Catch: java.lang.Throwable -> L20
                java.lang.Object r1 = r5.m5723c(r10)     // Catch: java.lang.Throwable -> L20
                if (r1 != r0) goto L71
                goto L91
            L71:
                r9 = r5
                r5 = r11
                r11 = r1
                r1 = r9
            L75:
                java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Throwable -> L20
                boolean r11 = r11.booleanValue()     // Catch: java.lang.Throwable -> L20
                if (r11 == 0) goto L92
                java.lang.Object r11 = r1.m5724d()     // Catch: java.lang.Throwable -> L20
                androidx.window.layout.WindowLayoutInfo r11 = (androidx.window.layout.WindowLayoutInfo) r11     // Catch: java.lang.Throwable -> L20
                r10.L$0 = r5     // Catch: java.lang.Throwable -> L20
                r10.L$1 = r4     // Catch: java.lang.Throwable -> L20
                r10.L$2 = r1     // Catch: java.lang.Throwable -> L20
                r10.label = r2     // Catch: java.lang.Throwable -> L20
                java.lang.Object r11 = r5.emit(r11, r10)     // Catch: java.lang.Throwable -> L20
                if (r11 != r0) goto L1d
            L91:
                return r0
            L92:
                androidx.window.layout.WindowInfoTrackerImpl r11 = androidx.window.layout.WindowInfoTrackerImpl.this
                androidx.window.layout.WindowBackend r11 = androidx.window.layout.WindowInfoTrackerImpl.access$getWindowBackend$p(r11)
                r11.unregisterLayoutChangeCallback(r4)
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            L9e:
                androidx.window.layout.WindowInfoTrackerImpl r0 = androidx.window.layout.WindowInfoTrackerImpl.this
                androidx.window.layout.WindowBackend r0 = androidx.window.layout.WindowInfoTrackerImpl.access$getWindowBackend$p(r0)
                r0.unregisterLayoutChangeCallback(r4)
                throw r11
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.window.layout.WindowInfoTrackerImpl.C08521.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public WindowInfoTrackerImpl(WindowMetricsCalculator windowMetricsCalculator, WindowBackend windowBackend) {
        windowMetricsCalculator.getClass();
        windowBackend.getClass();
        this.windowMetricsCalculator = windowMetricsCalculator;
        this.windowBackend = windowBackend;
    }

    @Override // androidx.window.layout.WindowInfoTracker
    public InterfaceC3669f windowLayoutInfo(Activity activity) {
        activity.getClass();
        return new C2455p(16, new C08521(activity, null));
    }
}
