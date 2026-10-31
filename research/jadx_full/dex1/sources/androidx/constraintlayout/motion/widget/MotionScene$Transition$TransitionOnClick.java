package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.view.View$OnClickListener;
import androidx.constraintlayout.core.motion.utils.TypedValues$MotionScene;
import androidx.constraintlayout.widget.R$styleable;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionScene$Transition$TransitionOnClick implements View$OnClickListener {
    public static final int ANIM_TOGGLE = 17;
    public static final int ANIM_TO_END = 1;
    public static final int ANIM_TO_START = 16;
    public static final int JUMP_TO_END = 256;
    public static final int JUMP_TO_START = 4096;
    int mMode;
    int mTargetId;
    private final MotionScene$Transition mTransition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionScene$Transition$TransitionOnClick(Context context, MotionScene$Transition motionScene$Transition, XmlPullParser xmlPullParser) {
        this.mTargetId = -1;
        this.mMode = 17;
        this.mTransition = motionScene$Transition;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.OnClick);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            if (index == R$styleable.OnClick_targetId) {
                this.mTargetId = typedArrayObtainStyledAttributes.getResourceId(index, this.mTargetId);
            } else if (index == R$styleable.OnClick_clickAction) {
                this.mMode = typedArrayObtainStyledAttributes.getInt(index, this.mMode);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOnClickListeners(MotionLayout motionLayout, int i9, MotionScene$Transition motionScene$Transition) {
        boolean z8;
        View viewFindViewById;
        int i10 = this.mTargetId;
        View view = motionLayout;
        if (i10 != -1) {
            viewFindViewById = motionLayout.findViewById(i10);
        }
        if (view == null) {
            view = viewFindViewById;
            Log.e(TypedValues$MotionScene.NAME, "OnClick could not find id " + this.mTargetId);
            return;
        }
        int iAccess$100 = MotionScene$Transition.access$100(motionScene$Transition);
        int iAccess$000 = MotionScene$Transition.access$000(motionScene$Transition);
        if (iAccess$100 == -1) {
            view = viewFindViewById;
            view.setOnClickListener(this);
            return;
        }
        int i11 = this.mMode;
        boolean z9 = false;
        if ((i11 & 1) == 0 || i9 != iAccess$100) {
            view = viewFindViewById;
            z8 = false;
        } else {
            z8 = true;
        }
        boolean z10 = ((i11 & 1) != 0 && i9 == iAccess$100) | z8 | ((i11 & 256) != 0 && i9 == iAccess$100) | ((i11 & 16) != 0 && i9 == iAccess$000);
        if ((i11 & 4096) != 0 && i9 == iAccess$000) {
            z9 = true;
        }
        if (z10 || z9) {
            view.setOnClickListener(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isTransitionViable(MotionScene$Transition motionScene$Transition, MotionLayout motionLayout) {
        MotionScene$Transition motionScene$Transition2 = this.mTransition;
        if (motionScene$Transition2 == motionScene$Transition) {
            return true;
        }
        int iAccess$000 = MotionScene$Transition.access$000(motionScene$Transition2);
        int iAccess$100 = MotionScene$Transition.access$100(this.mTransition);
        if (iAccess$100 == -1) {
            return motionLayout.mCurrentState != iAccess$000;
        }
        int i9 = motionLayout.mCurrentState;
        return i9 == iAccess$100 || i9 == iAccess$000;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        MotionLayout motionLayoutAccess$700 = MotionScene.access$700(MotionScene$Transition.access$800(this.mTransition));
        if (motionLayoutAccess$700.isInteractionEnabled()) {
            if (MotionScene$Transition.access$100(this.mTransition) == -1) {
                int currentState = motionLayoutAccess$700.getCurrentState();
                MotionScene$Transition motionScene$Transition = this.mTransition;
                if (currentState == -1) {
                    motionLayoutAccess$700.transitionToState(MotionScene$Transition.access$000(motionScene$Transition));
                    return;
                }
                MotionScene$Transition motionScene$Transition2 = new MotionScene$Transition(MotionScene$Transition.access$800(motionScene$Transition), this.mTransition);
                MotionScene$Transition.access$102(motionScene$Transition2, currentState);
                MotionScene$Transition.access$002(motionScene$Transition2, MotionScene$Transition.access$000(this.mTransition));
                motionLayoutAccess$700.setTransition(motionScene$Transition2);
                motionLayoutAccess$700.transitionToEnd();
                return;
            }
            MotionScene$Transition motionScene$Transition3 = MotionScene$Transition.access$800(this.mTransition).mCurrentTransition;
            int i9 = this.mMode;
            boolean z8 = false;
            boolean z9 = ((i9 & 1) == 0 && (i9 & 256) == 0) ? false : true;
            boolean z10 = ((i9 & 16) == 0 && (i9 & 4096) == 0) ? false : true;
            if (z9 && z10) {
                MotionScene$Transition motionScene$Transition4 = MotionScene$Transition.access$800(this.mTransition).mCurrentTransition;
                MotionScene$Transition motionScene$Transition5 = this.mTransition;
                if (motionScene$Transition4 != motionScene$Transition5) {
                    motionLayoutAccess$700.setTransition(motionScene$Transition5);
                }
                if (motionLayoutAccess$700.getCurrentState() != motionLayoutAccess$700.getEndState() && motionLayoutAccess$700.getProgress() <= 0.5f) {
                    z10 = false;
                    z8 = z9;
                }
            } else {
                z8 = z9;
            }
            if (isTransitionViable(motionScene$Transition3, motionLayoutAccess$700)) {
                if (z8 && (this.mMode & 1) != 0) {
                    motionLayoutAccess$700.setTransition(this.mTransition);
                    motionLayoutAccess$700.transitionToEnd();
                    return;
                }
                if (z10 && (this.mMode & 16) != 0) {
                    motionLayoutAccess$700.setTransition(this.mTransition);
                    motionLayoutAccess$700.transitionToStart();
                } else if (z8 && (this.mMode & 256) != 0) {
                    motionLayoutAccess$700.setTransition(this.mTransition);
                    motionLayoutAccess$700.setProgress(1.0f);
                } else {
                    if (!z10 || (this.mMode & 4096) == 0) {
                        return;
                    }
                    motionLayoutAccess$700.setTransition(this.mTransition);
                    motionLayoutAccess$700.setProgress(0.0f);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeOnClickListeners(MotionLayout motionLayout) {
        int i9 = this.mTargetId;
        if (i9 == -1) {
            return;
        }
        View viewFindViewById = motionLayout.findViewById(i9);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(null);
            return;
        }
        Log.e(TypedValues$MotionScene.NAME, " (*)  could not find id " + this.mTargetId);
    }

    public MotionScene$Transition$TransitionOnClick(MotionScene$Transition motionScene$Transition, int i9, int i10) {
        this.mTransition = motionScene$Transition;
        this.mTargetId = i9;
        this.mMode = i10;
    }
}
