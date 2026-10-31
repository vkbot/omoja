package androidx.window.embedding;

import android.app.Activity;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.util.Consumer;
import com.sun.jna.Callback;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\u0002\u0010\nJ\u0014\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;", "", "activity", "Landroid/app/Activity;", "executor", "Ljava/util/concurrent/Executor;", Callback.METHOD_NAME, "Landroidx/core/util/Consumer;", "", "Landroidx/window/embedding/SplitInfo;", "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V", "getCallback", "()Landroidx/core/util/Consumer;", "lastValue", "accept", "", "splitInfoList", "window_release"}, k = 1, mv = {1, 6, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ExtensionEmbeddingBackend$SplitListenerWrapper {
    private final Activity activity;
    private final Consumer<List<SplitInfo>> callback;
    private final Executor executor;
    private List<SplitInfo> lastValue;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExtensionEmbeddingBackend$SplitListenerWrapper(Activity activity, Executor executor, Consumer<List<SplitInfo>> consumer) {
        activity.getClass();
        executor.getClass();
        consumer.getClass();
        this.activity = activity;
        this.executor = executor;
        this.callback = consumer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(ExtensionEmbeddingBackend$SplitListenerWrapper extensionEmbeddingBackend$SplitListenerWrapper, ArrayList arrayList) {
        m88accept$lambda1(extensionEmbeddingBackend$SplitListenerWrapper, arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: accept$lambda-1, reason: not valid java name */
    private static final void m88accept$lambda1(ExtensionEmbeddingBackend$SplitListenerWrapper extensionEmbeddingBackend$SplitListenerWrapper, List list) {
        extensionEmbeddingBackend$SplitListenerWrapper.getClass();
        list.getClass();
        extensionEmbeddingBackend$SplitListenerWrapper.callback.accept(list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void accept(List<SplitInfo> splitInfoList) {
        splitInfoList.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : splitInfoList) {
            if (((SplitInfo) obj).contains(this.activity)) {
                arrayList.add(obj);
            }
        }
        if (Intrinsics.areEqual(arrayList, this.lastValue)) {
            return;
        }
        this.lastValue = arrayList;
        this.executor.execute(new a1.a(4, this, arrayList));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Consumer<List<SplitInfo>> getCallback() {
        return this.callback;
    }
}
