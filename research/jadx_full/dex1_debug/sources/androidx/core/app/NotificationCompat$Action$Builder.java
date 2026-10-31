package androidx.core.app;

import android.app.Notification$Action;
import android.app.PendingIntent;
import android.os.Build$VERSION;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class NotificationCompat$Action$Builder {
    private boolean mAllowGeneratedReplies;
    private boolean mAuthenticationRequired;
    private final Bundle mExtras;
    private final IconCompat mIcon;
    private final PendingIntent mIntent;
    private boolean mIsContextual;
    private ArrayList<RemoteInput> mRemoteInputs;
    private int mSemanticAction;
    private boolean mShowsUserInterface;
    private final CharSequence mTitle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$Action$Builder(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent, @NonNull Bundle bundle, @Nullable RemoteInput[] remoteInputArr, boolean z8, int i9, boolean z9, boolean z10, boolean z11) {
        this.mAllowGeneratedReplies = true;
        this.mShowsUserInterface = true;
        this.mIcon = iconCompat;
        this.mTitle = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        this.mIntent = pendingIntent;
        this.mExtras = bundle;
        this.mRemoteInputs = remoteInputArr == null ? null : new ArrayList<>(Arrays.asList(remoteInputArr));
        this.mAllowGeneratedReplies = z8;
        this.mSemanticAction = i9;
        this.mShowsUserInterface = z9;
        this.mIsContextual = z10;
        this.mAuthenticationRequired = z11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkContextualActionNullFields() {
        if (this.mIsContextual && this.mIntent == null) {
            n0.b.n("Contextual Actions must contain a valid PendingIntent");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static NotificationCompat$Action$Builder fromAndroidAction(@NonNull Notification$Action notification$Action) {
        NotificationCompat$Action$Builder notificationCompat$Action$Builder = NotificationCompat$Action$Builder$Api23Impl.getIcon(notification$Action) != null ? new NotificationCompat$Action$Builder(IconCompat.createFromIconOrNullIfZeroResId(NotificationCompat$Action$Builder$Api23Impl.getIcon(notification$Action)), notification$Action.title, notification$Action.actionIntent) : new NotificationCompat$Action$Builder(notification$Action.icon, notification$Action.title, notification$Action.actionIntent);
        android.app.RemoteInput[] remoteInputs = NotificationCompat$Action$Builder$Api20Impl.getRemoteInputs(notification$Action);
        if (remoteInputs != null && remoteInputs.length != 0) {
            for (android.app.RemoteInput remoteInput : remoteInputs) {
                notificationCompat$Action$Builder.addRemoteInput(RemoteInput.fromPlatform(remoteInput));
            }
        }
        notificationCompat$Action$Builder.mAllowGeneratedReplies = NotificationCompat$Action$Builder$Api24Impl.getAllowGeneratedReplies(notification$Action);
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 28) {
            notificationCompat$Action$Builder.setSemanticAction(NotificationCompat$Action$Builder$Api28Impl.getSemanticAction(notification$Action));
        }
        if (i9 >= 29) {
            notificationCompat$Action$Builder.setContextual(NotificationCompat$Action$Builder$Api29Impl.isContextual(notification$Action));
        }
        if (i9 >= 31) {
            notificationCompat$Action$Builder.setAuthenticationRequired(NotificationCompat$Action$Builder$Api31Impl.isAuthenticationRequired(notification$Action));
        }
        notificationCompat$Action$Builder.addExtras(NotificationCompat$Action$Builder$Api20Impl.getExtras(notification$Action));
        return notificationCompat$Action$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$Builder addExtras(@Nullable Bundle bundle) {
        if (bundle != null) {
            this.mExtras.putAll(bundle);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$Builder addRemoteInput(@Nullable RemoteInput remoteInput) {
        if (this.mRemoteInputs == null) {
            this.mRemoteInputs = new ArrayList<>();
        }
        if (remoteInput != null) {
            this.mRemoteInputs.add(remoteInput);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action build() {
        checkContextualActionNullFields();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList<RemoteInput> arrayList3 = this.mRemoteInputs;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            int i9 = 0;
            while (i9 < size) {
                RemoteInput remoteInput = arrayList3.get(i9);
                i9++;
                RemoteInput remoteInput2 = remoteInput;
                if (remoteInput2.isDataOnly()) {
                    arrayList.add(remoteInput2);
                } else {
                    arrayList2.add(remoteInput2);
                }
            }
        }
        return new NotificationCompat$Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), arrayList.isEmpty() ? null : (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]), this.mAllowGeneratedReplies, this.mSemanticAction, this.mShowsUserInterface, this.mIsContextual, this.mAuthenticationRequired);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$Builder extend(@NonNull NotificationCompat$Action$Extender notificationCompat$Action$Extender) {
        notificationCompat$Action$Extender.extend(this);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Bundle getExtras() {
        return this.mExtras;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$Builder setAllowGeneratedReplies(boolean z8) {
        this.mAllowGeneratedReplies = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$Builder setAuthenticationRequired(boolean z8) {
        this.mAuthenticationRequired = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$Builder setContextual(boolean z8) {
        this.mIsContextual = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$Builder setSemanticAction(int i9) {
        this.mSemanticAction = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$Builder setShowsUserInterface(boolean z8) {
        this.mShowsUserInterface = z8;
        return this;
    }

    public NotificationCompat$Action$Builder(int i9, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
        this(i9 != 0 ? IconCompat.createWithResource(null, "", i9) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
    }

    public NotificationCompat$Action$Builder(@NonNull NotificationCompat$Action notificationCompat$Action) {
        this(notificationCompat$Action.getIconCompat(), notificationCompat$Action.title, notificationCompat$Action.actionIntent, new Bundle(notificationCompat$Action.mExtras), notificationCompat$Action.getRemoteInputs(), notificationCompat$Action.getAllowGeneratedReplies(), notificationCompat$Action.getSemanticAction(), notificationCompat$Action.mShowsUserInterface, notificationCompat$Action.isContextual(), notificationCompat$Action.isAuthenticationRequired());
    }

    public NotificationCompat$Action$Builder(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
        this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
    }
}
