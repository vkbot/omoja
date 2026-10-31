package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.drawable.DrawableCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class DrawableContainerCompat$DrawableContainerState extends Drawable$ConstantState {
    boolean mAutoMirrored;
    boolean mCanConstantState;
    int mChangingConfigurations;
    boolean mCheckedConstantSize;
    boolean mCheckedConstantState;
    boolean mCheckedOpacity;
    boolean mCheckedPadding;
    boolean mCheckedStateful;
    int mChildrenChangingConfigurations;
    ColorFilter mColorFilter;
    int mConstantHeight;
    int mConstantMinimumHeight;
    int mConstantMinimumWidth;
    Rect mConstantPadding;
    boolean mConstantSize;
    int mConstantWidth;
    int mDensity;
    boolean mDither;
    SparseArray<Drawable$ConstantState> mDrawableFutures;
    Drawable[] mDrawables;
    int mEnterFadeDuration;
    int mExitFadeDuration;
    boolean mHasColorFilter;
    boolean mHasTintList;
    boolean mHasTintMode;
    int mLayoutDirection;
    boolean mMutated;
    int mNumChildren;
    int mOpacity;
    final DrawableContainerCompat mOwner;
    Resources mSourceRes;
    boolean mStateful;
    ColorStateList mTintList;
    PorterDuff$Mode mTintMode;
    boolean mVariablePadding;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DrawableContainerCompat$DrawableContainerState(DrawableContainerCompat$DrawableContainerState drawableContainerCompat$DrawableContainerState, DrawableContainerCompat drawableContainerCompat, Resources resources) {
        this.mVariablePadding = false;
        this.mConstantSize = false;
        this.mDither = true;
        this.mEnterFadeDuration = 0;
        this.mExitFadeDuration = 0;
        this.mOwner = drawableContainerCompat;
        this.mSourceRes = resources != null ? resources : drawableContainerCompat$DrawableContainerState != null ? drawableContainerCompat$DrawableContainerState.mSourceRes : null;
        int iResolveDensity = DrawableContainerCompat.resolveDensity(resources, drawableContainerCompat$DrawableContainerState != null ? drawableContainerCompat$DrawableContainerState.mDensity : 0);
        this.mDensity = iResolveDensity;
        if (drawableContainerCompat$DrawableContainerState == null) {
            this.mDrawables = new Drawable[10];
            this.mNumChildren = 0;
            return;
        }
        this.mChangingConfigurations = drawableContainerCompat$DrawableContainerState.mChangingConfigurations;
        this.mChildrenChangingConfigurations = drawableContainerCompat$DrawableContainerState.mChildrenChangingConfigurations;
        this.mCheckedConstantState = true;
        this.mCanConstantState = true;
        this.mVariablePadding = drawableContainerCompat$DrawableContainerState.mVariablePadding;
        this.mConstantSize = drawableContainerCompat$DrawableContainerState.mConstantSize;
        this.mDither = drawableContainerCompat$DrawableContainerState.mDither;
        this.mMutated = drawableContainerCompat$DrawableContainerState.mMutated;
        this.mLayoutDirection = drawableContainerCompat$DrawableContainerState.mLayoutDirection;
        this.mEnterFadeDuration = drawableContainerCompat$DrawableContainerState.mEnterFadeDuration;
        this.mExitFadeDuration = drawableContainerCompat$DrawableContainerState.mExitFadeDuration;
        this.mAutoMirrored = drawableContainerCompat$DrawableContainerState.mAutoMirrored;
        this.mColorFilter = drawableContainerCompat$DrawableContainerState.mColorFilter;
        this.mHasColorFilter = drawableContainerCompat$DrawableContainerState.mHasColorFilter;
        this.mTintList = drawableContainerCompat$DrawableContainerState.mTintList;
        this.mTintMode = drawableContainerCompat$DrawableContainerState.mTintMode;
        this.mHasTintList = drawableContainerCompat$DrawableContainerState.mHasTintList;
        this.mHasTintMode = drawableContainerCompat$DrawableContainerState.mHasTintMode;
        if (drawableContainerCompat$DrawableContainerState.mDensity == iResolveDensity) {
            if (drawableContainerCompat$DrawableContainerState.mCheckedPadding) {
                this.mConstantPadding = drawableContainerCompat$DrawableContainerState.mConstantPadding != null ? new Rect(drawableContainerCompat$DrawableContainerState.mConstantPadding) : null;
                this.mCheckedPadding = true;
            }
            if (drawableContainerCompat$DrawableContainerState.mCheckedConstantSize) {
                this.mConstantWidth = drawableContainerCompat$DrawableContainerState.mConstantWidth;
                this.mConstantHeight = drawableContainerCompat$DrawableContainerState.mConstantHeight;
                this.mConstantMinimumWidth = drawableContainerCompat$DrawableContainerState.mConstantMinimumWidth;
                this.mConstantMinimumHeight = drawableContainerCompat$DrawableContainerState.mConstantMinimumHeight;
                this.mCheckedConstantSize = true;
            }
        }
        if (drawableContainerCompat$DrawableContainerState.mCheckedOpacity) {
            this.mOpacity = drawableContainerCompat$DrawableContainerState.mOpacity;
            this.mCheckedOpacity = true;
        }
        if (drawableContainerCompat$DrawableContainerState.mCheckedStateful) {
            this.mStateful = drawableContainerCompat$DrawableContainerState.mStateful;
            this.mCheckedStateful = true;
        }
        Drawable[] drawableArr = drawableContainerCompat$DrawableContainerState.mDrawables;
        this.mDrawables = new Drawable[drawableArr.length];
        this.mNumChildren = drawableContainerCompat$DrawableContainerState.mNumChildren;
        SparseArray<Drawable$ConstantState> sparseArray = drawableContainerCompat$DrawableContainerState.mDrawableFutures;
        if (sparseArray != null) {
            this.mDrawableFutures = sparseArray.clone();
        } else {
            this.mDrawableFutures = new SparseArray<>(this.mNumChildren);
        }
        int i9 = this.mNumChildren;
        for (int i10 = 0; i10 < i9; i10++) {
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                Drawable$ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    this.mDrawableFutures.put(i10, constantState);
                } else {
                    this.mDrawables[i10] = drawableArr[i10];
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void createAllFutures() {
        SparseArray<Drawable$ConstantState> sparseArray = this.mDrawableFutures;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i9 = 0; i9 < size; i9++) {
                this.mDrawables[this.mDrawableFutures.keyAt(i9)] = prepareDrawable(this.mDrawableFutures.valueAt(i9).newDrawable(this.mSourceRes));
            }
            this.mDrawableFutures = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Drawable prepareDrawable(Drawable drawable) {
        DrawableCompat.setLayoutDirection(drawable, this.mLayoutDirection);
        Drawable drawableMutate = drawable.mutate();
        drawableMutate.setCallback(this.mOwner);
        return drawableMutate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int addChild(Drawable drawable) {
        int i9 = this.mNumChildren;
        if (i9 >= this.mDrawables.length) {
            growArray(i9, i9 + 10);
        }
        drawable.mutate();
        drawable.setVisible(false, true);
        drawable.setCallback(this.mOwner);
        this.mDrawables[i9] = drawable;
        this.mNumChildren++;
        this.mChildrenChangingConfigurations = drawable.getChangingConfigurations() | this.mChildrenChangingConfigurations;
        invalidateCache();
        this.mConstantPadding = null;
        this.mCheckedPadding = false;
        this.mCheckedConstantSize = false;
        this.mCheckedConstantState = false;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(21)
    public final void applyTheme(Resources$Theme resources$Theme) {
        if (resources$Theme != null) {
            createAllFutures();
            int i9 = this.mNumChildren;
            Drawable[] drawableArr = this.mDrawables;
            for (int i10 = 0; i10 < i9; i10++) {
                Drawable drawable = drawableArr[i10];
                if (drawable != null && DrawableCompat.canApplyTheme(drawable)) {
                    DrawableCompat.applyTheme(drawableArr[i10], resources$Theme);
                    this.mChildrenChangingConfigurations |= drawableArr[i10].getChangingConfigurations();
                }
            }
            updateDensity(DrawableContainerCompat$Api21Impl.getResources(resources$Theme));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    @RequiresApi(21)
    public boolean canApplyTheme() {
        int i9 = this.mNumChildren;
        Drawable[] drawableArr = this.mDrawables;
        for (int i10 = 0; i10 < i9; i10++) {
            Drawable drawable = drawableArr[i10];
            if (drawable == null) {
                Drawable$ConstantState drawable$ConstantState = this.mDrawableFutures.get(i10);
                if (drawable$ConstantState != null && DrawableContainerCompat$Api21Impl.canApplyTheme(drawable$ConstantState)) {
                    return true;
                }
            } else if (DrawableCompat.canApplyTheme(drawable)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canConstantState() {
        if (this.mCheckedConstantState) {
            return this.mCanConstantState;
        }
        createAllFutures();
        this.mCheckedConstantState = true;
        int i9 = this.mNumChildren;
        Drawable[] drawableArr = this.mDrawables;
        for (int i10 = 0; i10 < i9; i10++) {
            if (drawableArr[i10].getConstantState() == null) {
                this.mCanConstantState = false;
                return false;
            }
        }
        this.mCanConstantState = true;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void clearMutated() {
        this.mMutated = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void computeConstantSize() {
        this.mCheckedConstantSize = true;
        createAllFutures();
        int i9 = this.mNumChildren;
        Drawable[] drawableArr = this.mDrawables;
        this.mConstantHeight = -1;
        this.mConstantWidth = -1;
        this.mConstantMinimumHeight = 0;
        this.mConstantMinimumWidth = 0;
        for (int i10 = 0; i10 < i9; i10++) {
            Drawable drawable = drawableArr[i10];
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (intrinsicWidth > this.mConstantWidth) {
                this.mConstantWidth = intrinsicWidth;
            }
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicHeight > this.mConstantHeight) {
                this.mConstantHeight = intrinsicHeight;
            }
            int minimumWidth = drawable.getMinimumWidth();
            if (minimumWidth > this.mConstantMinimumWidth) {
                this.mConstantMinimumWidth = minimumWidth;
            }
            int minimumHeight = drawable.getMinimumHeight();
            if (minimumHeight > this.mConstantMinimumHeight) {
                this.mConstantMinimumHeight = minimumHeight;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getCapacity() {
        return this.mDrawables.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.graphics.drawable.Drawable$ConstantState
    public int getChangingConfigurations() {
        return this.mChangingConfigurations | this.mChildrenChangingConfigurations;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Drawable getChild(int i9) {
        int iIndexOfKey;
        Drawable drawable = this.mDrawables[i9];
        if (drawable != null) {
            return drawable;
        }
        SparseArray<Drawable$ConstantState> sparseArray = this.mDrawableFutures;
        if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i9)) < 0) {
            return null;
        }
        Drawable drawablePrepareDrawable = prepareDrawable(this.mDrawableFutures.valueAt(iIndexOfKey).newDrawable(this.mSourceRes));
        this.mDrawables[i9] = drawablePrepareDrawable;
        this.mDrawableFutures.removeAt(iIndexOfKey);
        if (this.mDrawableFutures.size() == 0) {
            this.mDrawableFutures = null;
        }
        return drawablePrepareDrawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getChildCount() {
        return this.mNumChildren;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getConstantHeight() {
        if (!this.mCheckedConstantSize) {
            computeConstantSize();
        }
        return this.mConstantHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getConstantMinimumHeight() {
        if (!this.mCheckedConstantSize) {
            computeConstantSize();
        }
        return this.mConstantMinimumHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getConstantMinimumWidth() {
        if (!this.mCheckedConstantSize) {
            computeConstantSize();
        }
        return this.mConstantMinimumWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Rect getConstantPadding() {
        Rect rect = null;
        if (this.mVariablePadding) {
            return null;
        }
        Rect rect2 = this.mConstantPadding;
        if (rect2 != null || this.mCheckedPadding) {
            return rect2;
        }
        createAllFutures();
        Rect rect3 = new Rect();
        int i9 = this.mNumChildren;
        Drawable[] drawableArr = this.mDrawables;
        for (int i10 = 0; i10 < i9; i10++) {
            if (drawableArr[i10].getPadding(rect3)) {
                if (rect == null) {
                    rect = new Rect(0, 0, 0, 0);
                }
                int i11 = rect3.left;
                if (i11 > rect.left) {
                    rect.left = i11;
                }
                int i12 = rect3.top;
                if (i12 > rect.top) {
                    rect.top = i12;
                }
                int i13 = rect3.right;
                if (i13 > rect.right) {
                    rect.right = i13;
                }
                int i14 = rect3.bottom;
                if (i14 > rect.bottom) {
                    rect.bottom = i14;
                }
            }
        }
        this.mCheckedPadding = true;
        this.mConstantPadding = rect;
        return rect;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getConstantWidth() {
        if (!this.mCheckedConstantSize) {
            computeConstantSize();
        }
        return this.mConstantWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getEnterFadeDuration() {
        return this.mEnterFadeDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getExitFadeDuration() {
        return this.mExitFadeDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getOpacity() {
        if (this.mCheckedOpacity) {
            return this.mOpacity;
        }
        createAllFutures();
        int i9 = this.mNumChildren;
        Drawable[] drawableArr = this.mDrawables;
        int opacity = i9 > 0 ? drawableArr[0].getOpacity() : -2;
        for (int i10 = 1; i10 < i9; i10++) {
            opacity = Drawable.resolveOpacity(opacity, drawableArr[i10].getOpacity());
        }
        this.mOpacity = opacity;
        this.mCheckedOpacity = true;
        return opacity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void growArray(int i9, int i10) {
        Drawable[] drawableArr = new Drawable[i10];
        Drawable[] drawableArr2 = this.mDrawables;
        if (drawableArr2 != null) {
            System.arraycopy(drawableArr2, 0, drawableArr, 0, i9);
        }
        this.mDrawables = drawableArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateCache() {
        this.mCheckedOpacity = false;
        this.mCheckedStateful = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isConstantSize() {
        return this.mConstantSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isStateful() {
        if (this.mCheckedStateful) {
            return this.mStateful;
        }
        createAllFutures();
        int i9 = this.mNumChildren;
        Drawable[] drawableArr = this.mDrawables;
        boolean z8 = false;
        for (int i10 = 0; i10 < i9; i10++) {
            if (drawableArr[i10].isStateful()) {
                z8 = true;
                break;
            }
        }
        this.mStateful = z8;
        this.mCheckedStateful = true;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void mutate() {
        int i9 = this.mNumChildren;
        Drawable[] drawableArr = this.mDrawables;
        for (int i10 = 0; i10 < i9; i10++) {
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.mutate();
            }
        }
        this.mMutated = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setConstantSize(boolean z8) {
        this.mConstantSize = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setEnterFadeDuration(int i9) {
        this.mEnterFadeDuration = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setExitFadeDuration(int i9) {
        this.mExitFadeDuration = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean setLayoutDirection(int i9, int i10) {
        int i11 = this.mNumChildren;
        Drawable[] drawableArr = this.mDrawables;
        boolean z8 = false;
        for (int i12 = 0; i12 < i11; i12++) {
            Drawable drawable = drawableArr[i12];
            if (drawable != null) {
                boolean layoutDirection = DrawableCompat.setLayoutDirection(drawable, i9);
                if (i12 == i10) {
                    z8 = layoutDirection;
                }
            }
        }
        this.mLayoutDirection = i9;
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setVariablePadding(boolean z8) {
        this.mVariablePadding = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void updateDensity(Resources resources) {
        if (resources != null) {
            this.mSourceRes = resources;
            int iResolveDensity = DrawableContainerCompat.resolveDensity(resources, this.mDensity);
            int i9 = this.mDensity;
            this.mDensity = iResolveDensity;
            if (i9 != iResolveDensity) {
                this.mCheckedConstantSize = false;
                this.mCheckedPadding = false;
            }
        }
    }
}
