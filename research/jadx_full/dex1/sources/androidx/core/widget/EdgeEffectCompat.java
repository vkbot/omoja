package androidx.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build$VERSION;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class EdgeEffectCompat {
    private final EdgeEffect mEdgeEffect;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public EdgeEffectCompat(Context context) {
        this.mEdgeEffect = new EdgeEffect(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static EdgeEffect create(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return Build$VERSION.SDK_INT >= 31 ? EdgeEffectCompat$Api31Impl.create(context, attributeSet) : new EdgeEffect(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float getDistance(@NonNull EdgeEffect edgeEffect) {
        if (Build$VERSION.SDK_INT >= 31) {
            return EdgeEffectCompat$Api31Impl.getDistance(edgeEffect);
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float onPullDistance(@NonNull EdgeEffect edgeEffect, float f8, float f9) {
        if (Build$VERSION.SDK_INT >= 31) {
            return EdgeEffectCompat$Api31Impl.onPullDistance(edgeEffect, f8, f9);
        }
        onPull(edgeEffect, f8, f9);
        return f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean draw(Canvas canvas) {
        return this.mEdgeEffect.draw(canvas);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void finish() {
        this.mEdgeEffect.finish();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean isFinished() {
        return this.mEdgeEffect.isFinished();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean onAbsorb(int i9) {
        this.mEdgeEffect.onAbsorb(i9);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean onPull(float f8) {
        this.mEdgeEffect.onPull(f8);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean onRelease() {
        this.mEdgeEffect.onRelease();
        return this.mEdgeEffect.isFinished();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setSize(int i9, int i10) {
        this.mEdgeEffect.setSize(i9, i10);
    }

    @Deprecated
    public boolean onPull(float f8, float f9) {
        onPull(this.mEdgeEffect, f8, f9);
        return true;
    }

    public static void onPull(@NonNull EdgeEffect edgeEffect, float f8, float f9) {
        EdgeEffectCompat$Api21Impl.onPull(edgeEffect, f8, f9);
    }
}
