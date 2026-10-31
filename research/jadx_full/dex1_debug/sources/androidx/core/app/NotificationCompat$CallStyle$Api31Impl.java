package androidx.core.app;

import android.app.Notification$Action$Builder;
import android.app.Notification$CallStyle;
import android.app.PendingIntent;
import android.graphics.drawable.Icon;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
public class NotificationCompat$CallStyle$Api31Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$CallStyle$Api31Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$CallStyle forIncomingCall(@NonNull android.app.Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
        return Notification$CallStyle.forIncomingCall(person, pendingIntent, pendingIntent2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$CallStyle forOngoingCall(@NonNull android.app.Person person, @NonNull PendingIntent pendingIntent) {
        return Notification$CallStyle.forOngoingCall(person, pendingIntent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$CallStyle forScreeningCall(@NonNull android.app.Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
        return Notification$CallStyle.forScreeningCall(person, pendingIntent, pendingIntent2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$CallStyle setAnswerButtonColorHint(Notification$CallStyle notification$CallStyle, @ColorInt int i9) {
        return notification$CallStyle.setAnswerButtonColorHint(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$Action$Builder setAuthenticationRequired(Notification$Action$Builder notification$Action$Builder, boolean z8) {
        return notification$Action$Builder.setAuthenticationRequired(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$CallStyle setDeclineButtonColorHint(Notification$CallStyle notification$CallStyle, @ColorInt int i9) {
        return notification$CallStyle.setDeclineButtonColorHint(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$CallStyle setIsVideo(Notification$CallStyle notification$CallStyle, boolean z8) {
        return notification$CallStyle.setIsVideo(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$CallStyle setVerificationIcon(Notification$CallStyle notification$CallStyle, @Nullable Icon icon) {
        return notification$CallStyle.setVerificationIcon(icon);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Notification$CallStyle setVerificationText(Notification$CallStyle notification$CallStyle, @Nullable CharSequence charSequence) {
        return notification$CallStyle.setVerificationText(charSequence);
    }
}
