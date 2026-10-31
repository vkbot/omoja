package androidx.core.app;

import android.app.Notification;
import android.app.Notification$BigPictureStyle;
import android.app.Notification$BigTextStyle;
import android.app.Notification$DecoratedCustomViewStyle;
import android.app.Notification$InboxStyle;
import android.app.Notification$MessagingStyle;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.R$dimen;
import androidx.core.R$drawable;
import androidx.core.R$id;
import androidx.core.R$integer;
import androidx.core.R$string;
import androidx.core.graphics.drawable.IconCompat;
import java.text.NumberFormat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class NotificationCompat$Style {
    CharSequence mBigContentTitle;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    protected NotificationCompat$Builder mBuilder;
    CharSequence mSummaryText;
    boolean mSummaryTextSet = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int calculateTopPadding() {
        Resources resources = this.mBuilder.mContext.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.notification_top_pad);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R$dimen.notification_top_pad_large_text);
        float fConstrain = (constrain(resources.getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
        return Math.round((fConstrain * dimensionPixelSize2) + ((1.0f - fConstrain) * dimensionPixelSize));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static float constrain(float f8, float f9, float f10) {
        if (f8 < f9) {
            return f9;
        }
        return f8 > f10 ? f10 : f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static NotificationCompat$Style constructCompatStyleByName(@Nullable String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle":
                return new NotificationCompat$DecoratedCustomViewStyle();
            case "androidx.core.app.NotificationCompat$BigPictureStyle":
                return new NotificationCompat$BigPictureStyle();
            case "androidx.core.app.NotificationCompat$CallStyle":
                return new NotificationCompat$CallStyle();
            case "androidx.core.app.NotificationCompat$InboxStyle":
                return new NotificationCompat$InboxStyle();
            case "androidx.core.app.NotificationCompat$BigTextStyle":
                return new NotificationCompat$BigTextStyle();
            case "androidx.core.app.NotificationCompat$MessagingStyle":
                return new NotificationCompat$MessagingStyle();
            default:
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static NotificationCompat$Style constructCompatStyleByPlatformName(@Nullable String str) {
        if (str == null) {
            return null;
        }
        if (str.equals(Notification$BigPictureStyle.class.getName())) {
            return new NotificationCompat$BigPictureStyle();
        }
        if (str.equals(Notification$BigTextStyle.class.getName())) {
            return new NotificationCompat$BigTextStyle();
        }
        if (str.equals(Notification$InboxStyle.class.getName())) {
            return new NotificationCompat$InboxStyle();
        }
        if (str.equals(Notification$MessagingStyle.class.getName())) {
            return new NotificationCompat$MessagingStyle();
        }
        if (str.equals(Notification$DecoratedCustomViewStyle.class.getName())) {
            return new NotificationCompat$DecoratedCustomViewStyle();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static NotificationCompat$Style constructCompatStyleForBundle(@NonNull Bundle bundle) {
        NotificationCompat$Style notificationCompat$StyleConstructCompatStyleByName = constructCompatStyleByName(bundle.getString(NotificationCompat.EXTRA_COMPAT_TEMPLATE));
        if (notificationCompat$StyleConstructCompatStyleByName != null) {
            return notificationCompat$StyleConstructCompatStyleByName;
        }
        if (bundle.containsKey(NotificationCompat.EXTRA_SELF_DISPLAY_NAME) || bundle.containsKey(NotificationCompat.EXTRA_MESSAGING_STYLE_USER)) {
            return new NotificationCompat$MessagingStyle();
        }
        if (bundle.containsKey(NotificationCompat.EXTRA_PICTURE) || bundle.containsKey(NotificationCompat.EXTRA_PICTURE_ICON)) {
            return new NotificationCompat$BigPictureStyle();
        }
        if (bundle.containsKey(NotificationCompat.EXTRA_BIG_TEXT)) {
            return new NotificationCompat$BigTextStyle();
        }
        if (bundle.containsKey(NotificationCompat.EXTRA_TEXT_LINES)) {
            return new NotificationCompat$InboxStyle();
        }
        return bundle.containsKey(NotificationCompat.EXTRA_CALL_TYPE) ? new NotificationCompat$CallStyle() : constructCompatStyleByPlatformName(bundle.getString(NotificationCompat.EXTRA_TEMPLATE));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static NotificationCompat$Style constructStyleForExtras(@NonNull Bundle bundle) {
        NotificationCompat$Style notificationCompat$StyleConstructCompatStyleForBundle = constructCompatStyleForBundle(bundle);
        if (notificationCompat$StyleConstructCompatStyleForBundle == null) {
            return null;
        }
        try {
            notificationCompat$StyleConstructCompatStyleForBundle.restoreFromCompatExtras(bundle);
            return notificationCompat$StyleConstructCompatStyleForBundle;
        } catch (ClassCastException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Bitmap createColoredBitmap(@NonNull IconCompat iconCompat, int i9, int i10) {
        Drawable drawableLoadDrawable = iconCompat.loadDrawable(this.mBuilder.mContext);
        int intrinsicWidth = i10 == 0 ? drawableLoadDrawable.getIntrinsicWidth() : i10;
        if (i10 == 0) {
            i10 = drawableLoadDrawable.getIntrinsicHeight();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, i10, Bitmap$Config.ARGB_8888);
        drawableLoadDrawable.setBounds(0, 0, intrinsicWidth, i10);
        if (i9 != 0) {
            drawableLoadDrawable.mutate().setColorFilter(new PorterDuffColorFilter(i9, PorterDuff$Mode.SRC_IN));
        }
        drawableLoadDrawable.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Bitmap createIconWithBackground(int i9, int i10, int i11, int i12) {
        int i13 = R$drawable.notification_icon_background;
        if (i12 == 0) {
            i12 = 0;
        }
        Bitmap bitmapCreateColoredBitmap = createColoredBitmap(i13, i12, i10);
        Canvas canvas = new Canvas(bitmapCreateColoredBitmap);
        Drawable drawableMutate = this.mBuilder.mContext.getResources().getDrawable(i9).mutate();
        drawableMutate.setFilterBitmap(true);
        int i14 = (i10 - i11) / 2;
        int i15 = i11 + i14;
        drawableMutate.setBounds(i14, i14, i15, i15);
        drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff$Mode.SRC_ATOP));
        drawableMutate.draw(canvas);
        return bitmapCreateColoredBitmap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static NotificationCompat$Style extractStyleFromNotification(@NonNull Notification notification) {
        Bundle extras = NotificationCompat.getExtras(notification);
        if (extras == null) {
            return null;
        }
        return constructStyleForExtras(extras);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void hideNormalContent(RemoteViews remoteViews) {
        remoteViews.setViewVisibility(R$id.title, 8);
        remoteViews.setViewVisibility(R$id.text2, 8);
        remoteViews.setViewVisibility(R$id.text, 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void addCompatExtras(@NonNull Bundle bundle) {
        if (this.mSummaryTextSet) {
            bundle.putCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT, this.mSummaryText);
        }
        CharSequence charSequence = this.mBigContentTitle;
        if (charSequence != null) {
            bundle.putCharSequence(NotificationCompat.EXTRA_TITLE_BIG, charSequence);
        }
        String className = getClassName();
        if (className != null) {
            bundle.putString(NotificationCompat.EXTRA_COMPAT_TEMPLATE, className);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:34:0x0108  */
    /* JADX WARN: Code duplicated, block: B:36:0x0113  */
    /* JADX WARN: Code duplicated, block: B:38:0x011f  */
    /* JADX WARN: Code duplicated, block: B:40:0x0135  */
    /* JADX WARN: Code duplicated, block: B:43:0x0146  */
    /* JADX WARN: Code duplicated, block: B:45:0x014c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0175  */
    /* JADX WARN: Code duplicated, block: B:48:0x017b  */
    /* JADX WARN: Code duplicated, block: B:49:0x018e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0193  */
    /* JADX WARN: Code duplicated, block: B:53:0x0195  */
    /* JADX WARN: Code duplicated, block: B:57:0x019e  */
    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public RemoteViews applyStandardTemplate(boolean z8, int i9, boolean z9) {
        boolean z10;
        boolean z11;
        CharSequence charSequence;
        int i10;
        boolean z12;
        CharSequence charSequence2;
        Resources resources = this.mBuilder.mContext.getResources();
        RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), i9);
        this.mBuilder.getPriority();
        NotificationCompat$Builder notificationCompat$Builder = this.mBuilder;
        if (notificationCompat$Builder.mLargeIcon != null) {
            remoteViews.setViewVisibility(R$id.icon, 0);
            remoteViews.setImageViewBitmap(R$id.icon, createColoredBitmap(this.mBuilder.mLargeIcon, 0));
            if (z8 && this.mBuilder.mNotification.icon != 0) {
                int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.notification_right_icon_size);
                int dimensionPixelSize2 = dimensionPixelSize - (resources.getDimensionPixelSize(R$dimen.notification_small_icon_background_padding) * 2);
                NotificationCompat$Builder notificationCompat$Builder2 = this.mBuilder;
                remoteViews.setImageViewBitmap(R$id.right_icon, createIconWithBackground(notificationCompat$Builder2.mNotification.icon, dimensionPixelSize, dimensionPixelSize2, notificationCompat$Builder2.getColor()));
                remoteViews.setViewVisibility(R$id.right_icon, 0);
            }
        } else if (z8 && notificationCompat$Builder.mNotification.icon != 0) {
            remoteViews.setViewVisibility(R$id.icon, 0);
            int dimensionPixelSize3 = resources.getDimensionPixelSize(R$dimen.notification_large_icon_width) - resources.getDimensionPixelSize(R$dimen.notification_big_circle_margin);
            int dimensionPixelSize4 = resources.getDimensionPixelSize(R$dimen.notification_small_icon_size_as_large);
            NotificationCompat$Builder notificationCompat$Builder3 = this.mBuilder;
            remoteViews.setImageViewBitmap(R$id.icon, createIconWithBackground(notificationCompat$Builder3.mNotification.icon, dimensionPixelSize3, dimensionPixelSize4, notificationCompat$Builder3.getColor()));
        }
        CharSequence charSequence3 = this.mBuilder.mContentTitle;
        if (charSequence3 != null) {
            remoteViews.setTextViewText(R$id.title, charSequence3);
        }
        CharSequence charSequence4 = this.mBuilder.mContentText;
        boolean z13 = true;
        if (charSequence4 != null) {
            remoteViews.setTextViewText(R$id.text, charSequence4);
            z10 = true;
        } else {
            z10 = false;
        }
        NotificationCompat$Builder notificationCompat$Builder4 = this.mBuilder;
        CharSequence charSequence5 = notificationCompat$Builder4.mContentInfo;
        if (charSequence5 == null) {
            if (notificationCompat$Builder4.mNumber > 0) {
                if (this.mBuilder.mNumber > resources.getInteger(R$integer.status_bar_notification_info_maxnum)) {
                    remoteViews.setTextViewText(R$id.info, resources.getString(R$string.status_bar_notification_info_overflow));
                } else {
                    remoteViews.setTextViewText(R$id.info, NumberFormat.getIntegerInstance().format(this.mBuilder.mNumber));
                }
                remoteViews.setViewVisibility(R$id.info, 0);
            } else {
                remoteViews.setViewVisibility(R$id.info, 8);
                z11 = false;
            }
            charSequence = this.mBuilder.mSubText;
            if (charSequence != null) {
                remoteViews.setTextViewText(R$id.text, charSequence);
                charSequence2 = this.mBuilder.mContentText;
                if (charSequence2 != null) {
                    remoteViews.setTextViewText(R$id.text2, charSequence2);
                    remoteViews.setViewVisibility(R$id.text2, 0);
                    if (z9) {
                        remoteViews.setTextViewTextSize(R$id.text, 0, resources.getDimensionPixelSize(R$dimen.notification_subtext_size));
                    }
                    remoteViews.setViewPadding(R$id.line1, 0, 0, 0, 0);
                } else {
                    remoteViews.setViewVisibility(R$id.text2, 8);
                }
            }
            if (this.mBuilder.getWhenIfShowing() != 0) {
                z13 = z11;
            } else if (this.mBuilder.mUseChronometer) {
                remoteViews.setViewVisibility(R$id.chronometer, 0);
                remoteViews.setLong(R$id.chronometer, "setBase", (SystemClock.elapsedRealtime() - System.currentTimeMillis()) + this.mBuilder.getWhenIfShowing());
                remoteViews.setBoolean(R$id.chronometer, "setStarted", true);
                z12 = this.mBuilder.mChronometerCountDown;
                if (z12) {
                    NotificationCompat$Style$Api24Impl.setChronometerCountDown(remoteViews, R$id.chronometer, z12);
                }
            } else {
                remoteViews.setViewVisibility(R$id.time, 0);
                remoteViews.setLong(R$id.time, "setTime", this.mBuilder.getWhenIfShowing());
            }
            int i11 = R$id.right_side;
            if (z13) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            remoteViews.setViewVisibility(i11, i10);
            remoteViews.setViewVisibility(R$id.line3, z10 ? 0 : 8);
            return remoteViews;
        }
        remoteViews.setTextViewText(R$id.info, charSequence5);
        remoteViews.setViewVisibility(R$id.info, 0);
        z10 = true;
        z11 = true;
        charSequence = this.mBuilder.mSubText;
        if (charSequence != null) {
            remoteViews.setTextViewText(R$id.text, charSequence);
            charSequence2 = this.mBuilder.mContentText;
            if (charSequence2 != null) {
                remoteViews.setTextViewText(R$id.text2, charSequence2);
                remoteViews.setViewVisibility(R$id.text2, 0);
                if (z9) {
                    remoteViews.setTextViewTextSize(R$id.text, 0, resources.getDimensionPixelSize(R$dimen.notification_subtext_size));
                }
                remoteViews.setViewPadding(R$id.line1, 0, 0, 0, 0);
            } else {
                remoteViews.setViewVisibility(R$id.text2, 8);
            }
        }
        if (this.mBuilder.getWhenIfShowing() != 0) {
            z13 = z11;
        } else if (this.mBuilder.mUseChronometer) {
            remoteViews.setViewVisibility(R$id.chronometer, 0);
            remoteViews.setLong(R$id.chronometer, "setBase", (SystemClock.elapsedRealtime() - System.currentTimeMillis()) + this.mBuilder.getWhenIfShowing());
            remoteViews.setBoolean(R$id.chronometer, "setStarted", true);
            z12 = this.mBuilder.mChronometerCountDown;
            if (z12) {
                NotificationCompat$Style$Api24Impl.setChronometerCountDown(remoteViews, R$id.chronometer, z12);
            }
        } else {
            remoteViews.setViewVisibility(R$id.time, 0);
            remoteViews.setLong(R$id.time, "setTime", this.mBuilder.getWhenIfShowing());
        }
        int i12 = R$id.right_side;
        if (z13) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        remoteViews.setViewVisibility(i12, i10);
        remoteViews.setViewVisibility(R$id.line3, z10 ? 0 : 8);
        return remoteViews;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Notification build() {
        NotificationCompat$Builder notificationCompat$Builder = this.mBuilder;
        if (notificationCompat$Builder != null) {
            return notificationCompat$Builder.build();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void buildIntoRemoteViews(RemoteViews remoteViews, RemoteViews remoteViews2) {
        hideNormalContent(remoteViews);
        remoteViews.removeAllViews(R$id.notification_main_column);
        remoteViews.addView(R$id.notification_main_column, remoteViews2.clone());
        remoteViews.setViewVisibility(R$id.notification_main_column, 0);
        remoteViews.setViewPadding(R$id.notification_main_column_container, 0, calculateTopPadding(), 0, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void clearCompatExtraKeys(@NonNull Bundle bundle) {
        bundle.remove(NotificationCompat.EXTRA_SUMMARY_TEXT);
        bundle.remove(NotificationCompat.EXTRA_TITLE_BIG);
        bundle.remove(NotificationCompat.EXTRA_COMPAT_TEMPLATE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean displayCustomViewInline() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public String getClassName() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void restoreFromCompatExtras(@NonNull Bundle bundle) {
        if (bundle.containsKey(NotificationCompat.EXTRA_SUMMARY_TEXT)) {
            this.mSummaryText = bundle.getCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT);
            this.mSummaryTextSet = true;
        }
        this.mBigContentTitle = bundle.getCharSequence(NotificationCompat.EXTRA_TITLE_BIG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBuilder(@Nullable NotificationCompat$Builder notificationCompat$Builder) {
        if (this.mBuilder != notificationCompat$Builder) {
            this.mBuilder = notificationCompat$Builder;
            if (notificationCompat$Builder != null) {
                notificationCompat$Builder.setStyle(this);
            }
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
    }

    public Bitmap createColoredBitmap(@NonNull IconCompat iconCompat, int i9) {
        return createColoredBitmap(iconCompat, i9, 0);
    }

    private Bitmap createColoredBitmap(int i9, int i10, int i11) {
        return createColoredBitmap(IconCompat.createWithResource(this.mBuilder.mContext, i9), i10, i11);
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public Bitmap createColoredBitmap(int i9, int i10) {
        return createColoredBitmap(i9, i10, 0);
    }
}
