package androidx.media;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.provider.Settings$Secure;
import android.util.Log;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class MediaSessionManagerImplBase implements MediaSessionManager$MediaSessionManagerImpl {
    private static final boolean DEBUG = MediaSessionManager.DEBUG;
    private static final String ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    private static final String PERMISSION_MEDIA_CONTENT_CONTROL = "android.permission.MEDIA_CONTENT_CONTROL";
    private static final String PERMISSION_STATUS_BAR_SERVICE = "android.permission.STATUS_BAR_SERVICE";
    private static final String TAG = "MediaSessionManager";
    ContentResolver mContentResolver;
    Context mContext;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MediaSessionManagerImplBase(Context context) {
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isPermissionGranted(MediaSessionManager$RemoteUserInfoImpl mediaSessionManager$RemoteUserInfoImpl, String str) {
        int pid = mediaSessionManager$RemoteUserInfoImpl.getPid();
        Context context = this.mContext;
        if (pid < 0) {
            return context.getPackageManager().checkPermission(str, mediaSessionManager$RemoteUserInfoImpl.getPackageName()) == 0;
        }
        return context.checkPermission(str, mediaSessionManager$RemoteUserInfoImpl.getPid(), mediaSessionManager$RemoteUserInfoImpl.getUid()) == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaSessionManager$MediaSessionManagerImpl
    public Context getContext() {
        return this.mContext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isEnabledNotificationListener(@NonNull MediaSessionManager$RemoteUserInfoImpl mediaSessionManager$RemoteUserInfoImpl) {
        String string = Settings$Secure.getString(this.mContentResolver, ENABLED_NOTIFICATION_LISTENERS);
        if (string != null) {
            for (String str : string.split(":")) {
                ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                if (componentNameUnflattenFromString != null && componentNameUnflattenFromString.getPackageName().equals(mediaSessionManager$RemoteUserInfoImpl.getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.media.MediaSessionManager$MediaSessionManagerImpl
    public boolean isTrustedForMediaControl(@NonNull MediaSessionManager$RemoteUserInfoImpl mediaSessionManager$RemoteUserInfoImpl) {
        try {
            if (this.mContext.getPackageManager().getApplicationInfo(mediaSessionManager$RemoteUserInfoImpl.getPackageName(), 0) == null) {
                return false;
            }
            return isPermissionGranted(mediaSessionManager$RemoteUserInfoImpl, PERMISSION_STATUS_BAR_SERVICE) || isPermissionGranted(mediaSessionManager$RemoteUserInfoImpl, PERMISSION_MEDIA_CONTENT_CONTROL) || mediaSessionManager$RemoteUserInfoImpl.getUid() == 1000 || isEnabledNotificationListener(mediaSessionManager$RemoteUserInfoImpl);
        } catch (PackageManager$NameNotFoundException unused) {
            if (DEBUG) {
                Log.d(TAG, "Package " + mediaSessionManager$RemoteUserInfoImpl.getPackageName() + " doesn't exist");
            }
            return false;
        }
    }
}
