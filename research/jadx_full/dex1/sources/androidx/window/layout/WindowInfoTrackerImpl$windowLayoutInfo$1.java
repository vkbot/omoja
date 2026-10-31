package androidx.window.layout;

import android.app.Activity;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.util.Consumer;
import j1.i;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import x8.b;
import x8.f;
import x8.j;
import y8.g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Ly8/g;", "Landroidx/window/layout/WindowLayoutInfo;", "", "<anonymous>", "(Ly8/g;)V"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1", f = "WindowInfoTrackerImpl.kt", i = {0, 0, 1, 1}, l = {ConstraintLayout$LayoutParams$Table.LAYOUT_MARGIN_BASELINE, ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE}, m = "invokeSuspend", n = {"$this$flow", "listener", "$this$flow", "listener"}, s = {"L$0", "L$1", "L$0", "L$1"})
public final class WindowInfoTrackerImpl$windowLayoutInfo$1 extends SuspendLambda implements Function2<g, Continuation<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ WindowInfoTrackerImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowInfoTrackerImpl$windowLayoutInfo$1(WindowInfoTrackerImpl windowInfoTrackerImpl, Activity activity, Continuation<? super WindowInfoTrackerImpl$windowLayoutInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = windowInfoTrackerImpl;
        this.$activity = activity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(b bVar, WindowLayoutInfo windowLayoutInfo) {
        m90invokeSuspend$lambda0(bVar, windowLayoutInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    private static final void m90invokeSuspend$lambda0(f fVar, WindowLayoutInfo windowLayoutInfo) {
        windowLayoutInfo.getClass();
        fVar.e(windowLayoutInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WindowInfoTrackerImpl$windowLayoutInfo$1 windowInfoTrackerImpl$windowLayoutInfo$1 = new WindowInfoTrackerImpl$windowLayoutInfo$1(this.this$0, this.$activity, continuation);
        windowInfoTrackerImpl$windowLayoutInfo$1.L$0 = obj;
        return windowInfoTrackerImpl$windowLayoutInfo$1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(g gVar, Continuation<? super Unit> continuation) {
        return ((WindowInfoTrackerImpl$windowLayoutInfo$1) create(gVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    */
    public final Object invokeSuspend(Object obj) {
        g gVar;
        Consumer<WindowLayoutInfo> aVar;
        x8.a aVar2;
        g gVar2;
        x8.a aVar3;
        Object objC;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        try {
            if (i9 == 0) {
                ResultKt.throwOnFailure(obj);
                gVar = (g) this.L$0;
                b bVarA = j.a(10, 2);
                aVar = new a(bVarA);
                WindowInfoTrackerImpl.access$getWindowBackend$p(this.this$0).registerLayoutChangeCallback(this.$activity, new androidx.arch.core.executor.a(2), aVar);
                aVar2 = new x8.a(bVarA);
                this.L$0 = gVar;
                this.L$1 = aVar;
                this.L$2 = aVar2;
                this.label = 1;
                objC = aVar2.c(this);
                if (objC == coroutine_suspended) {
                    x8.a aVar4 = aVar2;
                    gVar2 = gVar;
                    obj = objC;
                    aVar3 = aVar4;
                    if (!((Boolean) obj).booleanValue()) {
                        WindowInfoTrackerImpl.access$getWindowBackend$p(this.this$0).unregisterLayoutChangeCallback(aVar);
                        return Unit.INSTANCE;
                    }
                    WindowLayoutInfo windowLayoutInfo = (WindowLayoutInfo) aVar3.d();
                    this.L$0 = gVar2;
                    this.L$1 = aVar;
                    this.L$2 = aVar3;
                    this.label = 2;
                }
                return coroutine_suspended;
            }
            if (i9 == 1) {
                aVar3 = (x8.a) this.L$2;
                aVar = (Consumer) this.L$1;
                gVar2 = (g) this.L$0;
                ResultKt.throwOnFailure(obj);
                if (!((Boolean) obj).booleanValue()) {
                    WindowInfoTrackerImpl.access$getWindowBackend$p(this.this$0).unregisterLayoutChangeCallback(aVar);
                    return Unit.INSTANCE;
                }
                WindowLayoutInfo windowLayoutInfo2 = (WindowLayoutInfo) aVar3.d();
                this.L$0 = gVar2;
                this.L$1 = aVar;
                this.L$2 = aVar3;
                this.label = 2;
            } else {
                if (i9 != 2) {
                    i.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                aVar3 = (x8.a) this.L$2;
                aVar = (Consumer) this.L$1;
                gVar2 = (g) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            gVar = gVar2;
            aVar2 = aVar3;
            this.L$0 = gVar;
            this.L$1 = aVar;
            this.L$2 = aVar2;
            this.label = 1;
            objC = aVar2.c(this);
            if (objC == coroutine_suspended) {
                x8.a aVar5 = aVar2;
                gVar2 = gVar;
                obj = objC;
                aVar3 = aVar5;
                if (!((Boolean) obj).booleanValue()) {
                    WindowInfoTrackerImpl.access$getWindowBackend$p(this.this$0).unregisterLayoutChangeCallback(aVar);
                    return Unit.INSTANCE;
                }
                WindowLayoutInfo windowLayoutInfo3 = (WindowLayoutInfo) aVar3.d();
                this.L$0 = gVar2;
                this.L$1 = aVar;
                this.L$2 = aVar3;
                this.label = 2;
            }
            return coroutine_suspended;
        } catch (Throwable th) {
            WindowInfoTrackerImpl.access$getWindowBackend$p(this.this$0).unregisterLayoutChangeCallback(aVar);
            throw th;
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g gVar, Continuation<? super Unit> continuation) {
        return invoke2(gVar, continuation);
    }
}
