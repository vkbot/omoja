package androidx.core.app;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationChannelGroupCompat {
    private boolean mBlocked;
    private List<NotificationChannelCompat> mChannels;
    String mDescription;
    final String mId;
    CharSequence mName;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(26)
    public NotificationChannelGroupCompat(@NonNull NotificationChannelGroup notificationChannelGroup, @NonNull List<NotificationChannel> list) {
        this(NotificationChannelGroupCompat$Api26Impl.getId(notificationChannelGroup));
        this.mName = NotificationChannelGroupCompat$Api26Impl.getName(notificationChannelGroup);
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 28) {
            this.mDescription = NotificationChannelGroupCompat$Api28Impl.getDescription(notificationChannelGroup);
        }
        if (i9 < 28) {
            this.mChannels = getChannelsCompat(list);
        } else {
            this.mBlocked = NotificationChannelGroupCompat$Api28Impl.isBlocked(notificationChannelGroup);
            this.mChannels = getChannelsCompat(NotificationChannelGroupCompat$Api26Impl.getChannels(notificationChannelGroup));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(26)
    private List<NotificationChannelCompat> getChannelsCompat(List<NotificationChannel> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<NotificationChannel> it = list.iterator();
        while (it.hasNext()) {
            NotificationChannel notificationChannelG = ai.onnxruntime.c.g(it.next());
            if (this.mId.equals(NotificationChannelGroupCompat$Api26Impl.getGroup(notificationChannelG))) {
                arrayList.add(new NotificationChannelCompat(notificationChannelG));
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<NotificationChannelCompat> getChannels() {
        return this.mChannels;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getDescription() {
        return this.mDescription;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String getId() {
        return this.mId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getName() {
        return this.mName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationChannelGroup getNotificationChannelGroup() {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 < 26) {
            return null;
        }
        NotificationChannelGroup notificationChannelGroupCreateNotificationChannelGroup = NotificationChannelGroupCompat$Api26Impl.createNotificationChannelGroup(this.mId, this.mName);
        if (i9 >= 28) {
            NotificationChannelGroupCompat$Api28Impl.setDescription(notificationChannelGroupCreateNotificationChannelGroup, this.mDescription);
        }
        return notificationChannelGroupCreateNotificationChannelGroup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isBlocked() {
        return this.mBlocked;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelGroupCompat$Builder toBuilder() {
        return new NotificationChannelGroupCompat$Builder(this.mId).setName(this.mName).setDescription(this.mDescription);
    }

    @RequiresApi(28)
    public NotificationChannelGroupCompat(@NonNull NotificationChannelGroup notificationChannelGroup) {
        this(notificationChannelGroup, Collections.EMPTY_LIST);
    }

    public NotificationChannelGroupCompat(@NonNull String str) {
        this.mChannels = Collections.EMPTY_LIST;
        this.mId = (String) Preconditions.checkNotNull(str);
    }
}
