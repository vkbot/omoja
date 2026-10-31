package androidx.core.app;

import android.app.Notification$BigPictureStyle;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationCompat$BigPictureStyle extends NotificationCompat$Style {
    private static final String TEMPLATE_CLASS_NAME = "androidx.core.app.NotificationCompat$BigPictureStyle";
    private IconCompat mBigLargeIcon;
    private boolean mBigLargeIconSet;
    private CharSequence mPictureContentDescription;
    private IconCompat mPictureIcon;
    private boolean mShowBigPictureWhenCollapsed;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompat$BigPictureStyle(@Nullable NotificationCompat$Builder notificationCompat$Builder) {
        setBuilder(notificationCompat$Builder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static IconCompat asIconCompat(@Nullable Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        if (parcelable instanceof Icon) {
            return IconCompat.createFromIcon((Icon) parcelable);
        }
        if (parcelable instanceof Bitmap) {
            return IconCompat.createWithBitmap((Bitmap) parcelable);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static IconCompat getPictureIcon(@Nullable Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        Parcelable parcelable = bundle.getParcelable(NotificationCompat.EXTRA_PICTURE);
        return parcelable != null ? asIconCompat(parcelable) : asIconCompat(bundle.getParcelable(NotificationCompat.EXTRA_PICTURE_ICON));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        Notification$BigPictureStyle bigContentTitle = new Notification$BigPictureStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.mBigContentTitle);
        IconCompat iconCompat = this.mPictureIcon;
        if (iconCompat != null) {
            if (Build$VERSION.SDK_INT >= 31) {
                NotificationCompat$BigPictureStyle$Api31Impl.setBigPicture(bigContentTitle, this.mPictureIcon.toIcon(notificationBuilderWithBuilderAccessor instanceof NotificationCompatBuilder ? ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).getContext() : null));
            } else if (iconCompat.getType() == 1) {
                bigContentTitle = bigContentTitle.bigPicture(this.mPictureIcon.getBitmap());
            }
        }
        if (this.mBigLargeIconSet) {
            if (this.mBigLargeIcon == null) {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            } else {
                NotificationCompat$BigPictureStyle$Api23Impl.setBigLargeIcon(bigContentTitle, this.mBigLargeIcon.toIcon(notificationBuilderWithBuilderAccessor instanceof NotificationCompatBuilder ? ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).getContext() : null));
            }
        }
        if (this.mSummaryTextSet) {
            bigContentTitle.setSummaryText(this.mSummaryText);
        }
        if (Build$VERSION.SDK_INT >= 31) {
            NotificationCompat$BigPictureStyle$Api31Impl.showBigPictureWhenCollapsed(bigContentTitle, this.mShowBigPictureWhenCollapsed);
            NotificationCompat$BigPictureStyle$Api31Impl.setContentDescription(bigContentTitle, this.mPictureContentDescription);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BigPictureStyle bigLargeIcon(@Nullable Bitmap bitmap) {
        this.mBigLargeIcon = bitmap == null ? null : IconCompat.createWithBitmap(bitmap);
        this.mBigLargeIconSet = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BigPictureStyle bigPicture(@Nullable Bitmap bitmap) {
        this.mPictureIcon = bitmap == null ? null : IconCompat.createWithBitmap(bitmap);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationCompat$Style
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void clearCompatExtraKeys(@NonNull Bundle bundle) {
        super.clearCompatExtraKeys(bundle);
        bundle.remove(NotificationCompat.EXTRA_LARGE_ICON_BIG);
        bundle.remove(NotificationCompat.EXTRA_PICTURE);
        bundle.remove(NotificationCompat.EXTRA_PICTURE_ICON);
        bundle.remove(NotificationCompat.EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED);
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
        if (bundle.containsKey(NotificationCompat.EXTRA_LARGE_ICON_BIG)) {
            this.mBigLargeIcon = asIconCompat(bundle.getParcelable(NotificationCompat.EXTRA_LARGE_ICON_BIG));
            this.mBigLargeIconSet = true;
        }
        this.mPictureIcon = getPictureIcon(bundle);
        this.mShowBigPictureWhenCollapsed = bundle.getBoolean(NotificationCompat.EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BigPictureStyle setBigContentTitle(@Nullable CharSequence charSequence) {
        this.mBigContentTitle = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
    public NotificationCompat$BigPictureStyle setContentDescription(@Nullable CharSequence charSequence) {
        this.mPictureContentDescription = charSequence;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public NotificationCompat$BigPictureStyle setSummaryText(@Nullable CharSequence charSequence) {
        this.mSummaryText = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        this.mSummaryTextSet = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
    public NotificationCompat$BigPictureStyle showBigPictureWhenCollapsed(boolean z8) {
        this.mShowBigPictureWhenCollapsed = z8;
        return this;
    }

    public NotificationCompat$BigPictureStyle() {
    }

    @NonNull
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
    public NotificationCompat$BigPictureStyle bigPicture(@Nullable Icon icon) {
        this.mPictureIcon = IconCompat.createFromIcon(icon);
        return this;
    }

    @NonNull
    @RequiresApi(23)
    public NotificationCompat$BigPictureStyle bigLargeIcon(@Nullable Icon icon) {
        this.mBigLargeIcon = icon == null ? null : IconCompat.createFromIcon(icon);
        this.mBigLargeIconSet = true;
        return this;
    }
}
