package androidx.window.layout;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.window.core.Version;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\rJ\u0012\u0010\u0010\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/window/layout/SidecarWindowBackend$Companion;", "", "()V", "DEBUG", "", "TAG", "", "globalInstance", "Landroidx/window/layout/SidecarWindowBackend;", "globalLock", "Ljava/util/concurrent/locks/ReentrantLock;", "getInstance", "context", "Landroid/content/Context;", "initAndVerifyExtension", "Landroidx/window/layout/ExtensionInterfaceCompat;", "isSidecarVersionSupported", "sidecarVersion", "Landroidx/window/core/Version;", "resetInstance", "", "window_release"}, k = 1, mv = {1, 6, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SidecarWindowBackend$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ SidecarWindowBackend$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final SidecarWindowBackend getInstance(Context context) {
        context.getClass();
        if (SidecarWindowBackend.access$getGlobalInstance$cp() == null) {
            ReentrantLock reentrantLockAccess$getGlobalLock$cp = SidecarWindowBackend.access$getGlobalLock$cp();
            reentrantLockAccess$getGlobalLock$cp.lock();
            try {
                if (SidecarWindowBackend.access$getGlobalInstance$cp() == null) {
                    SidecarWindowBackend.access$setGlobalInstance$cp(new SidecarWindowBackend(SidecarWindowBackend.Companion.initAndVerifyExtension(context)));
                }
                Unit unit = Unit.INSTANCE;
                reentrantLockAccess$getGlobalLock$cp.unlock();
            } catch (Throwable th) {
                reentrantLockAccess$getGlobalLock$cp.unlock();
                throw th;
            }
        }
        SidecarWindowBackend sidecarWindowBackendAccess$getGlobalInstance$cp = SidecarWindowBackend.access$getGlobalInstance$cp();
        sidecarWindowBackendAccess$getGlobalInstance$cp.getClass();
        return sidecarWindowBackendAccess$getGlobalInstance$cp;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ExtensionInterfaceCompat initAndVerifyExtension(Context context) {
        context.getClass();
        try {
            if (isSidecarVersionSupported(SidecarCompat.Companion.getSidecarVersion())) {
                SidecarCompat sidecarCompat = new SidecarCompat(context);
                if (sidecarCompat.validateExtensionInterface()) {
                    return sidecarCompat;
                }
                return null;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public final boolean isSidecarVersionSupported(Version sidecarVersion) {
        return sidecarVersion != null && sidecarVersion.compareTo2(Version.Companion.getVERSION_0_1()) >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public final void resetInstance() {
        SidecarWindowBackend.access$setGlobalInstance$cp(null);
    }

    private SidecarWindowBackend$Companion() {
    }
}
