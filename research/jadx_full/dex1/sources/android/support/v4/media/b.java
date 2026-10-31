package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.media.browse.MediaBrowser$ConnectionCallback;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.util.Log;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserProtocol;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends MediaBrowser$ConnectionCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f72a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(d dVar) {
        this.f72a = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.browse.MediaBrowser$ConnectionCallback
    public final void onConnected() {
        android.support.v4.media.session.c cVar;
        d dVar = this.f72a;
        c cVar2 = dVar.mConnectionCallbackInternal;
        if (cVar2 != null) {
            e eVar = (e) cVar2;
            a aVar = eVar.d;
            MediaBrowser mediaBrowser = eVar.f74b;
            try {
                Bundle extras = mediaBrowser.getExtras();
                if (extras != null) {
                    extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
                    IBinder binder = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
                    if (binder != null) {
                        Bundle bundle = eVar.c;
                        h hVar = new h(0, false);
                        hVar.c = new Messenger(binder);
                        hVar.d = bundle;
                        eVar.f75f = hVar;
                        Messenger messenger = new Messenger(aVar);
                        eVar.f76g = messenger;
                        aVar.getClass();
                        aVar.f71b = new WeakReference(messenger);
                        try {
                            h hVar2 = eVar.f75f;
                            Context context = eVar.f73a;
                            Messenger messenger2 = eVar.f76g;
                            hVar2.getClass();
                            Bundle bundle2 = new Bundle();
                            bundle2.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
                            bundle2.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Process.myPid());
                            bundle2.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, (Bundle) hVar2.d);
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 6;
                            messageObtain.arg1 = 1;
                            messageObtain.setData(bundle2);
                            messageObtain.replyTo = messenger2;
                            ((Messenger) hVar2.c).send(messageObtain);
                        } catch (RemoteException unused) {
                            Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                        }
                    }
                    IBinder binder2 = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER);
                    int i9 = android.support.v4.media.session.b.c;
                    if (binder2 == null) {
                        cVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = binder2.queryLocalInterface("android.support.v4.media.session.c");
                        if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof android.support.v4.media.session.c)) {
                            android.support.v4.media.session.a aVar2 = new android.support.v4.media.session.a();
                            aVar2.c = binder2;
                            cVar = aVar2;
                        } else {
                            cVar = (android.support.v4.media.session.c) iInterfaceQueryLocalInterface;
                        }
                    }
                    if (cVar != null) {
                        eVar.f77h = MediaSessionCompat$Token.q(mediaBrowser.getSessionToken(), cVar);
                    }
                }
            } catch (IllegalStateException e) {
                Log.e("MediaBrowserCompat", "Unexpected IllegalStateException", e);
            }
        }
        dVar.onConnected();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.browse.MediaBrowser$ConnectionCallback
    public final void onConnectionFailed() {
        this.f72a.onConnectionFailed();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.browse.MediaBrowser$ConnectionCallback
    public final void onConnectionSuspended() {
        d dVar = this.f72a;
        c cVar = dVar.mConnectionCallbackInternal;
        if (cVar != null) {
            e eVar = (e) cVar;
            eVar.f75f = null;
            eVar.f76g = null;
            eVar.f77h = null;
            a aVar = eVar.d;
            aVar.getClass();
            aVar.f71b = new WeakReference(null);
        }
        dVar.onConnectionSuspended();
    }
}
