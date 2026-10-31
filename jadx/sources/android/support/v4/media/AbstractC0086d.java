package android.support.v4.media;

import android.media.browse.MediaBrowser;

/* JADX INFO: renamed from: android.support.v4.media.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0086d {
    final MediaBrowser.ConnectionCallback mConnectionCallbackFwk = new C0084b(this);
    InterfaceC0085c mConnectionCallbackInternal;

    public abstract void onConnected();

    public abstract void onConnectionFailed();

    public abstract void onConnectionSuspended();

    public void setInternalConnectionCallback(InterfaceC0085c interfaceC0085c) {
        this.mConnectionCallbackInternal = interfaceC0085c;
    }
}
