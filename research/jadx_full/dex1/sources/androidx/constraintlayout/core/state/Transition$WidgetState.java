package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.Motion;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Transition$WidgetState {
    Motion mMotionControl;
    boolean mNeedSetup = true;
    KeyCache mKeyCache = new KeyCache();
    int mParentHeight = -1;
    int mParentWidth = -1;
    WidgetFrame mStart = new WidgetFrame();
    WidgetFrame mEnd = new WidgetFrame();
    WidgetFrame mInterpolated = new WidgetFrame();
    MotionWidget mMotionWidgetStart = new MotionWidget(this.mStart);
    MotionWidget mMotionWidgetEnd = new MotionWidget(this.mEnd);
    MotionWidget mMotionWidgetInterpolated = new MotionWidget(this.mInterpolated);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Transition$WidgetState() {
        Motion motion = new Motion(this.mMotionWidgetStart);
        this.mMotionControl = motion;
        motion.setStart(this.mMotionWidgetStart);
        this.mMotionControl.setEnd(this.mMotionWidgetEnd);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WidgetFrame getFrame(int i9) {
        if (i9 == 0) {
            return this.mStart;
        }
        return i9 == 1 ? this.mEnd : this.mInterpolated;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getPathRelativeId() {
        return this.mMotionControl.getAnimateRelativeTo();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void interpolate(int i9, int i10, float f8, Transition transition) {
        this.mParentHeight = i10;
        this.mParentWidth = i9;
        if (this.mNeedSetup) {
            this.mMotionControl.setup(i9, i10, 1.0f, System.nanoTime());
            this.mNeedSetup = false;
        }
        WidgetFrame.interpolate(i9, i10, this.mInterpolated, this.mStart, this.mEnd, transition, f8);
        this.mInterpolated.interpolatedPos = f8;
        this.mMotionControl.interpolate(this.mMotionWidgetInterpolated, f8, System.nanoTime(), this.mKeyCache);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setKeyAttribute(TypedBundle typedBundle, CustomVariable[] customVariableArr) {
        MotionKeyAttributes motionKeyAttributes = new MotionKeyAttributes();
        typedBundle.applyDelta(motionKeyAttributes);
        if (customVariableArr != null) {
            for (int i9 = 0; i9 < customVariableArr.length; i9++) {
                motionKeyAttributes.mCustom.put(customVariableArr[i9].getName(), customVariableArr[i9]);
            }
        }
        this.mMotionControl.addKey(motionKeyAttributes);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setKeyCycle(TypedBundle typedBundle) {
        MotionKeyCycle motionKeyCycle = new MotionKeyCycle();
        typedBundle.applyDelta(motionKeyCycle);
        this.mMotionControl.addKey(motionKeyCycle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setKeyPosition(TypedBundle typedBundle) {
        MotionKeyPosition motionKeyPosition = new MotionKeyPosition();
        typedBundle.applyDelta(motionKeyPosition);
        this.mMotionControl.addKey(motionKeyPosition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPathRelative(Transition$WidgetState transition$WidgetState) {
        this.mMotionControl.setupRelative(transition$WidgetState.mMotionControl);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void update(ConstraintWidget constraintWidget, int i9) {
        if (i9 == 0) {
            this.mStart.update(constraintWidget);
            MotionWidget motionWidget = this.mMotionWidgetStart;
            motionWidget.updateMotion(motionWidget);
            this.mMotionControl.setStart(this.mMotionWidgetStart);
            this.mNeedSetup = true;
        } else if (i9 == 1) {
            this.mEnd.update(constraintWidget);
            this.mMotionControl.setEnd(this.mMotionWidgetEnd);
            this.mNeedSetup = true;
        }
        this.mParentWidth = -1;
    }

    public void setKeyAttribute(TypedBundle typedBundle) {
        MotionKeyAttributes motionKeyAttributes = new MotionKeyAttributes();
        typedBundle.applyDelta(motionKeyAttributes);
        this.mMotionControl.addKey(motionKeyAttributes);
    }
}
