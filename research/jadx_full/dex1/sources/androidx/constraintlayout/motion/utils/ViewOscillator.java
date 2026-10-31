package androidx.constraintlayout.motion.utils;

import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ViewOscillator extends KeyCycleOscillator {
    private static final String TAG = "ViewOscillator";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ViewOscillator makeSpline(String str) {
        if (str.startsWith("CUSTOM")) {
            return new ViewOscillator$CustomSet();
        }
        switch (str) {
            case "rotationX":
                return new ViewOscillator$RotationXset();
            case "rotationY":
                return new ViewOscillator$RotationYset();
            case "translationX":
                return new ViewOscillator$TranslationXset();
            case "translationY":
                return new ViewOscillator$TranslationYset();
            case "translationZ":
                return new ViewOscillator$TranslationZset();
            case "progress":
                return new ViewOscillator$ProgressSet();
            case "scaleX":
                return new ViewOscillator$ScaleXset();
            case "scaleY":
                return new ViewOscillator$ScaleYset();
            case "waveVariesBy":
                return new ViewOscillator$AlphaSet();
            case "rotation":
                return new ViewOscillator$RotationSet();
            case "elevation":
                return new ViewOscillator$ElevationSet();
            case "transitionPathRotate":
                return new ViewOscillator$PathRotateSet();
            case "alpha":
                return new ViewOscillator$AlphaSet();
            case "waveOffset":
                return new ViewOscillator$AlphaSet();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float f8);
}
