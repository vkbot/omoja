package androidx.profileinstaller;

import android.content.Context;
import android.view.Choreographer$FrameCallback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Choreographer$FrameCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ProfileInstallerInitializer f211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f212b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(ProfileInstallerInitializer profileInstallerInitializer, Context context) {
        this.f211a = profileInstallerInitializer;
        this.f212b = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.Choreographer$FrameCallback
    public final void doFrame(long j9) {
        ProfileInstallerInitializer.c(this.f211a, this.f212b, j9);
    }
}
