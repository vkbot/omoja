package androidx.window.embedding;

import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\u0006J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u0017\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;", "", "()V", "TAG", "", "globalInstance", "Landroidx/window/embedding/ExtensionEmbeddingBackend;", "globalLock", "Ljava/util/concurrent/locks/ReentrantLock;", "getInstance", "initAndVerifyEmbeddingExtension", "Landroidx/window/embedding/EmbeddingInterfaceCompat;", "isExtensionVersionSupported", "", "extensionVersion", "", "(Ljava/lang/Integer;)Z", "window_release"}, k = 1, mv = {1, 6, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ExtensionEmbeddingBackend$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ ExtensionEmbeddingBackend$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final EmbeddingInterfaceCompat initAndVerifyEmbeddingExtension() {
        EmbeddingCompat embeddingCompat = null;
        try {
            EmbeddingCompat$Companion embeddingCompat$Companion = EmbeddingCompat.Companion;
            if (isExtensionVersionSupported(embeddingCompat$Companion.getExtensionApiLevel()) && embeddingCompat$Companion.isEmbeddingAvailable()) {
                embeddingCompat = new EmbeddingCompat();
            }
        } catch (Throwable th) {
            Log.d("EmbeddingBackend", Intrinsics.stringPlus("Failed to load embedding extension: ", th));
        }
        if (embeddingCompat == null) {
            Log.d("EmbeddingBackend", "No supported embedding extension found");
        }
        return embeddingCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ExtensionEmbeddingBackend getInstance() {
        if (ExtensionEmbeddingBackend.access$getGlobalInstance$cp() == null) {
            ReentrantLock reentrantLockAccess$getGlobalLock$cp = ExtensionEmbeddingBackend.access$getGlobalLock$cp();
            reentrantLockAccess$getGlobalLock$cp.lock();
            try {
                if (ExtensionEmbeddingBackend.access$getGlobalInstance$cp() == null) {
                    ExtensionEmbeddingBackend.access$setGlobalInstance$cp(new ExtensionEmbeddingBackend(ExtensionEmbeddingBackend.Companion.initAndVerifyEmbeddingExtension()));
                }
                Unit unit = Unit.INSTANCE;
                reentrantLockAccess$getGlobalLock$cp.unlock();
            } catch (Throwable th) {
                reentrantLockAccess$getGlobalLock$cp.unlock();
                throw th;
            }
        }
        ExtensionEmbeddingBackend extensionEmbeddingBackendAccess$getGlobalInstance$cp = ExtensionEmbeddingBackend.access$getGlobalInstance$cp();
        extensionEmbeddingBackendAccess$getGlobalInstance$cp.getClass();
        return extensionEmbeddingBackendAccess$getGlobalInstance$cp;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public final boolean isExtensionVersionSupported(Integer extensionVersion) {
        return extensionVersion != null && extensionVersion.intValue() >= 1;
    }

    private ExtensionEmbeddingBackend$Companion() {
    }
}
