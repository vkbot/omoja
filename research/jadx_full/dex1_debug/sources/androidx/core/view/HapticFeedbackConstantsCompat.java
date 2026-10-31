package androidx.core.view;

import android.os.Build$VERSION;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class HapticFeedbackConstantsCompat {
    public static final int CLOCK_TICK = 4;
    public static final int CONFIRM = 16;
    public static final int CONTEXT_CLICK = 6;
    public static final int DRAG_START = 25;

    @VisibleForTesting
    static final int FIRST_CONSTANT_INT = 0;
    public static final int FLAG_IGNORE_VIEW_SETTING = 1;
    public static final int GESTURE_END = 13;
    public static final int GESTURE_START = 12;
    public static final int GESTURE_THRESHOLD_ACTIVATE = 23;
    public static final int GESTURE_THRESHOLD_DEACTIVATE = 24;
    public static final int KEYBOARD_PRESS = 3;
    public static final int KEYBOARD_RELEASE = 7;
    public static final int KEYBOARD_TAP = 3;

    @VisibleForTesting
    static final int LAST_CONSTANT_INT = 27;
    public static final int LONG_PRESS = 0;
    public static final int NO_HAPTICS = -1;
    public static final int REJECT = 17;
    public static final int SEGMENT_FREQUENT_TICK = 27;
    public static final int SEGMENT_TICK = 26;
    public static final int TEXT_HANDLE_MOVE = 9;
    public static final int TOGGLE_OFF = 22;
    public static final int TOGGLE_ON = 21;
    public static final int VIRTUAL_KEY = 1;
    public static final int VIRTUAL_KEY_RELEASE = 8;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private HapticFeedbackConstantsCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:24:0x002c  */
    /* JADX WARN: Code duplicated, block: B:25:0x002e  */
    public static int getFeedbackConstantOrFallback(int i9) {
        if (i9 == -1) {
            return -1;
        }
        int i10 = Build$VERSION.SDK_INT;
        int i11 = 6;
        if (i10 < 34) {
            switch (i9) {
                case 21:
                case 23:
                case 26:
                    i9 = 6;
                    break;
                case 22:
                case 24:
                case 27:
                    i9 = 4;
                    break;
                case 25:
                    i9 = 0;
                    break;
            }
        }
        if (i10 >= 30) {
            i11 = i9;
        } else if (i9 == 12) {
            i11 = 1;
        } else if (i9 != 13) {
            if (i9 == 16) {
                i11 = 1;
            } else if (i9 != 17) {
                i11 = i9;
            } else {
                i11 = 0;
            }
        }
        if (i10 >= 27 || !(i11 == 7 || i11 == 8 || i11 == 9)) {
            return i11;
        }
        return -1;
    }
}
