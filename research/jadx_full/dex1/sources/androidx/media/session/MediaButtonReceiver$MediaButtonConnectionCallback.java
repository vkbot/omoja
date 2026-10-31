package androidx.media.session;

import android.content.BroadcastReceiver$PendingResult;
import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.d;
import android.support.v4.media.e;
import android.support.v4.media.h;
import android.support.v4.media.i;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.f;
import android.util.Log;
import android.view.KeyEvent;
import java.util.Collections;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaButtonReceiver$MediaButtonConnectionCallback extends d {
    private final Context mContext;
    private final Intent mIntent;
    private i mMediaBrowser;
    private final BroadcastReceiver$PendingResult mPendingResult;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaButtonReceiver$MediaButtonConnectionCallback(Context context, Intent intent, BroadcastReceiver$PendingResult broadcastReceiver$PendingResult) {
        this.mContext = context;
        this.mIntent = intent;
        this.mPendingResult = broadcastReceiver$PendingResult;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void finish() {
        Messenger messenger;
        e eVar = this.mMediaBrowser.f81a;
        h hVar = eVar.f75f;
        if (hVar != null && (messenger = eVar.f76g) != null) {
            try {
                Message messageObtain = Message.obtain();
                messageObtain.what = 7;
                messageObtain.arg1 = 1;
                messageObtain.setData(null);
                messageObtain.replyTo = messenger;
                ((Messenger) hVar.c).send(messageObtain);
            } catch (RemoteException unused) {
                Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
            }
        }
        eVar.f74b.disconnect();
        this.mPendingResult.finish();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.support.v4.media.d
    public void onConnected() {
        Context context = this.mContext;
        e eVar = this.mMediaBrowser.f81a;
        if (eVar.f77h == null) {
            eVar.f77h = MediaSessionCompat$Token.q(eVar.f74b.getSessionToken(), null);
        }
        MediaSessionCompat$Token mediaSessionCompat$Token = eVar.f77h;
        if (mediaSessionCompat$Token == null) {
            j1.i.k("sessionToken must not be null");
            return;
        }
        Collections.synchronizedSet(new HashSet());
        android.support.v4.media.session.e fVar = Build$VERSION.SDK_INT >= 29 ? new f(context, mediaSessionCompat$Token) : new android.support.v4.media.session.e(context, mediaSessionCompat$Token);
        KeyEvent keyEvent = (KeyEvent) this.mIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent == null) {
            j1.i.k("KeyEvent may not be null");
        } else {
            fVar.f97a.dispatchMediaButtonEvent(keyEvent);
            finish();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.support.v4.media.d
    public void onConnectionFailed() {
        finish();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.support.v4.media.d
    public void onConnectionSuspended() {
        finish();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMediaBrowser(i iVar) {
        this.mMediaBrowser = iVar;
    }
}
