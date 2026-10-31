package androidx.core.view;

import android.view.WindowInsetsController;
import android.view.WindowInsetsController$OnControllableInsetsChangedListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class o implements WindowInsetsController$OnControllableInsetsChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WindowInsetsControllerCompat$Impl30 f167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WindowInsetsControllerCompat$OnControllableInsetsChangedListener f168b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o(WindowInsetsControllerCompat$Impl30 windowInsetsControllerCompat$Impl30, WindowInsetsControllerCompat$OnControllableInsetsChangedListener windowInsetsControllerCompat$OnControllableInsetsChangedListener) {
        this.f167a = windowInsetsControllerCompat$Impl30;
        this.f168b = windowInsetsControllerCompat$OnControllableInsetsChangedListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.WindowInsetsController$OnControllableInsetsChangedListener
    public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController, int i9) {
        WindowInsetsControllerCompat$Impl30.a(this.f167a, this.f168b, windowInsetsController, i9);
    }
}
