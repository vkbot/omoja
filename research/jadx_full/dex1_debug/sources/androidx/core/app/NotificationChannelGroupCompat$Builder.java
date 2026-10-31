package androidx.core.app;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationChannelGroupCompat$Builder {
    final NotificationChannelGroupCompat mGroup;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationChannelGroupCompat$Builder(@NonNull String str) {
        this.mGroup = new NotificationChannelGroupCompat(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelGroupCompat build() {
        return this.mGroup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelGroupCompat$Builder setDescription(@Nullable String str) {
        this.mGroup.mDescription = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationChannelGroupCompat$Builder setName(@Nullable CharSequence charSequence) {
        this.mGroup.mName = charSequence;
        return this;
    }
}
