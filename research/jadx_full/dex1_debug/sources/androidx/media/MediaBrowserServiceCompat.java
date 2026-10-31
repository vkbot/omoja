package androidx.media;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.h;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.core.util.Pair;
import b.d;
import j1.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {
    private static final float EPSILON = 1.0E-5f;

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String KEY_MEDIA_ITEM = "media_item";

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String KEY_SEARCH_RESULTS = "search_results";

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final int RESULT_ERROR = -1;
    static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
    static final int RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED = 4;
    static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final int RESULT_OK = 0;

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final int RESULT_PROGRESS_UPDATE = 1;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
    MediaBrowserServiceCompat$ConnectionRecord mCurConnection;
    private MediaBrowserServiceCompat$MediaBrowserServiceImpl mImpl;
    MediaSessionCompat$Token mSession;
    static final String TAG = "MBServiceCompat";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private final MediaBrowserServiceCompat$ServiceBinderImpl mServiceBinderImpl = new MediaBrowserServiceCompat$ServiceBinderImpl(this);
    final MediaBrowserServiceCompat$ConnectionRecord mConnectionFromFwk = new MediaBrowserServiceCompat$ConnectionRecord(this, MediaSessionManager$RemoteUserInfo.LEGACY_CONTROLLER, -1, -1, null, null);
    final ArrayList<MediaBrowserServiceCompat$ConnectionRecord> mPendingConnections = new ArrayList<>();
    final ArrayMap<IBinder, MediaBrowserServiceCompat$ConnectionRecord> mConnections = new ArrayMap<>();
    final MediaBrowserServiceCompat$ServiceHandler mHandler = new MediaBrowserServiceCompat$ServiceHandler(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addSubscription(String str, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, IBinder iBinder, Bundle bundle) {
        List<Pair<IBinder, Bundle>> arrayList = mediaBrowserServiceCompat$ConnectionRecord.subscriptions.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        for (Pair<IBinder, Bundle> pair : arrayList) {
            if (iBinder == pair.first && MediaBrowserCompatUtils.areSameOptions(bundle, pair.second)) {
                return;
            }
        }
        arrayList.add(new Pair<>(iBinder, bundle));
        mediaBrowserServiceCompat$ConnectionRecord.subscriptions.put(str, arrayList);
        performLoadChildren(str, mediaBrowserServiceCompat$ConnectionRecord, bundle, null);
        this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        onSubscribe(str, bundle);
        this.mCurConnection = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<MediaBrowserCompat$MediaItem> applyOptions(List<MediaBrowserCompat$MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i9 = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i10 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i9 == -1 && i10 == -1) {
            return list;
        }
        int i11 = i10 * i9;
        int size = i11 + i10;
        if (i9 < 0 || i10 < 1 || i11 >= list.size()) {
            return Collections.EMPTY_LIST;
        }
        if (size > list.size()) {
            size = list.size();
        }
        return list.subList(i11, size);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void attachToBaseContext(Context context) {
        attachBaseContext(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Bundle getBrowserRootHints() {
        return this.mImpl.getBrowserRootHints();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public final MediaSessionManager$RemoteUserInfo getCurrentBrowserInfo() {
        return this.mImpl.getCurrentBrowserInfo();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public MediaSessionCompat$Token getSessionToken() {
        return this.mSession;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void handleMessageInternal(Message message) {
        Bundle data = message.getData();
        switch (message.what) {
            case 1:
                Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                h.a(bundle);
                this.mServiceBinderImpl.connect(data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_PID), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), bundle, new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 2:
                this.mServiceBinderImpl.disconnect(new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 3:
                Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                h.a(bundle2);
                this.mServiceBinderImpl.addSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), bundle2, new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 4:
                this.mServiceBinderImpl.removeSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 5:
                this.mServiceBinderImpl.getMediaItem(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (d) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 6:
                Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                h.a(bundle3);
                this.mServiceBinderImpl.registerCallbacks(new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo), data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_PID), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), bundle3);
                break;
            case 7:
                this.mServiceBinderImpl.unregisterCallbacks(new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 8:
                Bundle bundle4 = data.getBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS);
                h.a(bundle4);
                this.mServiceBinderImpl.search(data.getString(MediaBrowserProtocol.DATA_SEARCH_QUERY), bundle4, (d) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 9:
                Bundle bundle5 = data.getBundle(MediaBrowserProtocol.DATA_CUSTOM_ACTION_EXTRAS);
                h.a(bundle5);
                this.mServiceBinderImpl.sendCustomAction(data.getString(MediaBrowserProtocol.DATA_CUSTOM_ACTION), bundle5, (d) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            default:
                Log.w(TAG, "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isValidPackage(String str, int i9) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i9)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void notifyChildrenChanged(@NonNull MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo, @NonNull String str, @NonNull Bundle bundle) {
        if (mediaSessionManager$RemoteUserInfo == null) {
            i.k("remoteUserInfo cannot be null in notifyChildrenChanged");
            return;
        }
        if (str == null) {
            i.k("parentId cannot be null in notifyChildrenChanged");
        } else if (bundle != null) {
            this.mImpl.notifyChildrenChanged(mediaSessionManager$RemoteUserInfo, str, bundle);
        } else {
            i.k("options cannot be null in notifyChildrenChanged");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mImpl.onBind(intent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 28) {
            this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi28(this);
        } else if (i9 >= 26) {
            this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi26(this);
        } else {
            this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi23(this);
        }
        this.mImpl.onCreate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onCustomAction(@NonNull String str, Bundle bundle, @NonNull MediaBrowserServiceCompat$Result<Bundle> mediaBrowserServiceCompat$Result) {
        mediaBrowserServiceCompat$Result.sendError(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    @CallSuper
    @MainThread
    public void onDestroy() {
        this.mHandler.release();
    }

    @Nullable
    public abstract MediaBrowserServiceCompat$BrowserRoot onGetRoot(@NonNull String str, int i9, @Nullable Bundle bundle);

    public abstract void onLoadChildren(@NonNull String str, @NonNull MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> mediaBrowserServiceCompat$Result);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onLoadChildren(@NonNull String str, @NonNull MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> mediaBrowserServiceCompat$Result, @NonNull Bundle bundle) {
        mediaBrowserServiceCompat$Result.setFlags(1);
        onLoadChildren(str, mediaBrowserServiceCompat$Result);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onLoadItem(String str, @NonNull MediaBrowserServiceCompat$Result<MediaBrowserCompat$MediaItem> mediaBrowserServiceCompat$Result) {
        mediaBrowserServiceCompat$Result.setFlags(2);
        mediaBrowserServiceCompat$Result.sendResult(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onSearch(@NonNull String str, Bundle bundle, @NonNull MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> mediaBrowserServiceCompat$Result) {
        mediaBrowserServiceCompat$Result.setFlags(4);
        mediaBrowserServiceCompat$Result.sendResult(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void performCustomAction(String str, Bundle bundle, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, d dVar) {
        MediaBrowserServiceCompat$4 mediaBrowserServiceCompat$4 = new MediaBrowserServiceCompat$4(this, str, dVar);
        this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        onCustomAction(str, bundle, mediaBrowserServiceCompat$4);
        this.mCurConnection = null;
        if (mediaBrowserServiceCompat$4.isDone()) {
            return;
        }
        b.t("onCustomAction must call detach() or sendResult() or sendError() before returning for action=", str, " extras=", bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void performLoadChildren(String str, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, Bundle bundle, Bundle bundle2) {
        MediaBrowserServiceCompat$1 mediaBrowserServiceCompat$1 = new MediaBrowserServiceCompat$1(this, str, mediaBrowserServiceCompat$ConnectionRecord, str, bundle, bundle2);
        this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        if (bundle == null) {
            onLoadChildren(str, mediaBrowserServiceCompat$1);
        } else {
            onLoadChildren(str, mediaBrowserServiceCompat$1, bundle);
        }
        this.mCurConnection = null;
        if (mediaBrowserServiceCompat$1.isDone()) {
            return;
        }
        n0.b.t("onLoadChildren must call detach() or sendResult() before returning for package=", mediaBrowserServiceCompat$ConnectionRecord.pkg, " id=", str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void performLoadItem(String str, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, d dVar) {
        MediaBrowserServiceCompat$2 mediaBrowserServiceCompat$2 = new MediaBrowserServiceCompat$2(this, str, dVar);
        this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        onLoadItem(str, mediaBrowserServiceCompat$2);
        this.mCurConnection = null;
        if (mediaBrowserServiceCompat$2.isDone()) {
            return;
        }
        i.l(a.l("onLoadItem must call detach() or sendResult() before returning for id=", str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void performSearch(String str, Bundle bundle, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, d dVar) {
        MediaBrowserServiceCompat$3 mediaBrowserServiceCompat$3 = new MediaBrowserServiceCompat$3(this, str, dVar);
        this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        onSearch(str, bundle, mediaBrowserServiceCompat$3);
        this.mCurConnection = null;
        if (mediaBrowserServiceCompat$3.isDone()) {
            return;
        }
        i.l(a.l("onSearch must call detach() or sendResult() before returning for query=", str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean removeSubscription(String str, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, IBinder iBinder) {
        boolean z8 = false;
        try {
            if (iBinder != null) {
                List<Pair<IBinder, Bundle>> list = mediaBrowserServiceCompat$ConnectionRecord.subscriptions.get(str);
                if (list != null) {
                    Iterator<Pair<IBinder, Bundle>> it = list.iterator();
                    while (it.hasNext()) {
                        if (iBinder == it.next().first) {
                            it.remove();
                            z8 = true;
                        }
                    }
                    if (list.size() == 0) {
                        mediaBrowserServiceCompat$ConnectionRecord.subscriptions.remove(str);
                    }
                }
            } else if (mediaBrowserServiceCompat$ConnectionRecord.subscriptions.remove(str) != null) {
                z8 = true;
            }
            this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
            onUnsubscribe(str);
            this.mCurConnection = null;
            return z8;
        } catch (Throwable th) {
            this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
            onUnsubscribe(str);
            this.mCurConnection = null;
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSessionToken(MediaSessionCompat$Token mediaSessionCompat$Token) {
        if (mediaSessionCompat$Token == null) {
            i.k("Session token may not be null");
        } else if (this.mSession != null) {
            i.l("The session token has already been set");
        } else {
            this.mSession = mediaSessionCompat$Token;
            this.mImpl.setSessionToken(mediaSessionCompat$Token);
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void onUnsubscribe(String str) {
    }

    public void notifyChildrenChanged(@NonNull String str, @NonNull Bundle bundle) {
        if (str == null) {
            i.k("parentId cannot be null in notifyChildrenChanged");
        } else if (bundle != null) {
            this.mImpl.notifyChildrenChanged(str, bundle);
        } else {
            i.k("options cannot be null in notifyChildrenChanged");
        }
    }

    public void notifyChildrenChanged(@NonNull String str) {
        if (str != null) {
            this.mImpl.notifyChildrenChanged(str, null);
        } else {
            i.k("parentId cannot be null in notifyChildrenChanged");
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void onSubscribe(String str, Bundle bundle) {
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }
}
