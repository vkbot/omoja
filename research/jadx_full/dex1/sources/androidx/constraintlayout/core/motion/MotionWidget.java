package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.TypedValues$AttributesType;
import androidx.constraintlayout.core.motion.utils.TypedValues$Custom;
import androidx.constraintlayout.core.motion.utils.TypedValues$MotionType;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionWidget implements TypedValues {
    public static final int FILL_PARENT = -1;
    public static final int GONE_UNSET = Integer.MIN_VALUE;
    private static final int INTERNAL_MATCH_CONSTRAINT = -3;
    private static final int INTERNAL_MATCH_PARENT = -1;
    private static final int INTERNAL_WRAP_CONTENT = -2;
    private static final int INTERNAL_WRAP_CONTENT_CONSTRAINED = -4;
    public static final int INVISIBLE = 0;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int MATCH_PARENT = -1;
    public static final int PARENT_ID = 0;
    public static final int ROTATE_LEFT_OF_PORTRATE = 4;
    public static final int ROTATE_NONE = 0;
    public static final int ROTATE_PORTRATE_OF_LEFT = 2;
    public static final int ROTATE_PORTRATE_OF_RIGHT = 1;
    public static final int ROTATE_RIGHT_OF_PORTRATE = 3;
    public static final int UNSET = -1;
    public static final int VISIBILITY_MODE_IGNORE = 1;
    public static final int VISIBILITY_MODE_NORMAL = 0;
    public static final int VISIBLE = 4;
    public static final int WRAP_CONTENT = -2;
    MotionWidget$Motion mMotion;
    private float mProgress;
    MotionWidget$PropertySet mPropertySet;
    float mTransitionPathRotate;
    WidgetFrame mWidgetFrame;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionWidget(WidgetFrame widgetFrame) {
        this.mWidgetFrame = new WidgetFrame();
        this.mMotion = new MotionWidget$Motion();
        this.mPropertySet = new MotionWidget$PropertySet();
        this.mWidgetFrame = widgetFrame;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionWidget findViewById(int i9) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getAlpha() {
        return this.mWidgetFrame.alpha;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBottom() {
        return this.mWidgetFrame.bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CustomVariable getCustomAttribute(String str) {
        return this.mWidgetFrame.getCustomAttribute(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Set<String> getCustomAttributeNames() {
        return this.mWidgetFrame.getCustomAttributeNames();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHeight() {
        WidgetFrame widgetFrame = this.mWidgetFrame;
        return widgetFrame.bottom - widgetFrame.top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        int id = TypedValues$AttributesType.getId(str);
        return id != -1 ? id : TypedValues$MotionType.getId(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLeft() {
        return this.mWidgetFrame.left;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName() {
        return this.mWidgetFrame.getId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionWidget getParent() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPivotX() {
        return this.mWidgetFrame.pivotX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPivotY() {
        return this.mWidgetFrame.pivotY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRight() {
        return this.mWidgetFrame.right;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getRotationX() {
        return this.mWidgetFrame.rotationX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getRotationY() {
        return this.mWidgetFrame.rotationY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getRotationZ() {
        return this.mWidgetFrame.rotationZ;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getScaleX() {
        return this.mWidgetFrame.scaleX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getScaleY() {
        return this.mWidgetFrame.scaleY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTop() {
        return this.mWidgetFrame.top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTranslationX() {
        return this.mWidgetFrame.translationX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTranslationY() {
        return this.mWidgetFrame.translationY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTranslationZ() {
        return this.mWidgetFrame.translationZ;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getValueAttributes(int i9) {
        switch (i9) {
            case 303:
                return this.mWidgetFrame.alpha;
            case 304:
                return this.mWidgetFrame.translationX;
            case 305:
                return this.mWidgetFrame.translationY;
            case 306:
                return this.mWidgetFrame.translationZ;
            case 307:
            default:
                return Float.NaN;
            case 308:
                return this.mWidgetFrame.rotationX;
            case 309:
                return this.mWidgetFrame.rotationY;
            case 310:
                return this.mWidgetFrame.rotationZ;
            case 311:
                return this.mWidgetFrame.scaleX;
            case 312:
                return this.mWidgetFrame.scaleY;
            case 313:
                return this.mWidgetFrame.pivotX;
            case 314:
                return this.mWidgetFrame.pivotY;
            case 315:
                return this.mProgress;
            case TypedValues$AttributesType.TYPE_PATH_ROTATE /* 316 */:
                return this.mTransitionPathRotate;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVisibility() {
        return this.mPropertySet.visibility;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WidgetFrame getWidgetFrame() {
        return this.mWidgetFrame;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWidth() {
        WidgetFrame widgetFrame = this.mWidgetFrame;
        return widgetFrame.right - widgetFrame.left;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getX() {
        return this.mWidgetFrame.left;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getY() {
        return this.mWidgetFrame.top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void layout(int i9, int i10, int i11, int i12) {
        setBounds(i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBounds(int i9, int i10, int i11, int i12) {
        if (this.mWidgetFrame == null) {
            this.mWidgetFrame = new WidgetFrame((ConstraintWidget) null);
        }
        WidgetFrame widgetFrame = this.mWidgetFrame;
        widgetFrame.top = i10;
        widgetFrame.left = i9;
        widgetFrame.right = i11;
        widgetFrame.bottom = i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCustomAttribute(String str, int i9, float f8) {
        this.mWidgetFrame.setCustomAttribute(str, i9, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInterpolatedValue(CustomAttribute customAttribute, float[] fArr) {
        this.mWidgetFrame.setCustomAttribute(customAttribute.mName, TypedValues$Custom.TYPE_FLOAT, fArr[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPivotX(float f8) {
        this.mWidgetFrame.pivotX = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPivotY(float f8) {
        this.mWidgetFrame.pivotY = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRotationX(float f8) {
        this.mWidgetFrame.rotationX = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRotationY(float f8) {
        this.mWidgetFrame.rotationY = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRotationZ(float f8) {
        this.mWidgetFrame.rotationZ = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScaleX(float f8) {
        this.mWidgetFrame.scaleX = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScaleY(float f8) {
        this.mWidgetFrame.scaleY = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTranslationX(float f8) {
        this.mWidgetFrame.translationX = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTranslationY(float f8) {
        this.mWidgetFrame.translationY = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTranslationZ(float f8) {
        this.mWidgetFrame.translationZ = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, String str) {
        if (i9 != 605) {
            return setValueMotion(i9, str);
        }
        this.mMotion.mAnimateRelativeTo = str;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setValueAttributes(int i9, float f8) {
        switch (i9) {
            case 303:
                this.mWidgetFrame.alpha = f8;
                return true;
            case 304:
                this.mWidgetFrame.translationX = f8;
                return true;
            case 305:
                this.mWidgetFrame.translationY = f8;
                return true;
            case 306:
                this.mWidgetFrame.translationZ = f8;
                return true;
            case 307:
            default:
                return false;
            case 308:
                this.mWidgetFrame.rotationX = f8;
                return true;
            case 309:
                this.mWidgetFrame.rotationY = f8;
                return true;
            case 310:
                this.mWidgetFrame.rotationZ = f8;
                return true;
            case 311:
                this.mWidgetFrame.scaleX = f8;
                return true;
            case 312:
                this.mWidgetFrame.scaleY = f8;
                return true;
            case 313:
                this.mWidgetFrame.pivotX = f8;
                return true;
            case 314:
                this.mWidgetFrame.pivotY = f8;
                return true;
            case 315:
                this.mProgress = f8;
                return true;
            case TypedValues$AttributesType.TYPE_PATH_ROTATE /* 316 */:
                this.mTransitionPathRotate = f8;
                return true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setValueMotion(int i9, int i10) {
        switch (i9) {
            case TypedValues$MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO /* 606 */:
                this.mMotion.mAnimateCircleAngleTo = i10;
                return true;
            case TypedValues$MotionType.TYPE_PATHMOTION_ARC /* 607 */:
                this.mMotion.mPathMotionArc = i10;
                return true;
            case TypedValues$MotionType.TYPE_DRAW_PATH /* 608 */:
                this.mMotion.mDrawPath = i10;
                return true;
            case TypedValues$MotionType.TYPE_POLAR_RELATIVETO /* 609 */:
                this.mMotion.mPolarRelativeTo = i10;
                return true;
            case TypedValues$MotionType.TYPE_QUANTIZE_MOTIONSTEPS /* 610 */:
                this.mMotion.mQuantizeMotionSteps = i10;
                return true;
            case TypedValues$MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE /* 611 */:
                this.mMotion.mQuantizeInterpolatorType = i10;
                return true;
            case TypedValues$MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID /* 612 */:
                this.mMotion.mQuantizeInterpolatorID = i10;
                return true;
            default:
                return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVisibility(int i9) {
        this.mPropertySet.visibility = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.mWidgetFrame.left + ", " + this.mWidgetFrame.top + ", " + this.mWidgetFrame.right + ", " + this.mWidgetFrame.bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateMotion(TypedValues typedValues) {
        if (this.mWidgetFrame.getMotionProperties() != null) {
            this.mWidgetFrame.getMotionProperties().applyDelta(typedValues);
        }
    }

    public void setCustomAttribute(String str, int i9, int i10) {
        this.mWidgetFrame.setCustomAttribute(str, i9, i10);
    }

    public void setCustomAttribute(String str, int i9, boolean z8) {
        this.mWidgetFrame.setCustomAttribute(str, i9, z8);
    }

    public void setCustomAttribute(String str, int i9, String str2) {
        this.mWidgetFrame.setCustomAttribute(str, i9, str2);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, int i10) {
        if (setValueAttributes(i9, i10)) {
            return true;
        }
        return setValueMotion(i9, i10);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, float f8) {
        if (setValueAttributes(i9, f8)) {
            return true;
        }
        return setValueMotion(i9, f8);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, boolean z8) {
        return false;
    }

    public MotionWidget() {
        this.mWidgetFrame = new WidgetFrame();
        this.mMotion = new MotionWidget$Motion();
        this.mPropertySet = new MotionWidget$PropertySet();
    }

    public boolean setValueMotion(int i9, String str) {
        if (i9 == 603) {
            this.mMotion.mTransitionEasing = str;
            return true;
        }
        if (i9 != 604) {
            return false;
        }
        this.mMotion.mQuantizeInterpolatorString = str;
        return true;
    }

    public boolean setValueMotion(int i9, float f8) {
        switch (i9) {
            case 600:
                this.mMotion.mMotionStagger = f8;
                return true;
            case 601:
                this.mMotion.mPathRotate = f8;
                return true;
            case TypedValues$MotionType.TYPE_QUANTIZE_MOTION_PHASE /* 602 */:
                this.mMotion.mQuantizeMotionPhase = f8;
                return true;
            default:
                return false;
        }
    }
}
