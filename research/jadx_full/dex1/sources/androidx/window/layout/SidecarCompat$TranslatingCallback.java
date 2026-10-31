package androidx.window.layout;

import android.app.Activity;
import android.os.IBinder;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarInterface;
import androidx.window.sidecar.SidecarInterface$SidecarCallback;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.util.Collection;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017¨\u0006\f"}, d2 = {"Landroidx/window/layout/SidecarCompat$TranslatingCallback;", "Landroidx/window/sidecar/SidecarInterface$SidecarCallback;", "(Landroidx/window/layout/SidecarCompat;)V", "onDeviceStateChanged", "", "newDeviceState", "Landroidx/window/sidecar/SidecarDeviceState;", "onWindowLayoutChanged", "windowToken", "Landroid/os/IBinder;", "newLayout", "Landroidx/window/sidecar/SidecarWindowLayoutInfo;", "window_release"}, k = 1, mv = {1, 6, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SidecarCompat$TranslatingCallback implements SidecarInterface$SidecarCallback {
    final /* synthetic */ SidecarCompat this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public SidecarCompat$TranslatingCallback(SidecarCompat sidecarCompat) {
        sidecarCompat.getClass();
        this.this$0 = sidecarCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onDeviceStateChanged(SidecarDeviceState newDeviceState) {
        SidecarInterface sidecar;
        newDeviceState.getClass();
        Collection<Activity> collectionValues = SidecarCompat.access$getWindowListenerRegisteredContexts$p(this.this$0).values();
        SidecarCompat sidecarCompat = this.this$0;
        for (Activity activity : collectionValues) {
            IBinder activityWindowToken$window_release = SidecarCompat.Companion.getActivityWindowToken$window_release(activity);
            SidecarWindowLayoutInfo windowLayoutInfo = null;
            if (activityWindowToken$window_release != null && (sidecar = sidecarCompat.getSidecar()) != null) {
                windowLayoutInfo = sidecar.getWindowLayoutInfo(activityWindowToken$window_release);
            }
            ExtensionInterfaceCompat$ExtensionCallbackInterface extensionInterfaceCompat$ExtensionCallbackInterfaceAccess$getExtensionCallback$p = SidecarCompat.access$getExtensionCallback$p(sidecarCompat);
            if (extensionInterfaceCompat$ExtensionCallbackInterfaceAccess$getExtensionCallback$p != null) {
                extensionInterfaceCompat$ExtensionCallbackInterfaceAccess$getExtensionCallback$p.onWindowLayoutChanged(activity, SidecarCompat.access$getSidecarAdapter$p(sidecarCompat).translate(windowLayoutInfo, newDeviceState));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onWindowLayoutChanged(IBinder windowToken, SidecarWindowLayoutInfo newLayout) {
        windowToken.getClass();
        newLayout.getClass();
        Activity activity = (Activity) SidecarCompat.access$getWindowListenerRegisteredContexts$p(this.this$0).get(windowToken);
        if (activity == null) {
            Log.w("SidecarCompat", "Unable to resolve activity from window token. Missing a call to #onWindowLayoutChangeListenerAdded()?");
            return;
        }
        SidecarAdapter sidecarAdapterAccess$getSidecarAdapter$p = SidecarCompat.access$getSidecarAdapter$p(this.this$0);
        SidecarInterface sidecar = this.this$0.getSidecar();
        SidecarDeviceState deviceState = sidecar == null ? null : sidecar.getDeviceState();
        if (deviceState == null) {
            deviceState = new SidecarDeviceState();
        }
        WindowLayoutInfo windowLayoutInfoTranslate = sidecarAdapterAccess$getSidecarAdapter$p.translate(newLayout, deviceState);
        ExtensionInterfaceCompat$ExtensionCallbackInterface extensionInterfaceCompat$ExtensionCallbackInterfaceAccess$getExtensionCallback$p = SidecarCompat.access$getExtensionCallback$p(this.this$0);
        if (extensionInterfaceCompat$ExtensionCallbackInterfaceAccess$getExtensionCallback$p == null) {
            return;
        }
        extensionInterfaceCompat$ExtensionCallbackInterfaceAccess$getExtensionCallback$p.onWindowLayoutChanged(activity, windowLayoutInfoTranslate);
    }
}
