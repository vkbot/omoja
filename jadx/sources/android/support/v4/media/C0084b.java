package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.AbstractBinderC0096b;
import android.support.v4.media.session.C0095a;
import android.support.v4.media.session.InterfaceC0097c;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.util.Log;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserProtocol;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: android.support.v4.media.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0084b extends MediaBrowser.ConnectionCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC0086d f179a;

    public C0084b(AbstractC0086d abstractC0086d) {
        this.f179a = abstractC0086d;
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnected() {
        InterfaceC0097c interfaceC0097c;
        AbstractC0086d abstractC0086d = this.f179a;
        InterfaceC0085c interfaceC0085c = abstractC0086d.mConnectionCallbackInternal;
        if (interfaceC0085c != null) {
            C0087e c0087e = (C0087e) interfaceC0085c;
            HandlerC0083a handlerC0083a = c0087e.f183d;
            MediaBrowser mediaBrowser = c0087e.f181b;
            try {
                Bundle extras = mediaBrowser.getExtras();
                if (extras != null) {
                    int i10 = 0;
                    byte b10 = 0;
                    extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
                    IBinder binder = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
                    if (binder != null) {
                        Bundle bundle = c0087e.f182c;
                        C0090h c0090h = new C0090h(i10, (boolean) (b10 == true ? 1 : 0));
                        c0090h.f191c = new Messenger(binder);
                        c0090h.f192d = bundle;
                        c0087e.f185f = c0090h;
                        Messenger messenger = new Messenger(handlerC0083a);
                        c0087e.f186g = messenger;
                        handlerC0083a.getClass();
                        handlerC0083a.f178b = new WeakReference(messenger);
                        try {
                            C0090h c0090h2 = c0087e.f185f;
                            Context context = c0087e.f180a;
                            Messenger messenger2 = c0087e.f186g;
                            c0090h2.getClass();
                            Bundle bundle2 = new Bundle();
                            bundle2.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
                            bundle2.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Process.myPid());
                            bundle2.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, (Bundle) c0090h2.f192d);
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 6;
                            messageObtain.arg1 = 1;
                            messageObtain.setData(bundle2);
                            messageObtain.replyTo = messenger2;
                            ((Messenger) c0090h2.f191c).send(messageObtain);
                        } catch (RemoteException unused) {
                            Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                        }
                    }
                    IBinder binder2 = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER);
                    int i11 = AbstractBinderC0096b.f224c;
                    if (binder2 == null) {
                        interfaceC0097c = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = binder2.queryLocalInterface("android.support.v4.media.session.c");
                        if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0097c)) {
                            C0095a c0095a = new C0095a();
                            c0095a.f223c = binder2;
                            interfaceC0097c = c0095a;
                        } else {
                            interfaceC0097c = (InterfaceC0097c) iInterfaceQueryLocalInterface;
                        }
                    }
                    if (interfaceC0097c != null) {
                        c0087e.f187h = MediaSessionCompat$Token.m274q(mediaBrowser.getSessionToken(), interfaceC0097c);
                    }
                }
            } catch (IllegalStateException e) {
                Log.e("MediaBrowserCompat", "Unexpected IllegalStateException", e);
            }
        }
        abstractC0086d.onConnected();
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnectionFailed() {
        this.f179a.onConnectionFailed();
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnectionSuspended() {
        AbstractC0086d abstractC0086d = this.f179a;
        InterfaceC0085c interfaceC0085c = abstractC0086d.mConnectionCallbackInternal;
        if (interfaceC0085c != null) {
            C0087e c0087e = (C0087e) interfaceC0085c;
            c0087e.f185f = null;
            c0087e.f186g = null;
            c0087e.f187h = null;
            HandlerC0083a handlerC0083a = c0087e.f183d;
            handlerC0083a.getClass();
            handlerC0083a.f178b = new WeakReference(null);
        }
        abstractC0086d.onConnectionSuspended();
    }
}
