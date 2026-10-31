package androidx.core.app;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import androidx.versionedparcelable.VersionedParcelable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class RemoteActionCompat implements VersionedParcelable {

    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public PendingIntent mActionIntent;

    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public CharSequence mContentDescription;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public boolean mEnabled;

    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public IconCompat mIcon;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public boolean mShouldShowIcon;

    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public CharSequence mTitle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RemoteActionCompat(@NonNull IconCompat iconCompat, @NonNull CharSequence charSequence, @NonNull CharSequence charSequence2, @NonNull PendingIntent pendingIntent) {
        this.mIcon = (IconCompat) Preconditions.checkNotNull(iconCompat);
        this.mTitle = (CharSequence) Preconditions.checkNotNull(charSequence);
        this.mContentDescription = (CharSequence) Preconditions.checkNotNull(charSequence2);
        this.mActionIntent = (PendingIntent) Preconditions.checkNotNull(pendingIntent);
        this.mEnabled = true;
        this.mShouldShowIcon = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(26)
    public static RemoteActionCompat createFromRemoteAction(@NonNull RemoteAction remoteAction) {
        Preconditions.checkNotNull(remoteAction);
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat(IconCompat.createFromIcon(RemoteActionCompat$Api26Impl.getIcon(remoteAction)), RemoteActionCompat$Api26Impl.getTitle(remoteAction), RemoteActionCompat$Api26Impl.getContentDescription(remoteAction), RemoteActionCompat$Api26Impl.getActionIntent(remoteAction));
        remoteActionCompat.setEnabled(RemoteActionCompat$Api26Impl.isEnabled(remoteAction));
        if (Build$VERSION.SDK_INT >= 28) {
            remoteActionCompat.setShouldShowIcon(RemoteActionCompat$Api28Impl.shouldShowIcon(remoteAction));
        }
        return remoteActionCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public PendingIntent getActionIntent() {
        return this.mActionIntent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public IconCompat getIcon() {
        return this.mIcon;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public CharSequence getTitle() {
        return this.mTitle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isEnabled() {
        return this.mEnabled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEnabled(boolean z8) {
        this.mEnabled = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShouldShowIcon(boolean z8) {
        this.mShouldShowIcon = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldShowIcon() {
        return this.mShouldShowIcon;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(26)
    public RemoteAction toRemoteAction() {
        RemoteAction remoteActionCreateRemoteAction = RemoteActionCompat$Api26Impl.createRemoteAction(this.mIcon.toIcon(), this.mTitle, this.mContentDescription, this.mActionIntent);
        RemoteActionCompat$Api26Impl.setEnabled(remoteActionCreateRemoteAction, isEnabled());
        if (Build$VERSION.SDK_INT >= 28) {
            RemoteActionCompat$Api28Impl.setShouldShowIcon(remoteActionCreateRemoteAction, shouldShowIcon());
        }
        return remoteActionCreateRemoteAction;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public RemoteActionCompat() {
    }

    public RemoteActionCompat(@NonNull RemoteActionCompat remoteActionCompat) {
        Preconditions.checkNotNull(remoteActionCompat);
        this.mIcon = remoteActionCompat.mIcon;
        this.mTitle = remoteActionCompat.mTitle;
        this.mContentDescription = remoteActionCompat.mContentDescription;
        this.mActionIntent = remoteActionCompat.mActionIntent;
        this.mEnabled = remoteActionCompat.mEnabled;
        this.mShouldShowIcon = remoteActionCompat.mShouldShowIcon;
    }
}
