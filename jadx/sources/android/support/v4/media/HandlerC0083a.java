package android.support.v4.media;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.support.v4.media.session.AbstractC0102h;
import android.util.Log;
import androidx.media.MediaBrowserProtocol;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: android.support.v4.media.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class HandlerC0083a extends Handler {

    /* JADX INFO: renamed from: a */
    public final WeakReference f177a;

    /* JADX INFO: renamed from: b */
    public WeakReference f178b;

    public HandlerC0083a(C0087e c0087e) {
        this.f177a = new WeakReference(c0087e);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        WeakReference weakReference = this.f178b;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        WeakReference weakReference2 = this.f177a;
        if (weakReference2.get() == null) {
            return;
        }
        Bundle data = message.getData();
        AbstractC0102h.m276a(data);
        C0087e c0087e = (C0087e) weakReference2.get();
        Messenger messenger = (Messenger) this.f178b.get();
        try {
            int i10 = message.what;
            if (i10 == 1) {
                AbstractC0102h.m276a(data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS));
                data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID);
                c0087e.getClass();
                return;
            }
            if (i10 == 2) {
                c0087e.getClass();
                return;
            }
            if (i10 != 3) {
                Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                return;
            }
            AbstractC0102h.m276a(data.getBundle(MediaBrowserProtocol.DATA_OPTIONS));
            AbstractC0102h.m276a(data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS));
            String string = data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID);
            data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST);
            if (c0087e.f186g != messenger) {
                return;
            }
            if (c0087e.f184e.get(string) != null) {
                throw new ClassCastException();
            }
            if (C0091i.f193b) {
                Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + string);
            }
        } catch (BadParcelableException unused) {
            Log.e("MediaBrowserCompat", "Could not unparcel the data.");
            if (message.what == 1) {
                c0087e.getClass();
            }
        }
    }
}
