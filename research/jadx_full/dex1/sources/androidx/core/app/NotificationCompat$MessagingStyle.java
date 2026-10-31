package androidx.core.app;

import android.app.Notification;
import android.app.Notification$MessagingStyle;
import android.content.res.ColorStateList;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.text.BidiFormatter;
import androidx.core.view.ViewCompat;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationCompat$MessagingStyle extends NotificationCompat$Style {
    public static final int MAXIMUM_RETAINED_MESSAGES = 25;
    private static final String TEMPLATE_CLASS_NAME = "androidx.core.app.NotificationCompat$MessagingStyle";

    @Nullable
    private CharSequence mConversationTitle;

    @Nullable
    private Boolean mIsGroupConversation;
    private Person mUser;
    private final List<NotificationCompat$MessagingStyle$Message> mMessages = new ArrayList();
    private final List<NotificationCompat$MessagingStyle$Message> mHistoricMessages = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$MessagingStyle(@NonNull Person person) {
        if (TextUtils.isEmpty(person.getName())) {
            i.k("User's name must not be empty.");
            throw null;
        }
        this.mUser = person;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static NotificationCompat$MessagingStyle extractMessagingStyleFromNotification(@NonNull Notification notification) {
        NotificationCompat$Style notificationCompat$StyleExtractStyleFromNotification = NotificationCompat$Style.extractStyleFromNotification(notification);
        if (notificationCompat$StyleExtractStyleFromNotification instanceof NotificationCompat$MessagingStyle) {
            return (NotificationCompat$MessagingStyle) notificationCompat$StyleExtractStyleFromNotification;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0008 */
    @Nullable
    private NotificationCompat$MessagingStyle$Message findLatestIncomingMessage() {
        int size = this.mMessages.size();
        while (true) {
            size--;
            List<NotificationCompat$MessagingStyle$Message> list = this.mMessages;
            if (size < 0) {
                if (list.isEmpty()) {
                    return null;
                }
                List<NotificationCompat$MessagingStyle$Message> list2 = this.mMessages;
                return list2.get(list2.size() - 1);
            }
            NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message = list.get(size);
            if (notificationCompat$MessagingStyle$Message.getPerson() != null && !TextUtils.isEmpty(notificationCompat$MessagingStyle$Message.getPerson().getName())) {
                return notificationCompat$MessagingStyle$Message;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean hasMessagesWithoutSender() {
        for (int size = this.mMessages.size() - 1; size >= 0; size--) {
            NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message = this.mMessages.get(size);
            if (notificationCompat$MessagingStyle$Message.getPerson() != null && notificationCompat$MessagingStyle$Message.getPerson().getName() == null) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private TextAppearanceSpan makeFontColorSpan(int i9) {
        return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i9), null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CharSequence makeMessageLine(@NonNull NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message) {
        BidiFormatter bidiFormatter = BidiFormatter.getInstance();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        CharSequence name = notificationCompat$MessagingStyle$Message.getPerson() == null ? "" : notificationCompat$MessagingStyle$Message.getPerson().getName();
        boolean zIsEmpty = TextUtils.isEmpty(name);
        int color = ViewCompat.MEASURED_STATE_MASK;
        if (zIsEmpty) {
            name = this.mUser.getName();
            if (this.mBuilder.getColor() != 0) {
                color = this.mBuilder.getColor();
            }
        }
        CharSequence charSequenceUnicodeWrap = bidiFormatter.unicodeWrap(name);
        spannableStringBuilder.append(charSequenceUnicodeWrap);
        spannableStringBuilder.setSpan(makeFontColorSpan(color), spannableStringBuilder.length() - charSequenceUnicodeWrap.length(), spannableStringBuilder.length(), 33);
        spannableStringBuilder.append((CharSequence) "  ").append(bidiFormatter.unicodeWrap(notificationCompat$MessagingStyle$Message.getText() != null ? notificationCompat$MessagingStyle$Message.getText() : ""));
        return spannableStringBuilder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    public void addCompatExtras(@NonNull Bundle bundle) {
        super.addCompatExtras(bundle);
        bundle.putCharSequence(NotificationCompat.EXTRA_SELF_DISPLAY_NAME, this.mUser.getName());
        bundle.putBundle(NotificationCompat.EXTRA_MESSAGING_STYLE_USER, this.mUser.toBundle());
        bundle.putCharSequence(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE, this.mConversationTitle);
        if (this.mConversationTitle != null && this.mIsGroupConversation.booleanValue()) {
            bundle.putCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE, this.mConversationTitle);
        }
        if (!this.mMessages.isEmpty()) {
            bundle.putParcelableArray(NotificationCompat.EXTRA_MESSAGES, NotificationCompat$MessagingStyle$Message.getBundleArrayForMessages(this.mMessages));
        }
        if (!this.mHistoricMessages.isEmpty()) {
            bundle.putParcelableArray(NotificationCompat.EXTRA_HISTORIC_MESSAGES, NotificationCompat$MessagingStyle$Message.getBundleArrayForMessages(this.mHistoricMessages));
        }
        Boolean bool = this.mIsGroupConversation;
        if (bool != null) {
            bundle.putBoolean(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION, bool.booleanValue());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$MessagingStyle addHistoricMessage(@Nullable NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message) {
        if (notificationCompat$MessagingStyle$Message != null) {
            this.mHistoricMessages.add(notificationCompat$MessagingStyle$Message);
            if (this.mHistoricMessages.size() > 25) {
                this.mHistoricMessages.remove(0);
            }
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$MessagingStyle addMessage(@Nullable CharSequence charSequence, long j9, @Nullable CharSequence charSequence2) {
        this.mMessages.add(new NotificationCompat$MessagingStyle$Message(charSequence, j9, new Person$Builder().setName(charSequence2).build()));
        if (this.mMessages.size() > 25) {
            this.mMessages.remove(0);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        setGroupConversation(isGroupConversation());
        int i9 = Build$VERSION.SDK_INT;
        Person person = this.mUser;
        Notification$MessagingStyle notification$MessagingStyleCreateMessagingStyle = i9 >= 28 ? NotificationCompat$MessagingStyle$Api28Impl.createMessagingStyle(person.toAndroidPerson()) : NotificationCompat$MessagingStyle$Api24Impl.createMessagingStyle(person.getName());
        Iterator<NotificationCompat$MessagingStyle$Message> it = this.mMessages.iterator();
        while (it.hasNext()) {
            NotificationCompat$MessagingStyle$Api24Impl.addMessage(notification$MessagingStyleCreateMessagingStyle, it.next().toAndroidMessage());
        }
        if (Build$VERSION.SDK_INT >= 26) {
            Iterator<NotificationCompat$MessagingStyle$Message> it2 = this.mHistoricMessages.iterator();
            while (it2.hasNext()) {
                NotificationCompat$MessagingStyle$Api26Impl.addHistoricMessage(notification$MessagingStyleCreateMessagingStyle, it2.next().toAndroidMessage());
            }
        }
        if (this.mIsGroupConversation.booleanValue() || Build$VERSION.SDK_INT >= 28) {
            NotificationCompat$MessagingStyle$Api24Impl.setConversationTitle(notification$MessagingStyleCreateMessagingStyle, this.mConversationTitle);
        }
        if (Build$VERSION.SDK_INT >= 28) {
            NotificationCompat$MessagingStyle$Api28Impl.setGroupConversation(notification$MessagingStyleCreateMessagingStyle, this.mIsGroupConversation.booleanValue());
        }
        notification$MessagingStyleCreateMessagingStyle.setBuilder(notificationBuilderWithBuilderAccessor.getBuilder());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void clearCompatExtraKeys(@NonNull Bundle bundle) {
        super.clearCompatExtraKeys(bundle);
        bundle.remove(NotificationCompat.EXTRA_MESSAGING_STYLE_USER);
        bundle.remove(NotificationCompat.EXTRA_SELF_DISPLAY_NAME);
        bundle.remove(NotificationCompat.EXTRA_CONVERSATION_TITLE);
        bundle.remove(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE);
        bundle.remove(NotificationCompat.EXTRA_MESSAGES);
        bundle.remove(NotificationCompat.EXTRA_HISTORIC_MESSAGES);
        bundle.remove(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public String getClassName() {
        return TEMPLATE_CLASS_NAME;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public CharSequence getConversationTitle() {
        return this.mConversationTitle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<NotificationCompat$MessagingStyle$Message> getHistoricMessages() {
        return this.mHistoricMessages;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<NotificationCompat$MessagingStyle$Message> getMessages() {
        return this.mMessages;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Person getUser() {
        return this.mUser;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public CharSequence getUserDisplayName() {
        return this.mUser.getName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isGroupConversation() {
        NotificationCompat$Builder notificationCompat$Builder = this.mBuilder;
        if (notificationCompat$Builder != null && notificationCompat$Builder.mContext.getApplicationInfo().targetSdkVersion < 28 && this.mIsGroupConversation == null) {
            return this.mConversationTitle != null;
        }
        Boolean bool = this.mIsGroupConversation;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void restoreFromCompatExtras(@NonNull Bundle bundle) {
        super.restoreFromCompatExtras(bundle);
        this.mMessages.clear();
        if (bundle.containsKey(NotificationCompat.EXTRA_MESSAGING_STYLE_USER)) {
            this.mUser = Person.fromBundle(bundle.getBundle(NotificationCompat.EXTRA_MESSAGING_STYLE_USER));
        } else {
            this.mUser = new Person$Builder().setName(bundle.getString(NotificationCompat.EXTRA_SELF_DISPLAY_NAME)).build();
        }
        CharSequence charSequence = bundle.getCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE);
        this.mConversationTitle = charSequence;
        if (charSequence == null) {
            this.mConversationTitle = bundle.getCharSequence(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE);
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray(NotificationCompat.EXTRA_MESSAGES);
        if (parcelableArray != null) {
            this.mMessages.addAll(NotificationCompat$MessagingStyle$Message.getMessagesFromBundleArray(parcelableArray));
        }
        Parcelable[] parcelableArray2 = bundle.getParcelableArray(NotificationCompat.EXTRA_HISTORIC_MESSAGES);
        if (parcelableArray2 != null) {
            this.mHistoricMessages.addAll(NotificationCompat$MessagingStyle$Message.getMessagesFromBundleArray(parcelableArray2));
        }
        if (bundle.containsKey(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION)) {
            this.mIsGroupConversation = Boolean.valueOf(bundle.getBoolean(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$MessagingStyle setConversationTitle(@Nullable CharSequence charSequence) {
        this.mConversationTitle = charSequence;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$MessagingStyle setGroupConversation(boolean z8) {
        this.mIsGroupConversation = Boolean.valueOf(z8);
        return this;
    }

    @Deprecated
    public NotificationCompat$MessagingStyle(@NonNull CharSequence charSequence) {
        this.mUser = new Person$Builder().setName(charSequence).build();
    }

    @NonNull
    public NotificationCompat$MessagingStyle addMessage(@Nullable CharSequence charSequence, long j9, @Nullable Person person) {
        addMessage(new NotificationCompat$MessagingStyle$Message(charSequence, j9, person));
        return this;
    }

    public NotificationCompat$MessagingStyle() {
    }

    @NonNull
    public NotificationCompat$MessagingStyle addMessage(@Nullable NotificationCompat$MessagingStyle$Message notificationCompat$MessagingStyle$Message) {
        if (notificationCompat$MessagingStyle$Message != null) {
            this.mMessages.add(notificationCompat$MessagingStyle$Message);
            if (this.mMessages.size() > 25) {
                this.mMessages.remove(0);
            }
        }
        return this;
    }
}
