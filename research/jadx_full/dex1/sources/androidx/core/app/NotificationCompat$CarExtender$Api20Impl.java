package androidx.core.app;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(20)
public class NotificationCompat$CarExtender$Api20Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$CarExtender$Api20Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static android.app.RemoteInput$Builder addExtras(android.app.RemoteInput$Builder remoteInput$Builder, Bundle bundle) {
        return remoteInput$Builder.addExtras(bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static android.app.RemoteInput build(android.app.RemoteInput$Builder remoteInput$Builder) {
        return remoteInput$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static android.app.RemoteInput$Builder createBuilder(String str) {
        return new android.app.RemoteInput$Builder(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean getAllowFreeFormInput(android.app.RemoteInput remoteInput) {
        return remoteInput.getAllowFreeFormInput();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static CharSequence[] getChoices(android.app.RemoteInput remoteInput) {
        return remoteInput.getChoices();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Bundle getExtras(android.app.RemoteInput remoteInput) {
        return remoteInput.getExtras();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static CharSequence getLabel(android.app.RemoteInput remoteInput) {
        return remoteInput.getLabel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static String getResultKey(android.app.RemoteInput remoteInput) {
        return remoteInput.getResultKey();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static android.app.RemoteInput$Builder setAllowFreeFormInput(android.app.RemoteInput$Builder remoteInput$Builder, boolean z8) {
        return remoteInput$Builder.setAllowFreeFormInput(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static android.app.RemoteInput$Builder setChoices(android.app.RemoteInput$Builder remoteInput$Builder, CharSequence[] charSequenceArr) {
        return remoteInput$Builder.setChoices(charSequenceArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static android.app.RemoteInput$Builder setLabel(android.app.RemoteInput$Builder remoteInput$Builder, CharSequence charSequence) {
        return remoteInput$Builder.setLabel(charSequence);
    }

    @DoNotInline
    public static Parcelable castToParcelable(android.app.RemoteInput remoteInput) {
        return remoteInput;
    }
}
