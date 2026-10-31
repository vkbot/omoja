package androidx.media.session;

import ai.onnxruntime.AbstractC0074a;
import android.app.ForegroundServiceStartNotAllowedException;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.AbstractC0086d;
import android.support.v4.media.C0087e;
import android.support.v4.media.C0090h;
import android.support.v4.media.C0091i;
import android.support.v4.media.session.AbstractC0102h;
import android.support.v4.media.session.C0099e;
import android.support.v4.media.session.C0100f;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.AbstractC0325c;
import androidx.core.content.ContextCompat;
import androidx.media.MediaBrowserServiceCompat;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import okhttp3.internal.p160ws.WebSocketProtocol;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MediaButtonReceiver extends BroadcastReceiver {
    private static final String TAG = "MediaButtonReceiver";

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RequiresApi(31)
    public static final class Api31 {
        private Api31() {
        }

        @DoNotInline
        public static ForegroundServiceStartNotAllowedException castToForegroundServiceStartNotAllowedException(IllegalStateException illegalStateException) {
            return AbstractC0325c.m473d(illegalStateException);
        }

        @DoNotInline
        public static boolean instanceOfForegroundServiceStartNotAllowedException(IllegalStateException illegalStateException) {
            return AbstractC0325c.m495z(illegalStateException);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class MediaButtonConnectionCallback extends AbstractC0086d {
        private final Context mContext;
        private final Intent mIntent;
        private C0091i mMediaBrowser;
        private final BroadcastReceiver.PendingResult mPendingResult;

        public MediaButtonConnectionCallback(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.mContext = context;
            this.mIntent = intent;
            this.mPendingResult = pendingResult;
        }

        private void finish() {
            Messenger messenger;
            C0087e c0087e = this.mMediaBrowser.f194a;
            C0090h c0090h = c0087e.f185f;
            if (c0090h != null && (messenger = c0087e.f186g) != null) {
                try {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 7;
                    messageObtain.arg1 = 1;
                    messageObtain.setData(null);
                    messageObtain.replyTo = messenger;
                    ((Messenger) c0090h.f191c).send(messageObtain);
                } catch (RemoteException unused) {
                    Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
                }
            }
            c0087e.f181b.disconnect();
            this.mPendingResult.finish();
        }

        @Override // android.support.v4.media.AbstractC0086d
        public void onConnected() {
            Context context = this.mContext;
            C0087e c0087e = this.mMediaBrowser.f194a;
            if (c0087e.f187h == null) {
                c0087e.f187h = MediaSessionCompat$Token.m274q(c0087e.f181b.getSessionToken(), null);
            }
            MediaSessionCompat$Token mediaSessionCompat$Token = c0087e.f187h;
            if (mediaSessionCompat$Token == null) {
                C1929i.m3029k("sessionToken must not be null");
                return;
            }
            Collections.synchronizedSet(new HashSet());
            C0099e c0100f = Build.VERSION.SDK_INT >= 29 ? new C0100f(context, mediaSessionCompat$Token) : new C0099e(context, mediaSessionCompat$Token);
            KeyEvent keyEvent = (KeyEvent) this.mIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            if (keyEvent == null) {
                C1929i.m3029k("KeyEvent may not be null");
            } else {
                c0100f.f226a.dispatchMediaButtonEvent(keyEvent);
                finish();
            }
        }

        @Override // android.support.v4.media.AbstractC0086d
        public void onConnectionFailed() {
            finish();
        }

        @Override // android.support.v4.media.AbstractC0086d
        public void onConnectionSuspended() {
            finish();
        }

        public void setMediaBrowser(C0091i c0091i) {
            this.mMediaBrowser = c0091i;
        }
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, ComponentName componentName, long j10) {
        int i10;
        if (componentName == null) {
            Log.w(TAG, "The component name of media button receiver should be provided.");
            return null;
        }
        if (j10 == 4) {
            i10 = WebSocketProtocol.PAYLOAD_SHORT;
        } else if (j10 == 2) {
            i10 = 127;
        } else if (j10 == 32) {
            i10 = 87;
        } else if (j10 == 16) {
            i10 = 88;
        } else if (j10 == 1) {
            i10 = 86;
        } else if (j10 == 64) {
            i10 = 90;
        } else if (j10 == 8) {
            i10 = 89;
        } else {
            i10 = j10 == 512 ? 85 : 0;
        }
        if (i10 == 0) {
            Log.w(TAG, "Cannot build a media button pending intent with the given action: " + j10);
            return null;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, i10));
        intent.addFlags(268435456);
        return PendingIntent.getBroadcast(context, i10, intent, Build.VERSION.SDK_INT >= 31 ? 33554432 : 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static ComponentName getMediaButtonReceiverComponent(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (listQueryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = listQueryBroadcastReceivers.get(0).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }
        if (listQueryBroadcastReceivers.size() <= 1) {
            return null;
        }
        Log.w(TAG, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
        return null;
    }

    private static ComponentName getServiceComponentByAction(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (listQueryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        }
        if (listQueryIntentServices.isEmpty()) {
            return null;
        }
        StringBuilder sbM173x = AbstractC0074a.m173x("Expected 1 service that handles ", str, ", found ");
        sbM173x.append(listQueryIntentServices.size());
        throw new IllegalStateException(sbM173x.toString());
    }

    public static KeyEvent handleIntent(AbstractC0102h abstractC0102h, Intent intent) {
        return null;
    }

    @RequiresApi(31)
    public void onForegroundServiceStartNotAllowedException(@NonNull Intent intent, @NonNull ForegroundServiceStartNotAllowedException foregroundServiceStartNotAllowedException) {
        Log.e(TAG, "caught exception when trying to start a foreground service from the background: " + foregroundServiceStartNotAllowedException.getMessage());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            Log.d(TAG, "Ignore unsupported intent: " + intent);
            return;
        }
        ComponentName serviceComponentByAction = getServiceComponentByAction(context, "android.intent.action.MEDIA_BUTTON");
        if (serviceComponentByAction != null) {
            intent.setComponent(serviceComponentByAction);
            try {
                ContextCompat.startForegroundService(context, intent);
                return;
            } catch (IllegalStateException e) {
                if (Build.VERSION.SDK_INT < 31 || !Api31.instanceOfForegroundServiceStartNotAllowedException(e)) {
                    throw e;
                }
                onForegroundServiceStartNotAllowedException(intent, Api31.castToForegroundServiceStartNotAllowedException(e));
                return;
            }
        }
        ComponentName serviceComponentByAction2 = getServiceComponentByAction(context, MediaBrowserServiceCompat.SERVICE_INTERFACE);
        if (serviceComponentByAction2 == null) {
            C1929i.m3030l("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
            return;
        }
        BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
        Context applicationContext = context.getApplicationContext();
        MediaButtonConnectionCallback mediaButtonConnectionCallback = new MediaButtonConnectionCallback(applicationContext, intent, pendingResultGoAsync);
        C0091i c0091i = new C0091i(applicationContext, serviceComponentByAction2, mediaButtonConnectionCallback);
        mediaButtonConnectionCallback.setMediaBrowser(c0091i);
        Log.d("MediaBrowserCompat", "Connecting to a MediaBrowserService.");
        c0091i.f194a.f181b.connect();
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, long j10) {
        ComponentName mediaButtonReceiverComponent = getMediaButtonReceiverComponent(context);
        if (mediaButtonReceiverComponent == null) {
            Log.w(TAG, "A unique media button receiver could not be found in the given context, so couldn't build a pending intent.");
            return null;
        }
        return buildMediaButtonPendingIntent(context, mediaButtonReceiverComponent, j10);
    }
}
