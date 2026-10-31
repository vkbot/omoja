package androidx.core.view;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.Display$Mode;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class DisplayCompat$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private DisplayCompat$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static DisplayCompat$ModeCompat getMode(@NonNull Context context, @NonNull Display display) {
        Display$Mode mode = display.getMode();
        Point currentDisplaySizeFromWorkarounds = DisplayCompat.getCurrentDisplaySizeFromWorkarounds(context, display);
        return (currentDisplaySizeFromWorkarounds == null || physicalSizeEquals(mode, currentDisplaySizeFromWorkarounds)) ? new DisplayCompat$ModeCompat(mode, true) : new DisplayCompat$ModeCompat(mode, currentDisplaySizeFromWorkarounds);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static DisplayCompat$ModeCompat[] getSupportedModes(@NonNull Context context, @NonNull Display display) {
        Display$Mode[] supportedModes = display.getSupportedModes();
        DisplayCompat$ModeCompat[] displayCompat$ModeCompatArr = new DisplayCompat$ModeCompat[supportedModes.length];
        Display$Mode mode = display.getMode();
        Point currentDisplaySizeFromWorkarounds = DisplayCompat.getCurrentDisplaySizeFromWorkarounds(context, display);
        if (currentDisplaySizeFromWorkarounds == null || physicalSizeEquals(mode, currentDisplaySizeFromWorkarounds)) {
            for (int i9 = 0; i9 < supportedModes.length; i9++) {
                displayCompat$ModeCompatArr[i9] = new DisplayCompat$ModeCompat(supportedModes[i9], physicalSizeEquals(supportedModes[i9], mode));
            }
        } else {
            for (int i10 = 0; i10 < supportedModes.length; i10++) {
                displayCompat$ModeCompatArr[i10] = physicalSizeEquals(supportedModes[i10], mode) ? new DisplayCompat$ModeCompat(supportedModes[i10], currentDisplaySizeFromWorkarounds) : new DisplayCompat$ModeCompat(supportedModes[i10], false);
            }
        }
        return displayCompat$ModeCompatArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isCurrentModeTheLargestMode(@NonNull Display display) {
        Display$Mode mode = display.getMode();
        for (Display$Mode display$Mode : display.getSupportedModes()) {
            if (mode.getPhysicalHeight() < display$Mode.getPhysicalHeight() || mode.getPhysicalWidth() < display$Mode.getPhysicalWidth()) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean physicalSizeEquals(Display$Mode display$Mode, Point point) {
        if (display$Mode.getPhysicalWidth() == point.x && display$Mode.getPhysicalHeight() == point.y) {
            return true;
        }
        return display$Mode.getPhysicalWidth() == point.y && display$Mode.getPhysicalHeight() == point.x;
    }

    public static boolean physicalSizeEquals(Display$Mode display$Mode, Display$Mode display$Mode2) {
        return display$Mode.getPhysicalWidth() == display$Mode2.getPhysicalWidth() && display$Mode.getPhysicalHeight() == display$Mode2.getPhysicalHeight();
    }
}
