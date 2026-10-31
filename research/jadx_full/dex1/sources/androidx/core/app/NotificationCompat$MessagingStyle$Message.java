package androidx.core.app;

import android.app.Notification$MessagingStyle$Message;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.j;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class NotificationCompat$MessagingStyle$Message {
    static final String KEY_DATA_MIME_TYPE = "type";
    static final String KEY_DATA_URI = "uri";
    static final String KEY_EXTRAS_BUNDLE = "extras";
    static final String KEY_NOTIFICATION_PERSON = "sender_person";
    static final String KEY_PERSON = "person";
    static final String KEY_SENDER = "sender";
    static final String KEY_TEXT = "text";
    static final String KEY_TIMESTAMP = "time";

    @Nullable
    private String mDataMimeType;

    @Nullable
    private Uri mDataUri;
    private Bundle mExtras;

    @Nullable
    private final Person mPerson;
    private final CharSequence mText;
    private final long mTimestamp;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$MessagingStyle$Message(@Nullable CharSequence charSequence, long j9, @Nullable Person person) {
        this.mExtras = new Bundle();
        this.mText = charSequence;
        this.mTimestamp = j9;
        this.mPerson = person;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static Bundle[] getBundleArrayForMessages(@NonNull List<NotificationCompat$MessagingStyle$Message> list) {
        Bundle[] bundleArr = new Bundle[list.size()];
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            bundleArr[i9] = list.get(i9).toBundle();
        }
        return bundleArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static NotificationCompat$MessagingStyle$Message getMessageFromBundle(@NonNull Bundle bundle) {
        Person personBuild;
        try {
            if (bundle.containsKey(KEY_TEXT) && bundle.containsKey(KEY_TIMESTAMP)) {
                if (bundle.containsKey(KEY_PERSON)) {
                    personBuild = Person.fromBundle(bundle.getBundle(KEY_PERSON));
                } else if (!bundle.containsKey(KEY_NOTIFICATION_PERSON) || Build$VERSION.SDK_INT < 28) {
                    personBuild = bundle.containsKey(KEY_SENDER) ? new Person$Builder().setName(bundle.getCharSequence(KEY_SENDER)).build() : null;
                } else {
                    personBuild = Person.fromAndroidPerson(j.f(bundle.getParcelable(KEY_NOTIFICATION_PERSON)));
                }
                NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message = new NotificationCompat$MessagingStyle$Message(bundle.getCharSequence(KEY_TEXT), bundle.getLong(KEY_TIMESTAMP), personBuild);
                if (bundle.containsKey(KEY_DATA_MIME_TYPE) && bundle.containsKey(KEY_DATA_URI)) {
                    notificationCompat$MessagingStyle$Message.setData(bundle.getString(KEY_DATA_MIME_TYPE), (Uri) bundle.getParcelable(KEY_DATA_URI));
                }
                if (bundle.containsKey(KEY_EXTRAS_BUNDLE)) {
                    notificationCompat$MessagingStyle$Message.getExtras().putAll(bundle.getBundle(KEY_EXTRAS_BUNDLE));
                }
                return notificationCompat$MessagingStyle$Message;
            }
        } catch (ClassCastException unused) {
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static List<NotificationCompat$MessagingStyle$Message> getMessagesFromBundleArray(@NonNull Parcelable[] parcelableArr) {
        NotificationCompat$MessagingStyle$Message messageFromBundle;
        ArrayList arrayList = new ArrayList(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if ((parcelable instanceof Bundle) && (messageFromBundle = getMessageFromBundle((Bundle) parcelable)) != null) {
                arrayList.add(messageFromBundle);
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private Bundle toBundle() {
        Bundle bundle = new Bundle();
        CharSequence charSequence = this.mText;
        if (charSequence != null) {
            bundle.putCharSequence(KEY_TEXT, charSequence);
        }
        bundle.putLong(KEY_TIMESTAMP, this.mTimestamp);
        Person person = this.mPerson;
        if (person != null) {
            bundle.putCharSequence(KEY_SENDER, person.getName());
            int i9 = Build$VERSION.SDK_INT;
            Person person2 = this.mPerson;
            if (i9 >= 28) {
                bundle.putParcelable(KEY_NOTIFICATION_PERSON, NotificationCompat$MessagingStyle$Message$Api28Impl.castToParcelable(person2.toAndroidPerson()));
            } else {
                bundle.putBundle(KEY_PERSON, person2.toBundle());
            }
        }
        String str = this.mDataMimeType;
        if (str != null) {
            bundle.putString(KEY_DATA_MIME_TYPE, str);
        }
        Uri uri = this.mDataUri;
        if (uri != null) {
            bundle.putParcelable(KEY_DATA_URI, uri);
        }
        Bundle bundle2 = this.mExtras;
        if (bundle2 != null) {
            bundle.putBundle(KEY_EXTRAS_BUNDLE, bundle2);
        }
        return bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getDataMimeType() {
        return this.mDataMimeType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Uri getDataUri() {
        return this.mDataUri;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Bundle getExtras() {
        return this.mExtras;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Person getPerson() {
        return this.mPerson;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public CharSequence getSender() {
        Person person = this.mPerson;
        if (person == null) {
            return null;
        }
        return person.getName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getText() {
        return this.mText;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getTimestamp() {
        return this.mTimestamp;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$MessagingStyle$Message setData(@Nullable String str, @Nullable Uri uri) {
        this.mDataMimeType = str;
        this.mDataUri = uri;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(24)
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public Notification$MessagingStyle$Message toAndroidMessage() {
        Notification$MessagingStyle$Message notification$MessagingStyle$MessageCreateMessage;
        Person person = getPerson();
        if (Build$VERSION.SDK_INT >= 28) {
            notification$MessagingStyle$MessageCreateMessage = NotificationCompat$MessagingStyle$Message$Api28Impl.createMessage(getText(), getTimestamp(), person != null ? person.toAndroidPerson() : null);
        } else {
            notification$MessagingStyle$MessageCreateMessage = NotificationCompat$MessagingStyle$Message$Api24Impl.createMessage(getText(), getTimestamp(), person != null ? person.getName() : null);
        }
        if (getDataMimeType() != null) {
            NotificationCompat$MessagingStyle$Message$Api24Impl.setData(notification$MessagingStyle$MessageCreateMessage, getDataMimeType(), getDataUri());
        }
        return notification$MessagingStyle$MessageCreateMessage;
    }

    @Deprecated
    public NotificationCompat$MessagingStyle$Message(@Nullable CharSequence charSequence, long j9, @Nullable CharSequence charSequence2) {
        this(charSequence, j9, new Person$Builder().setName(charSequence2).build());
    }
}
