package androidx.core.app;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements SharedElementCallback$OnSharedElementsReadyListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ android.app.SharedElementCallback$OnSharedElementsReadyListener f130a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(android.app.SharedElementCallback$OnSharedElementsReadyListener sharedElementCallback$OnSharedElementsReadyListener) {
        this.f130a = sharedElementCallback$OnSharedElementsReadyListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.SharedElementCallback$OnSharedElementsReadyListener
    public final void onSharedElementsReady() {
        ActivityCompat$SharedElementCallback21Impl.a(this.f130a);
    }
}
