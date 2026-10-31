package androidx.core.app;

import android.app.Notification;
import android.app.Notification$Action$Builder;
import android.app.Notification$Builder;
import android.content.Context;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.collection.ArraySet;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
class NotificationCompatBuilder implements NotificationBuilderWithBuilderAccessor {
    private RemoteViews mBigContentView;
    private final Notification$Builder mBuilder;
    private final NotificationCompat$Builder mBuilderCompat;
    private RemoteViews mContentView;
    private final Context mContext;
    private int mGroupAlertBehavior;
    private RemoteViews mHeadsUpContentView;
    private final List<Bundle> mActionExtrasList = new ArrayList();
    private final Bundle mExtras = new Bundle();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompatBuilder(NotificationCompat$Builder notificationCompat$Builder) {
        int i9;
        this.mBuilderCompat = notificationCompat$Builder;
        Context context = notificationCompat$Builder.mContext;
        this.mContext = context;
        if (Build$VERSION.SDK_INT >= 26) {
            this.mBuilder = NotificationCompatBuilder$Api26Impl.createBuilder(context, notificationCompat$Builder.mChannelId);
        } else {
            this.mBuilder = new Notification$Builder(notificationCompat$Builder.mContext);
        }
        Notification notification = notificationCompat$Builder.mNotification;
        int i10 = 0;
        this.mBuilder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, notificationCompat$Builder.mTickerView).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(notificationCompat$Builder.mContentTitle).setContentText(notificationCompat$Builder.mContentText).setContentInfo(notificationCompat$Builder.mContentInfo).setContentIntent(notificationCompat$Builder.mContentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(notificationCompat$Builder.mFullScreenIntent, (notification.flags & 128) != 0).setNumber(notificationCompat$Builder.mNumber).setProgress(notificationCompat$Builder.mProgressMax, notificationCompat$Builder.mProgress, notificationCompat$Builder.mProgressIndeterminate);
        Notification$Builder notification$Builder = this.mBuilder;
        IconCompat iconCompat = notificationCompat$Builder.mLargeIcon;
        NotificationCompatBuilder$Api23Impl.setLargeIcon(notification$Builder, iconCompat == null ? null : iconCompat.toIcon(context));
        this.mBuilder.setSubText(notificationCompat$Builder.mSubText).setUsesChronometer(notificationCompat$Builder.mUseChronometer).setPriority(notificationCompat$Builder.mPriority);
        NotificationCompat$Style notificationCompat$Style = notificationCompat$Builder.mStyle;
        if (notificationCompat$Style instanceof NotificationCompat$CallStyle) {
            ArrayList<NotificationCompat$Action> actionsListWithSystemActions = ((NotificationCompat$CallStyle) notificationCompat$Style).getActionsListWithSystemActions();
            int size = actionsListWithSystemActions.size();
            int i11 = 0;
            while (i11 < size) {
                NotificationCompat$Action notificationCompat$Action = actionsListWithSystemActions.get(i11);
                i11++;
                addAction(notificationCompat$Action);
            }
        } else {
            ArrayList<NotificationCompat$Action> arrayList = notificationCompat$Builder.mActions;
            int size2 = arrayList.size();
            int i12 = 0;
            while (i12 < size2) {
                NotificationCompat$Action notificationCompat$Action2 = arrayList.get(i12);
                i12++;
                addAction(notificationCompat$Action2);
            }
        }
        Bundle bundle = notificationCompat$Builder.mExtras;
        if (bundle != null) {
            this.mExtras.putAll(bundle);
        }
        this.mContentView = notificationCompat$Builder.mContentView;
        this.mBigContentView = notificationCompat$Builder.mBigContentView;
        this.mBuilder.setShowWhen(notificationCompat$Builder.mShowWhen);
        NotificationCompatBuilder$Api20Impl.setLocalOnly(this.mBuilder, notificationCompat$Builder.mLocalOnly);
        NotificationCompatBuilder$Api20Impl.setGroup(this.mBuilder, notificationCompat$Builder.mGroupKey);
        NotificationCompatBuilder$Api20Impl.setSortKey(this.mBuilder, notificationCompat$Builder.mSortKey);
        NotificationCompatBuilder$Api20Impl.setGroupSummary(this.mBuilder, notificationCompat$Builder.mGroupSummary);
        this.mGroupAlertBehavior = notificationCompat$Builder.mGroupAlertBehavior;
        NotificationCompatBuilder$Api21Impl.setCategory(this.mBuilder, notificationCompat$Builder.mCategory);
        NotificationCompatBuilder$Api21Impl.setColor(this.mBuilder, notificationCompat$Builder.mColor);
        NotificationCompatBuilder$Api21Impl.setVisibility(this.mBuilder, notificationCompat$Builder.mVisibility);
        NotificationCompatBuilder$Api21Impl.setPublicVersion(this.mBuilder, notificationCompat$Builder.mPublicVersion);
        NotificationCompatBuilder$Api21Impl.setSound(this.mBuilder, notification.sound, notification.audioAttributes);
        List listCombineLists = Build$VERSION.SDK_INT < 28 ? combineLists(getPeople(notificationCompat$Builder.mPersonList), notificationCompat$Builder.mPeople) : notificationCompat$Builder.mPeople;
        if (listCombineLists != null && !listCombineLists.isEmpty()) {
            Iterator it = listCombineLists.iterator();
            while (it.hasNext()) {
                NotificationCompatBuilder$Api21Impl.addPerson(this.mBuilder, (String) it.next());
            }
        }
        this.mHeadsUpContentView = notificationCompat$Builder.mHeadsUpContentView;
        if (notificationCompat$Builder.mInvisibleActions.size() > 0) {
            Bundle bundle2 = notificationCompat$Builder.getExtras().getBundle("android.car.EXTENSIONS");
            bundle2 = bundle2 == null ? new Bundle() : bundle2;
            Bundle bundle3 = new Bundle(bundle2);
            Bundle bundle4 = new Bundle();
            for (int i13 = 0; i13 < notificationCompat$Builder.mInvisibleActions.size(); i13++) {
                bundle4.putBundle(Integer.toString(i13), NotificationCompatJellybean.getBundleForAction(notificationCompat$Builder.mInvisibleActions.get(i13)));
            }
            bundle2.putBundle("invisible_actions", bundle4);
            bundle3.putBundle("invisible_actions", bundle4);
            notificationCompat$Builder.getExtras().putBundle("android.car.EXTENSIONS", bundle2);
            this.mExtras.putBundle("android.car.EXTENSIONS", bundle3);
        }
        Object obj = notificationCompat$Builder.mSmallIcon;
        if (obj != null) {
            NotificationCompatBuilder$Api23Impl.setSmallIcon(this.mBuilder, obj);
        }
        this.mBuilder.setExtras(notificationCompat$Builder.mExtras);
        NotificationCompatBuilder$Api24Impl.setRemoteInputHistory(this.mBuilder, notificationCompat$Builder.mRemoteInputHistory);
        RemoteViews remoteViews = notificationCompat$Builder.mContentView;
        if (remoteViews != null) {
            NotificationCompatBuilder$Api24Impl.setCustomContentView(this.mBuilder, remoteViews);
        }
        RemoteViews remoteViews2 = notificationCompat$Builder.mBigContentView;
        if (remoteViews2 != null) {
            NotificationCompatBuilder$Api24Impl.setCustomBigContentView(this.mBuilder, remoteViews2);
        }
        RemoteViews remoteViews3 = notificationCompat$Builder.mHeadsUpContentView;
        if (remoteViews3 != null) {
            NotificationCompatBuilder$Api24Impl.setCustomHeadsUpContentView(this.mBuilder, remoteViews3);
        }
        int i14 = Build$VERSION.SDK_INT;
        if (i14 >= 26) {
            NotificationCompatBuilder$Api26Impl.setBadgeIconType(this.mBuilder, notificationCompat$Builder.mBadgeIcon);
            NotificationCompatBuilder$Api26Impl.setSettingsText(this.mBuilder, notificationCompat$Builder.mSettingsText);
            NotificationCompatBuilder$Api26Impl.setShortcutId(this.mBuilder, notificationCompat$Builder.mShortcutId);
            NotificationCompatBuilder$Api26Impl.setTimeoutAfter(this.mBuilder, notificationCompat$Builder.mTimeout);
            NotificationCompatBuilder$Api26Impl.setGroupAlertBehavior(this.mBuilder, notificationCompat$Builder.mGroupAlertBehavior);
            if (notificationCompat$Builder.mColorizedSet) {
                NotificationCompatBuilder$Api26Impl.setColorized(this.mBuilder, notificationCompat$Builder.mColorized);
            }
            if (!TextUtils.isEmpty(notificationCompat$Builder.mChannelId)) {
                this.mBuilder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i14 >= 28) {
            ArrayList<Person> arrayList2 = notificationCompat$Builder.mPersonList;
            int size3 = arrayList2.size();
            while (i10 < size3) {
                Person person = arrayList2.get(i10);
                i10++;
                NotificationCompatBuilder$Api28Impl.addPerson(this.mBuilder, person.toAndroidPerson());
            }
        }
        int i15 = Build$VERSION.SDK_INT;
        if (i15 >= 29) {
            NotificationCompatBuilder$Api29Impl.setAllowSystemGeneratedContextualActions(this.mBuilder, notificationCompat$Builder.mAllowSystemGeneratedContextualActions);
            NotificationCompatBuilder$Api29Impl.setBubbleMetadata(this.mBuilder, NotificationCompat$BubbleMetadata.toPlatform(notificationCompat$Builder.mBubbleMetadata));
            LocusIdCompat locusIdCompat = notificationCompat$Builder.mLocusId;
            if (locusIdCompat != null) {
                NotificationCompatBuilder$Api29Impl.setLocusId(this.mBuilder, locusIdCompat.toLocusId());
            }
        }
        if (i15 >= 31 && (i9 = notificationCompat$Builder.mFgsDeferBehavior) != 0) {
            NotificationCompatBuilder$Api31Impl.setForegroundServiceBehavior(this.mBuilder, i9);
        }
        if (notificationCompat$Builder.mSilent) {
            if (this.mBuilderCompat.mGroupSummary) {
                this.mGroupAlertBehavior = 2;
            } else {
                this.mGroupAlertBehavior = 1;
            }
            this.mBuilder.setVibrate(null);
            this.mBuilder.setSound(null);
            int i16 = notification.defaults & (-4);
            notification.defaults = i16;
            this.mBuilder.setDefaults(i16);
            if (i15 >= 26) {
                if (TextUtils.isEmpty(this.mBuilderCompat.mGroupKey)) {
                    NotificationCompatBuilder$Api20Impl.setGroup(this.mBuilder, NotificationCompat.GROUP_KEY_SILENT);
                }
                NotificationCompatBuilder$Api26Impl.setGroupAlertBehavior(this.mBuilder, this.mGroupAlertBehavior);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addAction(NotificationCompat$Action notificationCompat$Action) {
        IconCompat iconCompat = notificationCompat$Action.getIconCompat();
        Notification$Action$Builder notification$Action$BuilderCreateBuilder = NotificationCompatBuilder$Api23Impl.createBuilder(iconCompat != null ? iconCompat.toIcon() : null, notificationCompat$Action.getTitle(), notificationCompat$Action.getActionIntent());
        if (notificationCompat$Action.getRemoteInputs() != null) {
            for (android.app.RemoteInput remoteInput : RemoteInput.fromCompat(notificationCompat$Action.getRemoteInputs())) {
                NotificationCompatBuilder$Api20Impl.addRemoteInput(notification$Action$BuilderCreateBuilder, remoteInput);
            }
        }
        Bundle bundle = notificationCompat$Action.getExtras() != null ? new Bundle(notificationCompat$Action.getExtras()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", notificationCompat$Action.getAllowGeneratedReplies());
        NotificationCompatBuilder$Api24Impl.setAllowGeneratedReplies(notification$Action$BuilderCreateBuilder, notificationCompat$Action.getAllowGeneratedReplies());
        bundle.putInt("android.support.action.semanticAction", notificationCompat$Action.getSemanticAction());
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 28) {
            NotificationCompatBuilder$Api28Impl.setSemanticAction(notification$Action$BuilderCreateBuilder, notificationCompat$Action.getSemanticAction());
        }
        if (i9 >= 29) {
            NotificationCompatBuilder$Api29Impl.setContextual(notification$Action$BuilderCreateBuilder, notificationCompat$Action.isContextual());
        }
        if (i9 >= 31) {
            NotificationCompatBuilder$Api31Impl.setAuthenticationRequired(notification$Action$BuilderCreateBuilder, notificationCompat$Action.isAuthenticationRequired());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", notificationCompat$Action.getShowsUserInterface());
        NotificationCompatBuilder$Api20Impl.addExtras(notification$Action$BuilderCreateBuilder, bundle);
        NotificationCompatBuilder$Api20Impl.addAction(this.mBuilder, NotificationCompatBuilder$Api20Impl.build(notification$Action$BuilderCreateBuilder));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static List<String> combineLists(@Nullable List<String> list, @Nullable List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        ArraySet arraySet = new ArraySet(list2.size() + list.size());
        arraySet.addAll(list);
        arraySet.addAll(list2);
        return new ArrayList(arraySet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static List<String> getPeople(@Nullable List<Person> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Person> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().resolveToLegacyUri());
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void removeSoundAndVibration(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Notification build() {
        Bundle extras;
        RemoteViews remoteViewsMakeHeadsUpContentView;
        RemoteViews remoteViewsMakeBigContentView;
        NotificationCompat$Style notificationCompat$Style = this.mBuilderCompat.mStyle;
        if (notificationCompat$Style != null) {
            notificationCompat$Style.apply(this);
        }
        RemoteViews remoteViewsMakeContentView = notificationCompat$Style != null ? notificationCompat$Style.makeContentView(this) : null;
        Notification notificationBuildInternal = buildInternal();
        if (remoteViewsMakeContentView != null) {
            notificationBuildInternal.contentView = remoteViewsMakeContentView;
        } else {
            RemoteViews remoteViews = this.mBuilderCompat.mContentView;
            if (remoteViews != null) {
                notificationBuildInternal.contentView = remoteViews;
            }
        }
        if (notificationCompat$Style != null && (remoteViewsMakeBigContentView = notificationCompat$Style.makeBigContentView(this)) != null) {
            notificationBuildInternal.bigContentView = remoteViewsMakeBigContentView;
        }
        if (notificationCompat$Style != null && (remoteViewsMakeHeadsUpContentView = this.mBuilderCompat.mStyle.makeHeadsUpContentView(this)) != null) {
            notificationBuildInternal.headsUpContentView = remoteViewsMakeHeadsUpContentView;
        }
        if (notificationCompat$Style != null && (extras = NotificationCompat.getExtras(notificationBuildInternal)) != null) {
            notificationCompat$Style.addCompatExtras(extras);
        }
        return notificationBuildInternal;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Notification buildInternal() {
        int i9 = Build$VERSION.SDK_INT;
        Notification$Builder notification$Builder = this.mBuilder;
        if (i9 >= 26) {
            return notification$Builder.build();
        }
        Notification notificationBuild = notification$Builder.build();
        if (this.mGroupAlertBehavior != 0) {
            if (NotificationCompatBuilder$Api20Impl.getGroup(notificationBuild) != null && (notificationBuild.flags & 512) != 0 && this.mGroupAlertBehavior == 2) {
                removeSoundAndVibration(notificationBuild);
            }
            if (NotificationCompatBuilder$Api20Impl.getGroup(notificationBuild) != null && (notificationBuild.flags & 512) == 0 && this.mGroupAlertBehavior == 1) {
                removeSoundAndVibration(notificationBuild);
            }
        }
        return notificationBuild;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationBuilderWithBuilderAccessor
    public Notification$Builder getBuilder() {
        return this.mBuilder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Context getContext() {
        return this.mContext;
    }
}
