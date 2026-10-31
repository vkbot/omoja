package android.support.v4.media.session;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.ResultReceiver;
import androidx.core.app.BundleCompat;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import p142n0.C2467b;

/* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
class ResultReceiverC0094x50fd9e4a extends ResultReceiver {

    /* JADX INFO: renamed from: b */
    public WeakReference f195b;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i10, Bundle bundle) {
        InterfaceC0097c interfaceC0097c;
        C0099e c0099e = (C0099e) this.f195b.get();
        if (c0099e == null || bundle == null) {
            return;
        }
        synchronized (c0099e.f227b) {
            try {
                MediaSessionCompat$Token mediaSessionCompat$Token = c0099e.f230e;
                IBinder binder = BundleCompat.getBinder(bundle, "android.support.v4.media.session.EXTRA_BINDER");
                int i11 = AbstractBinderC0096b.f224c;
                if (binder == null) {
                    interfaceC0097c = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = binder.queryLocalInterface("android.support.v4.media.session.c");
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0097c)) {
                        C0095a c0095a = new C0095a();
                        c0095a.f223c = binder;
                        interfaceC0097c = c0095a;
                    } else {
                        interfaceC0097c = (InterfaceC0097c) iInterfaceQueryLocalInterface;
                    }
                }
                synchronized (mediaSessionCompat$Token.f199b) {
                    mediaSessionCompat$Token.f201d = interfaceC0097c;
                }
                MediaSessionCompat$Token mediaSessionCompat$Token2 = c0099e.f230e;
                VersionedParcelable versionedParcelable = ParcelUtils.getVersionedParcelable(bundle, "android.support.v4.media.session.SESSION_TOKEN2");
                synchronized (mediaSessionCompat$Token2.f199b) {
                    mediaSessionCompat$Token2.f202e = versionedParcelable;
                }
                ArrayList arrayList = c0099e.f228c;
                if (c0099e.f230e.m275r() != null) {
                    Iterator it = arrayList.iterator();
                    if (!it.hasNext()) {
                        arrayList.clear();
                    } else {
                        if (it.next() == null) {
                            c0099e.f229d.put(null, new BinderC0098d());
                            throw null;
                        }
                        C2467b.m3822a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
