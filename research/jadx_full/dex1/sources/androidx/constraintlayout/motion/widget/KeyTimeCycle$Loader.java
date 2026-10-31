package androidx.constraintlayout.motion.widget;

import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyTimeCycle$Loader {
    private static final int ANDROID_ALPHA = 1;
    private static final int ANDROID_ELEVATION = 2;
    private static final int ANDROID_ROTATION = 4;
    private static final int ANDROID_ROTATION_X = 5;
    private static final int ANDROID_ROTATION_Y = 6;
    private static final int ANDROID_SCALE_X = 7;
    private static final int ANDROID_SCALE_Y = 14;
    private static final int ANDROID_TRANSLATION_X = 15;
    private static final int ANDROID_TRANSLATION_Y = 16;
    private static final int ANDROID_TRANSLATION_Z = 17;
    private static final int CURVE_FIT = 13;
    private static final int FRAME_POSITION = 12;
    private static final int PROGRESS = 18;
    private static final int TARGET_ID = 10;
    private static final int TRANSITION_EASING = 9;
    private static final int TRANSITION_PATH_ROTATE = 8;
    private static final int WAVE_OFFSET = 21;
    private static final int WAVE_PERIOD = 20;
    private static final int WAVE_SHAPE = 19;
    private static SparseIntArray sAttrMap;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sAttrMap = sparseIntArray;
        sparseIntArray.append(R$styleable.KeyTimeCycle_android_alpha, 1);
        sAttrMap.append(R$styleable.KeyTimeCycle_android_elevation, 2);
        sAttrMap.append(R$styleable.KeyTimeCycle_android_rotation, 4);
        sAttrMap.append(R$styleable.KeyTimeCycle_android_rotationX, 5);
        sAttrMap.append(R$styleable.KeyTimeCycle_android_rotationY, 6);
        sAttrMap.append(R$styleable.KeyTimeCycle_android_scaleX, 7);
        sAttrMap.append(R$styleable.KeyTimeCycle_transitionPathRotate, 8);
        sAttrMap.append(R$styleable.KeyTimeCycle_transitionEasing, 9);
        sAttrMap.append(R$styleable.KeyTimeCycle_motionTarget, 10);
        sAttrMap.append(R$styleable.KeyTimeCycle_framePosition, 12);
        sAttrMap.append(R$styleable.KeyTimeCycle_curveFit, 13);
        sAttrMap.append(R$styleable.KeyTimeCycle_android_scaleY, 14);
        sAttrMap.append(R$styleable.KeyTimeCycle_android_translationX, 15);
        sAttrMap.append(R$styleable.KeyTimeCycle_android_translationY, 16);
        sAttrMap.append(R$styleable.KeyTimeCycle_android_translationZ, 17);
        sAttrMap.append(R$styleable.KeyTimeCycle_motionProgress, 18);
        sAttrMap.append(R$styleable.KeyTimeCycle_wavePeriod, 20);
        sAttrMap.append(R$styleable.KeyTimeCycle_waveOffset, 21);
        sAttrMap.append(R$styleable.KeyTimeCycle_waveShape, 19);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private KeyTimeCycle$Loader() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void read(KeyTimeCycle keyTimeCycle, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArray.getIndex(i9);
            switch (sAttrMap.get(index)) {
                case 1:
                    KeyTimeCycle.access$002(keyTimeCycle, typedArray.getFloat(index, KeyTimeCycle.access$000(keyTimeCycle)));
                    break;
                case 2:
                    KeyTimeCycle.access$102(keyTimeCycle, typedArray.getDimension(index, KeyTimeCycle.access$100(keyTimeCycle)));
                    break;
                case 3:
                case 11:
                default:
                    Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + sAttrMap.get(index));
                    break;
                case 4:
                    KeyTimeCycle.access$202(keyTimeCycle, typedArray.getFloat(index, KeyTimeCycle.access$200(keyTimeCycle)));
                    break;
                case 5:
                    KeyTimeCycle.access$902(keyTimeCycle, typedArray.getFloat(index, KeyTimeCycle.access$900(keyTimeCycle)));
                    break;
                case 6:
                    KeyTimeCycle.access$1002(keyTimeCycle, typedArray.getFloat(index, KeyTimeCycle.access$1000(keyTimeCycle)));
                    break;
                case 7:
                    KeyTimeCycle.access$802(keyTimeCycle, typedArray.getFloat(index, KeyTimeCycle.access$800(keyTimeCycle)));
                    break;
                case 8:
                    KeyTimeCycle.access$1302(keyTimeCycle, typedArray.getFloat(index, KeyTimeCycle.access$1300(keyTimeCycle)));
                    break;
                case 9:
                    KeyTimeCycle.access$1102(keyTimeCycle, typedArray.getString(index));
                    break;
                case 10:
                    if (MotionLayout.IS_IN_EDIT_MODE) {
                        int resourceId = typedArray.getResourceId(index, keyTimeCycle.mTargetId);
                        keyTimeCycle.mTargetId = resourceId;
                        if (resourceId == -1) {
                            keyTimeCycle.mTargetString = typedArray.getString(index);
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        keyTimeCycle.mTargetString = typedArray.getString(index);
                    } else {
                        keyTimeCycle.mTargetId = typedArray.getResourceId(index, keyTimeCycle.mTargetId);
                    }
                    break;
                case 12:
                    keyTimeCycle.mFramePosition = typedArray.getInt(index, keyTimeCycle.mFramePosition);
                    break;
                case 13:
                    KeyTimeCycle.access$302(keyTimeCycle, typedArray.getInteger(index, KeyTimeCycle.access$300(keyTimeCycle)));
                    break;
                case 14:
                    KeyTimeCycle.access$1202(keyTimeCycle, typedArray.getFloat(index, KeyTimeCycle.access$1200(keyTimeCycle)));
                    break;
                case 15:
                    KeyTimeCycle.access$1402(keyTimeCycle, typedArray.getDimension(index, KeyTimeCycle.access$1400(keyTimeCycle)));
                    break;
                case 16:
                    KeyTimeCycle.access$1502(keyTimeCycle, typedArray.getDimension(index, KeyTimeCycle.access$1500(keyTimeCycle)));
                    break;
                case 17:
                    KeyTimeCycle.access$1602(keyTimeCycle, typedArray.getDimension(index, KeyTimeCycle.access$1600(keyTimeCycle)));
                    break;
                case 18:
                    KeyTimeCycle.access$1702(keyTimeCycle, typedArray.getFloat(index, KeyTimeCycle.access$1700(keyTimeCycle)));
                    break;
                case 19:
                    if (typedArray.peekValue(index).type == 3) {
                        KeyTimeCycle.access$402(keyTimeCycle, typedArray.getString(index));
                        KeyTimeCycle.access$502(keyTimeCycle, 7);
                    } else {
                        KeyTimeCycle.access$502(keyTimeCycle, typedArray.getInt(index, KeyTimeCycle.access$500(keyTimeCycle)));
                    }
                    break;
                case 20:
                    KeyTimeCycle.access$602(keyTimeCycle, typedArray.getFloat(index, KeyTimeCycle.access$600(keyTimeCycle)));
                    break;
                case 21:
                    if (typedArray.peekValue(index).type == 5) {
                        KeyTimeCycle.access$702(keyTimeCycle, typedArray.getDimension(index, KeyTimeCycle.access$700(keyTimeCycle)));
                    } else {
                        KeyTimeCycle.access$702(keyTimeCycle, typedArray.getFloat(index, KeyTimeCycle.access$700(keyTimeCycle)));
                    }
                    break;
            }
        }
    }
}
