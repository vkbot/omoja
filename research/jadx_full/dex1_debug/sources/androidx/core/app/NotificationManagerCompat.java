package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.provider.Settings$Secure;
import android.service.notification.StatusBarNotification;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class NotificationManagerCompat {
    public static final String ACTION_BIND_SIDE_CHANNEL = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
    private static final String CHECK_OP_NO_THROW = "checkOpNoThrow";
    public static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
    public static final int IMPORTANCE_DEFAULT = 3;
    public static final int IMPORTANCE_HIGH = 4;
    public static final int IMPORTANCE_LOW = 2;
    public static final int IMPORTANCE_MAX = 5;
    public static final int IMPORTANCE_MIN = 1;
    public static final int IMPORTANCE_NONE = 0;
    public static final int IMPORTANCE_UNSPECIFIED = -1000;
    public static final int INTERRUPTION_FILTER_ALARMS = 4;
    public static final int INTERRUPTION_FILTER_ALL = 1;
    public static final int INTERRUPTION_FILTER_NONE = 3;
    public static final int INTERRUPTION_FILTER_PRIORITY = 2;
    public static final int INTERRUPTION_FILTER_UNKNOWN = 0;
    static final int MAX_SIDE_CHANNEL_SDK_VERSION = 19;
    private static final String OP_POST_NOTIFICATION = "OP_POST_NOTIFICATION";
    private static final String SETTING_ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    private static final int SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS = 1000;
    private static final int SIDE_CHANNEL_RETRY_MAX_COUNT = 6;
    private static final String TAG = "NotifManCompat";

    @GuardedBy("sEnabledNotificationListenersLock")
    private static String sEnabledNotificationListeners;

    @GuardedBy("sLock")
    private static NotificationManagerCompat$SideChannelManager sSideChannelManager;
    private final Context mContext;
    private final NotificationManager mNotificationManager;
    private static final Object sEnabledNotificationListenersLock = new Object();

    @GuardedBy("sEnabledNotificationListenersLock")
    private static Set<String> sEnabledNotificationListenerPackages = new HashSet();
    private static final Object sLock = new Object();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationManagerCompat(Context context) {
        this.mContext = context;
        this.mNotificationManager = (NotificationManager) context.getSystemService("notification");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static NotificationManagerCompat from(@NonNull Context context) {
        return new NotificationManagerCompat(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Set<String> getEnabledListenerPackages(@NonNull Context context) {
        Set<String> set;
        String string = Settings$Secure.getString(context.getContentResolver(), SETTING_ENABLED_NOTIFICATION_LISTENERS);
        synchronized (sEnabledNotificationListenersLock) {
            if (string != null) {
                try {
                    if (!string.equals(sEnabledNotificationListeners)) {
                        String[] strArrSplit = string.split(":", -1);
                        HashSet hashSet = new HashSet(strArrSplit.length);
                        for (String str : strArrSplit) {
                            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                            if (componentNameUnflattenFromString != null) {
                                hashSet.add(componentNameUnflattenFromString.getPackageName());
                            }
                        }
                        sEnabledNotificationListenerPackages = hashSet;
                        sEnabledNotificationListeners = string;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            set = sEnabledNotificationListenerPackages;
        }
        return set;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void pushSideChannelQueue(NotificationManagerCompat$Task notificationManagerCompat$Task) {
        synchronized (sLock) {
            try {
                if (sSideChannelManager == null) {
                    sSideChannelManager = new NotificationManagerCompat$SideChannelManager(this.mContext.getApplicationContext());
                }
                sSideChannelManager.queueTask(notificationManagerCompat$Task);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean useSideChannelForNotification(Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        return extras != null && extras.getBoolean(EXTRA_USE_SIDE_CHANNEL);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean areNotificationsEnabled() {
        return NotificationManagerCompat$Api24Impl.areNotificationsEnabled(this.mNotificationManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canUseFullScreenIntent() {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 < 29) {
            return true;
        }
        if (i9 < 34) {
            return this.mContext.checkSelfPermission("android.permission.USE_FULL_SCREEN_INTENT") == 0;
        }
        return NotificationManagerCompat$Api34Impl.canUseFullScreenIntent(this.mNotificationManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cancel(@Nullable String str, int i9) {
        this.mNotificationManager.cancel(str, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cancelAll() {
        this.mNotificationManager.cancelAll();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createNotificationChannel(@NonNull NotificationChannel notificationChannel) {
        if (Build$VERSION.SDK_INT >= 26) {
            NotificationManagerCompat$Api26Impl.createNotificationChannel(this.mNotificationManager, notificationChannel);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createNotificationChannelGroup(@NonNull NotificationChannelGroup notificationChannelGroup) {
        if (Build$VERSION.SDK_INT >= 26) {
            NotificationManagerCompat$Api26Impl.createNotificationChannelGroup(this.mNotificationManager, notificationChannelGroup);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createNotificationChannelGroups(@NonNull List<NotificationChannelGroup> list) {
        if (Build$VERSION.SDK_INT >= 26) {
            NotificationManagerCompat$Api26Impl.createNotificationChannelGroups(this.mNotificationManager, list);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createNotificationChannelGroupsCompat(@NonNull List<NotificationChannelGroupCompat> list) {
        if (Build$VERSION.SDK_INT < 26 || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<NotificationChannelGroupCompat> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getNotificationChannelGroup());
        }
        NotificationManagerCompat$Api26Impl.createNotificationChannelGroups(this.mNotificationManager, arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createNotificationChannels(@NonNull List<NotificationChannel> list) {
        if (Build$VERSION.SDK_INT >= 26) {
            NotificationManagerCompat$Api26Impl.createNotificationChannels(this.mNotificationManager, list);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createNotificationChannelsCompat(@NonNull List<NotificationChannelCompat> list) {
        if (Build$VERSION.SDK_INT < 26 || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<NotificationChannelCompat> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getNotificationChannel());
        }
        NotificationManagerCompat$Api26Impl.createNotificationChannels(this.mNotificationManager, arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void deleteNotificationChannel(@NonNull String str) {
        if (Build$VERSION.SDK_INT >= 26) {
            NotificationManagerCompat$Api26Impl.deleteNotificationChannel(this.mNotificationManager, str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void deleteNotificationChannelGroup(@NonNull String str) {
        if (Build$VERSION.SDK_INT >= 26) {
            NotificationManagerCompat$Api26Impl.deleteNotificationChannelGroup(this.mNotificationManager, str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void deleteUnlistedNotificationChannels(@NonNull Collection<String> collection) {
        if (Build$VERSION.SDK_INT >= 26) {
            Iterator<NotificationChannel> it = NotificationManagerCompat$Api26Impl.getNotificationChannels(this.mNotificationManager).iterator();
            while (it.hasNext()) {
                NotificationChannel notificationChannelG = ai.onnxruntime.c.g(it.next());
                if (!collection.contains(NotificationManagerCompat$Api26Impl.getId(notificationChannelG)) && (Build$VERSION.SDK_INT < 30 || !collection.contains(NotificationManagerCompat$Api30Impl.getParentChannelId(notificationChannelG)))) {
                    NotificationManagerCompat$Api26Impl.deleteNotificationChannel(this.mNotificationManager, NotificationManagerCompat$Api26Impl.getId(notificationChannelG));
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<StatusBarNotification> getActiveNotifications() {
        return NotificationManagerCompat$Api23Impl.getActiveNotifications(this.mNotificationManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCurrentInterruptionFilter() {
        return NotificationManagerCompat$Api23Impl.getCurrentInterruptionFilter(this.mNotificationManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getImportance() {
        return NotificationManagerCompat$Api24Impl.getImportance(this.mNotificationManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public NotificationChannel getNotificationChannel(@NonNull String str, @NonNull String str2) {
        return Build$VERSION.SDK_INT >= 30 ? NotificationManagerCompat$Api30Impl.getNotificationChannel(this.mNotificationManager, str, str2) : getNotificationChannel(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public NotificationChannelCompat getNotificationChannelCompat(@NonNull String str) {
        NotificationChannel notificationChannel;
        if (Build$VERSION.SDK_INT < 26 || (notificationChannel = getNotificationChannel(str)) == null) {
            return null;
        }
        return new NotificationChannelCompat(notificationChannel);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public NotificationChannelGroup getNotificationChannelGroup(@NonNull String str) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 28) {
            return NotificationManagerCompat$Api28Impl.getNotificationChannelGroup(this.mNotificationManager, str);
        }
        if (i9 < 26) {
            return null;
        }
        Iterator<NotificationChannelGroup> it = getNotificationChannelGroups().iterator();
        while (it.hasNext()) {
            NotificationChannelGroup notificationChannelGroupH = ai.onnxruntime.c.h(it.next());
            if (NotificationManagerCompat$Api26Impl.getId(notificationChannelGroupH).equals(str)) {
                return notificationChannelGroupH;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public NotificationChannelGroupCompat getNotificationChannelGroupCompat(@NonNull String str) {
        NotificationChannelGroup notificationChannelGroup;
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 28) {
            NotificationChannelGroup notificationChannelGroup2 = getNotificationChannelGroup(str);
            if (notificationChannelGroup2 != null) {
                return new NotificationChannelGroupCompat(notificationChannelGroup2);
            }
            return null;
        }
        if (i9 < 26 || (notificationChannelGroup = getNotificationChannelGroup(str)) == null) {
            return null;
        }
        return new NotificationChannelGroupCompat(notificationChannelGroup, getNotificationChannels());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<NotificationChannelGroup> getNotificationChannelGroups() {
        return Build$VERSION.SDK_INT >= 26 ? NotificationManagerCompat$Api26Impl.getNotificationChannelGroups(this.mNotificationManager) : Collections.EMPTY_LIST;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<NotificationChannelGroupCompat> getNotificationChannelGroupsCompat() {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 26) {
            List<NotificationChannelGroup> notificationChannelGroups = getNotificationChannelGroups();
            if (!notificationChannelGroups.isEmpty()) {
                List<NotificationChannel> notificationChannels = i9 >= 28 ? Collections.EMPTY_LIST : getNotificationChannels();
                ArrayList arrayList = new ArrayList(notificationChannelGroups.size());
                Iterator<NotificationChannelGroup> it = notificationChannelGroups.iterator();
                while (it.hasNext()) {
                    NotificationChannelGroup notificationChannelGroupH = ai.onnxruntime.c.h(it.next());
                    if (Build$VERSION.SDK_INT >= 28) {
                        arrayList.add(new NotificationChannelGroupCompat(notificationChannelGroupH));
                    } else {
                        arrayList.add(new NotificationChannelGroupCompat(notificationChannelGroupH, notificationChannels));
                    }
                }
                return arrayList;
            }
        }
        return Collections.EMPTY_LIST;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<NotificationChannel> getNotificationChannels() {
        return Build$VERSION.SDK_INT >= 26 ? NotificationManagerCompat$Api26Impl.getNotificationChannels(this.mNotificationManager) : Collections.EMPTY_LIST;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<NotificationChannelCompat> getNotificationChannelsCompat() {
        if (Build$VERSION.SDK_INT >= 26) {
            List<NotificationChannel> notificationChannels = getNotificationChannels();
            if (!notificationChannels.isEmpty()) {
                ArrayList arrayList = new ArrayList(notificationChannels.size());
                Iterator<NotificationChannel> it = notificationChannels.iterator();
                while (it.hasNext()) {
                    arrayList.add(new NotificationChannelCompat(ai.onnxruntime.c.g(it.next())));
                }
                return arrayList;
            }
        }
        return Collections.EMPTY_LIST;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission("android.permission.POST_NOTIFICATIONS")
    public void notify(@Nullable String str, int i9, @NonNull Notification notification) {
        if (!useSideChannelForNotification(notification)) {
            this.mNotificationManager.notify(str, i9, notification);
        } else {
            pushSideChannelQueue(new NotificationManagerCompat$NotifyTask(this.mContext.getPackageName(), i9, str, notification));
            this.mNotificationManager.cancel(str, i9);
        }
    }

    public void cancel(int i9) {
        cancel(null, i9);
    }

    public void createNotificationChannel(@NonNull NotificationChannelCompat notificationChannelCompat) {
        createNotificationChannel(notificationChannelCompat.getNotificationChannel());
    }

    public void createNotificationChannelGroup(@NonNull NotificationChannelGroupCompat notificationChannelGroupCompat) {
        createNotificationChannelGroup(notificationChannelGroupCompat.getNotificationChannelGroup());
    }

    @VisibleForTesting
    public NotificationManagerCompat(@NonNull NotificationManager notificationManager, @NonNull Context context) {
        this.mContext = context;
        this.mNotificationManager = notificationManager;
    }

    @Nullable
    public NotificationChannel getNotificationChannel(@NonNull String str) {
        if (Build$VERSION.SDK_INT >= 26) {
            return NotificationManagerCompat$Api26Impl.getNotificationChannel(this.mNotificationManager, str);
        }
        return null;
    }

    @Nullable
    public NotificationChannelCompat getNotificationChannelCompat(@NonNull String str, @NonNull String str2) {
        NotificationChannel notificationChannel;
        if (Build$VERSION.SDK_INT < 26 || (notificationChannel = getNotificationChannel(str, str2)) == null) {
            return null;
        }
        return new NotificationChannelCompat(notificationChannel);
    }

    @RequiresPermission("android.permission.POST_NOTIFICATIONS")
    public void notify(int i9, @NonNull Notification notification) {
        notify(null, i9, notification);
    }

    @RequiresPermission("android.permission.POST_NOTIFICATIONS")
    public void notify(@NonNull List<NotificationManagerCompat$NotificationWithIdAndTag> list) {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            NotificationManagerCompat$NotificationWithIdAndTag notificationManagerCompat$NotificationWithIdAndTag = list.get(i9);
            notify(notificationManagerCompat$NotificationWithIdAndTag.mTag, notificationManagerCompat$NotificationWithIdAndTag.mId, notificationManagerCompat$NotificationWithIdAndTag.mNotification);
        }
    }
}
