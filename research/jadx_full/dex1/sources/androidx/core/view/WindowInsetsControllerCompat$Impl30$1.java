package androidx.core.view;

import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WindowInsetsControllerCompat$Impl30$1 implements WindowInsetsAnimationControlListener {
    private WindowInsetsAnimationControllerCompat mCompatAnimController = null;
    final /* synthetic */ WindowInsetsControllerCompat$Impl30 this$0;
    final /* synthetic */ WindowInsetsAnimationControlListenerCompat val$listener;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public WindowInsetsControllerCompat$Impl30$1(WindowInsetsControllerCompat$Impl30 windowInsetsControllerCompat$Impl30, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        this.this$0 = windowInsetsControllerCompat$Impl30;
        this.val$listener = windowInsetsAnimationControlListenerCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onCancelled(@Nullable WindowInsetsAnimationController windowInsetsAnimationController) {
        this.val$listener.onCancelled(windowInsetsAnimationController == null ? null : this.mCompatAnimController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onFinished(@NonNull WindowInsetsAnimationController windowInsetsAnimationController) {
        this.val$listener.onFinished(this.mCompatAnimController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onReady(@NonNull WindowInsetsAnimationController windowInsetsAnimationController, int i9) {
        WindowInsetsAnimationControllerCompat windowInsetsAnimationControllerCompat = new WindowInsetsAnimationControllerCompat(windowInsetsAnimationController);
        this.mCompatAnimController = windowInsetsAnimationControllerCompat;
        this.val$listener.onReady(windowInsetsAnimationControllerCompat, i9);
    }
}
