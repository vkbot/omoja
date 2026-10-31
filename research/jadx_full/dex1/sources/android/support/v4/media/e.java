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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class e implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f73a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaBrowser f74b;
    public final Bundle c;
    public final a d = new a(this);
    public final ArrayMap e = new ArrayMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public h f75f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Messenger f76g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MediaSessionCompat$Token f77h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Context context, ComponentName componentName, d dVar) {
        this.f73a = context;
        Bundle bundle = new Bundle();
        this.c = bundle;
        bundle.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
        bundle.putInt(MediaBrowserProtocol.EXTRA_CALLING_PID, Process.myPid());
        dVar.setInternalConnectionCallback(this);
        this.f74b = new MediaBrowser(context, componentName, dVar.mConnectionCallbackFwk, bundle);
    }
}
