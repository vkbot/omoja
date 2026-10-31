package androidx.core.app;

import android.app.Notification$Builder;
import android.app.Notification$CallStyle;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import androidx.activity.j;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.R$color;
import androidx.core.R$drawable;
import androidx.core.R$string;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.IconCompat;
import j1.i;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationCompat$CallStyle extends NotificationCompat$Style {
    public static final int CALL_TYPE_INCOMING = 1;
    public static final int CALL_TYPE_ONGOING = 2;
    public static final int CALL_TYPE_SCREENING = 3;
    public static final int CALL_TYPE_UNKNOWN = 0;
    private static final String KEY_ACTION_PRIORITY = "key_action_priority";
    private static final String TEMPLATE_CLASS_NAME = "androidx.core.app.NotificationCompat$CallStyle";
    private Integer mAnswerButtonColor;
    private PendingIntent mAnswerIntent;
    private int mCallType;
    private Integer mDeclineButtonColor;
    private PendingIntent mDeclineIntent;
    private PendingIntent mHangUpIntent;
    private boolean mIsVideo;
    private Person mPerson;
    private IconCompat mVerificationIcon;
    private CharSequence mVerificationText;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NotificationCompat$CallStyle(int i9, @NonNull Person person, @Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable PendingIntent pendingIntent3) {
        if (person == null || TextUtils.isEmpty(person.getName())) {
            i.k("person must have a non-empty a name");
            throw null;
        }
        this.mCallType = i9;
        this.mPerson = person;
        this.mAnswerIntent = pendingIntent3;
        this.mDeclineIntent = pendingIntent2;
        this.mHangUpIntent = pendingIntent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static NotificationCompat$CallStyle forIncomingCall(@NonNull Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
        Objects.requireNonNull(pendingIntent, "declineIntent is required");
        Objects.requireNonNull(pendingIntent2, "answerIntent is required");
        return new NotificationCompat$CallStyle(1, person, null, pendingIntent, pendingIntent2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static NotificationCompat$CallStyle forOngoingCall(@NonNull Person person, @NonNull PendingIntent pendingIntent) {
        Objects.requireNonNull(pendingIntent, "hangUpIntent is required");
        return new NotificationCompat$CallStyle(2, person, pendingIntent, null, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static NotificationCompat$CallStyle forScreeningCall(@NonNull Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
        Objects.requireNonNull(pendingIntent, "hangUpIntent is required");
        Objects.requireNonNull(pendingIntent2, "answerIntent is required");
        return new NotificationCompat$CallStyle(3, person, pendingIntent, null, pendingIntent2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private String getDefaultText() {
        int i9 = this.mCallType;
        if (i9 == 1) {
            return this.mBuilder.mContext.getResources().getString(R$string.call_notification_incoming_text);
        }
        if (i9 == 2) {
            return this.mBuilder.mContext.getResources().getString(R$string.call_notification_ongoing_text);
        }
        if (i9 != 3) {
            return null;
        }
        return this.mBuilder.mContext.getResources().getString(R$string.call_notification_screening_text);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isActionAddedByCallStyle(NotificationCompat$Action notificationCompat$Action) {
        return notificationCompat$Action != null && notificationCompat$Action.getExtras().getBoolean(KEY_ACTION_PRIORITY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(20)
    private NotificationCompat$Action makeAction(int i9, int i10, Integer num, int i11, PendingIntent pendingIntent) {
        if (num == null) {
            num = Integer.valueOf(ContextCompat.getColor(this.mBuilder.mContext, i11));
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.mBuilder.mContext.getResources().getString(i10));
        spannableStringBuilder.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableStringBuilder.length(), 18);
        NotificationCompat$Action notificationCompat$ActionBuild = new NotificationCompat$Action$Builder(IconCompat.createWithResource(this.mBuilder.mContext, i9), spannableStringBuilder, pendingIntent).build();
        notificationCompat$ActionBuild.getExtras().putBoolean(KEY_ACTION_PRIORITY, true);
        return notificationCompat$ActionBuild;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RequiresApi(20)
    private NotificationCompat$Action makeAnswerAction() {
        int i9 = R$drawable.ic_call_answer_video;
        int i10 = R$drawable.ic_call_answer;
        PendingIntent pendingIntent = this.mAnswerIntent;
        if (pendingIntent == null) {
            return null;
        }
        boolean z8 = this.mIsVideo;
        return makeAction(z8 ? i9 : i10, z8 ? R$string.call_notification_answer_video_action : R$string.call_notification_answer_action, this.mAnswerButtonColor, R$color.call_notification_answer_color, pendingIntent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(20)
    private NotificationCompat$Action makeNegativeAction() {
        int i9 = R$drawable.ic_call_decline;
        PendingIntent pendingIntent = this.mDeclineIntent;
        Integer num = this.mDeclineButtonColor;
        return pendingIntent == null ? makeAction(i9, R$string.call_notification_hang_up_action, num, R$color.call_notification_decline_color, this.mHangUpIntent) : makeAction(i9, R$string.call_notification_decline_action, num, R$color.call_notification_decline_color, pendingIntent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void addCompatExtras(@NonNull Bundle bundle) {
        super.addCompatExtras(bundle);
        bundle.putInt(NotificationCompat.EXTRA_CALL_TYPE, this.mCallType);
        bundle.putBoolean(NotificationCompat.EXTRA_CALL_IS_VIDEO, this.mIsVideo);
        Person person = this.mPerson;
        if (person != null) {
            if (Build$VERSION.SDK_INT >= 28) {
                bundle.putParcelable(NotificationCompat.EXTRA_CALL_PERSON, NotificationCompat$CallStyle$Api28Impl.castToParcelable(person.toAndroidPerson()));
            } else {
                bundle.putParcelable(NotificationCompat.EXTRA_CALL_PERSON_COMPAT, person.toBundle());
            }
        }
        IconCompat iconCompat = this.mVerificationIcon;
        if (iconCompat != null) {
            bundle.putParcelable(NotificationCompat.EXTRA_VERIFICATION_ICON, NotificationCompat$CallStyle$Api23Impl.castToParcelable(iconCompat.toIcon(this.mBuilder.mContext)));
        }
        bundle.putCharSequence(NotificationCompat.EXTRA_VERIFICATION_TEXT, this.mVerificationText);
        bundle.putParcelable(NotificationCompat.EXTRA_ANSWER_INTENT, this.mAnswerIntent);
        bundle.putParcelable(NotificationCompat.EXTRA_DECLINE_INTENT, this.mDeclineIntent);
        bundle.putParcelable(NotificationCompat.EXTRA_HANG_UP_INTENT, this.mHangUpIntent);
        Integer num = this.mAnswerButtonColor;
        if (num != null) {
            bundle.putInt(NotificationCompat.EXTRA_ANSWER_COLOR, num.intValue());
        }
        Integer num2 = this.mDeclineButtonColor;
        if (num2 != null) {
            bundle.putInt(NotificationCompat.EXTRA_DECLINE_COLOR, num2.intValue());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        int i9 = Build$VERSION.SDK_INT;
        CharSequence defaultText = null;
        notification$CallStyleForIncomingCall = null;
        Notification$CallStyle notification$CallStyleForIncomingCall = null;
        defaultText = null;
        if (i9 < 31) {
            Notification$Builder builder = notificationBuilderWithBuilderAccessor.getBuilder();
            Person person = this.mPerson;
            builder.setContentTitle(person != null ? person.getName() : null);
            Bundle bundle = this.mBuilder.mExtras;
            if (bundle != null && bundle.containsKey(NotificationCompat.EXTRA_TEXT)) {
                defaultText = this.mBuilder.mExtras.getCharSequence(NotificationCompat.EXTRA_TEXT);
            }
            if (defaultText == null) {
                defaultText = getDefaultText();
            }
            builder.setContentText(defaultText);
            Person person2 = this.mPerson;
            if (person2 != null) {
                if (person2.getIcon() != null) {
                    NotificationCompat$CallStyle$Api23Impl.setLargeIcon(builder, this.mPerson.getIcon().toIcon(this.mBuilder.mContext));
                }
                Person person3 = this.mPerson;
                if (i9 >= 28) {
                    NotificationCompat$CallStyle$Api28Impl.addPerson(builder, person3.toAndroidPerson());
                } else {
                    NotificationCompat$CallStyle$Api21Impl.addPerson(builder, person3.getUri());
                }
            }
            NotificationCompat$CallStyle$Api21Impl.setCategory(builder, NotificationCompat.CATEGORY_CALL);
            return;
        }
        int i10 = this.mCallType;
        if (i10 == 1) {
            notification$CallStyleForIncomingCall = NotificationCompat$CallStyle$Api31Impl.forIncomingCall(this.mPerson.toAndroidPerson(), this.mDeclineIntent, this.mAnswerIntent);
        } else if (i10 == 2) {
            notification$CallStyleForIncomingCall = NotificationCompat$CallStyle$Api31Impl.forOngoingCall(this.mPerson.toAndroidPerson(), this.mHangUpIntent);
        } else if (i10 == 3) {
            notification$CallStyleForIncomingCall = NotificationCompat$CallStyle$Api31Impl.forScreeningCall(this.mPerson.toAndroidPerson(), this.mHangUpIntent, this.mAnswerIntent);
        } else if (Log.isLoggable("NotifCompat", 3)) {
            Log.d("NotifCompat", "Unrecognized call type in CallStyle: " + String.valueOf(this.mCallType));
        }
        if (notification$CallStyleForIncomingCall != null) {
            c.q(notification$CallStyleForIncomingCall, notificationBuilderWithBuilderAccessor.getBuilder());
            Integer num = this.mAnswerButtonColor;
            if (num != null) {
                NotificationCompat$CallStyle$Api31Impl.setAnswerButtonColorHint(notification$CallStyleForIncomingCall, num.intValue());
            }
            Integer num2 = this.mDeclineButtonColor;
            if (num2 != null) {
                NotificationCompat$CallStyle$Api31Impl.setDeclineButtonColorHint(notification$CallStyleForIncomingCall, num2.intValue());
            }
            NotificationCompat$CallStyle$Api31Impl.setVerificationText(notification$CallStyleForIncomingCall, this.mVerificationText);
            IconCompat iconCompat = this.mVerificationIcon;
            if (iconCompat != null) {
                NotificationCompat$CallStyle$Api31Impl.setVerificationIcon(notification$CallStyleForIncomingCall, iconCompat.toIcon(this.mBuilder.mContext));
            }
            NotificationCompat$CallStyle$Api31Impl.setIsVideo(notification$CallStyleForIncomingCall, this.mIsVideo);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean displayCustomViewInline() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(20)
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public ArrayList<NotificationCompat$Action> getActionsListWithSystemActions() {
        NotificationCompat$Action notificationCompat$ActionMakeNegativeAction = makeNegativeAction();
        NotificationCompat$Action notificationCompat$ActionMakeAnswerAction = makeAnswerAction();
        ArrayList<NotificationCompat$Action> arrayList = new ArrayList<>(3);
        arrayList.add(notificationCompat$ActionMakeNegativeAction);
        ArrayList<NotificationCompat$Action> arrayList2 = this.mBuilder.mActions;
        int i9 = 2;
        if (arrayList2 != null) {
            int size = arrayList2.size();
            int i10 = 0;
            while (i10 < size) {
                NotificationCompat$Action notificationCompat$Action = arrayList2.get(i10);
                i10++;
                NotificationCompat$Action notificationCompat$Action2 = notificationCompat$Action;
                if (notificationCompat$Action2.isContextual()) {
                    arrayList.add(notificationCompat$Action2);
                } else if (!isActionAddedByCallStyle(notificationCompat$Action2) && i9 > 1) {
                    arrayList.add(notificationCompat$Action2);
                    i9--;
                }
                if (notificationCompat$ActionMakeAnswerAction != null && i9 == 1) {
                    arrayList.add(notificationCompat$ActionMakeAnswerAction);
                    i9--;
                }
            }
        }
        if (notificationCompat$ActionMakeAnswerAction != null && i9 >= 1) {
            arrayList.add(notificationCompat$ActionMakeAnswerAction);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public String getClassName() {
        return TEMPLATE_CLASS_NAME;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void restoreFromCompatExtras(@NonNull Bundle bundle) {
        super.restoreFromCompatExtras(bundle);
        this.mCallType = bundle.getInt(NotificationCompat.EXTRA_CALL_TYPE);
        this.mIsVideo = bundle.getBoolean(NotificationCompat.EXTRA_CALL_IS_VIDEO);
        if (Build$VERSION.SDK_INT >= 28 && bundle.containsKey(NotificationCompat.EXTRA_CALL_PERSON)) {
            this.mPerson = Person.fromAndroidPerson(j.f(bundle.getParcelable(NotificationCompat.EXTRA_CALL_PERSON)));
        } else if (bundle.containsKey(NotificationCompat.EXTRA_CALL_PERSON_COMPAT)) {
            this.mPerson = Person.fromBundle(bundle.getBundle(NotificationCompat.EXTRA_CALL_PERSON_COMPAT));
        }
        if (bundle.containsKey(NotificationCompat.EXTRA_VERIFICATION_ICON)) {
            this.mVerificationIcon = IconCompat.createFromIcon((Icon) bundle.getParcelable(NotificationCompat.EXTRA_VERIFICATION_ICON));
        } else if (bundle.containsKey(NotificationCompat.EXTRA_VERIFICATION_ICON_COMPAT)) {
            this.mVerificationIcon = IconCompat.createFromBundle(bundle.getBundle(NotificationCompat.EXTRA_VERIFICATION_ICON_COMPAT));
        }
        this.mVerificationText = bundle.getCharSequence(NotificationCompat.EXTRA_VERIFICATION_TEXT);
        this.mAnswerIntent = (PendingIntent) bundle.getParcelable(NotificationCompat.EXTRA_ANSWER_INTENT);
        this.mDeclineIntent = (PendingIntent) bundle.getParcelable(NotificationCompat.EXTRA_DECLINE_INTENT);
        this.mHangUpIntent = (PendingIntent) bundle.getParcelable(NotificationCompat.EXTRA_HANG_UP_INTENT);
        this.mAnswerButtonColor = bundle.containsKey(NotificationCompat.EXTRA_ANSWER_COLOR) ? Integer.valueOf(bundle.getInt(NotificationCompat.EXTRA_ANSWER_COLOR)) : null;
        this.mDeclineButtonColor = bundle.containsKey(NotificationCompat.EXTRA_DECLINE_COLOR) ? Integer.valueOf(bundle.getInt(NotificationCompat.EXTRA_DECLINE_COLOR)) : null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CallStyle setAnswerButtonColorHint(@ColorInt int i9) {
        this.mAnswerButtonColor = Integer.valueOf(i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CallStyle setDeclineButtonColorHint(@ColorInt int i9) {
        this.mDeclineButtonColor = Integer.valueOf(i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CallStyle setIsVideo(boolean z8) {
        this.mIsVideo = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(23)
    public NotificationCompat$CallStyle setVerificationIcon(@Nullable Icon icon) {
        this.mVerificationIcon = icon == null ? null : IconCompat.createFromIcon(icon);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$CallStyle setVerificationText(@Nullable CharSequence charSequence) {
        this.mVerificationText = charSequence;
        return this;
    }

    @NonNull
    public NotificationCompat$CallStyle setVerificationIcon(@Nullable Bitmap bitmap) {
        this.mVerificationIcon = IconCompat.createWithBitmap(bitmap);
        return this;
    }

    public NotificationCompat$CallStyle(@Nullable NotificationCompat$Builder notificationCompat$Builder) {
        setBuilder(notificationCompat$Builder);
    }

    public NotificationCompat$CallStyle() {
    }
}
