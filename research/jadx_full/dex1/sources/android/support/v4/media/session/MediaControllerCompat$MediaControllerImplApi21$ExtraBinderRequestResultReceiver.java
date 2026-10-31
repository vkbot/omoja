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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver extends ResultReceiver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WeakReference f82b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i9, Bundle bundle) {
        c cVar;
        e eVar = (e) this.f82b.get();
        if (eVar == null || bundle == null) {
            return;
        }
        synchronized (eVar.f98b) {
            try {
                MediaSessionCompat$Token mediaSessionCompat$Token = eVar.e;
                IBinder binder = BundleCompat.getBinder(bundle, "android.support.v4.media.session.EXTRA_BINDER");
                int i10 = b.c;
                if (binder == null) {
                    cVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = binder.queryLocalInterface("android.support.v4.media.session.c");
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) {
                        a aVar = new a();
                        aVar.c = binder;
                        cVar = aVar;
                    } else {
                        cVar = (c) iInterfaceQueryLocalInterface;
                    }
                }
                synchronized (mediaSessionCompat$Token.f85b) {
                    mediaSessionCompat$Token.d = cVar;
                }
                MediaSessionCompat$Token mediaSessionCompat$Token2 = eVar.e;
                VersionedParcelable versionedParcelable = ParcelUtils.getVersionedParcelable(bundle, "android.support.v4.media.session.SESSION_TOKEN2");
                synchronized (mediaSessionCompat$Token2.f85b) {
                    mediaSessionCompat$Token2.e = versionedParcelable;
                }
                ArrayList arrayList = eVar.c;
                if (eVar.e.r() != null) {
                    Iterator it = arrayList.iterator();
                    if (!it.hasNext()) {
                        arrayList.clear();
                    } else {
                        if (it.next() == null) {
                            eVar.d.put(null, new d());
                            throw null;
                        }
                        n0.b.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
