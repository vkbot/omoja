package com.android.launcher3.icons;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Process;
import android.os.UserHandle;

/* JADX INFO: loaded from: classes.dex */
public class BaseIconFactory implements AutoCloseable {
    static final boolean ATLEAST_OREO = false;
    static final boolean ATLEAST_P = false;
    private static final int DEFAULT_WRAPPER_BACKGROUND = -1;
    private static final float ICON_BADGE_SCALE = 0.444f;
    private static final String TAG = "BaseIconFactory";
    private boolean mBadgeOnLeft;
    private final Canvas mCanvas;
    private final ColorExtractor mColorExtractor;
    protected final Context mContext;
    private boolean mDisableColorExtractor;
    protected final int mFillResIconDpi;
    protected final int mIconBitmapSize;
    private IconNormalizer mNormalizer;
    private final Rect mOldBounds;
    private final PackageManager mPm;
    private ShadowGenerator mShadowGenerator;
    private final boolean mShapeDetection;
    private int mWrapperBackgroundColor;
    private Drawable mWrapperIcon;

    public static int getBadgeSizeForIconSize(int i) {
        return (int) (i * ICON_BADGE_SCALE);
    }

    protected void clear() {
        this.mWrapperBackgroundColor = -1;
        this.mDisableColorExtractor = false;
        this.mBadgeOnLeft = false;
    }

    public void disableColorExtraction() {
        this.mDisableColorExtractor = true;
    }

    public void setBadgeOnLeft(boolean z) {
        this.mBadgeOnLeft = z;
    }

    protected BaseIconFactory(Context context, int i, int i2, boolean z) {
        this.mOldBounds = new Rect();
        this.mBadgeOnLeft = false;
        this.mWrapperBackgroundColor = -1;
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mShapeDetection = z;
        this.mFillResIconDpi = i;
        this.mIconBitmapSize = i2;
        this.mPm = applicationContext.getPackageManager();
        this.mColorExtractor = new ColorExtractor();
        Canvas canvas = new Canvas();
        this.mCanvas = canvas;
        canvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
        clear();
    }

    protected BaseIconFactory(Context context, int i, int i2) {
        this(context, i, i2, false);
    }

    public ShadowGenerator getShadowGenerator() {
        if (this.mShadowGenerator == null) {
            this.mShadowGenerator = new ShadowGenerator(this.mIconBitmapSize);
        }
        return this.mShadowGenerator;
    }

    public IconNormalizer getNormalizer() {
        if (this.mNormalizer == null) {
            this.mNormalizer = new IconNormalizer(this.mContext, this.mIconBitmapSize, this.mShapeDetection);
        }
        return this.mNormalizer;
    }

