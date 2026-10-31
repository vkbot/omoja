package androidx.core.app;

import android.app.Notification;
import android.app.Notification$Action;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes$Builder;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.activity.j;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.content.LocusIdCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationCompat$Builder {
    private static final int MAX_CHARSEQUENCE_LENGTH = 5120;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public ArrayList<NotificationCompat$Action> mActions;
    boolean mAllowSystemGeneratedContextualActions;
    int mBadgeIcon;
    RemoteViews mBigContentView;
    NotificationCompat$BubbleMetadata mBubbleMetadata;
    String mCategory;
    String mChannelId;
    boolean mChronometerCountDown;
    int mColor;
    boolean mColorized;
    boolean mColorizedSet;
    CharSequence mContentInfo;
    PendingIntent mContentIntent;
    CharSequence mContentText;
    CharSequence mContentTitle;
    RemoteViews mContentView;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public Context mContext;
    Bundle mExtras;
    int mFgsDeferBehavior;
    PendingIntent mFullScreenIntent;
    int mGroupAlertBehavior;
    String mGroupKey;
    boolean mGroupSummary;
    RemoteViews mHeadsUpContentView;
    ArrayList<NotificationCompat$Action> mInvisibleActions;
    IconCompat mLargeIcon;
    boolean mLocalOnly;
    LocusIdCompat mLocusId;
    Notification mNotification;
    int mNumber;

    @Deprecated
    public ArrayList<String> mPeople;

    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public ArrayList<Person> mPersonList;
    int mPriority;
    int mProgress;
    boolean mProgressIndeterminate;
    int mProgressMax;
    Notification mPublicVersion;
    CharSequence[] mRemoteInputHistory;
    CharSequence mSettingsText;
    String mShortcutId;
    boolean mShowWhen;
    boolean mSilent;
    Object mSmallIcon;
    String mSortKey;
    NotificationCompat$Style mStyle;
    CharSequence mSubText;
    RemoteViews mTickerView;
    long mTimeout;
    boolean mUseChronometer;
    int mVisibility;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$Builder(@NonNull Context context, @NonNull Notification notification) {
        ArrayList parcelableArrayList;
        this(context, NotificationCompat.getChannelId(notification));
        Bundle bundle = notification.extras;
        NotificationCompat$Style notificationCompat$StyleExtractStyleFromNotification = NotificationCompat$Style.extractStyleFromNotification(notification);
        setContentTitle(NotificationCompat.getContentTitle(notification)).setContentText(NotificationCompat.getContentText(notification)).setContentInfo(NotificationCompat.getContentInfo(notification)).setSubText(NotificationCompat.getSubText(notification)).setSettingsText(NotificationCompat.getSettingsText(notification)).setStyle(notificationCompat$StyleExtractStyleFromNotification).setGroup(NotificationCompat.getGroup(notification)).setGroupSummary(NotificationCompat.isGroupSummary(notification)).setLocusId(NotificationCompat.getLocusId(notification)).setWhen(notification.when).setShowWhen(NotificationCompat.getShowWhen(notification)).setUsesChronometer(NotificationCompat.getUsesChronometer(notification)).setAutoCancel(NotificationCompat.getAutoCancel(notification)).setOnlyAlertOnce(NotificationCompat.getOnlyAlertOnce(notification)).setOngoing(NotificationCompat.getOngoing(notification)).setLocalOnly(NotificationCompat.getLocalOnly(notification)).setLargeIcon(notification.largeIcon).setBadgeIconType(NotificationCompat.getBadgeIconType(notification)).setCategory(NotificationCompat.getCategory(notification)).setBubbleMetadata(NotificationCompat.getBubbleMetadata(notification)).setNumber(notification.number).setTicker(notification.tickerText).setContentIntent(notification.contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(notification.fullScreenIntent, NotificationCompat.getHighPriority(notification)).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setDefaults(notification.defaults).setPriority(notification.priority).setColor(NotificationCompat.getColor(notification)).setVisibility(NotificationCompat.getVisibility(notification)).setPublicVersion(NotificationCompat.getPublicVersion(notification)).setSortKey(NotificationCompat.getSortKey(notification)).setTimeoutAfter(NotificationCompat.getTimeoutAfter(notification)).setShortcutId(NotificationCompat.getShortcutId(notification)).setProgress(bundle.getInt(NotificationCompat.EXTRA_PROGRESS_MAX), bundle.getInt(NotificationCompat.EXTRA_PROGRESS), bundle.getBoolean(NotificationCompat.EXTRA_PROGRESS_INDETERMINATE)).setAllowSystemGeneratedContextualActions(NotificationCompat.getAllowSystemGeneratedContextualActions(notification)).setSmallIcon(notification.icon, notification.iconLevel).addExtras(getExtrasWithoutDuplicateData(notification, notificationCompat$StyleExtractStyleFromNotification));
        this.mSmallIcon = NotificationCompat$Builder$Api23Impl.getSmallIcon(notification);
        Icon largeIcon = NotificationCompat$Builder$Api23Impl.getLargeIcon(notification);
        if (largeIcon != null) {
            this.mLargeIcon = IconCompat.createFromIcon(largeIcon);
        }
        Notification$Action[] notification$ActionArr = notification.actions;
        int i9 = 0;
        if (notification$ActionArr != null && notification$ActionArr.length != 0) {
            for (Notification$Action notification$Action : notification$ActionArr) {
                addAction(NotificationCompat$Action$Builder.fromAndroidAction(notification$Action).build());
            }
        }
        List<NotificationCompat$Action> invisibleActions = NotificationCompat.getInvisibleActions(notification);
        if (!invisibleActions.isEmpty()) {
            Iterator<NotificationCompat$Action> it = invisibleActions.iterator();
            while (it.hasNext()) {
                addInvisibleAction(it.next());
            }
        }
        String[] stringArray = notification.extras.getStringArray(NotificationCompat.EXTRA_PEOPLE);
        if (stringArray != null && stringArray.length != 0) {
            for (String str : stringArray) {
                addPerson(str);
            }
        }
        if (Build$VERSION.SDK_INT >= 28 && (parcelableArrayList = notification.extras.getParcelableArrayList(NotificationCompat.EXTRA_PEOPLE_LIST)) != null && !parcelableArrayList.isEmpty()) {
            int size = parcelableArrayList.size();
            while (i9 < size) {
                Object obj = parcelableArrayList.get(i9);
                i9++;
                addPerson(Person.fromAndroidPerson(j.g(obj)));
            }
        }
        if (bundle.containsKey(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN)) {
            setChronometerCountDown(bundle.getBoolean(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN));
        }
        if (Build$VERSION.SDK_INT < 26 || !bundle.containsKey(NotificationCompat.EXTRA_COLORIZED)) {
            return;
        }
        setColorized(bundle.getBoolean(NotificationCompat.EXTRA_COLORIZED));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static Bundle getExtrasWithoutDuplicateData(@NonNull Notification notification, @Nullable NotificationCompat$Style notificationCompat$Style) {
        if (notification.extras == null) {
            return null;
        }
        Bundle bundle = new Bundle(notification.extras);
        bundle.remove(NotificationCompat.EXTRA_TITLE);
        bundle.remove(NotificationCompat.EXTRA_TEXT);
        bundle.remove(NotificationCompat.EXTRA_INFO_TEXT);
        bundle.remove(NotificationCompat.EXTRA_SUB_TEXT);
        bundle.remove(NotificationCompat.EXTRA_CHANNEL_ID);
        bundle.remove(NotificationCompat.EXTRA_CHANNEL_GROUP_ID);
        bundle.remove(NotificationCompat.EXTRA_SHOW_WHEN);
        bundle.remove(NotificationCompat.EXTRA_PROGRESS);
        bundle.remove(NotificationCompat.EXTRA_PROGRESS_MAX);
        bundle.remove(NotificationCompat.EXTRA_PROGRESS_INDETERMINATE);
        bundle.remove(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN);
        bundle.remove(NotificationCompat.EXTRA_COLORIZED);
        bundle.remove(NotificationCompat.EXTRA_PEOPLE_LIST);
        bundle.remove(NotificationCompat.EXTRA_PEOPLE);
        bundle.remove(NotificationCompatExtras.EXTRA_SORT_KEY);
        bundle.remove(NotificationCompatExtras.EXTRA_GROUP_KEY);
        bundle.remove(NotificationCompatExtras.EXTRA_GROUP_SUMMARY);
        bundle.remove(NotificationCompatExtras.EXTRA_LOCAL_ONLY);
        bundle.remove(NotificationCompatExtras.EXTRA_ACTION_EXTRAS);
        Bundle bundle2 = bundle.getBundle("android.car.EXTENSIONS");
        if (bundle2 != null) {
            Bundle bundle3 = new Bundle(bundle2);
            bundle3.remove("invisible_actions");
            bundle.putBundle("android.car.EXTENSIONS", bundle3);
        }
        if (notificationCompat$Style != null) {
            notificationCompat$Style.clearCompatExtraKeys(bundle);
        }
        return bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static CharSequence limitCharSequenceLength(@Nullable CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > MAX_CHARSEQUENCE_LENGTH) ? charSequence.subSequence(0, MAX_CHARSEQUENCE_LENGTH) : charSequence;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setFlag(int i9, boolean z8) {
        Notification notification = this.mNotification;
        if (z8) {
            notification.flags = i9 | notification.flags;
        } else {
            notification.flags = (~i9) & notification.flags;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean useExistingRemoteView() {
        NotificationCompat$Style notificationCompat$Style = this.mStyle;
        return notificationCompat$Style == null || !notificationCompat$Style.displayCustomViewInline();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder addAction(int i9, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
        this.mActions.add(new NotificationCompat$Action(i9, charSequence, pendingIntent));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder addExtras(@Nullable Bundle bundle) {
        if (bundle != null) {
            Bundle bundle2 = this.mExtras;
            if (bundle2 == null) {
                this.mExtras = new Bundle(bundle);
                return this;
            }
            bundle2.putAll(bundle);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(21)
    public NotificationCompat$Builder addInvisibleAction(int i9, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
        this.mInvisibleActions.add(new NotificationCompat$Action(i9, charSequence, pendingIntent));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$Builder addPerson(@Nullable String str) {
        if (str != null && !str.isEmpty()) {
            this.mPeople.add(str);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Notification build() {
        return new NotificationCompatBuilder(this).build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder clearActions() {
        this.mActions.clear();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder clearInvisibleActions() {
        this.mInvisibleActions.clear();
        Bundle bundle = this.mExtras.getBundle("android.car.EXTENSIONS");
        if (bundle != null) {
            Bundle bundle2 = new Bundle(bundle);
            bundle2.remove("invisible_actions");
            this.mExtras.putBundle("android.car.EXTENSIONS", bundle2);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder clearPeople() {
        this.mPersonList.clear();
        this.mPeople.clear();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RemoteViews createBigContentView() {
        RemoteViews remoteViewsMakeBigContentView;
        if (this.mBigContentView != null && useExistingRemoteView()) {
            return this.mBigContentView;
        }
        NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
        NotificationCompat$Style notificationCompat$Style = this.mStyle;
        return (notificationCompat$Style == null || (remoteViewsMakeBigContentView = notificationCompat$Style.makeBigContentView(notificationCompatBuilder)) == null) ? NotificationCompat$Builder$Api24Impl.createBigContentView(NotificationCompat$Builder$Api24Impl.recoverBuilder(this.mContext, notificationCompatBuilder.build())) : remoteViewsMakeBigContentView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RemoteViews createContentView() {
        RemoteViews remoteViewsMakeContentView;
        if (this.mContentView != null && useExistingRemoteView()) {
            return this.mContentView;
        }
        NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
        NotificationCompat$Style notificationCompat$Style = this.mStyle;
        return (notificationCompat$Style == null || (remoteViewsMakeContentView = notificationCompat$Style.makeContentView(notificationCompatBuilder)) == null) ? NotificationCompat$Builder$Api24Impl.createContentView(NotificationCompat$Builder$Api24Impl.recoverBuilder(this.mContext, notificationCompatBuilder.build())) : remoteViewsMakeContentView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RemoteViews createHeadsUpContentView() {
        RemoteViews remoteViewsMakeHeadsUpContentView;
        if (this.mHeadsUpContentView != null && useExistingRemoteView()) {
            return this.mHeadsUpContentView;
        }
        NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
        NotificationCompat$Style notificationCompat$Style = this.mStyle;
        return (notificationCompat$Style == null || (remoteViewsMakeHeadsUpContentView = notificationCompat$Style.makeHeadsUpContentView(notificationCompatBuilder)) == null) ? NotificationCompat$Builder$Api24Impl.createHeadsUpContentView(NotificationCompat$Builder$Api24Impl.recoverBuilder(this.mContext, notificationCompatBuilder.build())) : remoteViewsMakeHeadsUpContentView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder extend(@NonNull NotificationCompat$Extender notificationCompat$Extender) {
        notificationCompat$Extender.extend(this);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public RemoteViews getBigContentView() {
        return this.mBigContentView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public NotificationCompat$BubbleMetadata getBubbleMetadata() {
        return this.mBubbleMetadata;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public int getColor() {
        return this.mColor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public RemoteViews getContentView() {
        return this.mContentView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Bundle getExtras() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public int getForegroundServiceBehavior() {
        return this.mFgsDeferBehavior;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public RemoteViews getHeadsUpContentView() {
        return this.mHeadsUpContentView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public Notification getNotification() {
        return build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public int getPriority() {
        return this.mPriority;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public long getWhenIfShowing() {
        if (this.mShowWhen) {
            return this.mNotification.when;
        }
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setAllowSystemGeneratedContextualActions(boolean z8) {
        this.mAllowSystemGeneratedContextualActions = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setAutoCancel(boolean z8) {
        setFlag(16, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setBadgeIconType(int i9) {
        this.mBadgeIcon = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setBubbleMetadata(@Nullable NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata) {
        this.mBubbleMetadata = notificationCompat$BubbleMetadata;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setCategory(@Nullable String str) {
        this.mCategory = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setChannelId(@NonNull String str) {
        this.mChannelId = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(24)
    public NotificationCompat$Builder setChronometerCountDown(boolean z8) {
        this.mChronometerCountDown = z8;
        getExtras().putBoolean(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setColor(@ColorInt int i9) {
        this.mColor = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setColorized(boolean z8) {
        this.mColorized = z8;
        this.mColorizedSet = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setContent(@Nullable RemoteViews remoteViews) {
        this.mNotification.contentView = remoteViews;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setContentInfo(@Nullable CharSequence charSequence) {
        this.mContentInfo = limitCharSequenceLength(charSequence);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setContentIntent(@Nullable PendingIntent pendingIntent) {
        this.mContentIntent = pendingIntent;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setContentText(@Nullable CharSequence charSequence) {
        this.mContentText = limitCharSequenceLength(charSequence);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setContentTitle(@Nullable CharSequence charSequence) {
        this.mContentTitle = limitCharSequenceLength(charSequence);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setCustomBigContentView(@Nullable RemoteViews remoteViews) {
        this.mBigContentView = remoteViews;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setCustomContentView(@Nullable RemoteViews remoteViews) {
        this.mContentView = remoteViews;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setCustomHeadsUpContentView(@Nullable RemoteViews remoteViews) {
        this.mHeadsUpContentView = remoteViews;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setDefaults(int i9) {
        Notification notification = this.mNotification;
        notification.defaults = i9;
        if ((i9 & 4) != 0) {
            notification.flags |= 1;
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setDeleteIntent(@Nullable PendingIntent pendingIntent) {
        this.mNotification.deleteIntent = pendingIntent;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setExtras(@Nullable Bundle bundle) {
        this.mExtras = bundle;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setForegroundServiceBehavior(int i9) {
        this.mFgsDeferBehavior = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setFullScreenIntent(@Nullable PendingIntent pendingIntent, boolean z8) {
        this.mFullScreenIntent = pendingIntent;
        setFlag(128, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setGroup(@Nullable String str) {
        this.mGroupKey = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setGroupAlertBehavior(int i9) {
        this.mGroupAlertBehavior = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setGroupSummary(boolean z8) {
        this.mGroupSummary = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setLargeIcon(@Nullable Bitmap bitmap) {
        this.mLargeIcon = bitmap == null ? null : IconCompat.createWithBitmap(NotificationCompat.reduceLargeIconSize(this.mContext, bitmap));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setLights(@ColorInt int i9, int i10, int i11) {
        Notification notification = this.mNotification;
        notification.ledARGB = i9;
        notification.ledOnMS = i10;
        notification.ledOffMS = i11;
        notification.flags = ((i10 == 0 || i11 == 0) ? 0 : 1) | (notification.flags & (-2));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setLocalOnly(boolean z8) {
        this.mLocalOnly = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setLocusId(@Nullable LocusIdCompat locusIdCompat) {
        this.mLocusId = locusIdCompat;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$Builder setNotificationSilent() {
        this.mSilent = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setNumber(int i9) {
        this.mNumber = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setOngoing(boolean z8) {
        setFlag(2, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setOnlyAlertOnce(boolean z8) {
        setFlag(8, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setPriority(int i9) {
        this.mPriority = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setProgress(int i9, int i10, boolean z8) {
        this.mProgressMax = i9;
        this.mProgress = i10;
        this.mProgressIndeterminate = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setPublicVersion(@Nullable Notification notification) {
        this.mPublicVersion = notification;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setRemoteInputHistory(@Nullable CharSequence[] charSequenceArr) {
        this.mRemoteInputHistory = charSequenceArr;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setSettingsText(@Nullable CharSequence charSequence) {
        this.mSettingsText = limitCharSequenceLength(charSequence);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setShortcutId(@Nullable String str) {
        this.mShortcutId = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setShortcutInfo(@Nullable ShortcutInfoCompat shortcutInfoCompat) {
        if (shortcutInfoCompat != null) {
            this.mShortcutId = shortcutInfoCompat.getId();
            if (this.mLocusId == null) {
                if (shortcutInfoCompat.getLocusId() != null) {
                    this.mLocusId = shortcutInfoCompat.getLocusId();
                } else if (shortcutInfoCompat.getId() != null) {
                    this.mLocusId = new LocusIdCompat(shortcutInfoCompat.getId());
                }
            }
            if (this.mContentTitle == null) {
                setContentTitle(shortcutInfoCompat.getShortLabel());
            }
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setShowWhen(boolean z8) {
        this.mShowWhen = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setSilent(boolean z8) {
        this.mSilent = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(23)
    public NotificationCompat$Builder setSmallIcon(@NonNull IconCompat iconCompat) {
        this.mSmallIcon = iconCompat.toIcon(this.mContext);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setSortKey(@Nullable String str) {
        this.mSortKey = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setSound(@Nullable Uri uri) {
        Notification notification = this.mNotification;
        notification.sound = uri;
        notification.audioStreamType = -1;
        AudioAttributes$Builder usage = NotificationCompat$Builder$Api21Impl.setUsage(NotificationCompat$Builder$Api21Impl.setContentType(NotificationCompat$Builder$Api21Impl.createBuilder(), 4), 5);
        this.mNotification.audioAttributes = NotificationCompat$Builder$Api21Impl.build(usage);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setStyle(@Nullable NotificationCompat$Style notificationCompat$Style) {
        if (this.mStyle != notificationCompat$Style) {
            this.mStyle = notificationCompat$Style;
            if (notificationCompat$Style != null) {
                notificationCompat$Style.setBuilder(this);
            }
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setSubText(@Nullable CharSequence charSequence) {
        this.mSubText = limitCharSequenceLength(charSequence);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$Builder setTicker(@Nullable CharSequence charSequence, @Nullable RemoteViews remoteViews) {
        this.mNotification.tickerText = limitCharSequenceLength(charSequence);
        this.mTickerView = remoteViews;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setTimeoutAfter(long j9) {
        this.mTimeout = j9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setUsesChronometer(boolean z8) {
        this.mUseChronometer = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setVibrate(@Nullable long[] jArr) {
        this.mNotification.vibrate = jArr;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setVisibility(int i9) {
        this.mVisibility = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$Builder setWhen(long j9) {
        this.mNotification.when = j9;
        return this;
    }

    @NonNull
    public NotificationCompat$Builder setSmallIcon(int i9) {
        this.mNotification.icon = i9;
        return this;
    }

    @NonNull
    public NotificationCompat$Builder setSmallIcon(int i9, int i10) {
        Notification notification = this.mNotification;
        notification.icon = i9;
        notification.iconLevel = i10;
        return this;
    }

    @NonNull
    public NotificationCompat$Builder addAction(@Nullable NotificationCompat$Action notificationCompat$Action) {
        if (notificationCompat$Action != null) {
            this.mActions.add(notificationCompat$Action);
        }
        return this;
    }

    @NonNull
    @RequiresApi(21)
    public NotificationCompat$Builder addInvisibleAction(@Nullable NotificationCompat$Action notificationCompat$Action) {
        if (notificationCompat$Action != null) {
            this.mInvisibleActions.add(notificationCompat$Action);
        }
        return this;
    }

    @NonNull
    public NotificationCompat$Builder setTicker(@Nullable CharSequence charSequence) {
        this.mNotification.tickerText = limitCharSequenceLength(charSequence);
        return this;
    }

    @NonNull
    public NotificationCompat$Builder addPerson(@Nullable Person person) {
        if (person != null) {
            this.mPersonList.add(person);
        }
        return this;
    }

    @NonNull
    @RequiresApi(23)
    public NotificationCompat$Builder setLargeIcon(@Nullable Icon icon) {
        this.mLargeIcon = icon == null ? null : IconCompat.createFromIcon(icon);
        return this;
    }

    @NonNull
    public NotificationCompat$Builder setSound(@Nullable Uri uri, int i9) {
        Notification notification = this.mNotification;
        notification.sound = uri;
        notification.audioStreamType = i9;
        AudioAttributes$Builder legacyStreamType = NotificationCompat$Builder$Api21Impl.setLegacyStreamType(NotificationCompat$Builder$Api21Impl.setContentType(NotificationCompat$Builder$Api21Impl.createBuilder(), 4), i9);
        this.mNotification.audioAttributes = NotificationCompat$Builder$Api21Impl.build(legacyStreamType);
        return this;
    }

    public NotificationCompat$Builder(@NonNull Context context, @NonNull String str) {
        this.mActions = new ArrayList<>();
        this.mPersonList = new ArrayList<>();
        this.mInvisibleActions = new ArrayList<>();
        this.mShowWhen = true;
        this.mLocalOnly = false;
        this.mColor = 0;
        this.mVisibility = 0;
        this.mBadgeIcon = 0;
        this.mGroupAlertBehavior = 0;
        this.mFgsDeferBehavior = 0;
        Notification notification = new Notification();
        this.mNotification = notification;
        this.mContext = context;
        this.mChannelId = str;
        notification.when = System.currentTimeMillis();
        this.mNotification.audioStreamType = -1;
        this.mPriority = 0;
        this.mPeople = new ArrayList<>();
        this.mAllowSystemGeneratedContextualActions = true;
    }

    @Deprecated
    public NotificationCompat$Builder(@NonNull Context context) {
        this(context, (String) null);
    }
}
