package mega.blur.engine;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class BlurConfig {
    public static final BlurConfig DEFAULT_CONFIG = new BlurConfig(10, 4, 0);
    public static final int DEFAULT_DOWN_SCALE_FACTOR = 4;
    public static final int DEFAULT_OVERLAY_COLOR = 0;
    public static final int DEFAULT_RADIUS = 10;
    private final int mDownScaleFactor;
    private final int mOverlayColor;
    private final int mRadius;

    public int downScaleFactor() {
        return this.mDownScaleFactor;
    }

    public int overlayColor() {
        return this.mOverlayColor;
    }

    public int radius() {
        return this.mRadius;
    }

    private BlurConfig(int i, int i2, int i3) {
        this.mRadius = i;
        this.mDownScaleFactor = i2;
        this.mOverlayColor = i3;
    }

    public static void checkRadius(int i) {
        if (i <= 0 || i > 25) {
            throw new IllegalArgumentException("radius must be greater than 0 and less than or equal to 25");
        }
    }

    public static class Builder {
        private int mRadius = 10;
        private final int mDownScaleFactor = 4;
        private int mOverlayColor = 0;

        public Builder overlayColor(int i) {
            this.mOverlayColor = i;
            return this;
        }

        public Builder radius(int i) {
            BlurConfig.checkRadius(i);
            this.mRadius = i;
            return this;
        }

        public BlurConfig build() {
            return new BlurConfig(this.mRadius, this.mDownScaleFactor, this.mOverlayColor);
        }
    }
}
