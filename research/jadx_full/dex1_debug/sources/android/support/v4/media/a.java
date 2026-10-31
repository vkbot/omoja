package android.support.v4.media;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import androidx.media.MediaBrowserProtocol;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f70a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WeakReference f71b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(e eVar) {
        this.f70a = new WeakReference(eVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        WeakReference weakReference = this.f71b;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        WeakReference weakReference2 = this.f70a;
        if (weakReference2.get() == null) {
            return;
        }
        Bundle data = message.getData();
        android.support.v4.media.session.h.a(data);
        e eVar = (e) weakReference2.get();
        Messenger messenger = (Messenger) this.f71b.get();
        try {
            int i9 = message.what;
            if (i9 == 1) {
                android.support.v4.media.session.h.a(data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS));
                data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID);
                eVar.getClass();
                return;
            }
            if (i9 == 2) {
                eVar.getClass();
                return;
            }
            if (i9 != 3) {
                Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                return;
            }
            android.support.v4.media.session.h.a(data.getBundle(MediaBrowserProtocol.DATA_OPTIONS));
            android.support.v4.media.session.h.a(data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS));
            String string = data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID);
            data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST);
            if (eVar.f76g != messenger) {
                return;
            }
            if (eVar.e.get(string) != null) {
                throw new ClassCastException();
            }
            if (i.f80b) {
                Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + string);
            }
        } catch (BadParcelableException unused) {
            Log.e("MediaBrowserCompat", "Could not unparcel the data.");
            if (message.what == 1) {
                eVar.getClass();
            }
        }
    }
}
