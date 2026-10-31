package androidx.constraintlayout.motion.utils;

import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.widget.ConstraintAttribute;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ViewSpline extends SplineSet {
    private static final String TAG = "ViewSpline";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ViewSpline makeCustomSpline(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new ViewSpline$CustomSet(str, sparseArray);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ViewSpline makeSpline(String str) {
        str.getClass();
        switch (str) {
            case "rotationX":
                return new ViewSpline$RotationXset();
            case "rotationY":
                return new ViewSpline$RotationYset();
            case "translationX":
                return new ViewSpline$TranslationXset();
            case "translationY":
                return new ViewSpline$TranslationYset();
            case "translationZ":
                return new ViewSpline$TranslationZset();
            case "progress":
                return new ViewSpline$ProgressSet();
            case "scaleX":
                return new ViewSpline$ScaleXset();
            case "scaleY":
                return new ViewSpline$ScaleYset();
            case "waveVariesBy":
                return new ViewSpline$AlphaSet();
            case "transformPivotX":
                return new ViewSpline$PivotXset();
            case "transformPivotY":
                return new ViewSpline$PivotYset();
            case "rotation":
                return new ViewSpline$RotationSet();
            case "elevation":
                return new ViewSpline$ElevationSet();
            case "transitionPathRotate":
                return new ViewSpline$PathRotate();
            case "alpha":
                return new ViewSpline$AlphaSet();
            case "waveOffset":
                return new ViewSpline$AlphaSet();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float f8);
}
