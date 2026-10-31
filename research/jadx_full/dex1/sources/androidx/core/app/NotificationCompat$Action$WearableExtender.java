package androidx.core.app;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class NotificationCompat$Action$WearableExtender implements NotificationCompat$Action$Extender {
    private static final int DEFAULT_FLAGS = 1;
    private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
    private static final int FLAG_AVAILABLE_OFFLINE = 1;
    private static final int FLAG_HINT_DISPLAY_INLINE = 4;
    private static final int FLAG_HINT_LAUNCHES_ACTIVITY = 2;
    private static final String KEY_CANCEL_LABEL = "cancelLabel";
    private static final String KEY_CONFIRM_LABEL = "confirmLabel";
    private static final String KEY_FLAGS = "flags";
    private static final String KEY_IN_PROGRESS_LABEL = "inProgressLabel";
    private CharSequence mCancelLabel;
    private CharSequence mConfirmLabel;
    private int mFlags;
    private CharSequence mInProgressLabel;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$Action$WearableExtender(@NonNull NotificationCompat$Action notificationCompat$Action) {
        this.mFlags = 1;
        Bundle bundle = notificationCompat$Action.getExtras().getBundle(EXTRA_WEARABLE_EXTENSIONS);
        if (bundle != null) {
            this.mFlags = bundle.getInt(KEY_FLAGS, 1);
            this.mInProgressLabel = bundle.getCharSequence(KEY_IN_PROGRESS_LABEL);
            this.mConfirmLabel = bundle.getCharSequence(KEY_CONFIRM_LABEL);
            this.mCancelLabel = bundle.getCharSequence(KEY_CANCEL_LABEL);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setFlag(int i9, boolean z8) {
        int i10 = this.mFlags;
        if (z8) {
            this.mFlags = i9 | i10;
        } else {
            this.mFlags = (~i9) & i10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$WearableExtender clone() {
        NotificationCompat$Action$WearableExtender notificationCompat$Action$WearableExtender = new NotificationCompat$Action$WearableExtender();
        notificationCompat$Action$WearableExtender.mFlags = this.mFlags;
        notificationCompat$Action$WearableExtender.mInProgressLabel = this.mInProgressLabel;
        notificationCompat$Action$WearableExtender.mConfirmLabel = this.mConfirmLabel;
        notificationCompat$Action$WearableExtender.mCancelLabel = this.mCancelLabel;
        return notificationCompat$Action$WearableExtender;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Action$Extender
    @NonNull
    public NotificationCompat$Action$Builder extend(@NonNull NotificationCompat$Action$Builder notificationCompat$Action$Builder) {
        Bundle bundle = new Bundle();
        int i9 = this.mFlags;
        if (i9 != 1) {
            bundle.putInt(KEY_FLAGS, i9);
        }
        CharSequence charSequence = this.mInProgressLabel;
        if (charSequence != null) {
            bundle.putCharSequence(KEY_IN_PROGRESS_LABEL, charSequence);
        }
        CharSequence charSequence2 = this.mConfirmLabel;
        if (charSequence2 != null) {
            bundle.putCharSequence(KEY_CONFIRM_LABEL, charSequence2);
        }
        CharSequence charSequence3 = this.mCancelLabel;
        if (charSequence3 != null) {
            bundle.putCharSequence(KEY_CANCEL_LABEL, charSequence3);
        }
        notificationCompat$Action$Builder.getExtras().putBundle(EXTRA_WEARABLE_EXTENSIONS, bundle);
        return notificationCompat$Action$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public CharSequence getCancelLabel() {
        return this.mCancelLabel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public CharSequence getConfirmLabel() {
        return this.mConfirmLabel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getHintDisplayActionInline() {
        return (this.mFlags & 4) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getHintLaunchesActivity() {
        return (this.mFlags & 2) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public CharSequence getInProgressLabel() {
        return this.mInProgressLabel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAvailableOffline() {
        return (this.mFlags & 1) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$WearableExtender setAvailableOffline(boolean z8) {
        setFlag(1, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$Action$WearableExtender setCancelLabel(@Nullable CharSequence charSequence) {
        this.mCancelLabel = charSequence;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$Action$WearableExtender setConfirmLabel(@Nullable CharSequence charSequence) {
        this.mConfirmLabel = charSequence;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$WearableExtender setHintDisplayActionInline(boolean z8) {
        setFlag(4, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Action$WearableExtender setHintLaunchesActivity(boolean z8) {
        setFlag(2, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$Action$WearableExtender setInProgressLabel(@Nullable CharSequence charSequence) {
        this.mInProgressLabel = charSequence;
        return this;
    }

    @NonNull
    /* JADX INFO: renamed from: clone, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m32clone() {
        return clone();
    }

    public NotificationCompat$Action$WearableExtender() {
        this.mFlags = 1;
    }
}
