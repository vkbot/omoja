package androidx.core.app;

import android.app.PendingIntent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationCompat$CarExtender$UnreadConversation$Builder {
    private long mLatestTimestamp;
    private final List<String> mMessages = new ArrayList();
    private final String mParticipant;
    private PendingIntent mReadPendingIntent;
    private RemoteInput mRemoteInput;
    private PendingIntent mReplyPendingIntent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$CarExtender$UnreadConversation$Builder(@NonNull String str) {
        this.mParticipant = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CarExtender$UnreadConversation$Builder addMessage(@Nullable String str) {
        if (str != null) {
            this.mMessages.add(str);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CarExtender$UnreadConversation build() {
        List<String> list = this.mMessages;
        return new NotificationCompat$CarExtender$UnreadConversation((String[]) list.toArray(new String[list.size()]), this.mRemoteInput, this.mReplyPendingIntent, this.mReadPendingIntent, new String[]{this.mParticipant}, this.mLatestTimestamp);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CarExtender$UnreadConversation$Builder setLatestTimestamp(long j9) {
        this.mLatestTimestamp = j9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CarExtender$UnreadConversation$Builder setReadPendingIntent(@Nullable PendingIntent pendingIntent) {
        this.mReadPendingIntent = pendingIntent;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CarExtender$UnreadConversation$Builder setReplyAction(@Nullable PendingIntent pendingIntent, @Nullable RemoteInput remoteInput) {
        this.mRemoteInput = remoteInput;
        this.mReplyPendingIntent = pendingIntent;
        return this;
    }
}
