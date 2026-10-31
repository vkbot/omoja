package androidx.window.layout;

import android.app.Activity;
import androidx.annotation.GuardedBy;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0007H\u0016R\u001c\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/window/layout/SidecarCompat$DistinctElementCallback;", "Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;", "callbackInterface", "(Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V", "activityWindowLayoutInfo", "Ljava/util/WeakHashMap;", "Landroid/app/Activity;", "Landroidx/window/layout/WindowLayoutInfo;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "onWindowLayoutChanged", "", "activity", "newLayout", "window_release"}, k = 1, mv = {1, 6, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SidecarCompat$DistinctElementCallback implements ExtensionInterfaceCompat$ExtensionCallbackInterface {

    @GuardedBy("mLock")
    private final WeakHashMap<Activity, WindowLayoutInfo> activityWindowLayoutInfo;
    private final ExtensionInterfaceCompat$ExtensionCallbackInterface callbackInterface;
    private final ReentrantLock lock;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SidecarCompat$DistinctElementCallback(ExtensionInterfaceCompat$ExtensionCallbackInterface extensionInterfaceCompat$ExtensionCallbackInterface) {
        extensionInterfaceCompat$ExtensionCallbackInterface.getClass();
        this.callbackInterface = extensionInterfaceCompat$ExtensionCallbackInterface;
        this.lock = new ReentrantLock();
        this.activityWindowLayoutInfo = new WeakHashMap<>();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.window.layout.ExtensionInterfaceCompat$ExtensionCallbackInterface
    public void onWindowLayoutChanged(Activity activity, WindowLayoutInfo newLayout) {
        activity.getClass();
        newLayout.getClass();
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (Intrinsics.areEqual(newLayout, this.activityWindowLayoutInfo.get(activity))) {
                reentrantLock.unlock();
                return;
            }
            this.activityWindowLayoutInfo.put(activity, newLayout);
            reentrantLock.unlock();
            this.callbackInterface.onWindowLayoutChanged(activity, newLayout);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
