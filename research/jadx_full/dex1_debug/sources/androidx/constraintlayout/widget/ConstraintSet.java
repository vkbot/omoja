package androidx.constraintlayout.widget;

import ai.onnxruntime.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.TypedValues$MotionType;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.b;
import j1.i;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSet {
    private static final int ALPHA = 43;
    private static final int ANIMATE_CIRCLE_ANGLE_TO = 82;
    private static final int ANIMATE_RELATIVE_TO = 64;
    private static final int BARRIER_ALLOWS_GONE_WIDGETS = 75;
    private static final int BARRIER_DIRECTION = 72;
    private static final int BARRIER_MARGIN = 73;
    private static final int BARRIER_TYPE = 1;
    public static final int BASELINE = 5;
    private static final int BASELINE_MARGIN = 93;
    private static final int BASELINE_TO_BASELINE = 1;
    private static final int BASELINE_TO_BOTTOM = 92;
    private static final int BASELINE_TO_TOP = 91;
    public static final int BOTTOM = 4;
    private static final int BOTTOM_MARGIN = 2;
    private static final int BOTTOM_TO_BOTTOM = 3;
    private static final int BOTTOM_TO_TOP = 4;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    private static final int CHAIN_USE_RTL = 71;
    private static final int CIRCLE = 61;
    private static final int CIRCLE_ANGLE = 63;
    private static final int CIRCLE_RADIUS = 62;
    public static final int CIRCLE_REFERENCE = 8;
    private static final int CONSTRAINED_HEIGHT = 81;
    private static final int CONSTRAINED_WIDTH = 80;
    private static final int CONSTRAINT_REFERENCED_IDS = 74;
    private static final int CONSTRAINT_TAG = 77;
    private static final boolean DEBUG = false;
    private static final int DIMENSION_RATIO = 5;
    private static final int DRAW_PATH = 66;
    private static final int EDITOR_ABSOLUTE_X = 6;
    private static final int EDITOR_ABSOLUTE_Y = 7;
    private static final int ELEVATION = 44;
    public static final int END = 7;
    private static final int END_MARGIN = 8;
    private static final int END_TO_END = 9;
    private static final int END_TO_START = 10;
    private static final String ERROR_MESSAGE = "XML parser error must be within a Constraint ";
    public static final int GONE = 8;
    private static final int GONE_BASELINE_MARGIN = 94;
    private static final int GONE_BOTTOM_MARGIN = 11;
    private static final int GONE_END_MARGIN = 12;
    private static final int GONE_LEFT_MARGIN = 13;
    private static final int GONE_RIGHT_MARGIN = 14;
    private static final int GONE_START_MARGIN = 15;
    private static final int GONE_TOP_MARGIN = 16;
    private static final int GUIDELINE_USE_RTL = 99;
    private static final int GUIDE_BEGIN = 17;
    private static final int GUIDE_END = 18;
    private static final int GUIDE_PERCENT = 19;
    private static final int HEIGHT_DEFAULT = 55;
    private static final int HEIGHT_MAX = 57;
    private static final int HEIGHT_MIN = 59;
    private static final int HEIGHT_PERCENT = 70;
    public static final int HORIZONTAL = 0;
    private static final int HORIZONTAL_BIAS = 20;
    public static final int HORIZONTAL_GUIDELINE = 0;
    private static final int HORIZONTAL_STYLE = 41;
    private static final int HORIZONTAL_WEIGHT = 39;
    private static final int INTERNAL_MATCH_CONSTRAINT = -3;
    private static final int INTERNAL_MATCH_PARENT = -1;
    private static final int INTERNAL_WRAP_CONTENT = -2;
    private static final int INTERNAL_WRAP_CONTENT_CONSTRAINED = -4;
    public static final int INVISIBLE = 4;
    private static final String KEY_PERCENT_PARENT = "parent";
    private static final String KEY_RATIO = "ratio";
    private static final String KEY_WEIGHT = "weight";
    private static final int LAYOUT_CONSTRAINT_HEIGHT = 96;
    private static final int LAYOUT_CONSTRAINT_WIDTH = 95;
    private static final int LAYOUT_HEIGHT = 21;
    private static final int LAYOUT_VISIBILITY = 22;
    private static final int LAYOUT_WIDTH = 23;
    private static final int LAYOUT_WRAP_BEHAVIOR = 97;
    public static final int LEFT = 1;
    private static final int LEFT_MARGIN = 24;
    private static final int LEFT_TO_LEFT = 25;
    private static final int LEFT_TO_RIGHT = 26;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    private static final int MOTION_STAGGER = 79;
    private static final int MOTION_TARGET = 98;
    private static final int ORIENTATION = 27;
    public static final int PARENT_ID = 0;
    private static final int PATH_MOTION_ARC = 76;
    private static final int PROGRESS = 68;
    private static final int QUANTIZE_MOTION_INTERPOLATOR = 86;
    private static final int QUANTIZE_MOTION_INTERPOLATOR_ID = 89;
    private static final int QUANTIZE_MOTION_INTERPOLATOR_STR = 90;
    private static final int QUANTIZE_MOTION_INTERPOLATOR_TYPE = 88;
    private static final int QUANTIZE_MOTION_PHASE = 85;
    private static final int QUANTIZE_MOTION_STEPS = 84;
    public static final int RIGHT = 2;
    private static final int RIGHT_MARGIN = 28;
    private static final int RIGHT_TO_LEFT = 29;
    private static final int RIGHT_TO_RIGHT = 30;
    public static final int ROTATE_LEFT_OF_PORTRATE = 4;
    public static final int ROTATE_NONE = 0;
    public static final int ROTATE_PORTRATE_OF_LEFT = 2;
    public static final int ROTATE_PORTRATE_OF_RIGHT = 1;
    public static final int ROTATE_RIGHT_OF_PORTRATE = 3;
    private static final int ROTATION = 60;
    private static final int ROTATION_X = 45;
    private static final int ROTATION_Y = 46;
    private static final int SCALE_X = 47;
    private static final int SCALE_Y = 48;
    public static final int START = 6;
    private static final int START_MARGIN = 31;
    private static final int START_TO_END = 32;
    private static final int START_TO_START = 33;
    private static final String TAG = "ConstraintSet";
    public static final int TOP = 3;
    private static final int TOP_MARGIN = 34;
    private static final int TOP_TO_BOTTOM = 35;
    private static final int TOP_TO_TOP = 36;
    private static final int TRANSFORM_PIVOT_TARGET = 83;
    private static final int TRANSFORM_PIVOT_X = 49;
    private static final int TRANSFORM_PIVOT_Y = 50;
    private static final int TRANSITION_EASING = 65;
    private static final int TRANSITION_PATH_ROTATE = 67;
    private static final int TRANSLATION_X = 51;
    private static final int TRANSLATION_Y = 52;
    private static final int TRANSLATION_Z = 53;
    public static final int UNSET = -1;
    private static final int UNUSED = 87;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_BIAS = 37;
    public static final int VERTICAL_GUIDELINE = 1;
    private static final int VERTICAL_STYLE = 42;
    private static final int VERTICAL_WEIGHT = 40;
    private static final int VIEW_ID = 38;
    private static final int VISIBILITY_MODE = 78;
    public static final int VISIBILITY_MODE_IGNORE = 1;
    public static final int VISIBILITY_MODE_NORMAL = 0;
    public static final int VISIBLE = 0;
    private static final int WIDTH_DEFAULT = 54;
    private static final int WIDTH_MAX = 56;
    private static final int WIDTH_MIN = 58;
    private static final int WIDTH_PERCENT = 69;
    public static final int WRAP_CONTENT = -2;
    public String mIdString;
    private boolean mValidate;
    private static final int[] VISIBILITY_FLAGS = {0, 4, 8};
    private static SparseIntArray sMapToConstant = new SparseIntArray();
    private static SparseIntArray sOverrideMapToConstant = new SparseIntArray();
    public String derivedState = "";
    private String[] mMatchLabels = new String[0];
    public int mRotate = 0;
    private HashMap<String, ConstraintAttribute> mSavedAttributes = new HashMap<>();
    private boolean mForceId = true;
    private HashMap<Integer, ConstraintSet$Constraint> mConstraints = new HashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        sMapToConstant.append(R$styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintRight_toRightOf, 30);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintTop_toTopOf, 36);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintBaseline_toTopOf, BASELINE_TO_TOP);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintBaseline_toBottomOf, BASELINE_TO_BOTTOM);
        sMapToConstant.append(R$styleable.Constraint_layout_editor_absoluteX, 6);
        sMapToConstant.append(R$styleable.Constraint_layout_editor_absoluteY, 7);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintGuide_begin, 17);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintGuide_end, 18);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintGuide_percent, 19);
        sMapToConstant.append(R$styleable.Constraint_guidelineUseRtl, GUIDELINE_USE_RTL);
        sMapToConstant.append(R$styleable.Constraint_android_orientation, 27);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintStart_toEndOf, 32);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintStart_toStartOf, 33);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        sMapToConstant.append(R$styleable.Constraint_layout_goneMarginLeft, 13);
        sMapToConstant.append(R$styleable.Constraint_layout_goneMarginTop, 16);
        sMapToConstant.append(R$styleable.Constraint_layout_goneMarginRight, 14);
        sMapToConstant.append(R$styleable.Constraint_layout_goneMarginBottom, 11);
        sMapToConstant.append(R$styleable.Constraint_layout_goneMarginStart, 15);
        sMapToConstant.append(R$styleable.Constraint_layout_goneMarginEnd, 12);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintVertical_weight, 40);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintHorizontal_weight, 39);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintHorizontal_bias, 20);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintVertical_bias, 37);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintDimensionRatio, 5);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintLeft_creator, UNUSED);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintTop_creator, UNUSED);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintRight_creator, UNUSED);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintBottom_creator, UNUSED);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintBaseline_creator, UNUSED);
        sMapToConstant.append(R$styleable.Constraint_android_layout_marginLeft, 24);
        sMapToConstant.append(R$styleable.Constraint_android_layout_marginRight, 28);
        sMapToConstant.append(R$styleable.Constraint_android_layout_marginStart, 31);
        sMapToConstant.append(R$styleable.Constraint_android_layout_marginEnd, 8);
        sMapToConstant.append(R$styleable.Constraint_android_layout_marginTop, 34);
        sMapToConstant.append(R$styleable.Constraint_android_layout_marginBottom, 2);
        sMapToConstant.append(R$styleable.Constraint_android_layout_width, 23);
        sMapToConstant.append(R$styleable.Constraint_android_layout_height, 21);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintWidth, LAYOUT_CONSTRAINT_WIDTH);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintHeight, LAYOUT_CONSTRAINT_HEIGHT);
        sMapToConstant.append(R$styleable.Constraint_android_visibility, 22);
        sMapToConstant.append(R$styleable.Constraint_android_alpha, 43);
        sMapToConstant.append(R$styleable.Constraint_android_elevation, 44);
        sMapToConstant.append(R$styleable.Constraint_android_rotationX, 45);
        sMapToConstant.append(R$styleable.Constraint_android_rotationY, 46);
        sMapToConstant.append(R$styleable.Constraint_android_rotation, ROTATION);
        sMapToConstant.append(R$styleable.Constraint_android_scaleX, 47);
        sMapToConstant.append(R$styleable.Constraint_android_scaleY, 48);
        sMapToConstant.append(R$styleable.Constraint_android_transformPivotX, 49);
        sMapToConstant.append(R$styleable.Constraint_android_transformPivotY, 50);
        sMapToConstant.append(R$styleable.Constraint_android_translationX, 51);
        sMapToConstant.append(R$styleable.Constraint_android_translationY, 52);
        sMapToConstant.append(R$styleable.Constraint_android_translationZ, 53);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintWidth_default, 54);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintHeight_default, 55);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintWidth_max, WIDTH_MAX);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintHeight_max, HEIGHT_MAX);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintWidth_min, WIDTH_MIN);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintHeight_min, HEIGHT_MIN);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintCircle, CIRCLE);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintCircleRadius, CIRCLE_RADIUS);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintCircleAngle, 63);
        sMapToConstant.append(R$styleable.Constraint_animateRelativeTo, 64);
        sMapToConstant.append(R$styleable.Constraint_transitionEasing, 65);
        sMapToConstant.append(R$styleable.Constraint_drawPath, 66);
        sMapToConstant.append(R$styleable.Constraint_transitionPathRotate, 67);
        sMapToConstant.append(R$styleable.Constraint_motionStagger, MOTION_STAGGER);
        sMapToConstant.append(R$styleable.Constraint_android_id, 38);
        sMapToConstant.append(R$styleable.Constraint_motionProgress, PROGRESS);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintWidth_percent, WIDTH_PERCENT);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintHeight_percent, HEIGHT_PERCENT);
        sMapToConstant.append(R$styleable.Constraint_layout_wrapBehaviorInParent, LAYOUT_WRAP_BEHAVIOR);
        sMapToConstant.append(R$styleable.Constraint_chainUseRtl, CHAIN_USE_RTL);
        sMapToConstant.append(R$styleable.Constraint_barrierDirection, BARRIER_DIRECTION);
        sMapToConstant.append(R$styleable.Constraint_barrierMargin, BARRIER_MARGIN);
        sMapToConstant.append(R$styleable.Constraint_constraint_referenced_ids, CONSTRAINT_REFERENCED_IDS);
        sMapToConstant.append(R$styleable.Constraint_barrierAllowsGoneWidgets, BARRIER_ALLOWS_GONE_WIDGETS);
        sMapToConstant.append(R$styleable.Constraint_pathMotionArc, PATH_MOTION_ARC);
        sMapToConstant.append(R$styleable.Constraint_layout_constraintTag, CONSTRAINT_TAG);
        sMapToConstant.append(R$styleable.Constraint_visibilityMode, VISIBILITY_MODE);
        sMapToConstant.append(R$styleable.Constraint_layout_constrainedWidth, CONSTRAINED_WIDTH);
        sMapToConstant.append(R$styleable.Constraint_layout_constrainedHeight, CONSTRAINED_HEIGHT);
        sMapToConstant.append(R$styleable.Constraint_polarRelativeTo, ANIMATE_CIRCLE_ANGLE_TO);
        sMapToConstant.append(R$styleable.Constraint_transformPivotTarget, TRANSFORM_PIVOT_TARGET);
        sMapToConstant.append(R$styleable.Constraint_quantizeMotionSteps, QUANTIZE_MOTION_STEPS);
        sMapToConstant.append(R$styleable.Constraint_quantizeMotionPhase, QUANTIZE_MOTION_PHASE);
        sMapToConstant.append(R$styleable.Constraint_quantizeMotionInterpolator, QUANTIZE_MOTION_INTERPOLATOR);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_editor_absoluteY, 6);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_editor_absoluteY, 7);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_orientation, 27);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_goneMarginTop, 16);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_goneMarginRight, 14);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_goneMarginStart, 15);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintLeft_creator, UNUSED);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintTop_creator, UNUSED);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintRight_creator, UNUSED);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintBottom_creator, UNUSED);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintBaseline_creator, UNUSED);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_layout_marginLeft, 24);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_layout_marginRight, 28);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_layout_marginStart, 31);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_layout_marginEnd, 8);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_layout_marginTop, 34);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_layout_marginBottom, 2);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_layout_width, 23);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_layout_height, 21);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintWidth, LAYOUT_CONSTRAINT_WIDTH);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintHeight, LAYOUT_CONSTRAINT_HEIGHT);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_visibility, 22);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_alpha, 43);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_elevation, 44);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_rotationX, 45);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_rotationY, 46);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_rotation, ROTATION);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_scaleX, 47);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_scaleY, 48);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_transformPivotX, 49);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_transformPivotY, 50);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_translationX, 51);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_translationY, 52);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_translationZ, 53);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintWidth_max, WIDTH_MAX);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintHeight_max, HEIGHT_MAX);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintWidth_min, WIDTH_MIN);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintHeight_min, HEIGHT_MIN);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintCircleRadius, CIRCLE_RADIUS);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_animateRelativeTo, 64);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_transitionEasing, 65);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_drawPath, 66);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_transitionPathRotate, 67);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_motionStagger, MOTION_STAGGER);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_android_id, 38);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_motionTarget, MOTION_TARGET);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_motionProgress, PROGRESS);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintWidth_percent, WIDTH_PERCENT);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintHeight_percent, HEIGHT_PERCENT);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_chainUseRtl, CHAIN_USE_RTL);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_barrierDirection, BARRIER_DIRECTION);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_barrierMargin, BARRIER_MARGIN);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_constraint_referenced_ids, CONSTRAINT_REFERENCED_IDS);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_barrierAllowsGoneWidgets, BARRIER_ALLOWS_GONE_WIDGETS);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_pathMotionArc, PATH_MOTION_ARC);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constraintTag, CONSTRAINT_TAG);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_visibilityMode, VISIBILITY_MODE);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constrainedWidth, CONSTRAINED_WIDTH);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_constrainedHeight, CONSTRAINED_HEIGHT);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_polarRelativeTo, ANIMATE_CIRCLE_ANGLE_TO);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_transformPivotTarget, TRANSFORM_PIVOT_TARGET);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_quantizeMotionSteps, QUANTIZE_MOTION_STEPS);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_quantizeMotionPhase, QUANTIZE_MOTION_PHASE);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_quantizeMotionInterpolator, QUANTIZE_MOTION_INTERPOLATOR);
        sOverrideMapToConstant.append(R$styleable.ConstraintOverride_layout_wrapBehaviorInParent, LAYOUT_WRAP_BEHAVIOR);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$100(TypedArray typedArray, int i9, int i10) {
        return lookupID(typedArray, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ HashMap access$1300(ConstraintSet constraintSet) {
        return constraintSet.mConstraints;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int[] access$200() {
        return VISIBILITY_FLAGS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$300(ConstraintSet$Constraint constraintSet$Constraint, int i9, int i10) {
        setDeltaValue(constraintSet$Constraint, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$400(ConstraintSet$Constraint constraintSet$Constraint, int i9, float f8) {
        setDeltaValue(constraintSet$Constraint, i9, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$500(ConstraintSet$Constraint constraintSet$Constraint, int i9, String str) {
        setDeltaValue(constraintSet$Constraint, i9, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$600(ConstraintSet$Constraint constraintSet$Constraint, int i9, boolean z8) {
        setDeltaValue(constraintSet$Constraint, i9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addAttributes(ConstraintAttribute$AttributeType constraintAttribute$AttributeType, String... strArr) {
        for (int i9 = 0; i9 < strArr.length; i9++) {
            if (this.mSavedAttributes.containsKey(strArr[i9])) {
                ConstraintAttribute constraintAttribute = this.mSavedAttributes.get(strArr[i9]);
                if (constraintAttribute != null && constraintAttribute.getType() != constraintAttribute$AttributeType) {
                    b.o(constraintAttribute.getType().name(), "ConstraintAttribute is already a ");
                    return;
                }
            } else {
                this.mSavedAttributes.put(strArr[i9], new ConstraintAttribute(strArr[i9], constraintAttribute$AttributeType));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ConstraintSet$Constraint buildDelta(Context context, XmlPullParser xmlPullParser) {
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        ConstraintSet$Constraint constraintSet$Constraint = new ConstraintSet$Constraint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSetAsAttributeSet, R$styleable.ConstraintOverride);
        populateOverride(constraintSet$Constraint, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return constraintSet$Constraint;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int[] convertReferenceString(View view, String str) {
        int iIntValue;
        Object designInformation;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i9 = 0;
        int i10 = 0;
        while (i9 < strArrSplit.length) {
            String strTrim = strArrSplit[i9].trim();
            try {
                iIntValue = R$id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) {
                iIntValue = ((Integer) designInformation).intValue();
            }
            iArr[i10] = iIntValue;
            i9++;
            i10++;
        }
        return i10 != strArrSplit.length ? Arrays.copyOf(iArr, i10) : iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void createHorizontalChain(int i9, int i10, int i11, int i12, int[] iArr, float[] fArr, int i13, int i14, int i15) {
        if (iArr.length < 2) {
            i.k("must have 2 or more widgets in a chain");
            return;
        }
        if (fArr != null && fArr.length != iArr.length) {
            i.k("must have 2 or more widgets in a chain");
            return;
        }
        if (fArr != null) {
            get(iArr[0]).layout.horizontalWeight = fArr[0];
        }
        get(iArr[0]).layout.horizontalChainStyle = i13;
        connect(iArr[0], i14, i9, i10, -1);
        for (int i16 = 1; i16 < iArr.length; i16++) {
            int i17 = i16 - 1;
            connect(iArr[i16], i14, iArr[i17], i15, -1);
            connect(iArr[i17], i15, iArr[i16], i14, -1);
            if (fArr != null) {
                get(iArr[i16]).layout.horizontalWeight = fArr[i16];
            }
        }
        connect(iArr[iArr.length - 1], i15, i11, i12, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ConstraintSet$Constraint fillFromAttributeList(Context context, AttributeSet attributeSet, boolean z8) {
        ConstraintSet$Constraint constraintSet$Constraint = new ConstraintSet$Constraint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z8 ? R$styleable.ConstraintOverride : R$styleable.Constraint);
        populateConstraint(constraintSet$Constraint, typedArrayObtainStyledAttributes, z8);
        typedArrayObtainStyledAttributes.recycle();
        return constraintSet$Constraint;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ConstraintSet$Constraint get(int i9) {
        if (!this.mConstraints.containsKey(Integer.valueOf(i9))) {
            this.mConstraints.put(Integer.valueOf(i9), new ConstraintSet$Constraint());
        }
        return this.mConstraints.get(Integer.valueOf(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getDebugName(int i9) {
        for (Field field : ConstraintSet.class.getDeclaredFields()) {
            if (field.getName().contains("_") && field.getType() == Integer.TYPE && Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
                try {
                    if (field.getInt(null) == i9) {
                        return field.getName();
                    }
                    continue;
                } catch (IllegalAccessException e) {
                    Log.e(TAG, "Error accessing ConstraintSet field", e);
                }
            }
        }
        return "UNKNOWN";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getLine(Context context, int i9, XmlPullParser xmlPullParser) {
        return ".(" + Debug.getName(context, i9) + ".xml:" + xmlPullParser.getLineNumber() + ") \"" + xmlPullParser.getName() + "\"";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int lookupID(TypedArray typedArray, int i9, int i10) {
        int resourceId = typedArray.getResourceId(i9, i10);
        return resourceId == -1 ? typedArray.getInt(i9, -1) : resourceId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:21:0x0034  */
    /* JADX WARN: Code duplicated, block: B:23:0x0038  */
    /* JADX WARN: Code duplicated, block: B:25:0x003d  */
    /* JADX WARN: Code duplicated, block: B:27:0x0042  */
    /* JADX WARN: Code duplicated, block: B:29:0x0046  */
    /* JADX WARN: Code duplicated, block: B:31:0x004a  */
    /* JADX WARN: Code duplicated, block: B:33:0x004f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0054  */
    /* JADX WARN: Code duplicated, block: B:37:0x0058  */
    /* JADX WARN: Code duplicated, block: B:39:0x005c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0067  */
    /* JADX WARN: Code duplicated, block: B:45:? A[RETURN, SYNTHETIC] */
    public static void parseDimensionConstraints(Object obj, TypedArray typedArray, int i9, int i10) {
        int dimensionPixelSize;
        boolean z8;
        ConstraintSet$Constraint$Delta constraintSet$Constraint$Delta;
        ConstraintSet$Layout constraintSet$Layout;
        ConstraintLayout$LayoutParams constraintLayout$LayoutParams;
        if (obj == null) {
            return;
        }
        int i11 = typedArray.peekValue(i9).type;
        if (i11 == 3) {
            parseDimensionConstraintsString(obj, typedArray.getString(i9), i10);
            return;
        }
        int i12 = 0;
        if (i11 != 5) {
            dimensionPixelSize = typedArray.getInt(i9, 0);
            if (dimensionPixelSize == -4) {
                z8 = true;
                i12 = -2;
            } else if (dimensionPixelSize == -3 || (dimensionPixelSize != -2 && dimensionPixelSize != -1)) {
                z8 = false;
            }
            if (obj instanceof ConstraintLayout$LayoutParams) {
                constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) obj;
                if (i10 == 0) {
                    ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).width = i12;
                    constraintLayout$LayoutParams.constrainedWidth = z8;
                    return;
                } else {
                    ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).height = i12;
                    constraintLayout$LayoutParams.constrainedHeight = z8;
                    return;
                }
            }
            if (obj instanceof ConstraintSet$Layout) {
                constraintSet$Layout = (ConstraintSet$Layout) obj;
                if (i10 == 0) {
                    constraintSet$Layout.mWidth = i12;
                    constraintSet$Layout.constrainedWidth = z8;
                    return;
                } else {
                    constraintSet$Layout.mHeight = i12;
                    constraintSet$Layout.constrainedHeight = z8;
                    return;
                }
            }
            if (obj instanceof ConstraintSet$Constraint$Delta) {
                constraintSet$Constraint$Delta = (ConstraintSet$Constraint$Delta) obj;
                if (i10 == 0) {
                    constraintSet$Constraint$Delta.add(23, i12);
                    constraintSet$Constraint$Delta.add(CONSTRAINED_WIDTH, z8);
                } else {
                    constraintSet$Constraint$Delta.add(21, i12);
                    constraintSet$Constraint$Delta.add(CONSTRAINED_HEIGHT, z8);
                }
            }
        }
        dimensionPixelSize = typedArray.getDimensionPixelSize(i9, 0);
        i12 = dimensionPixelSize;
        z8 = false;
        if (obj instanceof ConstraintLayout$LayoutParams) {
            constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) obj;
            if (i10 == 0) {
                ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).width = i12;
                constraintLayout$LayoutParams.constrainedWidth = z8;
                return;
            } else {
                ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).height = i12;
                constraintLayout$LayoutParams.constrainedHeight = z8;
                return;
            }
        }
        if (obj instanceof ConstraintSet$Layout) {
            constraintSet$Layout = (ConstraintSet$Layout) obj;
            if (i10 == 0) {
                constraintSet$Layout.mWidth = i12;
                constraintSet$Layout.constrainedWidth = z8;
                return;
            } else {
                constraintSet$Layout.mHeight = i12;
                constraintSet$Layout.constrainedHeight = z8;
                return;
            }
        }
        if (obj instanceof ConstraintSet$Constraint$Delta) {
            constraintSet$Constraint$Delta = (ConstraintSet$Constraint$Delta) obj;
            if (i10 == 0) {
                constraintSet$Constraint$Delta.add(23, i12);
                constraintSet$Constraint$Delta.add(CONSTRAINED_WIDTH, z8);
            } else {
                constraintSet$Constraint$Delta.add(21, i12);
                constraintSet$Constraint$Delta.add(CONSTRAINED_HEIGHT, z8);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseDimensionConstraintsString(Object obj, String str, int i9) {
        if (str == null) {
            return;
        }
        int iIndexOf = str.indexOf(CIRCLE);
        int length = str.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if (KEY_RATIO.equalsIgnoreCase(strTrim)) {
                if (obj instanceof ConstraintLayout$LayoutParams) {
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) obj;
                    if (i9 == 0) {
                        ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).width = 0;
                    } else {
                        ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).height = 0;
                    }
                    parseDimensionRatioString(constraintLayout$LayoutParams, strTrim2);
                    return;
                }
                if (obj instanceof ConstraintSet$Layout) {
                    ((ConstraintSet$Layout) obj).dimensionRatio = strTrim2;
                    return;
                } else {
                    if (obj instanceof ConstraintSet$Constraint$Delta) {
                        ((ConstraintSet$Constraint$Delta) obj).add(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if (KEY_WEIGHT.equalsIgnoreCase(strTrim)) {
                    float f8 = Float.parseFloat(strTrim2);
                    if (obj instanceof ConstraintLayout$LayoutParams) {
                        ConstraintLayout$LayoutParams constraintLayout$LayoutParams2 = (ConstraintLayout$LayoutParams) obj;
                        if (i9 == 0) {
                            ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).width = 0;
                            constraintLayout$LayoutParams2.horizontalWeight = f8;
                            return;
                        } else {
                            ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).height = 0;
                            constraintLayout$LayoutParams2.verticalWeight = f8;
                            return;
                        }
                    }
                    if (obj instanceof ConstraintSet$Layout) {
                        ConstraintSet$Layout constraintSet$Layout = (ConstraintSet$Layout) obj;
                        if (i9 == 0) {
                            constraintSet$Layout.mWidth = 0;
                            constraintSet$Layout.horizontalWeight = f8;
                            return;
                        } else {
                            constraintSet$Layout.mHeight = 0;
                            constraintSet$Layout.verticalWeight = f8;
                            return;
                        }
                    }
                    if (obj instanceof ConstraintSet$Constraint$Delta) {
                        ConstraintSet$Constraint$Delta constraintSet$Constraint$Delta = (ConstraintSet$Constraint$Delta) obj;
                        if (i9 == 0) {
                            constraintSet$Constraint$Delta.add(23, 0);
                            constraintSet$Constraint$Delta.add(39, f8);
                            return;
                        } else {
                            constraintSet$Constraint$Delta.add(21, 0);
                            constraintSet$Constraint$Delta.add(40, f8);
                            return;
                        }
                    }
                    return;
                }
                if (KEY_PERCENT_PARENT.equalsIgnoreCase(strTrim)) {
                    float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof ConstraintLayout$LayoutParams) {
                        ConstraintLayout$LayoutParams constraintLayout$LayoutParams3 = (ConstraintLayout$LayoutParams) obj;
                        if (i9 == 0) {
                            ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams3).width = 0;
                            constraintLayout$LayoutParams3.matchConstraintPercentWidth = fMax;
                            constraintLayout$LayoutParams3.matchConstraintDefaultWidth = 2;
                            return;
                        } else {
                            ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams3).height = 0;
                            constraintLayout$LayoutParams3.matchConstraintPercentHeight = fMax;
                            constraintLayout$LayoutParams3.matchConstraintDefaultHeight = 2;
                            return;
                        }
                    }
                    if (obj instanceof ConstraintSet$Layout) {
                        ConstraintSet$Layout constraintSet$Layout2 = (ConstraintSet$Layout) obj;
                        if (i9 == 0) {
                            constraintSet$Layout2.mWidth = 0;
                            constraintSet$Layout2.widthPercent = fMax;
                            constraintSet$Layout2.widthDefault = 2;
                            return;
                        } else {
                            constraintSet$Layout2.mHeight = 0;
                            constraintSet$Layout2.heightPercent = fMax;
                            constraintSet$Layout2.heightDefault = 2;
                            return;
                        }
                    }
                    if (obj instanceof ConstraintSet$Constraint$Delta) {
                        ConstraintSet$Constraint$Delta constraintSet$Constraint$Delta2 = (ConstraintSet$Constraint$Delta) obj;
                        if (i9 == 0) {
                            constraintSet$Constraint$Delta2.add(23, 0);
                            constraintSet$Constraint$Delta2.add(54, 2);
                        } else {
                            constraintSet$Constraint$Delta2.add(21, 0);
                            constraintSet$Constraint$Delta2.add(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void parseDimensionRatioString(ConstraintLayout$LayoutParams constraintLayout$LayoutParams, String str) {
        float fAbs = Float.NaN;
        int i9 = -1;
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            int i10 = 0;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                if (strSubstring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                    i9 = 0;
                } else if (strSubstring.equalsIgnoreCase("H")) {
                    i9 = 1;
                }
                i10 = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(WIDTH_MIN);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i10);
                    if (strSubstring2.length() > 0) {
                        fAbs = Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i10, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f8 = Float.parseFloat(strSubstring3);
                        float f9 = Float.parseFloat(strSubstring4);
                        if (f8 > 0.0f && f9 > 0.0f) {
                            fAbs = i9 == 1 ? Math.abs(f9 / f8) : Math.abs(f8 / f9);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        constraintLayout$LayoutParams.dimensionRatio = str;
        constraintLayout$LayoutParams.mDimensionRatioValue = fAbs;
        constraintLayout$LayoutParams.mDimensionRatioSide = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void populateConstraint(ConstraintSet$Constraint constraintSet$Constraint, TypedArray typedArray, boolean z8) {
        if (z8) {
            populateOverride(constraintSet$Constraint, typedArray);
            return;
        }
        int indexCount = typedArray.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArray.getIndex(i9);
            if (index != R$styleable.Constraint_android_id && R$styleable.Constraint_android_layout_marginStart != index && R$styleable.Constraint_android_layout_marginEnd != index) {
                constraintSet$Constraint.motion.mApply = true;
                constraintSet$Constraint.layout.mApply = true;
                constraintSet$Constraint.propertySet.mApply = true;
                constraintSet$Constraint.transform.mApply = true;
            }
            switch (sMapToConstant.get(index)) {
                case 1:
                    ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint.layout;
                    constraintSet$Layout.baselineToBaseline = lookupID(typedArray, index, constraintSet$Layout.baselineToBaseline);
                    break;
                case 2:
                    ConstraintSet$Layout constraintSet$Layout2 = constraintSet$Constraint.layout;
                    constraintSet$Layout2.bottomMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout2.bottomMargin);
                    break;
                case 3:
                    ConstraintSet$Layout constraintSet$Layout3 = constraintSet$Constraint.layout;
                    constraintSet$Layout3.bottomToBottom = lookupID(typedArray, index, constraintSet$Layout3.bottomToBottom);
                    break;
                case 4:
                    ConstraintSet$Layout constraintSet$Layout4 = constraintSet$Constraint.layout;
                    constraintSet$Layout4.bottomToTop = lookupID(typedArray, index, constraintSet$Layout4.bottomToTop);
                    break;
                case 5:
                    constraintSet$Constraint.layout.dimensionRatio = typedArray.getString(index);
                    break;
                case 6:
                    ConstraintSet$Layout constraintSet$Layout5 = constraintSet$Constraint.layout;
                    constraintSet$Layout5.editorAbsoluteX = typedArray.getDimensionPixelOffset(index, constraintSet$Layout5.editorAbsoluteX);
                    break;
                case 7:
                    ConstraintSet$Layout constraintSet$Layout6 = constraintSet$Constraint.layout;
                    constraintSet$Layout6.editorAbsoluteY = typedArray.getDimensionPixelOffset(index, constraintSet$Layout6.editorAbsoluteY);
                    break;
                case 8:
                    ConstraintSet$Layout constraintSet$Layout7 = constraintSet$Constraint.layout;
                    constraintSet$Layout7.endMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout7.endMargin);
                    break;
                case 9:
                    ConstraintSet$Layout constraintSet$Layout8 = constraintSet$Constraint.layout;
                    constraintSet$Layout8.endToEnd = lookupID(typedArray, index, constraintSet$Layout8.endToEnd);
                    break;
                case 10:
                    ConstraintSet$Layout constraintSet$Layout9 = constraintSet$Constraint.layout;
                    constraintSet$Layout9.endToStart = lookupID(typedArray, index, constraintSet$Layout9.endToStart);
                    break;
                case 11:
                    ConstraintSet$Layout constraintSet$Layout10 = constraintSet$Constraint.layout;
                    constraintSet$Layout10.goneBottomMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout10.goneBottomMargin);
                    break;
                case 12:
                    ConstraintSet$Layout constraintSet$Layout11 = constraintSet$Constraint.layout;
                    constraintSet$Layout11.goneEndMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout11.goneEndMargin);
                    break;
                case 13:
                    ConstraintSet$Layout constraintSet$Layout12 = constraintSet$Constraint.layout;
                    constraintSet$Layout12.goneLeftMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout12.goneLeftMargin);
                    break;
                case 14:
                    ConstraintSet$Layout constraintSet$Layout13 = constraintSet$Constraint.layout;
                    constraintSet$Layout13.goneRightMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout13.goneRightMargin);
                    break;
                case 15:
                    ConstraintSet$Layout constraintSet$Layout14 = constraintSet$Constraint.layout;
                    constraintSet$Layout14.goneStartMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout14.goneStartMargin);
                    break;
                case 16:
                    ConstraintSet$Layout constraintSet$Layout15 = constraintSet$Constraint.layout;
                    constraintSet$Layout15.goneTopMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout15.goneTopMargin);
                    break;
                case 17:
                    ConstraintSet$Layout constraintSet$Layout16 = constraintSet$Constraint.layout;
                    constraintSet$Layout16.guideBegin = typedArray.getDimensionPixelOffset(index, constraintSet$Layout16.guideBegin);
                    break;
                case 18:
                    ConstraintSet$Layout constraintSet$Layout17 = constraintSet$Constraint.layout;
                    constraintSet$Layout17.guideEnd = typedArray.getDimensionPixelOffset(index, constraintSet$Layout17.guideEnd);
                    break;
                case 19:
                    ConstraintSet$Layout constraintSet$Layout18 = constraintSet$Constraint.layout;
                    constraintSet$Layout18.guidePercent = typedArray.getFloat(index, constraintSet$Layout18.guidePercent);
                    break;
                case 20:
                    ConstraintSet$Layout constraintSet$Layout19 = constraintSet$Constraint.layout;
                    constraintSet$Layout19.horizontalBias = typedArray.getFloat(index, constraintSet$Layout19.horizontalBias);
                    break;
                case 21:
                    ConstraintSet$Layout constraintSet$Layout20 = constraintSet$Constraint.layout;
                    constraintSet$Layout20.mHeight = typedArray.getLayoutDimension(index, constraintSet$Layout20.mHeight);
                    break;
                case 22:
                    ConstraintSet$PropertySet constraintSet$PropertySet = constraintSet$Constraint.propertySet;
                    constraintSet$PropertySet.visibility = typedArray.getInt(index, constraintSet$PropertySet.visibility);
                    ConstraintSet$PropertySet constraintSet$PropertySet2 = constraintSet$Constraint.propertySet;
                    constraintSet$PropertySet2.visibility = VISIBILITY_FLAGS[constraintSet$PropertySet2.visibility];
                    break;
                case 23:
                    ConstraintSet$Layout constraintSet$Layout21 = constraintSet$Constraint.layout;
                    constraintSet$Layout21.mWidth = typedArray.getLayoutDimension(index, constraintSet$Layout21.mWidth);
                    break;
                case 24:
                    ConstraintSet$Layout constraintSet$Layout22 = constraintSet$Constraint.layout;
                    constraintSet$Layout22.leftMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout22.leftMargin);
                    break;
                case 25:
                    ConstraintSet$Layout constraintSet$Layout23 = constraintSet$Constraint.layout;
                    constraintSet$Layout23.leftToLeft = lookupID(typedArray, index, constraintSet$Layout23.leftToLeft);
                    break;
                case 26:
                    ConstraintSet$Layout constraintSet$Layout24 = constraintSet$Constraint.layout;
                    constraintSet$Layout24.leftToRight = lookupID(typedArray, index, constraintSet$Layout24.leftToRight);
                    break;
                case 27:
                    ConstraintSet$Layout constraintSet$Layout25 = constraintSet$Constraint.layout;
                    constraintSet$Layout25.orientation = typedArray.getInt(index, constraintSet$Layout25.orientation);
                    break;
                case 28:
                    ConstraintSet$Layout constraintSet$Layout26 = constraintSet$Constraint.layout;
                    constraintSet$Layout26.rightMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout26.rightMargin);
                    break;
                case 29:
                    ConstraintSet$Layout constraintSet$Layout27 = constraintSet$Constraint.layout;
                    constraintSet$Layout27.rightToLeft = lookupID(typedArray, index, constraintSet$Layout27.rightToLeft);
                    break;
                case 30:
                    ConstraintSet$Layout constraintSet$Layout28 = constraintSet$Constraint.layout;
                    constraintSet$Layout28.rightToRight = lookupID(typedArray, index, constraintSet$Layout28.rightToRight);
                    break;
                case 31:
                    ConstraintSet$Layout constraintSet$Layout29 = constraintSet$Constraint.layout;
                    constraintSet$Layout29.startMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout29.startMargin);
                    break;
                case 32:
                    ConstraintSet$Layout constraintSet$Layout30 = constraintSet$Constraint.layout;
                    constraintSet$Layout30.startToEnd = lookupID(typedArray, index, constraintSet$Layout30.startToEnd);
                    break;
                case 33:
                    ConstraintSet$Layout constraintSet$Layout31 = constraintSet$Constraint.layout;
                    constraintSet$Layout31.startToStart = lookupID(typedArray, index, constraintSet$Layout31.startToStart);
                    break;
                case 34:
                    ConstraintSet$Layout constraintSet$Layout32 = constraintSet$Constraint.layout;
                    constraintSet$Layout32.topMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout32.topMargin);
                    break;
                case 35:
                    ConstraintSet$Layout constraintSet$Layout33 = constraintSet$Constraint.layout;
                    constraintSet$Layout33.topToBottom = lookupID(typedArray, index, constraintSet$Layout33.topToBottom);
                    break;
                case 36:
                    ConstraintSet$Layout constraintSet$Layout34 = constraintSet$Constraint.layout;
                    constraintSet$Layout34.topToTop = lookupID(typedArray, index, constraintSet$Layout34.topToTop);
                    break;
                case 37:
                    ConstraintSet$Layout constraintSet$Layout35 = constraintSet$Constraint.layout;
                    constraintSet$Layout35.verticalBias = typedArray.getFloat(index, constraintSet$Layout35.verticalBias);
                    break;
                case 38:
                    constraintSet$Constraint.mViewId = typedArray.getResourceId(index, constraintSet$Constraint.mViewId);
                    break;
                case 39:
                    ConstraintSet$Layout constraintSet$Layout36 = constraintSet$Constraint.layout;
                    constraintSet$Layout36.horizontalWeight = typedArray.getFloat(index, constraintSet$Layout36.horizontalWeight);
                    break;
                case 40:
                    ConstraintSet$Layout constraintSet$Layout37 = constraintSet$Constraint.layout;
                    constraintSet$Layout37.verticalWeight = typedArray.getFloat(index, constraintSet$Layout37.verticalWeight);
                    break;
                case 41:
                    ConstraintSet$Layout constraintSet$Layout38 = constraintSet$Constraint.layout;
                    constraintSet$Layout38.horizontalChainStyle = typedArray.getInt(index, constraintSet$Layout38.horizontalChainStyle);
                    break;
                case 42:
                    ConstraintSet$Layout constraintSet$Layout39 = constraintSet$Constraint.layout;
                    constraintSet$Layout39.verticalChainStyle = typedArray.getInt(index, constraintSet$Layout39.verticalChainStyle);
                    break;
                case 43:
                    ConstraintSet$PropertySet constraintSet$PropertySet3 = constraintSet$Constraint.propertySet;
                    constraintSet$PropertySet3.alpha = typedArray.getFloat(index, constraintSet$PropertySet3.alpha);
                    break;
                case 44:
                    ConstraintSet$Transform constraintSet$Transform = constraintSet$Constraint.transform;
                    constraintSet$Transform.applyElevation = true;
                    constraintSet$Transform.elevation = typedArray.getDimension(index, constraintSet$Transform.elevation);
                    break;
                case 45:
                    ConstraintSet$Transform constraintSet$Transform2 = constraintSet$Constraint.transform;
                    constraintSet$Transform2.rotationX = typedArray.getFloat(index, constraintSet$Transform2.rotationX);
                    break;
                case 46:
                    ConstraintSet$Transform constraintSet$Transform3 = constraintSet$Constraint.transform;
                    constraintSet$Transform3.rotationY = typedArray.getFloat(index, constraintSet$Transform3.rotationY);
                    break;
                case 47:
                    ConstraintSet$Transform constraintSet$Transform4 = constraintSet$Constraint.transform;
                    constraintSet$Transform4.scaleX = typedArray.getFloat(index, constraintSet$Transform4.scaleX);
                    break;
                case 48:
                    ConstraintSet$Transform constraintSet$Transform5 = constraintSet$Constraint.transform;
                    constraintSet$Transform5.scaleY = typedArray.getFloat(index, constraintSet$Transform5.scaleY);
                    break;
                case 49:
                    ConstraintSet$Transform constraintSet$Transform6 = constraintSet$Constraint.transform;
                    constraintSet$Transform6.transformPivotX = typedArray.getDimension(index, constraintSet$Transform6.transformPivotX);
                    break;
                case 50:
                    ConstraintSet$Transform constraintSet$Transform7 = constraintSet$Constraint.transform;
                    constraintSet$Transform7.transformPivotY = typedArray.getDimension(index, constraintSet$Transform7.transformPivotY);
                    break;
                case 51:
                    ConstraintSet$Transform constraintSet$Transform8 = constraintSet$Constraint.transform;
                    constraintSet$Transform8.translationX = typedArray.getDimension(index, constraintSet$Transform8.translationX);
                    break;
                case 52:
                    ConstraintSet$Transform constraintSet$Transform9 = constraintSet$Constraint.transform;
                    constraintSet$Transform9.translationY = typedArray.getDimension(index, constraintSet$Transform9.translationY);
                    break;
                case 53:
                    ConstraintSet$Transform constraintSet$Transform10 = constraintSet$Constraint.transform;
                    constraintSet$Transform10.translationZ = typedArray.getDimension(index, constraintSet$Transform10.translationZ);
                    break;
                case 54:
                    ConstraintSet$Layout constraintSet$Layout40 = constraintSet$Constraint.layout;
                    constraintSet$Layout40.widthDefault = typedArray.getInt(index, constraintSet$Layout40.widthDefault);
                    break;
                case 55:
                    ConstraintSet$Layout constraintSet$Layout41 = constraintSet$Constraint.layout;
                    constraintSet$Layout41.heightDefault = typedArray.getInt(index, constraintSet$Layout41.heightDefault);
                    break;
                case WIDTH_MAX /* 56 */:
                    ConstraintSet$Layout constraintSet$Layout42 = constraintSet$Constraint.layout;
                    constraintSet$Layout42.widthMax = typedArray.getDimensionPixelSize(index, constraintSet$Layout42.widthMax);
                    break;
                case HEIGHT_MAX /* 57 */:
                    ConstraintSet$Layout constraintSet$Layout43 = constraintSet$Constraint.layout;
                    constraintSet$Layout43.heightMax = typedArray.getDimensionPixelSize(index, constraintSet$Layout43.heightMax);
                    break;
                case WIDTH_MIN /* 58 */:
                    ConstraintSet$Layout constraintSet$Layout44 = constraintSet$Constraint.layout;
                    constraintSet$Layout44.widthMin = typedArray.getDimensionPixelSize(index, constraintSet$Layout44.widthMin);
                    break;
                case HEIGHT_MIN /* 59 */:
                    ConstraintSet$Layout constraintSet$Layout45 = constraintSet$Constraint.layout;
                    constraintSet$Layout45.heightMin = typedArray.getDimensionPixelSize(index, constraintSet$Layout45.heightMin);
                    break;
                case ROTATION /* 60 */:
                    ConstraintSet$Transform constraintSet$Transform11 = constraintSet$Constraint.transform;
                    constraintSet$Transform11.rotation = typedArray.getFloat(index, constraintSet$Transform11.rotation);
                    break;
                case CIRCLE /* 61 */:
                    ConstraintSet$Layout constraintSet$Layout46 = constraintSet$Constraint.layout;
                    constraintSet$Layout46.circleConstraint = lookupID(typedArray, index, constraintSet$Layout46.circleConstraint);
                    break;
                case CIRCLE_RADIUS /* 62 */:
                    ConstraintSet$Layout constraintSet$Layout47 = constraintSet$Constraint.layout;
                    constraintSet$Layout47.circleRadius = typedArray.getDimensionPixelSize(index, constraintSet$Layout47.circleRadius);
                    break;
                case 63:
                    ConstraintSet$Layout constraintSet$Layout48 = constraintSet$Constraint.layout;
                    constraintSet$Layout48.circleAngle = typedArray.getFloat(index, constraintSet$Layout48.circleAngle);
                    break;
                case 64:
                    ConstraintSet$Motion constraintSet$Motion = constraintSet$Constraint.motion;
                    constraintSet$Motion.mAnimateRelativeTo = lookupID(typedArray, index, constraintSet$Motion.mAnimateRelativeTo);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        constraintSet$Constraint.motion.mTransitionEasing = typedArray.getString(index);
                    } else {
                        constraintSet$Constraint.motion.mTransitionEasing = Easing.NAMED_EASING[typedArray.getInteger(index, 0)];
                    }
                    break;
                case 66:
                    constraintSet$Constraint.motion.mDrawPath = typedArray.getInt(index, 0);
                    break;
                case 67:
                    ConstraintSet$Motion constraintSet$Motion2 = constraintSet$Constraint.motion;
                    constraintSet$Motion2.mPathRotate = typedArray.getFloat(index, constraintSet$Motion2.mPathRotate);
                    break;
                case PROGRESS /* 68 */:
                    ConstraintSet$PropertySet constraintSet$PropertySet4 = constraintSet$Constraint.propertySet;
                    constraintSet$PropertySet4.mProgress = typedArray.getFloat(index, constraintSet$PropertySet4.mProgress);
                    break;
                case WIDTH_PERCENT /* 69 */:
                    constraintSet$Constraint.layout.widthPercent = typedArray.getFloat(index, 1.0f);
                    break;
                case HEIGHT_PERCENT /* 70 */:
                    constraintSet$Constraint.layout.heightPercent = typedArray.getFloat(index, 1.0f);
                    break;
                case CHAIN_USE_RTL /* 71 */:
                    Log.e(TAG, "CURRENTLY UNSUPPORTED");
                    break;
                case BARRIER_DIRECTION /* 72 */:
                    ConstraintSet$Layout constraintSet$Layout49 = constraintSet$Constraint.layout;
                    constraintSet$Layout49.mBarrierDirection = typedArray.getInt(index, constraintSet$Layout49.mBarrierDirection);
                    break;
                case BARRIER_MARGIN /* 73 */:
                    ConstraintSet$Layout constraintSet$Layout50 = constraintSet$Constraint.layout;
                    constraintSet$Layout50.mBarrierMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout50.mBarrierMargin);
                    break;
                case CONSTRAINT_REFERENCED_IDS /* 74 */:
                    constraintSet$Constraint.layout.mReferenceIdString = typedArray.getString(index);
                    break;
                case BARRIER_ALLOWS_GONE_WIDGETS /* 75 */:
                    ConstraintSet$Layout constraintSet$Layout51 = constraintSet$Constraint.layout;
                    constraintSet$Layout51.mBarrierAllowsGoneWidgets = typedArray.getBoolean(index, constraintSet$Layout51.mBarrierAllowsGoneWidgets);
                    break;
                case PATH_MOTION_ARC /* 76 */:
                    ConstraintSet$Motion constraintSet$Motion3 = constraintSet$Constraint.motion;
                    constraintSet$Motion3.mPathMotionArc = typedArray.getInt(index, constraintSet$Motion3.mPathMotionArc);
                    break;
                case CONSTRAINT_TAG /* 77 */:
                    constraintSet$Constraint.layout.mConstraintTag = typedArray.getString(index);
                    break;
                case VISIBILITY_MODE /* 78 */:
                    ConstraintSet$PropertySet constraintSet$PropertySet5 = constraintSet$Constraint.propertySet;
                    constraintSet$PropertySet5.mVisibilityMode = typedArray.getInt(index, constraintSet$PropertySet5.mVisibilityMode);
                    break;
                case MOTION_STAGGER /* 79 */:
                    ConstraintSet$Motion constraintSet$Motion4 = constraintSet$Constraint.motion;
                    constraintSet$Motion4.mMotionStagger = typedArray.getFloat(index, constraintSet$Motion4.mMotionStagger);
                    break;
                case CONSTRAINED_WIDTH /* 80 */:
                    ConstraintSet$Layout constraintSet$Layout52 = constraintSet$Constraint.layout;
                    constraintSet$Layout52.constrainedWidth = typedArray.getBoolean(index, constraintSet$Layout52.constrainedWidth);
                    break;
                case CONSTRAINED_HEIGHT /* 81 */:
                    ConstraintSet$Layout constraintSet$Layout53 = constraintSet$Constraint.layout;
                    constraintSet$Layout53.constrainedHeight = typedArray.getBoolean(index, constraintSet$Layout53.constrainedHeight);
                    break;
                case ANIMATE_CIRCLE_ANGLE_TO /* 82 */:
                    ConstraintSet$Motion constraintSet$Motion5 = constraintSet$Constraint.motion;
                    constraintSet$Motion5.mAnimateCircleAngleTo = typedArray.getInteger(index, constraintSet$Motion5.mAnimateCircleAngleTo);
                    break;
                case TRANSFORM_PIVOT_TARGET /* 83 */:
                    ConstraintSet$Transform constraintSet$Transform12 = constraintSet$Constraint.transform;
                    constraintSet$Transform12.transformPivotTarget = lookupID(typedArray, index, constraintSet$Transform12.transformPivotTarget);
                    break;
                case QUANTIZE_MOTION_STEPS /* 84 */:
                    ConstraintSet$Motion constraintSet$Motion6 = constraintSet$Constraint.motion;
                    constraintSet$Motion6.mQuantizeMotionSteps = typedArray.getInteger(index, constraintSet$Motion6.mQuantizeMotionSteps);
                    break;
                case QUANTIZE_MOTION_PHASE /* 85 */:
                    ConstraintSet$Motion constraintSet$Motion7 = constraintSet$Constraint.motion;
                    constraintSet$Motion7.mQuantizeMotionPhase = typedArray.getFloat(index, constraintSet$Motion7.mQuantizeMotionPhase);
                    break;
                case QUANTIZE_MOTION_INTERPOLATOR /* 86 */:
                    int i10 = typedArray.peekValue(index).type;
                    if (i10 == 1) {
                        constraintSet$Constraint.motion.mQuantizeInterpolatorID = typedArray.getResourceId(index, -1);
                        ConstraintSet$Motion constraintSet$Motion8 = constraintSet$Constraint.motion;
                        if (constraintSet$Motion8.mQuantizeInterpolatorID != -1) {
                            constraintSet$Motion8.mQuantizeInterpolatorType = -2;
                        }
                    } else if (i10 == 3) {
                        constraintSet$Constraint.motion.mQuantizeInterpolatorString = typedArray.getString(index);
                        int iIndexOf = constraintSet$Constraint.motion.mQuantizeInterpolatorString.indexOf("/");
                        ConstraintSet$Motion constraintSet$Motion9 = constraintSet$Constraint.motion;
                        if (iIndexOf > 0) {
                            constraintSet$Motion9.mQuantizeInterpolatorID = typedArray.getResourceId(index, -1);
                            constraintSet$Constraint.motion.mQuantizeInterpolatorType = -2;
                        } else {
                            constraintSet$Motion9.mQuantizeInterpolatorType = -1;
                        }
                    } else {
                        ConstraintSet$Motion constraintSet$Motion10 = constraintSet$Constraint.motion;
                        constraintSet$Motion10.mQuantizeInterpolatorType = typedArray.getInteger(index, constraintSet$Motion10.mQuantizeInterpolatorID);
                    }
                    break;
                case UNUSED /* 87 */:
                    Log.w(TAG, "unused attribute 0x" + Integer.toHexString(index) + "   " + sMapToConstant.get(index));
                    break;
                case QUANTIZE_MOTION_INTERPOLATOR_TYPE /* 88 */:
                case QUANTIZE_MOTION_INTERPOLATOR_ID /* 89 */:
                case QUANTIZE_MOTION_INTERPOLATOR_STR /* 90 */:
                default:
                    Log.w(TAG, "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sMapToConstant.get(index));
                    break;
                case BASELINE_TO_TOP /* 91 */:
                    ConstraintSet$Layout constraintSet$Layout54 = constraintSet$Constraint.layout;
                    constraintSet$Layout54.baselineToTop = lookupID(typedArray, index, constraintSet$Layout54.baselineToTop);
                    break;
                case BASELINE_TO_BOTTOM /* 92 */:
                    ConstraintSet$Layout constraintSet$Layout55 = constraintSet$Constraint.layout;
                    constraintSet$Layout55.baselineToBottom = lookupID(typedArray, index, constraintSet$Layout55.baselineToBottom);
                    break;
                case BASELINE_MARGIN /* 93 */:
                    ConstraintSet$Layout constraintSet$Layout56 = constraintSet$Constraint.layout;
                    constraintSet$Layout56.baselineMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout56.baselineMargin);
                    break;
                case GONE_BASELINE_MARGIN /* 94 */:
                    ConstraintSet$Layout constraintSet$Layout57 = constraintSet$Constraint.layout;
                    constraintSet$Layout57.goneBaselineMargin = typedArray.getDimensionPixelSize(index, constraintSet$Layout57.goneBaselineMargin);
                    break;
                case LAYOUT_CONSTRAINT_WIDTH /* 95 */:
                    parseDimensionConstraints(constraintSet$Constraint.layout, typedArray, index, 0);
                    break;
                case LAYOUT_CONSTRAINT_HEIGHT /* 96 */:
                    parseDimensionConstraints(constraintSet$Constraint.layout, typedArray, index, 1);
                    break;
                case LAYOUT_WRAP_BEHAVIOR /* 97 */:
                    ConstraintSet$Layout constraintSet$Layout58 = constraintSet$Constraint.layout;
                    constraintSet$Layout58.mWrapBehavior = typedArray.getInt(index, constraintSet$Layout58.mWrapBehavior);
                    break;
            }
        }
        ConstraintSet$Layout constraintSet$Layout59 = constraintSet$Constraint.layout;
        if (constraintSet$Layout59.mReferenceIdString != null) {
            constraintSet$Layout59.mReferenceIds = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void populateOverride(ConstraintSet$Constraint constraintSet$Constraint, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        ConstraintSet$Constraint$Delta constraintSet$Constraint$Delta = new ConstraintSet$Constraint$Delta();
        constraintSet$Constraint.mDelta = constraintSet$Constraint$Delta;
        constraintSet$Constraint.motion.mApply = false;
        constraintSet$Constraint.layout.mApply = false;
        constraintSet$Constraint.propertySet.mApply = false;
        constraintSet$Constraint.transform.mApply = false;
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArray.getIndex(i9);
            switch (sOverrideMapToConstant.get(index)) {
                case 2:
                    constraintSet$Constraint$Delta.add(2, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.bottomMargin));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case 29:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case CIRCLE /* 61 */:
                case QUANTIZE_MOTION_INTERPOLATOR_TYPE /* 88 */:
                case QUANTIZE_MOTION_INTERPOLATOR_ID /* 89 */:
                case QUANTIZE_MOTION_INTERPOLATOR_STR /* 90 */:
                case BASELINE_TO_TOP /* 91 */:
                case BASELINE_TO_BOTTOM /* 92 */:
                default:
                    Log.w(TAG, "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sMapToConstant.get(index));
                    break;
                case 5:
                    constraintSet$Constraint$Delta.add(5, typedArray.getString(index));
                    break;
                case 6:
                    constraintSet$Constraint$Delta.add(6, typedArray.getDimensionPixelOffset(index, constraintSet$Constraint.layout.editorAbsoluteX));
                    break;
                case 7:
                    constraintSet$Constraint$Delta.add(7, typedArray.getDimensionPixelOffset(index, constraintSet$Constraint.layout.editorAbsoluteY));
                    break;
                case 8:
                    constraintSet$Constraint$Delta.add(8, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.endMargin));
                    break;
                case 11:
                    constraintSet$Constraint$Delta.add(11, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.goneBottomMargin));
                    break;
                case 12:
                    constraintSet$Constraint$Delta.add(12, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.goneEndMargin));
                    break;
                case 13:
                    constraintSet$Constraint$Delta.add(13, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.goneLeftMargin));
                    break;
                case 14:
                    constraintSet$Constraint$Delta.add(14, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.goneRightMargin));
                    break;
                case 15:
                    constraintSet$Constraint$Delta.add(15, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.goneStartMargin));
                    break;
                case 16:
                    constraintSet$Constraint$Delta.add(16, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.goneTopMargin));
                    break;
                case 17:
                    constraintSet$Constraint$Delta.add(17, typedArray.getDimensionPixelOffset(index, constraintSet$Constraint.layout.guideBegin));
                    break;
                case 18:
                    constraintSet$Constraint$Delta.add(18, typedArray.getDimensionPixelOffset(index, constraintSet$Constraint.layout.guideEnd));
                    break;
                case 19:
                    constraintSet$Constraint$Delta.add(19, typedArray.getFloat(index, constraintSet$Constraint.layout.guidePercent));
                    break;
                case 20:
                    constraintSet$Constraint$Delta.add(20, typedArray.getFloat(index, constraintSet$Constraint.layout.horizontalBias));
                    break;
                case 21:
                    constraintSet$Constraint$Delta.add(21, typedArray.getLayoutDimension(index, constraintSet$Constraint.layout.mHeight));
                    break;
                case 22:
                    constraintSet$Constraint$Delta.add(22, VISIBILITY_FLAGS[typedArray.getInt(index, constraintSet$Constraint.propertySet.visibility)]);
                    break;
                case 23:
                    constraintSet$Constraint$Delta.add(23, typedArray.getLayoutDimension(index, constraintSet$Constraint.layout.mWidth));
                    break;
                case 24:
                    constraintSet$Constraint$Delta.add(24, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.leftMargin));
                    break;
                case 27:
                    constraintSet$Constraint$Delta.add(27, typedArray.getInt(index, constraintSet$Constraint.layout.orientation));
                    break;
                case 28:
                    constraintSet$Constraint$Delta.add(28, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.rightMargin));
                    break;
                case 31:
                    constraintSet$Constraint$Delta.add(31, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.startMargin));
                    break;
                case 34:
                    constraintSet$Constraint$Delta.add(34, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.topMargin));
                    break;
                case 37:
                    constraintSet$Constraint$Delta.add(37, typedArray.getFloat(index, constraintSet$Constraint.layout.verticalBias));
                    break;
                case 38:
                    int resourceId = typedArray.getResourceId(index, constraintSet$Constraint.mViewId);
                    constraintSet$Constraint.mViewId = resourceId;
                    constraintSet$Constraint$Delta.add(38, resourceId);
                    break;
                case 39:
                    constraintSet$Constraint$Delta.add(39, typedArray.getFloat(index, constraintSet$Constraint.layout.horizontalWeight));
                    break;
                case 40:
                    constraintSet$Constraint$Delta.add(40, typedArray.getFloat(index, constraintSet$Constraint.layout.verticalWeight));
                    break;
                case 41:
                    constraintSet$Constraint$Delta.add(41, typedArray.getInt(index, constraintSet$Constraint.layout.horizontalChainStyle));
                    break;
                case 42:
                    constraintSet$Constraint$Delta.add(42, typedArray.getInt(index, constraintSet$Constraint.layout.verticalChainStyle));
                    break;
                case 43:
                    constraintSet$Constraint$Delta.add(43, typedArray.getFloat(index, constraintSet$Constraint.propertySet.alpha));
                    break;
                case 44:
                    constraintSet$Constraint$Delta.add(44, true);
                    constraintSet$Constraint$Delta.add(44, typedArray.getDimension(index, constraintSet$Constraint.transform.elevation));
                    break;
                case 45:
                    constraintSet$Constraint$Delta.add(45, typedArray.getFloat(index, constraintSet$Constraint.transform.rotationX));
                    break;
                case 46:
                    constraintSet$Constraint$Delta.add(46, typedArray.getFloat(index, constraintSet$Constraint.transform.rotationY));
                    break;
                case 47:
                    constraintSet$Constraint$Delta.add(47, typedArray.getFloat(index, constraintSet$Constraint.transform.scaleX));
                    break;
                case 48:
                    constraintSet$Constraint$Delta.add(48, typedArray.getFloat(index, constraintSet$Constraint.transform.scaleY));
                    break;
                case 49:
                    constraintSet$Constraint$Delta.add(49, typedArray.getDimension(index, constraintSet$Constraint.transform.transformPivotX));
                    break;
                case 50:
                    constraintSet$Constraint$Delta.add(50, typedArray.getDimension(index, constraintSet$Constraint.transform.transformPivotY));
                    break;
                case 51:
                    constraintSet$Constraint$Delta.add(51, typedArray.getDimension(index, constraintSet$Constraint.transform.translationX));
                    break;
                case 52:
                    constraintSet$Constraint$Delta.add(52, typedArray.getDimension(index, constraintSet$Constraint.transform.translationY));
                    break;
                case 53:
                    constraintSet$Constraint$Delta.add(53, typedArray.getDimension(index, constraintSet$Constraint.transform.translationZ));
                    break;
                case 54:
                    constraintSet$Constraint$Delta.add(54, typedArray.getInt(index, constraintSet$Constraint.layout.widthDefault));
                    break;
                case 55:
                    constraintSet$Constraint$Delta.add(55, typedArray.getInt(index, constraintSet$Constraint.layout.heightDefault));
                    break;
                case WIDTH_MAX /* 56 */:
                    constraintSet$Constraint$Delta.add(WIDTH_MAX, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.widthMax));
                    break;
                case HEIGHT_MAX /* 57 */:
                    constraintSet$Constraint$Delta.add(HEIGHT_MAX, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.heightMax));
                    break;
                case WIDTH_MIN /* 58 */:
                    constraintSet$Constraint$Delta.add(WIDTH_MIN, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.widthMin));
                    break;
                case HEIGHT_MIN /* 59 */:
                    constraintSet$Constraint$Delta.add(HEIGHT_MIN, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.heightMin));
                    break;
                case ROTATION /* 60 */:
                    constraintSet$Constraint$Delta.add(ROTATION, typedArray.getFloat(index, constraintSet$Constraint.transform.rotation));
                    break;
                case CIRCLE_RADIUS /* 62 */:
                    constraintSet$Constraint$Delta.add(CIRCLE_RADIUS, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.circleRadius));
                    break;
                case 63:
                    constraintSet$Constraint$Delta.add(63, typedArray.getFloat(index, constraintSet$Constraint.layout.circleAngle));
                    break;
                case 64:
                    constraintSet$Constraint$Delta.add(64, lookupID(typedArray, index, constraintSet$Constraint.motion.mAnimateRelativeTo));
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        constraintSet$Constraint$Delta.add(65, typedArray.getString(index));
                    } else {
                        constraintSet$Constraint$Delta.add(65, Easing.NAMED_EASING[typedArray.getInteger(index, 0)]);
                    }
                    break;
                case 66:
                    constraintSet$Constraint$Delta.add(66, typedArray.getInt(index, 0));
                    break;
                case 67:
                    constraintSet$Constraint$Delta.add(67, typedArray.getFloat(index, constraintSet$Constraint.motion.mPathRotate));
                    break;
                case PROGRESS /* 68 */:
                    constraintSet$Constraint$Delta.add(PROGRESS, typedArray.getFloat(index, constraintSet$Constraint.propertySet.mProgress));
                    break;
                case WIDTH_PERCENT /* 69 */:
                    constraintSet$Constraint$Delta.add(WIDTH_PERCENT, typedArray.getFloat(index, 1.0f));
                    break;
                case HEIGHT_PERCENT /* 70 */:
                    constraintSet$Constraint$Delta.add(HEIGHT_PERCENT, typedArray.getFloat(index, 1.0f));
                    break;
                case CHAIN_USE_RTL /* 71 */:
                    Log.e(TAG, "CURRENTLY UNSUPPORTED");
                    break;
                case BARRIER_DIRECTION /* 72 */:
                    constraintSet$Constraint$Delta.add(BARRIER_DIRECTION, typedArray.getInt(index, constraintSet$Constraint.layout.mBarrierDirection));
                    break;
                case BARRIER_MARGIN /* 73 */:
                    constraintSet$Constraint$Delta.add(BARRIER_MARGIN, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.mBarrierMargin));
                    break;
                case CONSTRAINT_REFERENCED_IDS /* 74 */:
                    constraintSet$Constraint$Delta.add(CONSTRAINT_REFERENCED_IDS, typedArray.getString(index));
                    break;
                case BARRIER_ALLOWS_GONE_WIDGETS /* 75 */:
                    constraintSet$Constraint$Delta.add(BARRIER_ALLOWS_GONE_WIDGETS, typedArray.getBoolean(index, constraintSet$Constraint.layout.mBarrierAllowsGoneWidgets));
                    break;
                case PATH_MOTION_ARC /* 76 */:
                    constraintSet$Constraint$Delta.add(PATH_MOTION_ARC, typedArray.getInt(index, constraintSet$Constraint.motion.mPathMotionArc));
                    break;
                case CONSTRAINT_TAG /* 77 */:
                    constraintSet$Constraint$Delta.add(CONSTRAINT_TAG, typedArray.getString(index));
                    break;
                case VISIBILITY_MODE /* 78 */:
                    constraintSet$Constraint$Delta.add(VISIBILITY_MODE, typedArray.getInt(index, constraintSet$Constraint.propertySet.mVisibilityMode));
                    break;
                case MOTION_STAGGER /* 79 */:
                    constraintSet$Constraint$Delta.add(MOTION_STAGGER, typedArray.getFloat(index, constraintSet$Constraint.motion.mMotionStagger));
                    break;
                case CONSTRAINED_WIDTH /* 80 */:
                    constraintSet$Constraint$Delta.add(CONSTRAINED_WIDTH, typedArray.getBoolean(index, constraintSet$Constraint.layout.constrainedWidth));
                    break;
                case CONSTRAINED_HEIGHT /* 81 */:
                    constraintSet$Constraint$Delta.add(CONSTRAINED_HEIGHT, typedArray.getBoolean(index, constraintSet$Constraint.layout.constrainedHeight));
                    break;
                case ANIMATE_CIRCLE_ANGLE_TO /* 82 */:
                    constraintSet$Constraint$Delta.add(ANIMATE_CIRCLE_ANGLE_TO, typedArray.getInteger(index, constraintSet$Constraint.motion.mAnimateCircleAngleTo));
                    break;
                case TRANSFORM_PIVOT_TARGET /* 83 */:
                    constraintSet$Constraint$Delta.add(TRANSFORM_PIVOT_TARGET, lookupID(typedArray, index, constraintSet$Constraint.transform.transformPivotTarget));
                    break;
                case QUANTIZE_MOTION_STEPS /* 84 */:
                    constraintSet$Constraint$Delta.add(QUANTIZE_MOTION_STEPS, typedArray.getInteger(index, constraintSet$Constraint.motion.mQuantizeMotionSteps));
                    break;
                case QUANTIZE_MOTION_PHASE /* 85 */:
                    constraintSet$Constraint$Delta.add(QUANTIZE_MOTION_PHASE, typedArray.getFloat(index, constraintSet$Constraint.motion.mQuantizeMotionPhase));
                    break;
                case QUANTIZE_MOTION_INTERPOLATOR /* 86 */:
                    int i10 = typedArray.peekValue(index).type;
                    if (i10 == 1) {
                        constraintSet$Constraint.motion.mQuantizeInterpolatorID = typedArray.getResourceId(index, -1);
                        constraintSet$Constraint$Delta.add(QUANTIZE_MOTION_INTERPOLATOR_ID, constraintSet$Constraint.motion.mQuantizeInterpolatorID);
                        ConstraintSet$Motion constraintSet$Motion = constraintSet$Constraint.motion;
                        if (constraintSet$Motion.mQuantizeInterpolatorID != -1) {
                            constraintSet$Motion.mQuantizeInterpolatorType = -2;
                            constraintSet$Constraint$Delta.add(QUANTIZE_MOTION_INTERPOLATOR_TYPE, -2);
                        }
                    } else {
                        ConstraintSet$Motion constraintSet$Motion2 = constraintSet$Constraint.motion;
                        if (i10 == 3) {
                            constraintSet$Motion2.mQuantizeInterpolatorString = typedArray.getString(index);
                            constraintSet$Constraint$Delta.add(QUANTIZE_MOTION_INTERPOLATOR_STR, constraintSet$Constraint.motion.mQuantizeInterpolatorString);
                            int iIndexOf = constraintSet$Constraint.motion.mQuantizeInterpolatorString.indexOf("/");
                            ConstraintSet$Motion constraintSet$Motion3 = constraintSet$Constraint.motion;
                            if (iIndexOf > 0) {
                                constraintSet$Motion3.mQuantizeInterpolatorID = typedArray.getResourceId(index, -1);
                                constraintSet$Constraint$Delta.add(QUANTIZE_MOTION_INTERPOLATOR_ID, constraintSet$Constraint.motion.mQuantizeInterpolatorID);
                                constraintSet$Constraint.motion.mQuantizeInterpolatorType = -2;
                                constraintSet$Constraint$Delta.add(QUANTIZE_MOTION_INTERPOLATOR_TYPE, -2);
                            } else {
                                constraintSet$Motion3.mQuantizeInterpolatorType = -1;
                                constraintSet$Constraint$Delta.add(QUANTIZE_MOTION_INTERPOLATOR_TYPE, -1);
                            }
                        } else {
                            constraintSet$Motion2.mQuantizeInterpolatorType = typedArray.getInteger(index, constraintSet$Motion2.mQuantizeInterpolatorID);
                            constraintSet$Constraint$Delta.add(QUANTIZE_MOTION_INTERPOLATOR_TYPE, constraintSet$Constraint.motion.mQuantizeInterpolatorType);
                        }
                    }
                    break;
                case UNUSED /* 87 */:
                    Log.w(TAG, "unused attribute 0x" + Integer.toHexString(index) + "   " + sMapToConstant.get(index));
                    break;
                case BASELINE_MARGIN /* 93 */:
                    constraintSet$Constraint$Delta.add(BASELINE_MARGIN, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.baselineMargin));
                    break;
                case GONE_BASELINE_MARGIN /* 94 */:
                    constraintSet$Constraint$Delta.add(GONE_BASELINE_MARGIN, typedArray.getDimensionPixelSize(index, constraintSet$Constraint.layout.goneBaselineMargin));
                    break;
                case LAYOUT_CONSTRAINT_WIDTH /* 95 */:
                    parseDimensionConstraints(constraintSet$Constraint$Delta, typedArray, index, 0);
                    break;
                case LAYOUT_CONSTRAINT_HEIGHT /* 96 */:
                    parseDimensionConstraints(constraintSet$Constraint$Delta, typedArray, index, 1);
                    break;
                case LAYOUT_WRAP_BEHAVIOR /* 97 */:
                    constraintSet$Constraint$Delta.add(LAYOUT_WRAP_BEHAVIOR, typedArray.getInt(index, constraintSet$Constraint.layout.mWrapBehavior));
                    break;
                case MOTION_TARGET /* 98 */:
                    if (MotionLayout.IS_IN_EDIT_MODE) {
                        int resourceId2 = typedArray.getResourceId(index, constraintSet$Constraint.mViewId);
                        constraintSet$Constraint.mViewId = resourceId2;
                        if (resourceId2 == -1) {
                            constraintSet$Constraint.mTargetString = typedArray.getString(index);
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        constraintSet$Constraint.mTargetString = typedArray.getString(index);
                    } else {
                        constraintSet$Constraint.mViewId = typedArray.getResourceId(index, constraintSet$Constraint.mViewId);
                    }
                    break;
                case GUIDELINE_USE_RTL /* 99 */:
                    constraintSet$Constraint$Delta.add(GUIDELINE_USE_RTL, typedArray.getBoolean(index, constraintSet$Constraint.layout.guidelineUseRtl));
                    break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void setDeltaValue(ConstraintSet$Constraint constraintSet$Constraint, int i9, int i10) {
        if (i9 == 6) {
            constraintSet$Constraint.layout.editorAbsoluteX = i10;
            return;
        }
        if (i9 == 7) {
            constraintSet$Constraint.layout.editorAbsoluteY = i10;
            return;
        }
        if (i9 == 8) {
            constraintSet$Constraint.layout.endMargin = i10;
            return;
        }
        if (i9 == 27) {
            constraintSet$Constraint.layout.orientation = i10;
            return;
        }
        if (i9 == 28) {
            constraintSet$Constraint.layout.rightMargin = i10;
            return;
        }
        if (i9 == 41) {
            constraintSet$Constraint.layout.horizontalChainStyle = i10;
            return;
        }
        if (i9 == 42) {
            constraintSet$Constraint.layout.verticalChainStyle = i10;
            return;
        }
        if (i9 == CIRCLE) {
            constraintSet$Constraint.layout.circleConstraint = i10;
            return;
        }
        if (i9 == CIRCLE_RADIUS) {
            constraintSet$Constraint.layout.circleRadius = i10;
            return;
        }
        if (i9 == BARRIER_DIRECTION) {
            constraintSet$Constraint.layout.mBarrierDirection = i10;
            return;
        }
        if (i9 == BARRIER_MARGIN) {
            constraintSet$Constraint.layout.mBarrierMargin = i10;
            return;
        }
        switch (i9) {
            case 2:
                constraintSet$Constraint.layout.bottomMargin = i10;
                break;
            case 11:
                constraintSet$Constraint.layout.goneBottomMargin = i10;
                break;
            case 12:
                constraintSet$Constraint.layout.goneEndMargin = i10;
                break;
            case 13:
                constraintSet$Constraint.layout.goneLeftMargin = i10;
                break;
            case 14:
                constraintSet$Constraint.layout.goneRightMargin = i10;
                break;
            case 15:
                constraintSet$Constraint.layout.goneStartMargin = i10;
                break;
            case 16:
                constraintSet$Constraint.layout.goneTopMargin = i10;
                break;
            case 17:
                constraintSet$Constraint.layout.guideBegin = i10;
                break;
            case 18:
                constraintSet$Constraint.layout.guideEnd = i10;
                break;
            case 31:
                constraintSet$Constraint.layout.startMargin = i10;
                break;
            case 34:
                constraintSet$Constraint.layout.topMargin = i10;
                break;
            case 38:
                constraintSet$Constraint.mViewId = i10;
                break;
            case 64:
                constraintSet$Constraint.motion.mAnimateRelativeTo = i10;
                break;
            case 66:
                constraintSet$Constraint.motion.mDrawPath = i10;
                break;
            case PATH_MOTION_ARC /* 76 */:
                constraintSet$Constraint.motion.mPathMotionArc = i10;
                break;
            case VISIBILITY_MODE /* 78 */:
                constraintSet$Constraint.propertySet.mVisibilityMode = i10;
                break;
            case BASELINE_MARGIN /* 93 */:
                constraintSet$Constraint.layout.baselineMargin = i10;
                break;
            case GONE_BASELINE_MARGIN /* 94 */:
                constraintSet$Constraint.layout.goneBaselineMargin = i10;
                break;
            case LAYOUT_WRAP_BEHAVIOR /* 97 */:
                constraintSet$Constraint.layout.mWrapBehavior = i10;
                break;
            default:
                switch (i9) {
                    case 21:
                        constraintSet$Constraint.layout.mHeight = i10;
                        break;
                    case 22:
                        constraintSet$Constraint.propertySet.visibility = i10;
                        break;
                    case 23:
                        constraintSet$Constraint.layout.mWidth = i10;
                        break;
                    case 24:
                        constraintSet$Constraint.layout.leftMargin = i10;
                        break;
                    default:
                        switch (i9) {
                            case 54:
                                constraintSet$Constraint.layout.widthDefault = i10;
                                break;
                            case 55:
                                constraintSet$Constraint.layout.heightDefault = i10;
                                break;
                            case WIDTH_MAX /* 56 */:
                                constraintSet$Constraint.layout.widthMax = i10;
                                break;
                            case HEIGHT_MAX /* 57 */:
                                constraintSet$Constraint.layout.heightMax = i10;
                                break;
                            case WIDTH_MIN /* 58 */:
                                constraintSet$Constraint.layout.widthMin = i10;
                                break;
                            case HEIGHT_MIN /* 59 */:
                                constraintSet$Constraint.layout.heightMin = i10;
                                break;
                            default:
                                switch (i9) {
                                    case ANIMATE_CIRCLE_ANGLE_TO /* 82 */:
                                        constraintSet$Constraint.motion.mAnimateCircleAngleTo = i10;
                                        break;
                                    case TRANSFORM_PIVOT_TARGET /* 83 */:
                                        constraintSet$Constraint.transform.transformPivotTarget = i10;
                                        break;
                                    case QUANTIZE_MOTION_STEPS /* 84 */:
                                        constraintSet$Constraint.motion.mQuantizeMotionSteps = i10;
                                        break;
                                    default:
                                        switch (i9) {
                                            case UNUSED /* 87 */:
                                                break;
                                            case QUANTIZE_MOTION_INTERPOLATOR_TYPE /* 88 */:
                                                constraintSet$Constraint.motion.mQuantizeInterpolatorType = i10;
                                                break;
                                            case QUANTIZE_MOTION_INTERPOLATOR_ID /* 89 */:
                                                constraintSet$Constraint.motion.mQuantizeInterpolatorID = i10;
                                                break;
                                            default:
                                                Log.w(TAG, "Unknown attribute 0x");
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String sideToString(int i9) {
        switch (i9) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String[] splitString(String str) {
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        boolean z8 = false;
        for (int i10 = 0; i10 < charArray.length; i10++) {
            char c = charArray[i10];
            if (c == ',' && !z8) {
                arrayList.add(new String(charArray, i9, i10 - i9));
                i9 = i10 + 1;
            } else if (c == '\"') {
                z8 = !z8;
            }
        }
        arrayList.add(new String(charArray, i9, charArray.length - i9));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addColorAttributes(String... strArr) {
        addAttributes(ConstraintAttribute$AttributeType.COLOR_TYPE, strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addFloatAttributes(String... strArr) {
        addAttributes(ConstraintAttribute$AttributeType.FLOAT_TYPE, strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addIntAttributes(String... strArr) {
        addAttributes(ConstraintAttribute$AttributeType.INT_TYPE, strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addStringAttributes(String... strArr) {
        addAttributes(ConstraintAttribute$AttributeType.STRING_TYPE, strArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addToHorizontalChain(int i9, int i10, int i11) {
        connect(i9, 1, i10, i10 == 0 ? 1 : 2, 0);
        connect(i9, 2, i11, i11 == 0 ? 2 : 1, 0);
        if (i10 != 0) {
            connect(i10, 2, i9, 1, 0);
        }
        if (i11 != 0) {
            connect(i11, 1, i9, 2, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addToHorizontalChainRTL(int i9, int i10, int i11) {
        connect(i9, 6, i10, i10 == 0 ? 6 : 7, 0);
        connect(i9, 7, i11, i11 == 0 ? 7 : 6, 0);
        if (i10 != 0) {
            connect(i10, 7, i9, 6, 0);
        }
        if (i11 != 0) {
            connect(i11, 6, i9, 7, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addToVerticalChain(int i9, int i10, int i11) {
        connect(i9, 3, i10, i10 == 0 ? 3 : 4, 0);
        connect(i9, 4, i11, i11 == 0 ? 4 : 3, 0);
        if (i10 != 0) {
            connect(i10, 4, i9, 3, 0);
        }
        if (i11 != 0) {
            connect(i11, 3, i9, 4, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyCustomAttributes(ConstraintLayout constraintLayout) {
        ConstraintSet$Constraint constraintSet$Constraint;
        int childCount = constraintLayout.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = constraintLayout.getChildAt(i9);
            int id = childAt.getId();
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                Log.w(TAG, "id unknown " + Debug.getName(childAt));
            } else if (this.mForceId && id == -1) {
                ai.onnxruntime.b.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                return;
            } else if (this.mConstraints.containsKey(Integer.valueOf(id)) && (constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(id))) != null) {
                ConstraintAttribute.setAttributes(childAt, constraintSet$Constraint.mCustomConstraints);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyDeltaFrom(ConstraintSet constraintSet) {
        for (ConstraintSet$Constraint constraintSet$Constraint : constraintSet.mConstraints.values()) {
            if (constraintSet$Constraint.mDelta != null) {
                if (constraintSet$Constraint.mTargetString == null) {
                    constraintSet$Constraint.mDelta.applyDelta(getConstraint(constraintSet$Constraint.mViewId));
                } else {
                    Iterator<Integer> it = this.mConstraints.keySet().iterator();
                    while (it.hasNext()) {
                        ConstraintSet$Constraint constraint = getConstraint(it.next().intValue());
                        String str = constraint.layout.mConstraintTag;
                        if (str != null && constraintSet$Constraint.mTargetString.matches(str)) {
                            constraintSet$Constraint.mDelta.applyDelta(constraint);
                            constraint.mCustomConstraints.putAll((HashMap) constraintSet$Constraint.mCustomConstraints.clone());
                        }
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyTo(ConstraintLayout constraintLayout) {
        applyToInternal(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyToHelper(ConstraintHelper constraintHelper, ConstraintWidget constraintWidget, ConstraintLayout$LayoutParams constraintLayout$LayoutParams, SparseArray<ConstraintWidget> sparseArray) {
        ConstraintSet$Constraint constraintSet$Constraint;
        int id = constraintHelper.getId();
        if (this.mConstraints.containsKey(Integer.valueOf(id)) && (constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(id))) != null && (constraintWidget instanceof HelperWidget)) {
            constraintHelper.loadParameters(constraintSet$Constraint, (HelperWidget) constraintWidget, constraintLayout$LayoutParams, sparseArray);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyToInternal(ConstraintLayout constraintLayout, boolean z8) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.mConstraints.keySet());
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = constraintLayout.getChildAt(i9);
            int id = childAt.getId();
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                Log.w(TAG, "id unknown " + Debug.getName(childAt));
            } else {
                if (this.mForceId && id == -1) {
                    ai.onnxruntime.b.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                    return;
                }
                if (id != -1) {
                    if (this.mConstraints.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(id));
                        if (constraintSet$Constraint != null) {
                            if (childAt instanceof Barrier) {
                                constraintSet$Constraint.layout.mHelperType = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(constraintSet$Constraint.layout.mBarrierDirection);
                                barrier.setMargin(constraintSet$Constraint.layout.mBarrierMargin);
                                barrier.setAllowsGoneWidget(constraintSet$Constraint.layout.mBarrierAllowsGoneWidgets);
                                ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint.layout;
                                int[] iArr = constraintSet$Layout.mReferenceIds;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = constraintSet$Layout.mReferenceIdString;
                                    if (str != null) {
                                        constraintSet$Layout.mReferenceIds = convertReferenceString(barrier, str);
                                        barrier.setReferencedIds(constraintSet$Constraint.layout.mReferenceIds);
                                    }
                                }
                            }
                            ConstraintLayout$LayoutParams constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) childAt.getLayoutParams();
                            constraintLayout$LayoutParams.validate();
                            constraintSet$Constraint.applyTo(constraintLayout$LayoutParams);
                            if (z8) {
                                ConstraintAttribute.setAttributes(childAt, constraintSet$Constraint.mCustomConstraints);
                            }
                            childAt.setLayoutParams(constraintLayout$LayoutParams);
                            ConstraintSet$PropertySet constraintSet$PropertySet = constraintSet$Constraint.propertySet;
                            if (constraintSet$PropertySet.mVisibilityMode == 0) {
                                childAt.setVisibility(constraintSet$PropertySet.visibility);
                            }
                            childAt.setAlpha(constraintSet$Constraint.propertySet.alpha);
                            childAt.setRotation(constraintSet$Constraint.transform.rotation);
                            childAt.setRotationX(constraintSet$Constraint.transform.rotationX);
                            childAt.setRotationY(constraintSet$Constraint.transform.rotationY);
                            childAt.setScaleX(constraintSet$Constraint.transform.scaleX);
                            childAt.setScaleY(constraintSet$Constraint.transform.scaleY);
                            ConstraintSet$Transform constraintSet$Transform = constraintSet$Constraint.transform;
                            if (constraintSet$Transform.transformPivotTarget != -1) {
                                View viewFindViewById = ((View) childAt.getParent()).findViewById(constraintSet$Constraint.transform.transformPivotTarget);
                                if (viewFindViewById != null) {
                                    float bottom = (viewFindViewById.getBottom() + viewFindViewById.getTop()) / 2.0f;
                                    float right = (viewFindViewById.getRight() + viewFindViewById.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        float left = right - childAt.getLeft();
                                        float top = bottom - childAt.getTop();
                                        childAt.setPivotX(left);
                                        childAt.setPivotY(top);
                                    }
                                }
                            } else {
                                if (!Float.isNaN(constraintSet$Transform.transformPivotX)) {
                                    childAt.setPivotX(constraintSet$Constraint.transform.transformPivotX);
                                }
                                if (!Float.isNaN(constraintSet$Constraint.transform.transformPivotY)) {
                                    childAt.setPivotY(constraintSet$Constraint.transform.transformPivotY);
                                }
                            }
                            childAt.setTranslationX(constraintSet$Constraint.transform.translationX);
                            childAt.setTranslationY(constraintSet$Constraint.transform.translationY);
                            childAt.setTranslationZ(constraintSet$Constraint.transform.translationZ);
                            ConstraintSet$Transform constraintSet$Transform2 = constraintSet$Constraint.transform;
                            if (constraintSet$Transform2.applyElevation) {
                                childAt.setElevation(constraintSet$Transform2.elevation);
                            }
                        }
                    } else {
                        Log.v(TAG, "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            ConstraintSet$Constraint constraintSet$Constraint2 = this.mConstraints.get(num);
            if (constraintSet$Constraint2 != null) {
                if (constraintSet$Constraint2.layout.mHelperType == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    ConstraintSet$Layout constraintSet$Layout2 = constraintSet$Constraint2.layout;
                    int[] iArr2 = constraintSet$Layout2.mReferenceIds;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = constraintSet$Layout2.mReferenceIdString;
                        if (str2 != null) {
                            constraintSet$Layout2.mReferenceIds = convertReferenceString(barrier2, str2);
                            barrier2.setReferencedIds(constraintSet$Constraint2.layout.mReferenceIds);
                        }
                    }
                    barrier2.setType(constraintSet$Constraint2.layout.mBarrierDirection);
                    barrier2.setMargin(constraintSet$Constraint2.layout.mBarrierMargin);
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParamsGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.validateParams();
                    constraintSet$Constraint2.applyTo(constraintLayout$LayoutParamsGenerateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, constraintLayout$LayoutParamsGenerateDefaultLayoutParams);
                }
                if (constraintSet$Constraint2.layout.mIsGuideline) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParamsGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    constraintSet$Constraint2.applyTo(constraintLayout$LayoutParamsGenerateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, constraintLayout$LayoutParamsGenerateDefaultLayoutParams2);
                }
            }
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt2 = constraintLayout.getChildAt(i10);
            if (childAt2 instanceof ConstraintHelper) {
                ((ConstraintHelper) childAt2).applyLayoutFeaturesInConstraintSet(constraintLayout);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyToLayoutParams(int i9, ConstraintLayout$LayoutParams constraintLayout$LayoutParams) {
        ConstraintSet$Constraint constraintSet$Constraint;
        if (!this.mConstraints.containsKey(Integer.valueOf(i9)) || (constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(i9))) == null) {
            return;
        }
        constraintSet$Constraint.applyTo(constraintLayout$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyToWithoutCustom(ConstraintLayout constraintLayout) {
        applyToInternal(constraintLayout, false);
        constraintLayout.setConstraintSet(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void center(int i9, int i10, int i11, int i12, int i13, int i14, int i15, float f8) {
        if (i12 < 0) {
            i.k("margin must be > 0");
            return;
        }
        if (i15 < 0) {
            i.k("margin must be > 0");
            return;
        }
        if (f8 <= 0.0f || f8 > 1.0f) {
            i.k("bias must be between 0 and 1 inclusive");
            return;
        }
        if (i11 == 1 || i11 == 2) {
            connect(i9, 1, i10, i11, i12);
            connect(i9, 2, i13, i14, i15);
            ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(i9));
            if (constraintSet$Constraint != null) {
                constraintSet$Constraint.layout.horizontalBias = f8;
                return;
            }
            return;
        }
        if (i11 == 6 || i11 == 7) {
            connect(i9, 6, i10, i11, i12);
            connect(i9, 7, i13, i14, i15);
            ConstraintSet$Constraint constraintSet$Constraint2 = this.mConstraints.get(Integer.valueOf(i9));
            if (constraintSet$Constraint2 != null) {
                constraintSet$Constraint2.layout.horizontalBias = f8;
                return;
            }
            return;
        }
        connect(i9, 3, i10, i11, i12);
        connect(i9, 4, i13, i14, i15);
        ConstraintSet$Constraint constraintSet$Constraint3 = this.mConstraints.get(Integer.valueOf(i9));
        if (constraintSet$Constraint3 != null) {
            constraintSet$Constraint3.layout.verticalBias = f8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void centerHorizontally(int i9, int i10, int i11, int i12, int i13, int i14, int i15, float f8) {
        connect(i9, 1, i10, i11, i12);
        connect(i9, 2, i13, i14, i15);
        ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(i9));
        if (constraintSet$Constraint != null) {
            constraintSet$Constraint.layout.horizontalBias = f8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void centerHorizontallyRtl(int i9, int i10, int i11, int i12, int i13, int i14, int i15, float f8) {
        connect(i9, 6, i10, i11, i12);
        connect(i9, 7, i13, i14, i15);
        ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(i9));
        if (constraintSet$Constraint != null) {
            constraintSet$Constraint.layout.horizontalBias = f8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void centerVertically(int i9, int i10, int i11, int i12, int i13, int i14, int i15, float f8) {
        connect(i9, 3, i10, i11, i12);
        connect(i9, 4, i13, i14, i15);
        ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(i9));
        if (constraintSet$Constraint != null) {
            constraintSet$Constraint.layout.verticalBias = f8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear(int i9, int i10) {
        ConstraintSet$Constraint constraintSet$Constraint;
        if (!this.mConstraints.containsKey(Integer.valueOf(i9)) || (constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(i9))) == null) {
            return;
        }
        switch (i10) {
            case 1:
                ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint.layout;
                constraintSet$Layout.leftToRight = -1;
                constraintSet$Layout.leftToLeft = -1;
                constraintSet$Layout.leftMargin = -1;
                constraintSet$Layout.goneLeftMargin = Integer.MIN_VALUE;
                break;
            case 2:
                ConstraintSet$Layout constraintSet$Layout2 = constraintSet$Constraint.layout;
                constraintSet$Layout2.rightToRight = -1;
                constraintSet$Layout2.rightToLeft = -1;
                constraintSet$Layout2.rightMargin = -1;
                constraintSet$Layout2.goneRightMargin = Integer.MIN_VALUE;
                break;
            case 3:
                ConstraintSet$Layout constraintSet$Layout3 = constraintSet$Constraint.layout;
                constraintSet$Layout3.topToBottom = -1;
                constraintSet$Layout3.topToTop = -1;
                constraintSet$Layout3.topMargin = 0;
                constraintSet$Layout3.goneTopMargin = Integer.MIN_VALUE;
                break;
            case 4:
                ConstraintSet$Layout constraintSet$Layout4 = constraintSet$Constraint.layout;
                constraintSet$Layout4.bottomToTop = -1;
                constraintSet$Layout4.bottomToBottom = -1;
                constraintSet$Layout4.bottomMargin = 0;
                constraintSet$Layout4.goneBottomMargin = Integer.MIN_VALUE;
                break;
            case 5:
                ConstraintSet$Layout constraintSet$Layout5 = constraintSet$Constraint.layout;
                constraintSet$Layout5.baselineToBaseline = -1;
                constraintSet$Layout5.baselineToTop = -1;
                constraintSet$Layout5.baselineToBottom = -1;
                constraintSet$Layout5.baselineMargin = 0;
                constraintSet$Layout5.goneBaselineMargin = Integer.MIN_VALUE;
                break;
            case 6:
                ConstraintSet$Layout constraintSet$Layout6 = constraintSet$Constraint.layout;
                constraintSet$Layout6.startToEnd = -1;
                constraintSet$Layout6.startToStart = -1;
                constraintSet$Layout6.startMargin = 0;
                constraintSet$Layout6.goneStartMargin = Integer.MIN_VALUE;
                break;
            case 7:
                ConstraintSet$Layout constraintSet$Layout7 = constraintSet$Constraint.layout;
                constraintSet$Layout7.endToStart = -1;
                constraintSet$Layout7.endToEnd = -1;
                constraintSet$Layout7.endMargin = 0;
                constraintSet$Layout7.goneEndMargin = Integer.MIN_VALUE;
                break;
            case 8:
                ConstraintSet$Layout constraintSet$Layout8 = constraintSet$Constraint.layout;
                constraintSet$Layout8.circleAngle = -1.0f;
                constraintSet$Layout8.circleRadius = -1;
                constraintSet$Layout8.circleConstraint = -1;
                break;
            default:
                i.k("unknown constraint");
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clone(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.mConstraints.clear();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = constraintLayout.getChildAt(i9);
            ConstraintLayout$LayoutParams constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.mForceId && id == -1) {
                ai.onnxruntime.b.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                return;
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                this.mConstraints.put(Integer.valueOf(id), new ConstraintSet$Constraint());
            }
            ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(id));
            if (constraintSet$Constraint != null) {
                constraintSet$Constraint.mCustomConstraints = ConstraintAttribute.extractAttributes(this.mSavedAttributes, childAt);
                ConstraintSet$Constraint.access$000(constraintSet$Constraint, id, constraintLayout$LayoutParams);
                constraintSet$Constraint.propertySet.visibility = childAt.getVisibility();
                constraintSet$Constraint.propertySet.alpha = childAt.getAlpha();
                constraintSet$Constraint.transform.rotation = childAt.getRotation();
                constraintSet$Constraint.transform.rotationX = childAt.getRotationX();
                constraintSet$Constraint.transform.rotationY = childAt.getRotationY();
                constraintSet$Constraint.transform.scaleX = childAt.getScaleX();
                constraintSet$Constraint.transform.scaleY = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    ConstraintSet$Transform constraintSet$Transform = constraintSet$Constraint.transform;
                    constraintSet$Transform.transformPivotX = pivotX;
                    constraintSet$Transform.transformPivotY = pivotY;
                }
                constraintSet$Constraint.transform.translationX = childAt.getTranslationX();
                constraintSet$Constraint.transform.translationY = childAt.getTranslationY();
                constraintSet$Constraint.transform.translationZ = childAt.getTranslationZ();
                ConstraintSet$Transform constraintSet$Transform2 = constraintSet$Constraint.transform;
                if (constraintSet$Transform2.applyElevation) {
                    constraintSet$Transform2.elevation = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    constraintSet$Constraint.layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                    constraintSet$Constraint.layout.mReferenceIds = barrier.getReferencedIds();
                    constraintSet$Constraint.layout.mBarrierDirection = barrier.getType();
                    constraintSet$Constraint.layout.mBarrierMargin = barrier.getMargin();
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void connect(int i9, int i10, int i11, int i12, int i13) {
        if (!this.mConstraints.containsKey(Integer.valueOf(i9))) {
            this.mConstraints.put(Integer.valueOf(i9), new ConstraintSet$Constraint());
        }
        ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(i9));
        if (constraintSet$Constraint == null) {
        }
        switch (i10) {
            case 1:
                if (i12 == 1) {
                    ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint.layout;
                    constraintSet$Layout.leftToLeft = i11;
                    constraintSet$Layout.leftToRight = -1;
                } else if (i12 != 2) {
                    i.k(a.p(new StringBuilder("Left to "), sideToString(i12), " undefined"));
                } else {
                    ConstraintSet$Layout constraintSet$Layout2 = constraintSet$Constraint.layout;
                    constraintSet$Layout2.leftToRight = i11;
                    constraintSet$Layout2.leftToLeft = -1;
                }
                constraintSet$Constraint.layout.leftMargin = i13;
                break;
            case 2:
                if (i12 == 1) {
                    ConstraintSet$Layout constraintSet$Layout3 = constraintSet$Constraint.layout;
                    constraintSet$Layout3.rightToLeft = i11;
                    constraintSet$Layout3.rightToRight = -1;
                } else if (i12 != 2) {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                } else {
                    ConstraintSet$Layout constraintSet$Layout4 = constraintSet$Constraint.layout;
                    constraintSet$Layout4.rightToRight = i11;
                    constraintSet$Layout4.rightToLeft = -1;
                }
                constraintSet$Constraint.layout.rightMargin = i13;
                break;
            case 3:
                if (i12 == 3) {
                    ConstraintSet$Layout constraintSet$Layout5 = constraintSet$Constraint.layout;
                    constraintSet$Layout5.topToTop = i11;
                    constraintSet$Layout5.topToBottom = -1;
                    constraintSet$Layout5.baselineToBaseline = -1;
                    constraintSet$Layout5.baselineToTop = -1;
                    constraintSet$Layout5.baselineToBottom = -1;
                } else if (i12 != 4) {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                } else {
                    ConstraintSet$Layout constraintSet$Layout6 = constraintSet$Constraint.layout;
                    constraintSet$Layout6.topToBottom = i11;
                    constraintSet$Layout6.topToTop = -1;
                    constraintSet$Layout6.baselineToBaseline = -1;
                    constraintSet$Layout6.baselineToTop = -1;
                    constraintSet$Layout6.baselineToBottom = -1;
                }
                constraintSet$Constraint.layout.topMargin = i13;
                break;
            case 4:
                if (i12 == 4) {
                    ConstraintSet$Layout constraintSet$Layout7 = constraintSet$Constraint.layout;
                    constraintSet$Layout7.bottomToBottom = i11;
                    constraintSet$Layout7.bottomToTop = -1;
                    constraintSet$Layout7.baselineToBaseline = -1;
                    constraintSet$Layout7.baselineToTop = -1;
                    constraintSet$Layout7.baselineToBottom = -1;
                } else if (i12 != 3) {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                } else {
                    ConstraintSet$Layout constraintSet$Layout8 = constraintSet$Constraint.layout;
                    constraintSet$Layout8.bottomToTop = i11;
                    constraintSet$Layout8.bottomToBottom = -1;
                    constraintSet$Layout8.baselineToBaseline = -1;
                    constraintSet$Layout8.baselineToTop = -1;
                    constraintSet$Layout8.baselineToBottom = -1;
                }
                constraintSet$Constraint.layout.bottomMargin = i13;
                break;
            case 5:
                if (i12 == 5) {
                    ConstraintSet$Layout constraintSet$Layout9 = constraintSet$Constraint.layout;
                    constraintSet$Layout9.baselineToBaseline = i11;
                    constraintSet$Layout9.bottomToBottom = -1;
                    constraintSet$Layout9.bottomToTop = -1;
                    constraintSet$Layout9.topToTop = -1;
                    constraintSet$Layout9.topToBottom = -1;
                } else if (i12 == 3) {
                    ConstraintSet$Layout constraintSet$Layout10 = constraintSet$Constraint.layout;
                    constraintSet$Layout10.baselineToTop = i11;
                    constraintSet$Layout10.bottomToBottom = -1;
                    constraintSet$Layout10.bottomToTop = -1;
                    constraintSet$Layout10.topToTop = -1;
                    constraintSet$Layout10.topToBottom = -1;
                } else if (i12 != 4) {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                } else {
                    ConstraintSet$Layout constraintSet$Layout11 = constraintSet$Constraint.layout;
                    constraintSet$Layout11.baselineToBottom = i11;
                    constraintSet$Layout11.bottomToBottom = -1;
                    constraintSet$Layout11.bottomToTop = -1;
                    constraintSet$Layout11.topToTop = -1;
                    constraintSet$Layout11.topToBottom = -1;
                }
                break;
            case 6:
                if (i12 == 6) {
                    ConstraintSet$Layout constraintSet$Layout12 = constraintSet$Constraint.layout;
                    constraintSet$Layout12.startToStart = i11;
                    constraintSet$Layout12.startToEnd = -1;
                } else if (i12 != 7) {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                } else {
                    ConstraintSet$Layout constraintSet$Layout13 = constraintSet$Constraint.layout;
                    constraintSet$Layout13.startToEnd = i11;
                    constraintSet$Layout13.startToStart = -1;
                }
                constraintSet$Constraint.layout.startMargin = i13;
                break;
            case 7:
                if (i12 == 7) {
                    ConstraintSet$Layout constraintSet$Layout14 = constraintSet$Constraint.layout;
                    constraintSet$Layout14.endToEnd = i11;
                    constraintSet$Layout14.endToStart = -1;
                } else if (i12 != 6) {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                } else {
                    ConstraintSet$Layout constraintSet$Layout15 = constraintSet$Constraint.layout;
                    constraintSet$Layout15.endToStart = i11;
                    constraintSet$Layout15.endToEnd = -1;
                }
                constraintSet$Constraint.layout.endMargin = i13;
                break;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append(sideToString(i10));
                sb.append(" to ");
                i.k(a.p(sb, sideToString(i12), " unknown"));
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainCircle(int i9, int i10, int i11, float f8) {
        ConstraintSet$Layout constraintSet$Layout = get(i9).layout;
        constraintSet$Layout.circleConstraint = i10;
        constraintSet$Layout.circleRadius = i11;
        constraintSet$Layout.circleAngle = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainDefaultHeight(int i9, int i10) {
        get(i9).layout.heightDefault = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainDefaultWidth(int i9, int i10) {
        get(i9).layout.widthDefault = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainHeight(int i9, int i10) {
        get(i9).layout.mHeight = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainMaxHeight(int i9, int i10) {
        get(i9).layout.heightMax = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainMaxWidth(int i9, int i10) {
        get(i9).layout.widthMax = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainMinHeight(int i9, int i10) {
        get(i9).layout.heightMin = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainMinWidth(int i9, int i10) {
        get(i9).layout.widthMin = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainPercentHeight(int i9, float f8) {
        get(i9).layout.heightPercent = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainPercentWidth(int i9, float f8) {
        get(i9).layout.widthPercent = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainWidth(int i9, int i10) {
        get(i9).layout.mWidth = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainedHeight(int i9, boolean z8) {
        get(i9).layout.constrainedHeight = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void constrainedWidth(int i9, boolean z8) {
        get(i9).layout.constrainedWidth = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void create(int i9, int i10) {
        ConstraintSet$Layout constraintSet$Layout = get(i9).layout;
        constraintSet$Layout.mIsGuideline = true;
        constraintSet$Layout.orientation = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createBarrier(int i9, int i10, int i11, int... iArr) {
        ConstraintSet$Layout constraintSet$Layout = get(i9).layout;
        constraintSet$Layout.mHelperType = 1;
        constraintSet$Layout.mBarrierDirection = i10;
        constraintSet$Layout.mBarrierMargin = i11;
        constraintSet$Layout.mIsGuideline = false;
        constraintSet$Layout.mReferenceIds = iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createHorizontalChainRtl(int i9, int i10, int i11, int i12, int[] iArr, float[] fArr, int i13) {
        createHorizontalChain(i9, i10, i11, i12, iArr, fArr, i13, 6, 7);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createVerticalChain(int i9, int i10, int i11, int i12, int[] iArr, float[] fArr, int i13) {
        if (iArr.length < 2) {
            i.k("must have 2 or more widgets in a chain");
            return;
        }
        if (fArr != null && fArr.length != iArr.length) {
            i.k("must have 2 or more widgets in a chain");
            return;
        }
        if (fArr != null) {
            get(iArr[0]).layout.verticalWeight = fArr[0];
        }
        get(iArr[0]).layout.verticalChainStyle = i13;
        connect(iArr[0], 3, i9, i10, 0);
        for (int i14 = 1; i14 < iArr.length; i14++) {
            int i15 = i14 - 1;
            connect(iArr[i14], 3, iArr[i15], 4, 0);
            connect(iArr[i15], 4, iArr[i14], 3, 0);
            if (fArr != null) {
                get(iArr[i14]).layout.verticalWeight = fArr[i14];
            }
        }
        connect(iArr[iArr.length - 1], 4, i11, i12, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dump(MotionScene motionScene, int... iArr) {
        HashSet hashSet;
        Set<Integer> setKeySet = this.mConstraints.keySet();
        if (iArr.length != 0) {
            hashSet = new HashSet();
            for (int i9 : iArr) {
                hashSet.add(Integer.valueOf(i9));
            }
        } else {
            hashSet = new HashSet(setKeySet);
        }
        System.out.println(hashSet.size() + " constraints");
        StringBuilder sb = new StringBuilder();
        for (Integer num : (Integer[]) hashSet.toArray(new Integer[0])) {
            ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(num);
            if (constraintSet$Constraint != null) {
                sb.append("<Constraint id=");
                sb.append(num);
                sb.append(" \n");
                constraintSet$Constraint.layout.dump(motionScene, sb);
                sb.append("/>\n");
            }
        }
        System.out.println(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getApplyElevation(int i9) {
        return get(i9).transform.applyElevation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintSet$Constraint getConstraint(int i9) {
        if (this.mConstraints.containsKey(Integer.valueOf(i9))) {
            return this.mConstraints.get(Integer.valueOf(i9));
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HashMap<String, ConstraintAttribute> getCustomAttributeSet() {
        return this.mSavedAttributes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHeight(int i9) {
        return get(i9).layout.mHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] getKnownIds() {
        Integer[] numArr = (Integer[]) this.mConstraints.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i9 = 0; i9 < length; i9++) {
            iArr[i9] = numArr[i9].intValue();
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintSet$Constraint getParameters(int i9) {
        return get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] getReferencedIds(int i9) {
        int[] iArr = get(i9).layout.mReferenceIds;
        return iArr == null ? new int[0] : Arrays.copyOf(iArr, iArr.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getStateLabels() {
        String[] strArr = this.mMatchLabels;
        return (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVisibility(int i9) {
        return get(i9).propertySet.visibility;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVisibilityMode(int i9) {
        return get(i9).propertySet.mVisibilityMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWidth(int i9) {
        return get(i9).layout.mWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isForceId() {
        return this.mForceId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isValidateOnParse() {
        return this.mValidate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void load(Context context, XmlPullParser xmlPullParser) {
        try {
            int eventType = xmlPullParser.getEventType();
            ConstraintSet$Constraint constraintSet$ConstraintFillFromAttributeList = null;
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case -2025855158:
                            if (!name.equals("Layout")) {
                                continue;
                            } else {
                                if (constraintSet$ConstraintFillFromAttributeList == null) {
                                    throw new RuntimeException(ERROR_MESSAGE + xmlPullParser.getLineNumber());
                                }
                                constraintSet$ConstraintFillFromAttributeList.layout.fillFromAttributeList(context, Xml.asAttributeSet(xmlPullParser));
                            }
                            break;
                        case -1984451626:
                            if (!name.equals(TypedValues$MotionType.NAME)) {
                                continue;
                            } else {
                                if (constraintSet$ConstraintFillFromAttributeList == null) {
                                    throw new RuntimeException(ERROR_MESSAGE + xmlPullParser.getLineNumber());
                                }
                                constraintSet$ConstraintFillFromAttributeList.motion.fillFromAttributeList(context, Xml.asAttributeSet(xmlPullParser));
                            }
                            break;
                        case -1962203927:
                            if (!name.equals(ViewTransition.CONSTRAINT_OVERRIDE)) {
                                continue;
                            } else {
                                constraintSet$ConstraintFillFromAttributeList = fillFromAttributeList(context, Xml.asAttributeSet(xmlPullParser), true);
                            }
                            break;
                        case -1269513683:
                            if (!name.equals("PropertySet")) {
                                continue;
                            } else {
                                if (constraintSet$ConstraintFillFromAttributeList == null) {
                                    throw new RuntimeException(ERROR_MESSAGE + xmlPullParser.getLineNumber());
                                }
                                constraintSet$ConstraintFillFromAttributeList.propertySet.fillFromAttributeList(context, Xml.asAttributeSet(xmlPullParser));
                            }
                            break;
                        case -1238332596:
                            if (!name.equals("Transform")) {
                                continue;
                            } else {
                                if (constraintSet$ConstraintFillFromAttributeList == null) {
                                    throw new RuntimeException(ERROR_MESSAGE + xmlPullParser.getLineNumber());
                                }
                                constraintSet$ConstraintFillFromAttributeList.transform.fillFromAttributeList(context, Xml.asAttributeSet(xmlPullParser));
                            }
                            break;
                        case -71750448:
                            if (!name.equals("Guideline")) {
                                continue;
                            } else {
                                constraintSet$ConstraintFillFromAttributeList = fillFromAttributeList(context, Xml.asAttributeSet(xmlPullParser), false);
                                ConstraintSet$Layout constraintSet$Layout = constraintSet$ConstraintFillFromAttributeList.layout;
                                constraintSet$Layout.mIsGuideline = true;
                                constraintSet$Layout.mApply = true;
                            }
                            break;
                        case 366511058:
                            if (!name.equals(ViewTransition.CUSTOM_METHOD)) {
                                continue;
                            }
                            break;
                        case 1331510167:
                            if (!name.equals("Barrier")) {
                                continue;
                            } else {
                                constraintSet$ConstraintFillFromAttributeList = fillFromAttributeList(context, Xml.asAttributeSet(xmlPullParser), false);
                                constraintSet$ConstraintFillFromAttributeList.layout.mHelperType = 1;
                            }
                            break;
                        case 1791837707:
                            if (!name.equals(ViewTransition.CUSTOM_ATTRIBUTE)) {
                                continue;
                            }
                            break;
                        case 1803088381:
                            if (!name.equals("Constraint")) {
                                continue;
                            } else {
                                constraintSet$ConstraintFillFromAttributeList = fillFromAttributeList(context, Xml.asAttributeSet(xmlPullParser), false);
                            }
                            break;
                        default:
                            continue;
                    }
                    if (constraintSet$ConstraintFillFromAttributeList == null) {
                        throw new RuntimeException(ERROR_MESSAGE + xmlPullParser.getLineNumber());
                    }
                    ConstraintAttribute.parse(context, xmlPullParser, constraintSet$ConstraintFillFromAttributeList.mCustomConstraints);
                } else if (eventType == 3) {
                    String lowerCase = xmlPullParser.getName().toLowerCase(Locale.ROOT);
                    switch (lowerCase.hashCode()) {
                        case -2075718416:
                            if (!lowerCase.equals("guideline")) {
                                break;
                            }
                            break;
                        case -190376483:
                            if (!lowerCase.equals("constraint")) {
                            }
                            break;
                        case 426575017:
                            if (!lowerCase.equals("constraintoverride")) {
                            }
                            break;
                        case 2146106725:
                            if (!lowerCase.equals("constraintset")) {
                                continue;
                            } else {
                                return;
                            }
                            break;
                        default:
                            continue;
                    }
                    this.mConstraints.put(Integer.valueOf(constraintSet$ConstraintFillFromAttributeList.mViewId), constraintSet$ConstraintFillFromAttributeList);
                    constraintSet$ConstraintFillFromAttributeList = null;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e) {
            Log.e(TAG, "Error parsing XML resource", e);
        } catch (XmlPullParserException e6) {
            Log.e(TAG, "Error parsing XML resource", e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean matchesLabels(String... strArr) {
        for (String str : strArr) {
            for (String str2 : this.mMatchLabels) {
                if (str2.equals(str)) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void parseColorAttributes(ConstraintSet$Constraint constraintSet$Constraint, String str) {
        String[] strArrSplit = str.split(",");
        for (int i9 = 0; i9 < strArrSplit.length; i9++) {
            String[] strArrSplit2 = strArrSplit[i9].split("=");
            if (strArrSplit2.length != 2) {
                Log.w(TAG, " Unable to parse " + strArrSplit[i9]);
            } else {
                ConstraintSet$Constraint.access$1000(constraintSet$Constraint, strArrSplit2[0], Color.parseColor(strArrSplit2[1]));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void parseFloatAttributes(ConstraintSet$Constraint constraintSet$Constraint, String str) {
        String[] strArrSplit = str.split(",");
        for (int i9 = 0; i9 < strArrSplit.length; i9++) {
            String[] strArrSplit2 = strArrSplit[i9].split("=");
            if (strArrSplit2.length != 2) {
                Log.w(TAG, " Unable to parse " + strArrSplit[i9]);
            } else {
                ConstraintSet$Constraint.access$1100(constraintSet$Constraint, strArrSplit2[0], Float.parseFloat(strArrSplit2[1]));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void parseIntAttributes(ConstraintSet$Constraint constraintSet$Constraint, String str) {
        String[] strArrSplit = str.split(",");
        for (int i9 = 0; i9 < strArrSplit.length; i9++) {
            String[] strArrSplit2 = strArrSplit[i9].split("=");
            if (strArrSplit2.length != 2) {
                Log.w(TAG, " Unable to parse " + strArrSplit[i9]);
            } else {
                ConstraintSet$Constraint.access$1100(constraintSet$Constraint, strArrSplit2[0], Integer.decode(strArrSplit2[1]).intValue());
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void parseStringAttributes(ConstraintSet$Constraint constraintSet$Constraint, String str) {
        String[] strArrSplitString = splitString(str);
        for (int i9 = 0; i9 < strArrSplitString.length; i9++) {
            String[] strArrSplit = strArrSplitString[i9].split("=");
            Log.w(TAG, " Unable to parse " + strArrSplitString[i9]);
            ConstraintSet$Constraint.access$1200(constraintSet$Constraint, strArrSplit[0], strArrSplit[1]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void readFallback(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = constraintLayout.getChildAt(i9);
            ConstraintLayout$LayoutParams constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.mForceId && id == -1) {
                ai.onnxruntime.b.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                return;
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                this.mConstraints.put(Integer.valueOf(id), new ConstraintSet$Constraint());
            }
            ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(id));
            if (constraintSet$Constraint != null) {
                if (!constraintSet$Constraint.layout.mApply) {
                    ConstraintSet$Constraint.access$000(constraintSet$Constraint, id, constraintLayout$LayoutParams);
                    if (childAt instanceof ConstraintHelper) {
                        constraintSet$Constraint.layout.mReferenceIds = ((ConstraintHelper) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            constraintSet$Constraint.layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                            constraintSet$Constraint.layout.mBarrierDirection = barrier.getType();
                            constraintSet$Constraint.layout.mBarrierMargin = barrier.getMargin();
                        }
                    }
                    constraintSet$Constraint.layout.mApply = true;
                }
                ConstraintSet$PropertySet constraintSet$PropertySet = constraintSet$Constraint.propertySet;
                if (!constraintSet$PropertySet.mApply) {
                    constraintSet$PropertySet.visibility = childAt.getVisibility();
                    constraintSet$Constraint.propertySet.alpha = childAt.getAlpha();
                    constraintSet$Constraint.propertySet.mApply = true;
                }
                ConstraintSet$Transform constraintSet$Transform = constraintSet$Constraint.transform;
                if (!constraintSet$Transform.mApply) {
                    constraintSet$Transform.mApply = true;
                    constraintSet$Transform.rotation = childAt.getRotation();
                    constraintSet$Constraint.transform.rotationX = childAt.getRotationX();
                    constraintSet$Constraint.transform.rotationY = childAt.getRotationY();
                    constraintSet$Constraint.transform.scaleX = childAt.getScaleX();
                    constraintSet$Constraint.transform.scaleY = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        ConstraintSet$Transform constraintSet$Transform2 = constraintSet$Constraint.transform;
                        constraintSet$Transform2.transformPivotX = pivotX;
                        constraintSet$Transform2.transformPivotY = pivotY;
                    }
                    constraintSet$Constraint.transform.translationX = childAt.getTranslationX();
                    constraintSet$Constraint.transform.translationY = childAt.getTranslationY();
                    constraintSet$Constraint.transform.translationZ = childAt.getTranslationZ();
                    ConstraintSet$Transform constraintSet$Transform3 = constraintSet$Constraint.transform;
                    if (constraintSet$Transform3.applyElevation) {
                        constraintSet$Transform3.elevation = childAt.getElevation();
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeAttribute(String str) {
        this.mSavedAttributes.remove(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeFromHorizontalChain(int i9) {
        ConstraintSet$Constraint constraintSet$Constraint;
        if (!this.mConstraints.containsKey(Integer.valueOf(i9)) || (constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(i9))) == null) {
            return;
        }
        ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint.layout;
        int i10 = constraintSet$Layout.leftToRight;
        int i11 = constraintSet$Layout.rightToLeft;
        if (i10 != -1 || i11 != -1) {
            if (i10 == -1 || i11 == -1) {
                int i12 = constraintSet$Layout.rightToRight;
                if (i12 != -1) {
                    connect(i10, 2, i12, 2, 0);
                } else {
                    int i13 = constraintSet$Layout.leftToLeft;
                    if (i13 != -1) {
                        connect(i11, 1, i13, 1, 0);
                    }
                }
            } else {
                connect(i10, 2, i11, 1, 0);
                connect(i11, 1, i10, 2, 0);
            }
            clear(i9, 1);
            clear(i9, 2);
            return;
        }
        int i14 = constraintSet$Layout.startToEnd;
        int i15 = constraintSet$Layout.endToStart;
        if (i14 != -1 || i15 != -1) {
            if (i14 != -1 && i15 != -1) {
                connect(i14, 7, i15, 6, 0);
                connect(i15, 6, i10, 7, 0);
            } else if (i15 != -1) {
                int i16 = constraintSet$Layout.rightToRight;
                if (i16 != -1) {
                    connect(i10, 7, i16, 7, 0);
                } else {
                    int i17 = constraintSet$Layout.leftToLeft;
                    if (i17 != -1) {
                        connect(i15, 6, i17, 6, 0);
                    }
                }
            }
        }
        clear(i9, 6);
        clear(i9, 7);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public void removeFromVerticalChain(int i9) {
        if (this.mConstraints.containsKey(Integer.valueOf(i9))) {
            ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(i9));
            if (constraintSet$Constraint == null) {
                return;
            }
            ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint.layout;
            int i10 = constraintSet$Layout.topToBottom;
            int i11 = constraintSet$Layout.bottomToTop;
            if (i10 != -1 || i11 != -1) {
                if (i10 == -1 || i11 == -1) {
                    int i12 = constraintSet$Layout.bottomToBottom;
                    if (i12 != -1) {
                        connect(i10, 4, i12, 4, 0);
                    } else {
                        int i13 = constraintSet$Layout.topToTop;
                        if (i13 != -1) {
                            connect(i11, 3, i13, 3, 0);
                        }
                    }
                } else {
                    connect(i10, 4, i11, 3, 0);
                    connect(i11, 3, i10, 4, 0);
                }
            }
        }
        clear(i9, 3);
        clear(i9, 4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAlpha(int i9, float f8) {
        get(i9).propertySet.alpha = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setApplyElevation(int i9, boolean z8) {
        get(i9).transform.applyElevation = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBarrierType(int i9, int i10) {
        get(i9).layout.mHelperType = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColorValue(int i9, String str, int i10) {
        ConstraintSet$Constraint.access$1000(get(i9), str, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDimensionRatio(int i9, String str) {
        get(i9).layout.dimensionRatio = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEditorAbsoluteX(int i9, int i10) {
        get(i9).layout.editorAbsoluteX = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEditorAbsoluteY(int i9, int i10) {
        get(i9).layout.editorAbsoluteY = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setElevation(int i9, float f8) {
        get(i9).transform.elevation = f8;
        get(i9).transform.applyElevation = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFloatValue(int i9, String str, float f8) {
        ConstraintSet$Constraint.access$1100(get(i9), str, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setForceId(boolean z8) {
        this.mForceId = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGoneMargin(int i9, int i10, int i11) {
        ConstraintSet$Constraint constraintSet$Constraint = get(i9);
        switch (i10) {
            case 1:
                constraintSet$Constraint.layout.goneLeftMargin = i11;
                break;
            case 2:
                constraintSet$Constraint.layout.goneRightMargin = i11;
                break;
            case 3:
                constraintSet$Constraint.layout.goneTopMargin = i11;
                break;
            case 4:
                constraintSet$Constraint.layout.goneBottomMargin = i11;
                break;
            case 5:
                constraintSet$Constraint.layout.goneBaselineMargin = i11;
                break;
            case 6:
                constraintSet$Constraint.layout.goneStartMargin = i11;
                break;
            case 7:
                constraintSet$Constraint.layout.goneEndMargin = i11;
                break;
            default:
                i.k("unknown constraint");
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGuidelineBegin(int i9, int i10) {
        get(i9).layout.guideBegin = i10;
        get(i9).layout.guideEnd = -1;
        get(i9).layout.guidePercent = -1.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGuidelineEnd(int i9, int i10) {
        get(i9).layout.guideEnd = i10;
        get(i9).layout.guideBegin = -1;
        get(i9).layout.guidePercent = -1.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGuidelinePercent(int i9, float f8) {
        get(i9).layout.guidePercent = f8;
        get(i9).layout.guideEnd = -1;
        get(i9).layout.guideBegin = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalBias(int i9, float f8) {
        get(i9).layout.horizontalBias = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalChainStyle(int i9, int i10) {
        get(i9).layout.horizontalChainStyle = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalWeight(int i9, float f8) {
        get(i9).layout.horizontalWeight = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIntValue(int i9, String str, int i10) {
        ConstraintSet$Constraint.access$900(get(i9), str, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLayoutWrapBehavior(int i9, int i10) {
        if (i10 < 0 || i10 > 3) {
            return;
        }
        get(i9).layout.mWrapBehavior = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMargin(int i9, int i10, int i11) {
        ConstraintSet$Constraint constraintSet$Constraint = get(i9);
        switch (i10) {
            case 1:
                constraintSet$Constraint.layout.leftMargin = i11;
                break;
            case 2:
                constraintSet$Constraint.layout.rightMargin = i11;
                break;
            case 3:
                constraintSet$Constraint.layout.topMargin = i11;
                break;
            case 4:
                constraintSet$Constraint.layout.bottomMargin = i11;
                break;
            case 5:
                constraintSet$Constraint.layout.baselineMargin = i11;
                break;
            case 6:
                constraintSet$Constraint.layout.startMargin = i11;
                break;
            case 7:
                constraintSet$Constraint.layout.endMargin = i11;
                break;
            default:
                i.k("unknown constraint");
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setReferencedIds(int i9, int... iArr) {
        get(i9).layout.mReferenceIds = iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRotation(int i9, float f8) {
        get(i9).transform.rotation = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRotationX(int i9, float f8) {
        get(i9).transform.rotationX = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRotationY(int i9, float f8) {
        get(i9).transform.rotationY = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScaleX(int i9, float f8) {
        get(i9).transform.scaleX = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScaleY(int i9, float f8) {
        get(i9).transform.scaleY = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStateLabels(String str) {
        this.mMatchLabels = str.split(",");
        int i9 = 0;
        while (true) {
            String[] strArr = this.mMatchLabels;
            if (i9 >= strArr.length) {
                return;
            }
            strArr[i9] = strArr[i9].trim();
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStateLabelsList(String... strArr) {
        this.mMatchLabels = strArr;
        int i9 = 0;
        while (true) {
            String[] strArr2 = this.mMatchLabels;
            if (i9 >= strArr2.length) {
                return;
            }
            strArr2[i9] = strArr2[i9].trim();
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStringValue(int i9, String str, String str2) {
        ConstraintSet$Constraint.access$1200(get(i9), str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransformPivot(int i9, float f8, float f9) {
        ConstraintSet$Transform constraintSet$Transform = get(i9).transform;
        constraintSet$Transform.transformPivotY = f9;
        constraintSet$Transform.transformPivotX = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransformPivotX(int i9, float f8) {
        get(i9).transform.transformPivotX = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransformPivotY(int i9, float f8) {
        get(i9).transform.transformPivotY = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTranslation(int i9, float f8, float f9) {
        ConstraintSet$Transform constraintSet$Transform = get(i9).transform;
        constraintSet$Transform.translationX = f8;
        constraintSet$Transform.translationY = f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTranslationX(int i9, float f8) {
        get(i9).transform.translationX = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTranslationY(int i9, float f8) {
        get(i9).transform.translationY = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTranslationZ(int i9, float f8) {
        get(i9).transform.translationZ = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setValidateOnParse(boolean z8) {
        this.mValidate = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalBias(int i9, float f8) {
        get(i9).layout.verticalBias = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalChainStyle(int i9, int i10) {
        get(i9).layout.verticalChainStyle = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalWeight(int i9, float f8) {
        get(i9).layout.verticalWeight = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVisibility(int i9, int i10) {
        get(i9).propertySet.visibility = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVisibilityMode(int i9, int i10) {
        get(i9).propertySet.mVisibilityMode = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeState(Writer writer, ConstraintLayout constraintLayout, int i9) throws IOException {
        writer.write("\n---------------------------------------------\n");
        if ((i9 & 1) == 1) {
            new ConstraintSet$WriteXmlEngine(this, writer, constraintLayout, i9).writeLayout();
        } else {
            new ConstraintSet$WriteJsonEngine(this, writer, constraintLayout, i9).writeLayout();
        }
        writer.write("\n---------------------------------------------\n");
    }

    public void centerHorizontally(int i9, int i10) {
        if (i10 == 0) {
            center(i9, 0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            center(i9, i10, 2, 0, i10, 1, 0, 0.5f);
        }
    }

    public void centerHorizontallyRtl(int i9, int i10) {
        if (i10 == 0) {
            center(i9, 0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            center(i9, i10, 7, 0, i10, 6, 0, 0.5f);
        }
    }

    public void centerVertically(int i9, int i10) {
        if (i10 == 0) {
            center(i9, 0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            center(i9, i10, 4, 0, i10, 3, 0, 0.5f);
        }
    }

    public void createHorizontalChain(int i9, int i10, int i11, int i12, int[] iArr, float[] fArr, int i13) {
        createHorizontalChain(i9, i10, i11, i12, iArr, fArr, i13, 1, 2);
    }

    public void clear(int i9) {
        this.mConstraints.remove(Integer.valueOf(i9));
    }

    public void clone(ConstraintSet constraintSet) {
        this.mConstraints.clear();
        for (Integer num : constraintSet.mConstraints.keySet()) {
            ConstraintSet$Constraint constraintSet$Constraint = constraintSet.mConstraints.get(num);
            if (constraintSet$Constraint != null) {
                this.mConstraints.put(num, constraintSet$Constraint.clone());
            }
        }
    }

    public void clone(Context context, int i9) {
        clone((ConstraintLayout) LayoutInflater.from(context).inflate(i9, (ViewGroup) null));
    }

    public void clone(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.mConstraints.clear();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = constraints.getChildAt(i9);
            Constraints$LayoutParams constraints$LayoutParams = (Constraints$LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.mForceId && id == -1) {
                ai.onnxruntime.b.h("All children of ConstraintLayout must have ids to use ConstraintSet");
                return;
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                this.mConstraints.put(Integer.valueOf(id), new ConstraintSet$Constraint());
            }
            ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(id));
            if (constraintSet$Constraint != null) {
                if (childAt instanceof ConstraintHelper) {
                    ConstraintSet$Constraint.access$700(constraintSet$Constraint, (ConstraintHelper) childAt, id, constraints$LayoutParams);
                }
                ConstraintSet$Constraint.access$800(constraintSet$Constraint, id, constraints$LayoutParams);
            }
        }
    }

    public void readFallback(ConstraintSet constraintSet) {
        for (Integer num : constraintSet.mConstraints.keySet()) {
            num.intValue();
            ConstraintSet$Constraint constraintSet$Constraint = constraintSet.mConstraints.get(num);
            if (!this.mConstraints.containsKey(num)) {
                this.mConstraints.put(num, new ConstraintSet$Constraint());
            }
            ConstraintSet$Constraint constraintSet$Constraint2 = this.mConstraints.get(num);
            if (constraintSet$Constraint2 != null) {
                ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint2.layout;
                if (!constraintSet$Layout.mApply) {
                    constraintSet$Layout.copyFrom(constraintSet$Constraint.layout);
                }
                ConstraintSet$PropertySet constraintSet$PropertySet = constraintSet$Constraint2.propertySet;
                if (!constraintSet$PropertySet.mApply) {
                    constraintSet$PropertySet.copyFrom(constraintSet$Constraint.propertySet);
                }
                ConstraintSet$Transform constraintSet$Transform = constraintSet$Constraint2.transform;
                if (!constraintSet$Transform.mApply) {
                    constraintSet$Transform.copyFrom(constraintSet$Constraint.transform);
                }
                ConstraintSet$Motion constraintSet$Motion = constraintSet$Constraint2.motion;
                if (!constraintSet$Motion.mApply) {
                    constraintSet$Motion.copyFrom(constraintSet$Constraint.motion);
                }
                for (String str : constraintSet$Constraint.mCustomConstraints.keySet()) {
                    if (!constraintSet$Constraint2.mCustomConstraints.containsKey(str)) {
                        constraintSet$Constraint2.mCustomConstraints.put(str, constraintSet$Constraint.mCustomConstraints.get(str));
                    }
                }
            }
        }
    }

    private static void setDeltaValue(ConstraintSet$Constraint constraintSet$Constraint, int i9, float f8) {
        if (i9 == 19) {
            constraintSet$Constraint.layout.guidePercent = f8;
            return;
        }
        if (i9 == 20) {
            constraintSet$Constraint.layout.horizontalBias = f8;
            return;
        }
        if (i9 == 37) {
            constraintSet$Constraint.layout.verticalBias = f8;
            return;
        }
        if (i9 == ROTATION) {
            constraintSet$Constraint.transform.rotation = f8;
            return;
        }
        if (i9 == 63) {
            constraintSet$Constraint.layout.circleAngle = f8;
            return;
        }
        if (i9 == MOTION_STAGGER) {
            constraintSet$Constraint.motion.mMotionStagger = f8;
            return;
        }
        if (i9 == QUANTIZE_MOTION_PHASE) {
            constraintSet$Constraint.motion.mQuantizeMotionPhase = f8;
            return;
        }
        if (i9 != UNUSED) {
            if (i9 == 39) {
                constraintSet$Constraint.layout.horizontalWeight = f8;
                return;
            }
            if (i9 != 40) {
                switch (i9) {
                    case 43:
                        constraintSet$Constraint.propertySet.alpha = f8;
                        break;
                    case 44:
                        ConstraintSet$Transform constraintSet$Transform = constraintSet$Constraint.transform;
                        constraintSet$Transform.elevation = f8;
                        constraintSet$Transform.applyElevation = true;
                        break;
                    case 45:
                        constraintSet$Constraint.transform.rotationX = f8;
                        break;
                    case 46:
                        constraintSet$Constraint.transform.rotationY = f8;
                        break;
                    case 47:
                        constraintSet$Constraint.transform.scaleX = f8;
                        break;
                    case 48:
                        constraintSet$Constraint.transform.scaleY = f8;
                        break;
                    case 49:
                        constraintSet$Constraint.transform.transformPivotX = f8;
                        break;
                    case 50:
                        constraintSet$Constraint.transform.transformPivotY = f8;
                        break;
                    case 51:
                        constraintSet$Constraint.transform.translationX = f8;
                        break;
                    case 52:
                        constraintSet$Constraint.transform.translationY = f8;
                        break;
                    case 53:
                        constraintSet$Constraint.transform.translationZ = f8;
                        break;
                    default:
                        switch (i9) {
                            case 67:
                                constraintSet$Constraint.motion.mPathRotate = f8;
                                break;
                            case PROGRESS /* 68 */:
                                constraintSet$Constraint.propertySet.mProgress = f8;
                                break;
                            case WIDTH_PERCENT /* 69 */:
                                constraintSet$Constraint.layout.widthPercent = f8;
                                break;
                            case HEIGHT_PERCENT /* 70 */:
                                constraintSet$Constraint.layout.heightPercent = f8;
                                break;
                            default:
                                Log.w(TAG, "Unknown attribute 0x");
                                break;
                        }
                        break;
                }
                return;
            }
            constraintSet$Constraint.layout.verticalWeight = f8;
        }
    }

    private static void setDeltaValue(ConstraintSet$Constraint constraintSet$Constraint, int i9, String str) {
        if (i9 == 5) {
            constraintSet$Constraint.layout.dimensionRatio = str;
            return;
        }
        if (i9 == 65) {
            constraintSet$Constraint.motion.mTransitionEasing = str;
            return;
        }
        if (i9 == CONSTRAINT_REFERENCED_IDS) {
            ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint.layout;
            constraintSet$Layout.mReferenceIdString = str;
            constraintSet$Layout.mReferenceIds = null;
        } else if (i9 == CONSTRAINT_TAG) {
            constraintSet$Constraint.layout.mConstraintTag = str;
        } else if (i9 != UNUSED) {
            if (i9 != QUANTIZE_MOTION_INTERPOLATOR_STR) {
                Log.w(TAG, "Unknown attribute 0x");
            } else {
                constraintSet$Constraint.motion.mQuantizeInterpolatorString = str;
            }
        }
    }

    private static void setDeltaValue(ConstraintSet$Constraint constraintSet$Constraint, int i9, boolean z8) {
        if (i9 == 44) {
            constraintSet$Constraint.transform.applyElevation = z8;
            return;
        }
        if (i9 == BARRIER_ALLOWS_GONE_WIDGETS) {
            constraintSet$Constraint.layout.mBarrierAllowsGoneWidgets = z8;
            return;
        }
        if (i9 != UNUSED) {
            if (i9 == CONSTRAINED_WIDTH) {
                constraintSet$Constraint.layout.constrainedWidth = z8;
            } else if (i9 != CONSTRAINED_HEIGHT) {
                Log.w(TAG, "Unknown attribute 0x");
            } else {
                constraintSet$Constraint.layout.constrainedHeight = z8;
            }
        }
    }

    public void connect(int i9, int i10, int i11, int i12) {
        if (!this.mConstraints.containsKey(Integer.valueOf(i9))) {
            this.mConstraints.put(Integer.valueOf(i9), new ConstraintSet$Constraint());
        }
        ConstraintSet$Constraint constraintSet$Constraint = this.mConstraints.get(Integer.valueOf(i9));
        if (constraintSet$Constraint == null) {
        }
        switch (i10) {
            case 1:
                if (i12 == 1) {
                    ConstraintSet$Layout constraintSet$Layout = constraintSet$Constraint.layout;
                    constraintSet$Layout.leftToLeft = i11;
                    constraintSet$Layout.leftToRight = -1;
                } else if (i12 == 2) {
                    ConstraintSet$Layout constraintSet$Layout2 = constraintSet$Constraint.layout;
                    constraintSet$Layout2.leftToRight = i11;
                    constraintSet$Layout2.leftToLeft = -1;
                } else {
                    i.k(a.p(new StringBuilder("left to "), sideToString(i12), " undefined"));
                }
                break;
            case 2:
                if (i12 == 1) {
                    ConstraintSet$Layout constraintSet$Layout3 = constraintSet$Constraint.layout;
                    constraintSet$Layout3.rightToLeft = i11;
                    constraintSet$Layout3.rightToRight = -1;
                } else if (i12 == 2) {
                    ConstraintSet$Layout constraintSet$Layout4 = constraintSet$Constraint.layout;
                    constraintSet$Layout4.rightToRight = i11;
                    constraintSet$Layout4.rightToLeft = -1;
                } else {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                }
                break;
            case 3:
                if (i12 == 3) {
                    ConstraintSet$Layout constraintSet$Layout5 = constraintSet$Constraint.layout;
                    constraintSet$Layout5.topToTop = i11;
                    constraintSet$Layout5.topToBottom = -1;
                    constraintSet$Layout5.baselineToBaseline = -1;
                    constraintSet$Layout5.baselineToTop = -1;
                    constraintSet$Layout5.baselineToBottom = -1;
                } else if (i12 == 4) {
                    ConstraintSet$Layout constraintSet$Layout6 = constraintSet$Constraint.layout;
                    constraintSet$Layout6.topToBottom = i11;
                    constraintSet$Layout6.topToTop = -1;
                    constraintSet$Layout6.baselineToBaseline = -1;
                    constraintSet$Layout6.baselineToTop = -1;
                    constraintSet$Layout6.baselineToBottom = -1;
                } else {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                }
                break;
            case 4:
                if (i12 == 4) {
                    ConstraintSet$Layout constraintSet$Layout7 = constraintSet$Constraint.layout;
                    constraintSet$Layout7.bottomToBottom = i11;
                    constraintSet$Layout7.bottomToTop = -1;
                    constraintSet$Layout7.baselineToBaseline = -1;
                    constraintSet$Layout7.baselineToTop = -1;
                    constraintSet$Layout7.baselineToBottom = -1;
                } else if (i12 == 3) {
                    ConstraintSet$Layout constraintSet$Layout8 = constraintSet$Constraint.layout;
                    constraintSet$Layout8.bottomToTop = i11;
                    constraintSet$Layout8.bottomToBottom = -1;
                    constraintSet$Layout8.baselineToBaseline = -1;
                    constraintSet$Layout8.baselineToTop = -1;
                    constraintSet$Layout8.baselineToBottom = -1;
                } else {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                }
                break;
            case 5:
                if (i12 == 5) {
                    ConstraintSet$Layout constraintSet$Layout9 = constraintSet$Constraint.layout;
                    constraintSet$Layout9.baselineToBaseline = i11;
                    constraintSet$Layout9.bottomToBottom = -1;
                    constraintSet$Layout9.bottomToTop = -1;
                    constraintSet$Layout9.topToTop = -1;
                    constraintSet$Layout9.topToBottom = -1;
                } else if (i12 == 3) {
                    ConstraintSet$Layout constraintSet$Layout10 = constraintSet$Constraint.layout;
                    constraintSet$Layout10.baselineToTop = i11;
                    constraintSet$Layout10.bottomToBottom = -1;
                    constraintSet$Layout10.bottomToTop = -1;
                    constraintSet$Layout10.topToTop = -1;
                    constraintSet$Layout10.topToBottom = -1;
                } else if (i12 == 4) {
                    ConstraintSet$Layout constraintSet$Layout11 = constraintSet$Constraint.layout;
                    constraintSet$Layout11.baselineToBottom = i11;
                    constraintSet$Layout11.bottomToBottom = -1;
                    constraintSet$Layout11.bottomToTop = -1;
                    constraintSet$Layout11.topToTop = -1;
                    constraintSet$Layout11.topToBottom = -1;
                } else {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                }
                break;
            case 6:
                if (i12 == 6) {
                    ConstraintSet$Layout constraintSet$Layout12 = constraintSet$Constraint.layout;
                    constraintSet$Layout12.startToStart = i11;
                    constraintSet$Layout12.startToEnd = -1;
                } else if (i12 == 7) {
                    ConstraintSet$Layout constraintSet$Layout13 = constraintSet$Constraint.layout;
                    constraintSet$Layout13.startToEnd = i11;
                    constraintSet$Layout13.startToStart = -1;
                } else {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                }
                break;
            case 7:
                if (i12 == 7) {
                    ConstraintSet$Layout constraintSet$Layout14 = constraintSet$Constraint.layout;
                    constraintSet$Layout14.endToEnd = i11;
                    constraintSet$Layout14.endToStart = -1;
                } else if (i12 == 6) {
                    ConstraintSet$Layout constraintSet$Layout15 = constraintSet$Constraint.layout;
                    constraintSet$Layout15.endToStart = i11;
                    constraintSet$Layout15.endToEnd = -1;
                } else {
                    i.k(a.p(new StringBuilder("right to "), sideToString(i12), " undefined"));
                }
                break;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append(sideToString(i10));
                sb.append(" to ");
                i.k(a.p(sb, sideToString(i12), " unknown"));
                break;
        }
    }

    public void load(Context context, int i9) {
        XmlResourceParser xml = context.getResources().getXml(i9);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    ConstraintSet$Constraint constraintSet$ConstraintFillFromAttributeList = fillFromAttributeList(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        constraintSet$ConstraintFillFromAttributeList.layout.mIsGuideline = true;
                    }
                    this.mConstraints.put(Integer.valueOf(constraintSet$ConstraintFillFromAttributeList.mViewId), constraintSet$ConstraintFillFromAttributeList);
                }
            }
        } catch (IOException e) {
            Log.e(TAG, "Error parsing resource: " + i9, e);
        } catch (XmlPullParserException e6) {
            Log.e(TAG, "Error parsing resource: " + i9, e6);
        }
    }
}
