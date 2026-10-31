package androidx.window.embedding;

import android.content.Context;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\u0004H\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/window/embedding/SplitController$Companion;", "", "()V", "globalInstance", "Landroidx/window/embedding/SplitController;", "globalLock", "Ljava/util/concurrent/locks/ReentrantLock;", "sDebug", "", "getInstance", "initialize", "", "context", "Landroid/content/Context;", "staticRuleResourceId", "", "window_release"}, k = 1, mv = {1, 6, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SplitController$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ SplitController$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final SplitController getInstance() {
        if (SplitController.access$getGlobalInstance$cp() == null) {
            ReentrantLock reentrantLockAccess$getGlobalLock$cp = SplitController.access$getGlobalLock$cp();
            reentrantLockAccess$getGlobalLock$cp.lock();
            try {
                if (SplitController.access$getGlobalInstance$cp() == null) {
                    SplitController.access$setGlobalInstance$cp(new SplitController(null));
                }
                Unit unit = Unit.INSTANCE;
                reentrantLockAccess$getGlobalLock$cp.unlock();
            } catch (Throwable th) {
                reentrantLockAccess$getGlobalLock$cp.unlock();
                throw th;
            }
        }
        SplitController splitControllerAccess$getGlobalInstance$cp = SplitController.access$getGlobalInstance$cp();
        splitControllerAccess$getGlobalInstance$cp.getClass();
        return splitControllerAccess$getGlobalInstance$cp;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final void initialize(Context context, int staticRuleResourceId) {
        context.getClass();
        Set<EmbeddingRule> splitRules$window_release = new SplitRuleParser().parseSplitRules$window_release(context, staticRuleResourceId);
        SplitController splitController$Companion = getInstance();
        if (splitRules$window_release == null) {
            splitRules$window_release = SetsKt.emptySet();
        }
        SplitController.access$setStaticSplitRules(splitController$Companion, splitRules$window_release);
    }

    private SplitController$Companion() {
    }
}
