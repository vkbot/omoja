package androidx.core.app;

import android.app.Notification;
import android.app.Notification$Action;
import android.app.Notification$Action$Builder;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class NotificationCompat$WearableExtender implements NotificationCompat$Extender {
    private static final int DEFAULT_CONTENT_ICON_GRAVITY = 8388613;
    private static final int DEFAULT_FLAGS = 1;
    private static final int DEFAULT_GRAVITY = 80;
    private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
    private static final int FLAG_BIG_PICTURE_AMBIENT = 32;
    private static final int FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE = 1;
    private static final int FLAG_HINT_AVOID_BACKGROUND_CLIPPING = 16;
    private static final int FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY = 64;
    private static final int FLAG_HINT_HIDE_ICON = 2;
    private static final int FLAG_HINT_SHOW_BACKGROUND_ONLY = 4;
    private static final int FLAG_START_SCROLL_BOTTOM = 8;
    private static final String KEY_ACTIONS = "actions";
    private static final String KEY_BACKGROUND = "background";
    private static final String KEY_BRIDGE_TAG = "bridgeTag";
    private static final String KEY_CONTENT_ACTION_INDEX = "contentActionIndex";
    private static final String KEY_CONTENT_ICON = "contentIcon";
    private static final String KEY_CONTENT_ICON_GRAVITY = "contentIconGravity";
    private static final String KEY_CUSTOM_CONTENT_HEIGHT = "customContentHeight";
    private static final String KEY_CUSTOM_SIZE_PRESET = "customSizePreset";
    private static final String KEY_DISMISSAL_ID = "dismissalId";
    private static final String KEY_DISPLAY_INTENT = "displayIntent";
    private static final String KEY_FLAGS = "flags";
    private static final String KEY_GRAVITY = "gravity";
    private static final String KEY_HINT_SCREEN_TIMEOUT = "hintScreenTimeout";
    private static final String KEY_PAGES = "pages";

    @Deprecated
    public static final int SCREEN_TIMEOUT_LONG = -1;

    @Deprecated
    public static final int SCREEN_TIMEOUT_SHORT = 0;

    @Deprecated
    public static final int SIZE_DEFAULT = 0;

    @Deprecated
    public static final int SIZE_FULL_SCREEN = 5;

    @Deprecated
    public static final int SIZE_LARGE = 4;

    @Deprecated
    public static final int SIZE_MEDIUM = 3;

    @Deprecated
    public static final int SIZE_SMALL = 2;

    @Deprecated
    public static final int SIZE_XSMALL = 1;
    public static final int UNSET_ACTION_INDEX = -1;
    private ArrayList<NotificationCompat$Action> mActions;
    private Bitmap mBackground;
    private String mBridgeTag;
    private int mContentActionIndex;
    private int mContentIcon;
    private int mContentIconGravity;
    private int mCustomContentHeight;
    private int mCustomSizePreset;
    private String mDismissalId;
    private PendingIntent mDisplayIntent;
    private int mFlags;
    private int mGravity;
    private int mHintScreenTimeout;
    private ArrayList<Notification> mPages;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$WearableExtender(@NonNull Notification notification) {
        this.mActions = new ArrayList<>();
        this.mFlags = 1;
        this.mPages = new ArrayList<>();
        this.mContentIconGravity = 8388613;
        this.mContentActionIndex = -1;
        this.mCustomSizePreset = 0;
        this.mGravity = DEFAULT_GRAVITY;
        Bundle extras = NotificationCompat.getExtras(notification);
        Bundle bundle = extras != null ? extras.getBundle(EXTRA_WEARABLE_EXTENSIONS) : null;
        if (bundle != null) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(KEY_ACTIONS);
            if (parcelableArrayList != null) {
                int size = parcelableArrayList.size();
                NotificationCompat$Action[] notificationCompat$ActionArr = new NotificationCompat$Action[size];
                for (int i9 = 0; i9 < size; i9++) {
                    notificationCompat$ActionArr[i9] = NotificationCompat$WearableExtender$Api20Impl.getActionCompatFromAction(parcelableArrayList, i9);
                }
                Collections.addAll(this.mActions, notificationCompat$ActionArr);
            }
            this.mFlags = bundle.getInt(KEY_FLAGS, 1);
            this.mDisplayIntent = (PendingIntent) bundle.getParcelable(KEY_DISPLAY_INTENT);
            Notification[] notificationArrayFromBundle = NotificationCompat.getNotificationArrayFromBundle(bundle, KEY_PAGES);
            if (notificationArrayFromBundle != null) {
                Collections.addAll(this.mPages, notificationArrayFromBundle);
            }
            this.mBackground = (Bitmap) bundle.getParcelable(KEY_BACKGROUND);
            this.mContentIcon = bundle.getInt(KEY_CONTENT_ICON);
            this.mContentIconGravity = bundle.getInt(KEY_CONTENT_ICON_GRAVITY, 8388613);
            this.mContentActionIndex = bundle.getInt(KEY_CONTENT_ACTION_INDEX, -1);
            this.mCustomSizePreset = bundle.getInt(KEY_CUSTOM_SIZE_PRESET, 0);
            this.mCustomContentHeight = bundle.getInt(KEY_CUSTOM_CONTENT_HEIGHT);
            this.mGravity = bundle.getInt(KEY_GRAVITY, DEFAULT_GRAVITY);
            this.mHintScreenTimeout = bundle.getInt(KEY_HINT_SCREEN_TIMEOUT);
            this.mDismissalId = bundle.getString(KEY_DISMISSAL_ID);
            this.mBridgeTag = bundle.getString(KEY_BRIDGE_TAG);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(20)
    private static Notification$Action getActionFromActionCompat(NotificationCompat$Action notificationCompat$Action) {
        IconCompat iconCompat = notificationCompat$Action.getIconCompat();
        Notification$Action$Builder notification$Action$BuilderCreateBuilder = NotificationCompat$WearableExtender$Api23Impl.createBuilder(iconCompat == null ? null : iconCompat.toIcon(), notificationCompat$Action.getTitle(), notificationCompat$Action.getActionIntent());
        Bundle bundle = notificationCompat$Action.getExtras() != null ? new Bundle(notificationCompat$Action.getExtras()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", notificationCompat$Action.getAllowGeneratedReplies());
        NotificationCompat$WearableExtender$Api24Impl.setAllowGeneratedReplies(notification$Action$BuilderCreateBuilder, notificationCompat$Action.getAllowGeneratedReplies());
        if (Build$VERSION.SDK_INT >= 31) {
            NotificationCompat$WearableExtender$Api31Impl.setAuthenticationRequired(notification$Action$BuilderCreateBuilder, notificationCompat$Action.isAuthenticationRequired());
        }
        NotificationCompat$WearableExtender$Api20Impl.addExtras(notification$Action$BuilderCreateBuilder, bundle);
        RemoteInput[] remoteInputs = notificationCompat$Action.getRemoteInputs();
        if (remoteInputs != null) {
            for (android.app.RemoteInput remoteInput : RemoteInput.fromCompat(remoteInputs)) {
                NotificationCompat$WearableExtender$Api20Impl.addRemoteInput(notification$Action$BuilderCreateBuilder, remoteInput);
            }
        }
        return NotificationCompat$WearableExtender$Api20Impl.build(notification$Action$BuilderCreateBuilder);
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
    public NotificationCompat$WearableExtender addAction(@NonNull NotificationCompat$Action notificationCompat$Action) {
        this.mActions.add(notificationCompat$Action);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$WearableExtender addActions(@NonNull List<NotificationCompat$Action> list) {
        this.mActions.addAll(list);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender addPage(@NonNull Notification notification) {
        this.mPages.add(notification);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender addPages(@NonNull List<Notification> list) {
        this.mPages.addAll(list);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$WearableExtender clearActions() {
        this.mActions.clear();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender clearPages() {
        this.mPages.clear();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$WearableExtender clone() {
        NotificationCompat$WearableExtender notificationCompat$WearableExtender = new NotificationCompat$WearableExtender();
        notificationCompat$WearableExtender.mActions = new ArrayList<>(this.mActions);
        notificationCompat$WearableExtender.mFlags = this.mFlags;
        notificationCompat$WearableExtender.mDisplayIntent = this.mDisplayIntent;
        notificationCompat$WearableExtender.mPages = new ArrayList<>(this.mPages);
        notificationCompat$WearableExtender.mBackground = this.mBackground;
        notificationCompat$WearableExtender.mContentIcon = this.mContentIcon;
        notificationCompat$WearableExtender.mContentIconGravity = this.mContentIconGravity;
        notificationCompat$WearableExtender.mContentActionIndex = this.mContentActionIndex;
        notificationCompat$WearableExtender.mCustomSizePreset = this.mCustomSizePreset;
        notificationCompat$WearableExtender.mCustomContentHeight = this.mCustomContentHeight;
        notificationCompat$WearableExtender.mGravity = this.mGravity;
        notificationCompat$WearableExtender.mHintScreenTimeout = this.mHintScreenTimeout;
        notificationCompat$WearableExtender.mDismissalId = this.mDismissalId;
        notificationCompat$WearableExtender.mBridgeTag = this.mBridgeTag;
        return notificationCompat$WearableExtender;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Extender
    @NonNull
    public NotificationCompat$Builder extend(@NonNull NotificationCompat$Builder notificationCompat$Builder) {
        Bundle bundle = new Bundle();
        if (!this.mActions.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.mActions.size());
            ArrayList<NotificationCompat$Action> arrayList2 = this.mActions;
            int size = arrayList2.size();
            int i9 = 0;
            while (i9 < size) {
                NotificationCompat$Action notificationCompat$Action = arrayList2.get(i9);
                i9++;
                arrayList.add(getActionFromActionCompat(notificationCompat$Action));
            }
            bundle.putParcelableArrayList(KEY_ACTIONS, arrayList);
        }
        int i10 = this.mFlags;
        if (i10 != 1) {
            bundle.putInt(KEY_FLAGS, i10);
        }
        PendingIntent pendingIntent = this.mDisplayIntent;
        if (pendingIntent != null) {
            bundle.putParcelable(KEY_DISPLAY_INTENT, pendingIntent);
        }
        if (!this.mPages.isEmpty()) {
            ArrayList<Notification> arrayList3 = this.mPages;
            bundle.putParcelableArray(KEY_PAGES, (Parcelable[]) arrayList3.toArray(new Notification[arrayList3.size()]));
        }
        Bitmap bitmap = this.mBackground;
        if (bitmap != null) {
            bundle.putParcelable(KEY_BACKGROUND, bitmap);
        }
        int i11 = this.mContentIcon;
        if (i11 != 0) {
            bundle.putInt(KEY_CONTENT_ICON, i11);
        }
        int i12 = this.mContentIconGravity;
        if (i12 != 8388613) {
            bundle.putInt(KEY_CONTENT_ICON_GRAVITY, i12);
        }
        int i13 = this.mContentActionIndex;
        if (i13 != -1) {
            bundle.putInt(KEY_CONTENT_ACTION_INDEX, i13);
        }
        int i14 = this.mCustomSizePreset;
        if (i14 != 0) {
            bundle.putInt(KEY_CUSTOM_SIZE_PRESET, i14);
        }
        int i15 = this.mCustomContentHeight;
        if (i15 != 0) {
            bundle.putInt(KEY_CUSTOM_CONTENT_HEIGHT, i15);
        }
        int i16 = this.mGravity;
        if (i16 != DEFAULT_GRAVITY) {
            bundle.putInt(KEY_GRAVITY, i16);
        }
        int i17 = this.mHintScreenTimeout;
        if (i17 != 0) {
            bundle.putInt(KEY_HINT_SCREEN_TIMEOUT, i17);
        }
        String str = this.mDismissalId;
        if (str != null) {
            bundle.putString(KEY_DISMISSAL_ID, str);
        }
        String str2 = this.mBridgeTag;
        if (str2 != null) {
            bundle.putString(KEY_BRIDGE_TAG, str2);
        }
        notificationCompat$Builder.getExtras().putBundle(EXTRA_WEARABLE_EXTENSIONS, bundle);
        return notificationCompat$Builder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<NotificationCompat$Action> getActions() {
        return this.mActions;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public Bitmap getBackground() {
        return this.mBackground;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getBridgeTag() {
        return this.mBridgeTag;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getContentAction() {
        return this.mContentActionIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getContentIcon() {
        return this.mContentIcon;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getContentIconGravity() {
        return this.mContentIconGravity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getContentIntentAvailableOffline() {
        return (this.mFlags & 1) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getCustomContentHeight() {
        return this.mCustomContentHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getCustomSizePreset() {
        return this.mCustomSizePreset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getDismissalId() {
        return this.mDismissalId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public PendingIntent getDisplayIntent() {
        return this.mDisplayIntent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getGravity() {
        return this.mGravity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean getHintAmbientBigPicture() {
        return (this.mFlags & 32) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean getHintAvoidBackgroundClipping() {
        return (this.mFlags & 16) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getHintContentIntentLaunchesActivity() {
        return (this.mFlags & 64) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean getHintHideIcon() {
        return (this.mFlags & 2) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getHintScreenTimeout() {
        return this.mHintScreenTimeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean getHintShowBackgroundOnly() {
        return (this.mFlags & 4) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public List<Notification> getPages() {
        return this.mPages;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getStartScrollBottom() {
        return (this.mFlags & 8) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setBackground(@Nullable Bitmap bitmap) {
        this.mBackground = bitmap;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$WearableExtender setBridgeTag(@Nullable String str) {
        this.mBridgeTag = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$WearableExtender setContentAction(int i9) {
        this.mContentActionIndex = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setContentIcon(int i9) {
        this.mContentIcon = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setContentIconGravity(int i9) {
        this.mContentIconGravity = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$WearableExtender setContentIntentAvailableOffline(boolean z8) {
        setFlag(1, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setCustomContentHeight(int i9) {
        this.mCustomContentHeight = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setCustomSizePreset(int i9) {
        this.mCustomSizePreset = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$WearableExtender setDismissalId(@Nullable String str) {
        this.mDismissalId = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setDisplayIntent(@Nullable PendingIntent pendingIntent) {
        this.mDisplayIntent = pendingIntent;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setGravity(int i9) {
        this.mGravity = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setHintAmbientBigPicture(boolean z8) {
        setFlag(32, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setHintAvoidBackgroundClipping(boolean z8) {
        setFlag(16, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$WearableExtender setHintContentIntentLaunchesActivity(boolean z8) {
        setFlag(64, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setHintHideIcon(boolean z8) {
        setFlag(2, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setHintScreenTimeout(int i9) {
        this.mHintScreenTimeout = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public NotificationCompat$WearableExtender setHintShowBackgroundOnly(boolean z8) {
        setFlag(4, z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$WearableExtender setStartScrollBottom(boolean z8) {
        setFlag(8, z8);
        return this;
    }

    @NonNull
    /* JADX INFO: renamed from: clone, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m33clone() {
        return clone();
    }

    public NotificationCompat$WearableExtender() {
        this.mActions = new ArrayList<>();
        this.mFlags = 1;
        this.mPages = new ArrayList<>();
        this.mContentIconGravity = 8388613;
        this.mContentActionIndex = -1;
        this.mCustomSizePreset = 0;
        this.mGravity = DEFAULT_GRAVITY;
    }
}
