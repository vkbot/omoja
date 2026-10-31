package p032c7;

import android.hardware.Camera;
import p005a4.RunnableC0014g;

/* JADX INFO: renamed from: c7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0997a implements Camera.AutoFocusCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C0998b f959a;

    public C0997a(C0998b c0998b) {
        this.f959a = c0998b;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public final void onAutoFocus(boolean z9, Camera camera) {
        this.f959a.f965e.post(new RunnableC0014g(6, this));
    }
}
