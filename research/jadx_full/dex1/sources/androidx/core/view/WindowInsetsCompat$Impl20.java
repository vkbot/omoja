package androidx.core.view;

import android.graphics.Rect;
import android.os.Build$VERSION;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.Insets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(20)
public class WindowInsetsCompat$Impl20 extends WindowInsetsCompat$Impl {
    private static Class<?> sAttachInfoClass = null;
    private static Field sAttachInfoField = null;
    private static Method sGetViewRootImplMethod = null;
    private static Field sVisibleInsetsField = null;
    private static boolean sVisibleRectReflectionFetched = false;
    private Insets[] mOverriddenInsets;

    @NonNull
    final WindowInsets mPlatformInsets;
    Insets mRootViewVisibleInsets;
    private WindowInsetsCompat mRootWindowInsets;
    private Insets mSystemWindowInsets;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$Impl20(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat$Impl20 windowInsetsCompat$Impl20) {
        this(windowInsetsCompat, new WindowInsets(windowInsetsCompat$Impl20.mPlatformInsets));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private Insets getInsets(int i9, boolean z8) {
        Insets insetsMax = Insets.NONE;
        for (int i10 = 1; i10 <= 256; i10 <<= 1) {
            if ((i9 & i10) != 0) {
                insetsMax = Insets.max(insetsMax, getInsetsForType(i10, z8));
            }
        }
        return insetsMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Insets getRootStableInsets() {
        WindowInsetsCompat windowInsetsCompat = this.mRootWindowInsets;
        return windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : Insets.NONE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private Insets getVisibleInsets(@NonNull View view) {
        if (Build$VERSION.SDK_INT >= 30) {
            androidx.navigation.b.g("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            return null;
        }
        if (!sVisibleRectReflectionFetched) {
            loadReflectionField();
        }
        Method method = sGetViewRootImplMethod;
        if (method != null && sAttachInfoClass != null && sVisibleInsetsField != null) {
            try {
                Object objInvoke = method.invoke(view, null);
                if (objInvoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) sVisibleInsetsField.get(sAttachInfoField.get(objInvoke));
                if (rect != null) {
                    return Insets.of(rect);
                }
                return null;
            } catch (ReflectiveOperationException e) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void loadReflectionField() {
        try {
            sGetViewRootImplMethod = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            sAttachInfoClass = cls;
            sVisibleInsetsField = cls.getDeclaredField("mVisibleInsets");
            sAttachInfoField = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            sVisibleInsetsField.setAccessible(true);
            sAttachInfoField.setAccessible(true);
        } catch (ReflectiveOperationException e) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
        }
        sVisibleRectReflectionFetched = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public void copyRootViewBounds(@NonNull View view) {
        Insets visibleInsets = getVisibleInsets(view);
        if (visibleInsets == null) {
            visibleInsets = Insets.NONE;
        }
        setRootViewData(visibleInsets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public void copyWindowDataInto(@NonNull WindowInsetsCompat windowInsetsCompat) {
        windowInsetsCompat.setRootWindowInsets(this.mRootWindowInsets);
        windowInsetsCompat.setRootViewData(this.mRootViewVisibleInsets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return Objects.equals(this.mRootViewVisibleInsets, ((WindowInsetsCompat$Impl20) obj).mRootViewVisibleInsets);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Insets getInsetsForType(int i9, boolean z8) {
        Insets stableInsets;
        int i10;
        if (i9 == 1) {
            return z8 ? Insets.of(0, Math.max(getRootStableInsets().top, getSystemWindowInsets().top), 0, 0) : Insets.of(0, getSystemWindowInsets().top, 0, 0);
        }
        if (i9 == 2) {
            if (z8) {
                Insets rootStableInsets = getRootStableInsets();
                Insets stableInsets2 = getStableInsets();
                return Insets.of(Math.max(rootStableInsets.left, stableInsets2.left), 0, Math.max(rootStableInsets.right, stableInsets2.right), Math.max(rootStableInsets.bottom, stableInsets2.bottom));
            }
            Insets systemWindowInsets = getSystemWindowInsets();
            WindowInsetsCompat windowInsetsCompat = this.mRootWindowInsets;
            stableInsets = windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : null;
            int iMin = systemWindowInsets.bottom;
            if (stableInsets != null) {
                iMin = Math.min(iMin, stableInsets.bottom);
            }
            return Insets.of(systemWindowInsets.left, 0, systemWindowInsets.right, iMin);
        }
        if (i9 != 8) {
            if (i9 == 16) {
                return getSystemGestureInsets();
            }
            if (i9 == 32) {
                return getMandatorySystemGestureInsets();
            }
            if (i9 == 64) {
                return getTappableElementInsets();
            }
            if (i9 != 128) {
                return Insets.NONE;
            }
            WindowInsetsCompat windowInsetsCompat2 = this.mRootWindowInsets;
            DisplayCutoutCompat displayCutout = windowInsetsCompat2 != null ? windowInsetsCompat2.getDisplayCutout() : getDisplayCutout();
            return displayCutout != null ? Insets.of(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom()) : Insets.NONE;
        }
        Insets[] insetsArr = this.mOverriddenInsets;
        stableInsets = insetsArr != null ? insetsArr[WindowInsetsCompat$Type.indexOf(8)] : null;
        if (stableInsets != null) {
            return stableInsets;
        }
        Insets systemWindowInsets2 = getSystemWindowInsets();
        Insets rootStableInsets2 = getRootStableInsets();
        int i11 = systemWindowInsets2.bottom;
        if (i11 > rootStableInsets2.bottom) {
            return Insets.of(0, 0, 0, i11);
        }
        Insets insets = this.mRootViewVisibleInsets;
        return (insets == null || insets.equals(Insets.NONE) || (i10 = this.mRootViewVisibleInsets.bottom) <= rootStableInsets2.bottom) ? Insets.NONE : Insets.of(0, 0, 0, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public Insets getInsetsIgnoringVisibility(int i9) {
        return getInsets(i9, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public final Insets getSystemWindowInsets() {
        if (this.mSystemWindowInsets == null) {
            this.mSystemWindowInsets = Insets.of(this.mPlatformInsets.getSystemWindowInsetLeft(), this.mPlatformInsets.getSystemWindowInsetTop(), this.mPlatformInsets.getSystemWindowInsetRight(), this.mPlatformInsets.getSystemWindowInsetBottom());
        }
        return this.mSystemWindowInsets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public WindowInsetsCompat inset(int i9, int i10, int i11, int i12) {
        WindowInsetsCompat$Builder windowInsetsCompat$Builder = new WindowInsetsCompat$Builder(WindowInsetsCompat.toWindowInsetsCompat(this.mPlatformInsets));
        windowInsetsCompat$Builder.setSystemWindowInsets(WindowInsetsCompat.insetInsets(getSystemWindowInsets(), i9, i10, i11, i12));
        windowInsetsCompat$Builder.setStableInsets(WindowInsetsCompat.insetInsets(getStableInsets(), i9, i10, i11, i12));
        return windowInsetsCompat$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public boolean isRound() {
        return this.mPlatformInsets.isRound();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isTypeVisible(int i9) {
        if (i9 != 1 && i9 != 2) {
            if (i9 == 4) {
                return false;
            }
            if (i9 != 8 && i9 != 128) {
                return true;
            }
        }
        return !getInsetsForType(i9, false).equals(Insets.NONE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public boolean isVisible(int i9) {
        for (int i10 = 1; i10 <= 256; i10 <<= 1) {
            if ((i9 & i10) != 0 && !isTypeVisible(i10)) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public void setOverriddenInsets(Insets[] insetsArr) {
        this.mOverriddenInsets = insetsArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public void setRootViewData(@NonNull Insets insets) {
        this.mRootViewVisibleInsets = insets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$Impl
    public void setRootWindowInsets(@Nullable WindowInsetsCompat windowInsetsCompat) {
        this.mRootWindowInsets = windowInsetsCompat;
    }

    public WindowInsetsCompat$Impl20(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsets windowInsets) {
        super(windowInsetsCompat);
        this.mSystemWindowInsets = null;
        this.mPlatformInsets = windowInsets;
    }

    @Override // androidx.core.view.WindowInsetsCompat$Impl
    @NonNull
    public Insets getInsets(int i9) {
        return getInsets(i9, false);
    }
}
