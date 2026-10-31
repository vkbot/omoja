package android.support.v4.media.session;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: renamed from: android.support.v4.media.session.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C0099e {

    /* JADX INFO: renamed from: a */
    public final MediaController f226a;

    /* JADX INFO: renamed from: b */
    public final Object f227b = new Object();

    /* JADX INFO: renamed from: c */
    public final ArrayList f228c = new ArrayList();

    /* JADX INFO: renamed from: d */
    public final HashMap f229d = new HashMap();

    /* JADX INFO: renamed from: e */
    public final MediaSessionCompat$Token f230e;

    public C0099e(Context context, MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.f230e = mediaSessionCompat$Token;
        MediaController mediaController = new MediaController(context, (MediaSession.Token) mediaSessionCompat$Token.f200c);
        this.f226a = mediaController;
        if (mediaSessionCompat$Token.m275r() == null) {
            ResultReceiverC0094x50fd9e4a resultReceiverC0094x50fd9e4a = new ResultReceiverC0094x50fd9e4a(null);
            resultReceiverC0094x50fd9e4a.f195b = new WeakReference(this);
            mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, resultReceiverC0094x50fd9e4a);
        }
    }
}
