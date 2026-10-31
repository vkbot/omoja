package androidx.constraintlayout.motion.widget;

import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.TypedValues$PositionType;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyPosition$Loader {
    private static final int CURVE_FIT = 4;
    private static final int DRAW_PATH = 5;
    private static final int FRAME_POSITION = 2;
    private static final int PATH_MOTION_ARC = 10;
    private static final int PERCENT_HEIGHT = 12;
    private static final int PERCENT_WIDTH = 11;
    private static final int PERCENT_X = 6;
    private static final int PERCENT_Y = 7;
    private static final int SIZE_PERCENT = 8;
    private static final int TARGET_ID = 1;
    private static final int TRANSITION_EASING = 3;
    private static final int TYPE = 9;
    private static SparseIntArray sAttrMap;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sAttrMap = sparseIntArray;
        sparseIntArray.append(R$styleable.KeyPosition_motionTarget, 1);
        sAttrMap.append(R$styleable.KeyPosition_framePosition, 2);
        sAttrMap.append(R$styleable.KeyPosition_transitionEasing, 3);
        sAttrMap.append(R$styleable.KeyPosition_curveFit, 4);
        sAttrMap.append(R$styleable.KeyPosition_drawPath, 5);
        sAttrMap.append(R$styleable.KeyPosition_percentX, 6);
        sAttrMap.append(R$styleable.KeyPosition_percentY, 7);
        sAttrMap.append(R$styleable.KeyPosition_keyPositionType, 9);
        sAttrMap.append(R$styleable.KeyPosition_sizePercent, 8);
        sAttrMap.append(R$styleable.KeyPosition_percentWidth, 11);
        sAttrMap.append(R$styleable.KeyPosition_percentHeight, 12);
        sAttrMap.append(R$styleable.KeyPosition_pathMotionArc, 10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private KeyPosition$Loader() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$000(KeyPosition keyPosition, TypedArray typedArray) {
        read(keyPosition, typedArray);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void read(KeyPosition keyPosition, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArray.getIndex(i9);
            switch (sAttrMap.get(index)) {
                case 1:
                    if (MotionLayout.IS_IN_EDIT_MODE) {
                        int resourceId = typedArray.getResourceId(index, keyPosition.mTargetId);
                        keyPosition.mTargetId = resourceId;
                        if (resourceId == -1) {
                            keyPosition.mTargetString = typedArray.getString(index);
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        keyPosition.mTargetString = typedArray.getString(index);
                    } else {
                        keyPosition.mTargetId = typedArray.getResourceId(index, keyPosition.mTargetId);
                    }
                    break;
                case 2:
                    keyPosition.mFramePosition = typedArray.getInt(index, keyPosition.mFramePosition);
                    break;
                case 3:
                    if (typedArray.peekValue(index).type == 3) {
                        keyPosition.mTransitionEasing = typedArray.getString(index);
                    } else {
                        keyPosition.mTransitionEasing = Easing.NAMED_EASING[typedArray.getInteger(index, 0)];
                    }
                    break;
                case 4:
                    keyPosition.mCurveFit = typedArray.getInteger(index, keyPosition.mCurveFit);
                    break;
                case 5:
                    keyPosition.mDrawPath = typedArray.getInt(index, keyPosition.mDrawPath);
                    break;
                case 6:
                    keyPosition.mPercentX = typedArray.getFloat(index, keyPosition.mPercentX);
                    break;
                case 7:
                    keyPosition.mPercentY = typedArray.getFloat(index, keyPosition.mPercentY);
                    break;
                case 8:
                    float f8 = typedArray.getFloat(index, keyPosition.mPercentHeight);
                    keyPosition.mPercentWidth = f8;
                    keyPosition.mPercentHeight = f8;
                    break;
                case 9:
                    keyPosition.mPositionType = typedArray.getInt(index, keyPosition.mPositionType);
                    break;
                case 10:
                    keyPosition.mPathMotionArc = typedArray.getInt(index, keyPosition.mPathMotionArc);
                    break;
                case 11:
                    keyPosition.mPercentWidth = typedArray.getFloat(index, keyPosition.mPercentWidth);
                    break;
                case 12:
                    keyPosition.mPercentHeight = typedArray.getFloat(index, keyPosition.mPercentHeight);
                    break;
                default:
                    Log.e(TypedValues$PositionType.NAME, "unused attribute 0x" + Integer.toHexString(index) + "   " + sAttrMap.get(index));
                    break;
            }
        }
        if (keyPosition.mFramePosition == -1) {
            Log.e(TypedValues$PositionType.NAME, "no frame position");
        }
    }
}