    public BitmapInfo createIconBitmap(Intent.ShortcutIconResource shortcutIconResource) {
        try {
            Resources resourcesForApplication = this.mPm.getResourcesForApplication(shortcutIconResource.packageName);
            if (resourcesForApplication != null) {
                return createBadgedIconBitmap(resourcesForApplication.getDrawableForDensity(resourcesForApplication.getIdentifier(shortcutIconResource.resourceName, null, null), this.mFillResIconDpi), Process.myUserHandle(), false);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public BitmapInfo createIconBitmap(Bitmap bitmap) {
        if (this.mIconBitmapSize != bitmap.getWidth() || this.mIconBitmapSize != bitmap.getHeight()) {
            bitmap = createIconBitmap(new BitmapDrawable(this.mContext.getResources(), bitmap), 1.0f);
        }
        return BitmapInfo.of(bitmap, extractColor(bitmap));
    }

    public BitmapInfo createBadgedIconBitmap(Drawable drawable, UserHandle userHandle, boolean z) {
        return createBadgedIconBitmap(drawable, userHandle, z, false, (float[]) null);
    }

    public BitmapInfo createBadgedIconBitmap(Drawable drawable, UserHandle userHandle, int i) {
        return createBadgedIconBitmap(drawable, userHandle, i, false);
    }

    public BitmapInfo createBadgedIconBitmap(Drawable drawable, UserHandle userHandle, int i, boolean z) {
        return createBadgedIconBitmap(drawable, userHandle, i, z, (float[]) null);
    }

    public BitmapInfo createBadgedIconBitmap(Drawable drawable, UserHandle userHandle, int i, boolean z, float[] fArr) {
        return createBadgedIconBitmap(drawable, userHandle, false, z, fArr);
    }

    public Bitmap createScaledBitmapWithoutShadow(Drawable drawable, int i) {
        return createScaledBitmapWithoutShadow(drawable, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BitmapInfo createBadgedIconBitmap(Drawable drawable, UserHandle userHandle, boolean z, boolean z2, float[] fArr) {
        if (fArr == null) {
            fArr = new float[1];
        }
        Drawable drawableNormalizeAndWrapToAdaptiveIcon = normalizeAndWrapToAdaptiveIcon(drawable, z, null, fArr);
        Bitmap bitmapCreateIconBitmap = createIconBitmap(drawableNormalizeAndWrapToAdaptiveIcon, fArr[0]);
        if (z2) {
            badgeWithDrawable(bitmapCreateIconBitmap, this.mContext.getDrawable(R.drawable.ic_instant_app_badge));
        }
        if (userHandle != null) {
            Drawable userBadgedIcon = this.mPm.getUserBadgedIcon(new FixedSizeBitmapDrawable(bitmapCreateIconBitmap), userHandle);
            if (userBadgedIcon instanceof BitmapDrawable) {
                bitmapCreateIconBitmap = ((BitmapDrawable) userBadgedIcon).getBitmap();
            } else {
                bitmapCreateIconBitmap = createIconBitmap(userBadgedIcon, 1.0f);
            }
        }
        int iExtractColor = extractColor(bitmapCreateIconBitmap);
        if (drawableNormalizeAndWrapToAdaptiveIcon instanceof BitmapInfo.Extender) {
            return ((BitmapInfo.Extender) drawableNormalizeAndWrapToAdaptiveIcon).getExtendedInfo(bitmapCreateIconBitmap, iExtractColor, this);
        }
        return BitmapInfo.of(bitmapCreateIconBitmap, iExtractColor);
    }

    public Bitmap createScaledBitmapWithoutShadow(Drawable drawable, boolean z) {
        RectF rectF = new RectF();
        float[] fArr = new float[1];
        return createIconBitmap(normalizeAndWrapToAdaptiveIcon(drawable, z, rectF, fArr), Math.min(fArr[0], ShadowGenerator.getScaleForBounds(rectF)));
    }

    public void setWrapperBackgroundColor(int i) {
        if (Color.alpha(i) < 255) {
            i = -1;
        }
        this.mWrapperBackgroundColor = i;
    }

    private Drawable normalizeAndWrapToAdaptiveIcon(Drawable drawable, boolean z, RectF rectF, float[] fArr) {
        if (drawable == null) {
            return null;
        }
        fArr[0] = getNormalizer().getScale(drawable, rectF, null, null);
        return drawable;
    }

    public void badgeWithDrawable(Bitmap bitmap, Drawable drawable) {
        this.mCanvas.setBitmap(bitmap);
        badgeWithDrawable(this.mCanvas, drawable);
        this.mCanvas.setBitmap(null);
    }

    public void badgeWithDrawable(Canvas canvas, Drawable drawable) {
        int badgeSizeForIconSize = getBadgeSizeForIconSize(this.mIconBitmapSize);
        if (this.mBadgeOnLeft) {
            int i = this.mIconBitmapSize;
            drawable.setBounds(0, i - badgeSizeForIconSize, badgeSizeForIconSize, i);
        } else {
            int i2 = this.mIconBitmapSize;
            drawable.setBounds(i2 - badgeSizeForIconSize, i2 - badgeSizeForIconSize, i2, i2);
        }
        drawable.draw(canvas);
    }

    private Bitmap createIconBitmap(Drawable drawable, float f) {
        return createIconBitmap(drawable, f, this.mIconBitmapSize);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0055  */
    public Bitmap createIconBitmap(Drawable drawable, float f, int i) {
        int i2;
        int i3;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
        if (drawable == null) {
            return bitmapCreateBitmap;
        }
        this.mCanvas.setBitmap(bitmapCreateBitmap);
        this.mOldBounds.set(drawable.getBounds());
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (bitmapCreateBitmap != null && bitmap.getDensity() == 0) {
                bitmapDrawable.setTargetDensity(this.mContext.getResources().getDisplayMetrics());
            }
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            i2 = i;
            i3 = i2;
        } else {
            float f2 = intrinsicWidth / intrinsicHeight;
            if (intrinsicWidth > intrinsicHeight) {
                i3 = (int) (i / f2);
                i2 = i;
            } else if (intrinsicHeight > intrinsicWidth) {
                i2 = (int) (i * f2);
                i3 = i;
            } else {
                i2 = i;
                i3 = i2;
            }
        }
        int i4 = (i - i2) / 2;
        int i5 = (i - i3) / 2;
        drawable.setBounds(i4, i5, i2 + i4, i3 + i5);
        this.mCanvas.save();
        float f3 = i / 2;
        this.mCanvas.scale(f, f, f3, f3);
        drawable.draw(this.mCanvas);
        this.mCanvas.restore();
        drawable.setBounds(this.mOldBounds);
        this.mCanvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        clear();
    }

    public BitmapInfo makeDefaultIcon(UserHandle userHandle) {
        return createBadgedIconBitmap(getFullResDefaultActivityIcon(this.mFillResIconDpi), userHandle, Build.VERSION.SDK_INT);
    }

    public static Drawable getFullResDefaultActivityIcon(int i) {
        return Resources.getSystem().getDrawableForDensity(android.R.drawable.sym_def_app_icon, i);
    }

    public BitmapInfo badgeBitmap(final Bitmap bitmap, final BitmapInfo bitmapInfo) {
        int i = this.mIconBitmapSize;
        return BitmapInfo.of(BitmapRenderer.createHardwareBitmap(i, i, new BitmapRenderer() { // from class: com.android.launcher3.icons.BaseIconFactory$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.icons.BitmapRenderer
            public final void draw(Canvas canvas) {
                this.f$0.m102lambda$badgeBitmap$0$comandroidlauncher3iconsBaseIconFactory(bitmap, bitmapInfo, canvas);
            }
        }), bitmapInfo.color);
    }

    /* JADX INFO: renamed from: lambda$badgeBitmap$0$com-android-launcher3-icons-BaseIconFactory, reason: not valid java name */
    /* synthetic */ void m102lambda$badgeBitmap$0$comandroidlauncher3iconsBaseIconFactory(Bitmap bitmap, BitmapInfo bitmapInfo, Canvas canvas) {
        getShadowGenerator().recreateIcon(bitmap, canvas);
        badgeWithDrawable(canvas, new FixedSizeBitmapDrawable(bitmapInfo.icon));
    }

    private int extractColor(Bitmap bitmap) {
        if (this.mDisableColorExtractor) {
            return 0;
        }
        return this.mColorExtractor.findDominantColorByHue(bitmap);
    }

    private static class FixedSizeBitmapDrawable extends BitmapDrawable {
        public FixedSizeBitmapDrawable(Bitmap bitmap) {
            super((Resources) null, bitmap);
        }

        @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return getBitmap().getWidth();
        }

        @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return getBitmap().getWidth();
        }
    }
}
