package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Process;
import android.support.v4.media.session.MediaSessionCompat$Token;
import androidx.collection.ArrayMap;
import androidx.media.MediaBrowserProtocol;

/* JADX INFO: renamed from: android.support.v4.media.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C0087e implements InterfaceC0085c {

    /* JADX INFO: renamed from: a */
    public final Context f180a;

    /* JADX INFO: renamed from: b */
    public final MediaBrowser f181b;

    /* JADX INFO: renamed from: c */
    public final Bundle f182c;

    /* JADX INFO: renamed from: d */
    public final HandlerC0083a f183d = new HandlerC0083a(this);

    /* JADX INFO: renamed from: e */
    public final ArrayMap f184e = new ArrayMap();

    /* JADX INFO: renamed from: f */
    public C0090h f185f;

    /* JADX INFO: renamed from: g */
    public Messenger f186g;

    /* JADX INFO: renamed from: h */
    public MediaSessionCompat$Token f187h;

    public C0087e(Context context, ComponentName componentName, AbstractC0086d abstractC0086d) {
        this.f180a = context;
        Bundle bundle = new Bundle();
        this.f182c = bundle;
        bundle.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
        bundle.putInt(MediaBrowserProtocol.EXTRA_CALLING_PID, Process.myPid());
        abstractC0086d.setInternalConnectionCallback(this);
        this.f181b = new MediaBrowser(context, componentName, abstractC0086d.mConnectionCallbackFwk, bundle);
    }
}
