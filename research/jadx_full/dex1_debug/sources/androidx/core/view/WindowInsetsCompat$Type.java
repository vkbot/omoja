package androidx.core.view;

import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class WindowInsetsCompat$Type {
    static final int CAPTION_BAR = 4;
    static final int DISPLAY_CUTOUT = 128;
    static final int FIRST = 1;
    static final int IME = 8;
    static final int LAST = 256;
    static final int MANDATORY_SYSTEM_GESTURES = 32;
    static final int NAVIGATION_BARS = 2;
    static final int SIZE = 9;
    static final int STATUS_BARS = 1;
    static final int SYSTEM_GESTURES = 16;
    static final int TAPPABLE_ELEMENT = 64;
    static final int WINDOW_DECOR = 256;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private WindowInsetsCompat$Type() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static int all() {
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int captionBar() {
        return 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int displayCutout() {
        return 128;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int ime() {
        return 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int indexOf(int i9) {
        if (i9 == 1) {
            return 0;
        }
        if (i9 == 2) {
            return 1;
        }
        if (i9 == 4) {
            return 2;
        }
        if (i9 == 8) {
            return 3;
        }
        if (i9 == 16) {
            return 4;
        }
        if (i9 == 32) {
            return 5;
        }
        if (i9 == 64) {
            return 6;
        }
        if (i9 == 128) {
            return 7;
        }
        if (i9 == 256) {
            return 8;
        }
        j1.i.k(ai.onnxruntime.a.e(i9, "type needs to be >= FIRST and <= LAST, type="));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int mandatorySystemGestures() {
        return 32;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int navigationBars() {
        return 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int statusBars() {
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int systemBars() {
        return 7;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int systemGestures() {
        return 16;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int tappableElement() {
        return 64;
    }
}
