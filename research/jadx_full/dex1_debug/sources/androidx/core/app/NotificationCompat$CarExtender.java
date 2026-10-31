package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class NotificationCompat$CarExtender implements NotificationCompat$Extender {

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    static final String EXTRA_CAR_EXTENDER = "android.car.EXTENSIONS";
    private static final String EXTRA_COLOR = "app_color";
    private static final String EXTRA_CONVERSATION = "car_conversation";

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    static final String EXTRA_INVISIBLE_ACTIONS = "invisible_actions";
    private static final String EXTRA_LARGE_ICON = "large_icon";
    private static final String KEY_AUTHOR = "author";
    private static final String KEY_MESSAGES = "messages";
    private static final String KEY_ON_READ = "on_read";
    private static final String KEY_ON_REPLY = "on_reply";
    private static final String KEY_PARTICIPANTS = "participants";
    private static final String KEY_REMOTE_INPUT = "remote_input";
    private static final String KEY_TEXT = "text";
    private static final String KEY_TIMESTAMP = "timestamp";
    private int mColor;
    private Bitmap mLargeIcon;
    private NotificationCompat$CarExtender$UnreadConversation mUnreadConversation;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$CarExtender(@NonNull Notification notification) {
        this.mColor = 0;
        Bundle bundle = NotificationCompat.getExtras(notification) == null ? null : NotificationCompat.getExtras(notification).getBundle(EXTRA_CAR_EXTENDER);
        if (bundle != null) {
            this.mLargeIcon = (Bitmap) bundle.getParcelable(EXTRA_LARGE_ICON);
            this.mColor = bundle.getInt(EXTRA_COLOR, 0);
            this.mUnreadConversation = getUnreadConversationFromBundle(bundle.getBundle(EXTRA_CONVERSATION));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(21)
    private static Bundle getBundleForUnreadConversation(@NonNull NotificationCompat$CarExtender$UnreadConversation notificationCompat$CarExtender$UnreadConversation) {
        Bundle bundle = new Bundle();
        String str = (notificationCompat$CarExtender$UnreadConversation.getParticipants() == null || notificationCompat$CarExtender$UnreadConversation.getParticipants().length <= 1) ? null : notificationCompat$CarExtender$UnreadConversation.getParticipants()[0];
        int length = notificationCompat$CarExtender$UnreadConversation.getMessages().length;
        Parcelable[] parcelableArr = new Parcelable[length];
        for (int i9 = 0; i9 < length; i9++) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(KEY_TEXT, notificationCompat$CarExtender$UnreadConversation.getMessages()[i9]);
            bundle2.putString(KEY_AUTHOR, str);
            parcelableArr[i9] = bundle2;
        }
        bundle.putParcelableArray(KEY_MESSAGES, parcelableArr);
        RemoteInput remoteInput = notificationCompat$CarExtender$UnreadConversation.getRemoteInput();
        if (remoteInput != null) {
            android.app.RemoteInput$Builder remoteInput$BuilderCreateBuilder = NotificationCompat$CarExtender$Api20Impl.createBuilder(remoteInput.getResultKey());
            NotificationCompat$CarExtender$Api20Impl.setLabel(remoteInput$BuilderCreateBuilder, remoteInput.getLabel());
            NotificationCompat$CarExtender$Api20Impl.setChoices(remoteInput$BuilderCreateBuilder, remoteInput.getChoices());
            NotificationCompat$CarExtender$Api20Impl.setAllowFreeFormInput(remoteInput$BuilderCreateBuilder, remoteInput.getAllowFreeFormInput());
            NotificationCompat$CarExtender$Api20Impl.addExtras(remoteInput$BuilderCreateBuilder, remoteInput.getExtras());
            bundle.putParcelable(KEY_REMOTE_INPUT, NotificationCompat$CarExtender$Api20Impl.castToParcelable(NotificationCompat$CarExtender$Api20Impl.build(remoteInput$BuilderCreateBuilder)));
        }
        bundle.putParcelable(KEY_ON_REPLY, notificationCompat$CarExtender$UnreadConversation.getReplyPendingIntent());
        bundle.putParcelable(KEY_ON_READ, notificationCompat$CarExtender$UnreadConversation.getReadPendingIntent());
        bundle.putStringArray(KEY_PARTICIPANTS, notificationCompat$CarExtender$UnreadConversation.getParticipants());
        bundle.putLong(KEY_TIMESTAMP, notificationCompat$CarExtender$UnreadConversation.getLatestTimestamp());
        return bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(21)
    private static NotificationCompat$CarExtender$UnreadConversation getUnreadConversationFromBundle(@Nullable Bundle bundle) {
        String[] strArr;
        if (bundle == null) {
            return null;
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray(KEY_MESSAGES);
        if (parcelableArray != null) {
            int length = parcelableArray.length;
            String[] strArr2 = new String[length];
            for (int i9 = 0; i9 < length; i9++) {
                Parcelable parcelable = parcelableArray[i9];
                if (parcelable instanceof Bundle) {
                    String string = ((Bundle) parcelable).getString(KEY_TEXT);
                    strArr2[i9] = string;
                    if (string != null) {
                    }
                }
                return null;
            }
            strArr = strArr2;
        } else {
            strArr = null;
        }
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(KEY_ON_READ);
        PendingIntent pendingIntent2 = (PendingIntent) bundle.getParcelable(KEY_ON_REPLY);
        android.app.RemoteInput remoteInput = (android.app.RemoteInput) bundle.getParcelable(KEY_REMOTE_INPUT);
        String[] stringArray = bundle.getStringArray(KEY_PARTICIPANTS);
        if (stringArray == null || stringArray.length != 1) {
            return null;
        }
        return new NotificationCompat$CarExtender$UnreadConversation(strArr, remoteInput != null ? new RemoteInput(NotificationCompat$CarExtender$Api20Impl.getResultKey(remoteInput), NotificationCompat$CarExtender$Api20Impl.getLabel(remoteInput), NotificationCompat$CarExtender$Api20Impl.getChoices(remoteInput), NotificationCompat$CarExtender$Api20Impl.getAllowFreeFormInput(remoteInput), Build$VERSION.SDK_INT >= 29 ? NotificationCompat$CarExtender$Api29Impl.getEditChoicesBeforeSending(remoteInput) : 0, NotificationCompat$CarExtender$Api20Impl.getExtras(remoteInput), null) : null, pendingIntent2, pendingIntent, stringArray, bundle.getLong(KEY_TIMESTAMP));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Extender
    @NonNull
    public NotificationCompat$Builder extend(@NonNull NotificationCompat$Builder notificationCompat$Builder) {
        Bundle bundle = new Bundle();
        Bitmap bitmap = this.mLargeIcon;
        if (bitmap != null) {
            bundle.putParcelable(EXTRA_LARGE_ICON, bitmap);
        }
        int i9 = this.mColor;
        if (i9 != 0) {
            bundle.putInt(EXTRA_COLOR, i9);
        }
        NotificationCompat$CarExtender$UnreadConversation notificationCompat$CarExtender$UnreadConversation = this.mUnreadConversation;
        if (notificationCompat$CarExtender$UnreadConversation != null) {
            bundle.putBundle(EXTRA_CONVERSATION, getBundleForUnreadConversation(notificationCompat$CarExtender$UnreadConversation));
        }
        notificationCompat$Builder.getExtras().putBundle(EXTRA_CAR_EXTENDER, bundle);
        return notificationCompat$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public int getColor() {
        return this.mColor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Bitmap getLargeIcon() {
        return this.mLargeIcon;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public NotificationCompat$CarExtender$UnreadConversation getUnreadConversation() {
        return this.mUnreadConversation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CarExtender setColor(@ColorInt int i9) {
        this.mColor = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CarExtender setLargeIcon(@Nullable Bitmap bitmap) {
        this.mLargeIcon = bitmap;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$CarExtender setUnreadConversation(@Nullable NotificationCompat$CarExtender$UnreadConversation notificationCompat$CarExtender$UnreadConversation) {
        this.mUnreadConversation = notificationCompat$CarExtender$UnreadConversation;
        return this;
    }

    public NotificationCompat$CarExtender() {
        this.mColor = 0;
    }
}
