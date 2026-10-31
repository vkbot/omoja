package androidx.core.location;

import android.os.CancellationSignal$OnCancelListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements CancellationSignal$OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LocationManagerCompat$CancellableLocationListener f139a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(LocationManagerCompat$CancellableLocationListener locationManagerCompat$CancellableLocationListener) {
        this.f139a = locationManagerCompat$CancellableLocationListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.CancellationSignal$OnCancelListener
    public final void onCancel() {
        this.f139a.cancel();
    }
}
