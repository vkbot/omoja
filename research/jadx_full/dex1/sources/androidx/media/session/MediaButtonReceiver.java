package androidx.media.session;

import ai.onnxruntime.a;
import android.app.ForegroundServiceStartNotAllowedException;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.BroadcastReceiver$PendingResult;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build$VERSION;
import android.support.v4.media.session.h;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.app.c;
import androidx.core.content.ContextCompat;
import androidx.media.MediaBrowserServiceCompat;
import j1.i;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MediaButtonReceiver extends BroadcastReceiver {
    private static final String TAG = "MediaButtonReceiver";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static PendingIntent buildMediaButtonPendingIntent(Context context, ComponentName componentName, long j9) {
        int i9;
        if (componentName == null) {
            Log.w(TAG, "The component name of media button receiver should be provided.");
            return null;
        }
        if (j9 == 4) {
            i9 = 126;
        } else if (j9 == 2) {
            i9 = 127;
        } else if (j9 == 32) {
            i9 = 87;
        } else if (j9 == 16) {
            i9 = 88;
        } else if (j9 == 1) {
            i9 = 86;
        } else if (j9 == 64) {
            i9 = 90;
        } else if (j9 == 8) {
            i9 = 89;
        } else {
            i9 = j9 == 512 ? 85 : 0;
        }
        if (i9 == 0) {
            Log.w(TAG, "Cannot build a media button pending intent with the given action: " + j9);
            return null;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, i9));
        intent.addFlags(268435456);
        return PendingIntent.getBroadcast(context, i9, intent, Build$VERSION.SDK_INT >= 31 ? 33554432 : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        StringBuilder sbX = a.x("Expected 1 service that handles ", str, ", found ");
        sbX.append(listQueryIntentServices.size());
        throw new IllegalStateException(sbX.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static KeyEvent handleIntent(h hVar, Intent intent) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
    public void onForegroundServiceStartNotAllowedException(@NonNull Intent intent, @NonNull ForegroundServiceStartNotAllowedException foregroundServiceStartNotAllowedException) {
        Log.e(TAG, "caught exception when trying to start a foreground service from the background: " + c.o(foregroundServiceStartNotAllowedException));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
                if (Build$VERSION.SDK_INT < 31 || !MediaButtonReceiver$Api31.instanceOfForegroundServiceStartNotAllowedException(e)) {
                    throw e;
                }
                onForegroundServiceStartNotAllowedException(intent, MediaButtonReceiver$Api31.castToForegroundServiceStartNotAllowedException(e));
                return;
            }
        }
        ComponentName serviceComponentByAction2 = getServiceComponentByAction(context, MediaBrowserServiceCompat.SERVICE_INTERFACE);
        if (serviceComponentByAction2 == null) {
            i.l("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
            return;
        }
        BroadcastReceiver$PendingResult broadcastReceiver$PendingResultGoAsync = goAsync();
        Context applicationContext = context.getApplicationContext();
        MediaButtonReceiver$MediaButtonConnectionCallback mediaButtonReceiver$MediaButtonConnectionCallback = new MediaButtonReceiver$MediaButtonConnectionCallback(applicationContext, intent, broadcastReceiver$PendingResultGoAsync);
        android.support.v4.media.i iVar = new android.support.v4.media.i(applicationContext, serviceComponentByAction2, mediaButtonReceiver$MediaButtonConnectionCallback);
        mediaButtonReceiver$MediaButtonConnectionCallback.setMediaBrowser(iVar);
        Log.d("MediaBrowserCompat", "Connecting to a MediaBrowserService.");
        iVar.f81a.f74b.connect();
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, long j9) {
        ComponentName mediaButtonReceiverComponent = getMediaButtonReceiverComponent(context);
        if (mediaButtonReceiverComponent == null) {
            Log.w(TAG, "A unique media button receiver could not be found in the given context, so couldn't build a pending intent.");
            return null;
        }
        return buildMediaButtonPendingIntent(context, mediaButtonReceiverComponent, j9);
    }
}
