package androidx.core.app;

import android.app.PendingIntent;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Deprecated
public class NotificationCompat$CarExtender$UnreadConversation {
    private final long mLatestTimestamp;
    private final String[] mMessages;
    private final String[] mParticipants;
    private final PendingIntent mReadPendingIntent;
    private final RemoteInput mRemoteInput;
    private final PendingIntent mReplyPendingIntent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$CarExtender$UnreadConversation(@Nullable String[] strArr, @Nullable RemoteInput remoteInput, @Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable String[] strArr2, long j9) {
        this.mMessages = strArr;
        this.mRemoteInput = remoteInput;
        this.mReadPendingIntent = pendingIntent2;
        this.mReplyPendingIntent = pendingIntent;
        this.mParticipants = strArr2;
        this.mLatestTimestamp = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getLatestTimestamp() {
        return this.mLatestTimestamp;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String[] getMessages() {
        return this.mMessages;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getParticipant() {
        String[] strArr = this.mParticipants;
        if (strArr.length > 0) {
            return strArr[0];
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String[] getParticipants() {
        return this.mParticipants;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public PendingIntent getReadPendingIntent() {
        return this.mReadPendingIntent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RemoteInput getRemoteInput() {
        return this.mRemoteInput;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public PendingIntent getReplyPendingIntent() {
        return this.mReplyPendingIntent;
    }
}
