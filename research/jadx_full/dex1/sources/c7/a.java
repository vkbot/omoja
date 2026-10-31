package c7;

import android.hardware.Camera;
import android.hardware.Camera$AutoFocusCallback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements Camera$AutoFocusCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f506a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(b bVar) {
        this.f506a = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.hardware.Camera$AutoFocusCallback
    public final void onAutoFocus(boolean z8, Camera camera) {
        this.f506a.e.post(new a4.g(6, this));
    }
}
