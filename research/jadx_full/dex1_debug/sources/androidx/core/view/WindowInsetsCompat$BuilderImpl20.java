package androidx.core.view;

import android.graphics.Rect;
import android.util.Log;
import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.Insets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(api = 20)
public class WindowInsetsCompat$BuilderImpl20 extends WindowInsetsCompat$BuilderImpl {
    private static Constructor<WindowInsets> sConstructor = null;
    private static boolean sConstructorFetched = false;
    private static Field sConsumedField = null;
    private static boolean sConsumedFieldFetched = false;
    private WindowInsets mPlatformInsets;
    private Insets mStableInsets;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsCompat$BuilderImpl20() {
        this.mPlatformInsets = createWindowInsetsInstance();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static WindowInsets createWindowInsetsInstance() {
        if (!sConsumedFieldFetched) {
            try {
                sConsumedField = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e);
            }
            sConsumedFieldFetched = true;
        }
        Field field = sConsumedField;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e6) {
                Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e6);
            }
        }
        if (!sConstructorFetched) {
            try {
                sConstructor = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e9) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e9);
            }
            sConstructorFetched = true;
        }
        Constructor<WindowInsets> constructor = sConstructor;
        if (constructor != null) {
            try {
                return constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e10) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e10);
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    @NonNull
    public WindowInsetsCompat build() {
        applyInsetTypes();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.mPlatformInsets);
        windowInsetsCompat.setOverriddenInsets(this.mInsetsTypeMask);
        windowInsetsCompat.setStableInsets(this.mStableInsets);
        return windowInsetsCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setStableInsets(@Nullable Insets insets) {
        this.mStableInsets = insets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsCompat$BuilderImpl
    public void setSystemWindowInsets(@NonNull Insets insets) {
        WindowInsets windowInsets = this.mPlatformInsets;
        if (windowInsets != null) {
            this.mPlatformInsets = windowInsets.replaceSystemWindowInsets(insets.left, insets.top, insets.right, insets.bottom);
        }
    }

    public WindowInsetsCompat$BuilderImpl20(@NonNull WindowInsetsCompat windowInsetsCompat) {
        super(windowInsetsCompat);
        this.mPlatformInsets = windowInsetsCompat.toWindowInsets();
    }
}
