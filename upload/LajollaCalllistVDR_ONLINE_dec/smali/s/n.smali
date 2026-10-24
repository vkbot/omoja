.class public final Ls/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[I

.field public static final h:Landroid/util/SparseIntArray;

.field public static final i:Landroid/util/SparseIntArray;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public final d:Ljava/util/HashMap;

.field public e:Z

.field public final f:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Ls/n;->g:[I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Ls/n;->h:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Ls/n;->i:Landroid/util/SparseIntArray;

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintLeft_toLeftOf:I

    const/16 v5, 0x19

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintLeft_toRightOf:I

    const/16 v5, 0x1a

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintRight_toLeftOf:I

    const/16 v5, 0x1d

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintRight_toRightOf:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTop_toTopOf:I

    const/16 v5, 0x24

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTop_toBottomOf:I

    const/16 v5, 0x23

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBottom_toTopOf:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBottom_toBottomOf:I

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBaseline_toBaselineOf:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBaseline_toTopOf:I

    const/16 v4, 0x5b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBaseline_toBottomOf:I

    const/16 v4, 0x5c

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_editor_absoluteX:I

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_editor_absoluteY:I

    const/4 v5, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintGuide_begin:I

    const/16 v6, 0x11

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintGuide_end:I

    const/16 v6, 0x12

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintGuide_percent:I

    const/16 v6, 0x13

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_guidelineUseRtl:I

    const/16 v6, 0x63

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_orientation:I

    const/16 v6, 0x1b

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintStart_toEndOf:I

    const/16 v7, 0x20

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintStart_toStartOf:I

    const/16 v7, 0x21

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintEnd_toStartOf:I

    const/16 v7, 0xa

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintEnd_toEndOf:I

    const/16 v7, 0x9

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginLeft:I

    const/16 v7, 0xd

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginTop:I

    const/16 v8, 0x10

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginRight:I

    const/16 v9, 0xe

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginBottom:I

    const/16 v10, 0xb

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginStart:I

    const/16 v11, 0xf

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginEnd:I

    const/16 v12, 0xc

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintVertical_weight:I

    const/16 v13, 0x28

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHorizontal_weight:I

    const/16 v14, 0x27

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHorizontal_chainStyle:I

    const/16 v15, 0x29

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintVertical_chainStyle:I

    const/16 v15, 0x2a

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHorizontal_bias:I

    const/16 v15, 0x14

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintVertical_bias:I

    const/16 v15, 0x25

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintDimensionRatio:I

    const/4 v15, 0x5

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintLeft_creator:I

    const/16 v15, 0x57

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginLeft:I

    const/16 v15, 0x18

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginRight:I

    const/16 v15, 0x1c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginStart:I

    const/16 v15, 0x1f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth:I

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight:I

    const/16 v2, 0x60

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_animateRelativeTo:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_transitionEasing:I

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_drawPath:I

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_transitionPathRotate:I

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_motionStagger:I

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_motionProgress:I

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_wrapBehaviorInParent:I

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_pathMotionArc:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTag:I

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_visibilityMode:I

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constrainedWidth:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constrainedHeight:I

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_polarRelativeTo:I

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_transformPivotTarget:I

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_quantizeMotionSteps:I

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_quantizeMotionPhase:I

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_quantizeMotionInterpolator:I

    const/16 v2, 0x56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_editor_absoluteY:I

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_editor_absoluteY:I

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_orientation:I

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginLeft:I

    invoke-virtual {v3, v0, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginTop:I

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginRight:I

    invoke-virtual {v3, v0, v9}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginBottom:I

    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginStart:I

    invoke-virtual {v3, v0, v11}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_goneMarginEnd:I

    invoke-virtual {v3, v0, v12}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintVertical_weight:I

    invoke-virtual {v3, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHorizontal_weight:I

    invoke-virtual {v3, v0, v14}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHorizontal_chainStyle:I

    const/16 v1, 0x29

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintVertical_chainStyle:I

    const/16 v1, 0x2a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHorizontal_bias:I

    const/16 v1, 0x14

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintVertical_bias:I

    const/16 v1, 0x25

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintDimensionRatio:I

    const/4 v1, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintLeft_creator:I

    const/16 v1, 0x57

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintTop_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintRight_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintBottom_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintBaseline_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginLeft:I

    const/16 v1, 0x18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginRight:I

    const/16 v1, 0x1c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginStart:I

    invoke-virtual {v3, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginEnd:I

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginTop:I

    const/16 v1, 0x22

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_marginBottom:I

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_width:I

    const/16 v1, 0x17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_layout_height:I

    const/16 v1, 0x15

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintWidth:I

    const/16 v1, 0x5f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHeight:I

    const/16 v1, 0x60

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_visibility:I

    const/16 v1, 0x16

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_alpha:I

    const/16 v1, 0x2b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_elevation:I

    const/16 v1, 0x2c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_rotationX:I

    const/16 v1, 0x2d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_rotationY:I

    const/16 v1, 0x2e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_rotation:I

    const/16 v1, 0x3c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_scaleX:I

    const/16 v1, 0x2f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_scaleY:I

    const/16 v1, 0x30

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_transformPivotX:I

    const/16 v1, 0x31

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_transformPivotY:I

    const/16 v1, 0x32

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_translationX:I

    const/16 v1, 0x33

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_translationY:I

    const/16 v1, 0x34

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_translationZ:I

    const/16 v1, 0x35

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintWidth_default:I

    const/16 v1, 0x36

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHeight_default:I

    const/16 v1, 0x37

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintWidth_max:I

    const/16 v1, 0x38

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHeight_max:I

    const/16 v1, 0x39

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintWidth_min:I

    const/16 v1, 0x3a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHeight_min:I

    const/16 v1, 0x3b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintCircleRadius:I

    const/16 v1, 0x3e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintCircleAngle:I

    const/16 v1, 0x3f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_animateRelativeTo:I

    const/16 v1, 0x40

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_transitionEasing:I

    const/16 v1, 0x41

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_drawPath:I

    const/16 v1, 0x42

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_transitionPathRotate:I

    const/16 v1, 0x43

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_motionStagger:I

    const/16 v1, 0x4f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_android_id:I

    const/16 v1, 0x26

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_motionTarget:I

    const/16 v1, 0x62

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_motionProgress:I

    const/16 v1, 0x44

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintWidth_percent:I

    const/16 v1, 0x45

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintHeight_percent:I

    const/16 v1, 0x46

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_chainUseRtl:I

    const/16 v1, 0x47

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_barrierDirection:I

    const/16 v1, 0x48

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_barrierMargin:I

    const/16 v1, 0x49

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_constraint_referenced_ids:I

    const/16 v1, 0x4a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_barrierAllowsGoneWidgets:I

    const/16 v1, 0x4b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_pathMotionArc:I

    const/16 v1, 0x4c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constraintTag:I

    const/16 v1, 0x4d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_visibilityMode:I

    const/16 v1, 0x4e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constrainedWidth:I

    const/16 v1, 0x50

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_constrainedHeight:I

    const/16 v1, 0x51

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_polarRelativeTo:I

    const/16 v1, 0x52

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_transformPivotTarget:I

    const/16 v1, 0x53

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_quantizeMotionSteps:I

    const/16 v1, 0x54

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_quantizeMotionPhase:I

    const/16 v1, 0x55

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_quantizeMotionInterpolator:I

    const/16 v1, 0x56

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride_layout_wrapBehaviorInParent:I

    const/16 v1, 0x61

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ls/n;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ls/n;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls/n;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/n;->e:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls/n;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Ls/i;
    .locals 2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    new-instance v0, Ls/i;

    invoke-direct {v0}, Ls/i;-><init>()V

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-static {v0, p0}, Ls/n;->o(Ls/i;Landroid/content/res/TypedArray;)V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static f(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I
    .locals 10

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_3

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    const-class v7, Landroidx/constraintlayout/widget/R$id;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v7, v2

    :goto_1
    if-nez v7, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :cond_0
    if-nez v7, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    if-eqz v9, :cond_1

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    instance-of v5, v6, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_2
    add-int/lit8 v5, v4, 0x1

    aput v7, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_3
    array-length p0, p1

    if-eq v4, p0, :cond_4

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public static g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Ls/i;
    .locals 16

    new-instance v0, Ls/i;

    invoke-direct {v0}, Ls/i;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride:[I

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint:[I

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-static {v0, v1}, Ls/n;->o(Ls/i;Landroid/content/res/TypedArray;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget-object v5, v0, Ls/i;->e:Ls/j;

    if-ge v4, v2, :cond_8

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    sget v7, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_id:I

    const/4 v8, 0x1

    iget-object v9, v0, Ls/i;->c:Ls/l;

    iget-object v10, v0, Ls/i;->f:Ls/m;

    iget-object v11, v0, Ls/i;->d:Ls/k;

    if-eq v6, v7, :cond_2

    sget v7, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginStart:I

    if-eq v7, v6, :cond_2

    sget v7, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginEnd:I

    if-eq v7, v6, :cond_2

    iput-boolean v8, v11, Ls/k;->a:Z

    iput-boolean v8, v5, Ls/j;->b:Z

    iput-boolean v8, v9, Ls/l;->a:Z

    iput-boolean v8, v10, Ls/m;->a:Z

    :cond_2
    sget-object v7, Ls/n;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    const-string v14, "   "

    const/4 v15, 0x3

    const-string v13, "ConstraintSet"

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unknown attribute 0x"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_1
    iget v7, v5, Ls/j;->p0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Ls/j;->p0:I

    goto/16 :goto_2

    :pswitch_2
    invoke-static {v5, v1, v6, v8}, Ls/n;->m(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_2

    :pswitch_3
    invoke-static {v5, v1, v6, v3}, Ls/n;->m(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_2

    :pswitch_4
    iget v7, v5, Ls/j;->T:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->T:I

    goto/16 :goto_2

    :pswitch_5
    iget v7, v5, Ls/j;->M:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->M:I

    goto/16 :goto_2

    :pswitch_6
    iget v7, v5, Ls/j;->s:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->s:I

    goto/16 :goto_2

    :pswitch_7
    iget v7, v5, Ls/j;->r:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->r:I

    goto/16 :goto_2

    :pswitch_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "unused attribute 0x"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    const/4 v9, -0x1

    if-ne v5, v8, :cond_3

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v11, Ls/k;->m:I

    if-eq v5, v9, :cond_7

    iput v7, v11, Ls/k;->l:I

    goto/16 :goto_2

    :cond_3
    if-ne v5, v15, :cond_5

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Ls/k;->k:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v11, Ls/k;->m:I

    iput v7, v11, Ls/k;->l:I

    goto/16 :goto_2

    :cond_4
    iput v9, v11, Ls/k;->l:I

    goto/16 :goto_2

    :cond_5
    iget v5, v11, Ls/k;->m:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v11, Ls/k;->l:I

    goto/16 :goto_2

    :pswitch_a
    iget v5, v11, Ls/k;->i:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v11, Ls/k;->i:F

    goto/16 :goto_2

    :pswitch_b
    iget v5, v11, Ls/k;->j:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v11, Ls/k;->j:I

    goto/16 :goto_2

    :pswitch_c
    iget v5, v10, Ls/m;->i:I

    invoke-static {v1, v6, v5}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, v10, Ls/m;->i:I

    goto/16 :goto_2

    :pswitch_d
    iget v5, v11, Ls/k;->c:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v11, Ls/k;->c:I

    goto/16 :goto_2

    :pswitch_e
    iget-boolean v7, v5, Ls/j;->n0:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Ls/j;->n0:Z

    goto/16 :goto_2

    :pswitch_f
    iget-boolean v7, v5, Ls/j;->m0:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Ls/j;->m0:Z

    goto/16 :goto_2

    :pswitch_10
    iget v5, v11, Ls/k;->g:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v11, Ls/k;->g:F

    goto/16 :goto_2

    :pswitch_11
    iget v5, v9, Ls/l;->c:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v9, Ls/l;->c:I

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ls/j;->l0:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_13
    iget v5, v11, Ls/k;->e:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v11, Ls/k;->e:I

    goto/16 :goto_2

    :pswitch_14
    iget-boolean v7, v5, Ls/j;->o0:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Ls/j;->o0:Z

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ls/j;->k0:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_16
    iget v7, v5, Ls/j;->h0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->h0:I

    goto/16 :goto_2

    :pswitch_17
    iget v7, v5, Ls/j;->g0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Ls/j;->g0:I

    goto/16 :goto_2

    :pswitch_18
    const-string v5, "CURRENTLY UNSUPPORTED"

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_19
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Ls/j;->f0:F

    goto/16 :goto_2

    :pswitch_1a
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Ls/j;->e0:F

    goto/16 :goto_2

    :pswitch_1b
    iget v5, v9, Ls/l;->e:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v9, Ls/l;->e:F

    goto/16 :goto_2

    :pswitch_1c
    iget v5, v11, Ls/k;->h:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v11, Ls/k;->h:F

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v11, Ls/k;->f:I

    goto/16 :goto_2

    :pswitch_1e
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    if-ne v5, v15, :cond_6

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Ls/k;->d:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    sget-object v5, Ll/e;->c:[Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, v11, Ls/k;->d:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_1f
    iget v5, v11, Ls/k;->b:I

    invoke-static {v1, v6, v5}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, v11, Ls/k;->b:I

    goto/16 :goto_2

    :pswitch_20
    iget v7, v5, Ls/j;->C:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Ls/j;->C:F

    goto/16 :goto_2

    :pswitch_21
    iget v7, v5, Ls/j;->B:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->B:I

    goto/16 :goto_2

    :pswitch_22
    iget v7, v5, Ls/j;->A:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->A:I

    goto/16 :goto_2

    :pswitch_23
    iget v5, v10, Ls/m;->b:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v10, Ls/m;->b:F

    goto/16 :goto_2

    :pswitch_24
    iget v7, v5, Ls/j;->d0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->d0:I

    goto/16 :goto_2

    :pswitch_25
    iget v7, v5, Ls/j;->c0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->c0:I

    goto/16 :goto_2

    :pswitch_26
    iget v7, v5, Ls/j;->b0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->b0:I

    goto/16 :goto_2

    :pswitch_27
    iget v7, v5, Ls/j;->a0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->a0:I

    goto/16 :goto_2

    :pswitch_28
    iget v7, v5, Ls/j;->Z:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Ls/j;->Z:I

    goto/16 :goto_2

    :pswitch_29
    iget v7, v5, Ls/j;->Y:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Ls/j;->Y:I

    goto/16 :goto_2

    :pswitch_2a
    iget v5, v10, Ls/m;->l:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Ls/m;->l:F

    goto/16 :goto_2

    :pswitch_2b
    iget v5, v10, Ls/m;->k:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Ls/m;->k:F

    goto/16 :goto_2

    :pswitch_2c
    iget v5, v10, Ls/m;->j:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Ls/m;->j:F

    goto/16 :goto_2

    :pswitch_2d
    iget v5, v10, Ls/m;->h:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Ls/m;->h:F

    goto/16 :goto_2

    :pswitch_2e
    iget v5, v10, Ls/m;->g:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Ls/m;->g:F

    goto/16 :goto_2

    :pswitch_2f
    iget v5, v10, Ls/m;->f:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v10, Ls/m;->f:F

    goto/16 :goto_2

    :pswitch_30
    iget v5, v10, Ls/m;->e:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v10, Ls/m;->e:F

    goto/16 :goto_2

    :pswitch_31
    iget v5, v10, Ls/m;->d:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v10, Ls/m;->d:F

    goto/16 :goto_2

    :pswitch_32
    iget v5, v10, Ls/m;->c:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v10, Ls/m;->c:F

    goto/16 :goto_2

    :pswitch_33
    iput-boolean v8, v10, Ls/m;->m:Z

    iget v5, v10, Ls/m;->n:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Ls/m;->n:F

    goto/16 :goto_2

    :pswitch_34
    iget v5, v9, Ls/l;->d:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v9, Ls/l;->d:F

    goto/16 :goto_2

    :pswitch_35
    iget v7, v5, Ls/j;->X:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Ls/j;->X:I

    goto/16 :goto_2

    :pswitch_36
    iget v7, v5, Ls/j;->W:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Ls/j;->W:I

    goto/16 :goto_2

    :pswitch_37
    iget v7, v5, Ls/j;->U:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Ls/j;->U:F

    goto/16 :goto_2

    :pswitch_38
    iget v7, v5, Ls/j;->V:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Ls/j;->V:F

    goto/16 :goto_2

    :pswitch_39
    iget v5, v0, Ls/i;->a:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Ls/i;->a:I

    goto/16 :goto_2

    :pswitch_3a
    iget v7, v5, Ls/j;->y:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Ls/j;->y:F

    goto/16 :goto_2

    :pswitch_3b
    iget v7, v5, Ls/j;->m:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->m:I

    goto/16 :goto_2

    :pswitch_3c
    iget v7, v5, Ls/j;->n:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->n:I

    goto/16 :goto_2

    :pswitch_3d
    iget v7, v5, Ls/j;->I:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->I:I

    goto/16 :goto_2

    :pswitch_3e
    iget v7, v5, Ls/j;->u:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->u:I

    goto/16 :goto_2

    :pswitch_3f
    iget v7, v5, Ls/j;->t:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->t:I

    goto/16 :goto_2

    :pswitch_40
    iget v7, v5, Ls/j;->L:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->L:I

    goto/16 :goto_2

    :pswitch_41
    iget v7, v5, Ls/j;->l:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->l:I

    goto/16 :goto_2

    :pswitch_42
    iget v7, v5, Ls/j;->k:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->k:I

    goto/16 :goto_2

    :pswitch_43
    iget v7, v5, Ls/j;->H:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->H:I

    goto/16 :goto_2

    :pswitch_44
    iget v7, v5, Ls/j;->F:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Ls/j;->F:I

    goto/16 :goto_2

    :pswitch_45
    iget v7, v5, Ls/j;->j:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->j:I

    goto/16 :goto_2

    :pswitch_46
    iget v7, v5, Ls/j;->i:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->i:I

    goto/16 :goto_2

    :pswitch_47
    iget v7, v5, Ls/j;->G:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->G:I

    goto/16 :goto_2

    :pswitch_48
    iget v7, v5, Ls/j;->c:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Ls/j;->c:I

    goto/16 :goto_2

    :pswitch_49
    iget v5, v9, Ls/l;->b:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    sget-object v6, Ls/n;->g:[I

    aget v5, v6, v5

    iput v5, v9, Ls/l;->b:I

    goto/16 :goto_2

    :pswitch_4a
    iget v7, v5, Ls/j;->d:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Ls/j;->d:I

    goto/16 :goto_2

    :pswitch_4b
    iget v7, v5, Ls/j;->x:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Ls/j;->x:F

    goto/16 :goto_2

    :pswitch_4c
    iget v7, v5, Ls/j;->g:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Ls/j;->g:F

    goto/16 :goto_2

    :pswitch_4d
    iget v7, v5, Ls/j;->f:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Ls/j;->f:I

    goto/16 :goto_2

    :pswitch_4e
    iget v7, v5, Ls/j;->e:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Ls/j;->e:I

    goto/16 :goto_2

    :pswitch_4f
    iget v7, v5, Ls/j;->O:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->O:I

    goto/16 :goto_2

    :pswitch_50
    iget v7, v5, Ls/j;->S:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->S:I

    goto/16 :goto_2

    :pswitch_51
    iget v7, v5, Ls/j;->P:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->P:I

    goto/16 :goto_2

    :pswitch_52
    iget v7, v5, Ls/j;->N:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->N:I

    goto/16 :goto_2

    :pswitch_53
    iget v7, v5, Ls/j;->R:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->R:I

    goto :goto_2

    :pswitch_54
    iget v7, v5, Ls/j;->Q:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->Q:I

    goto :goto_2

    :pswitch_55
    iget v7, v5, Ls/j;->v:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->v:I

    goto :goto_2

    :pswitch_56
    iget v7, v5, Ls/j;->w:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->w:I

    goto :goto_2

    :pswitch_57
    iget v7, v5, Ls/j;->K:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->K:I

    goto :goto_2

    :pswitch_58
    iget v7, v5, Ls/j;->E:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Ls/j;->E:I

    goto :goto_2

    :pswitch_59
    iget v7, v5, Ls/j;->D:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Ls/j;->D:I

    goto :goto_2

    :pswitch_5a
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ls/j;->z:Ljava/lang/String;

    goto :goto_2

    :pswitch_5b
    iget v7, v5, Ls/j;->o:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->o:I

    goto :goto_2

    :pswitch_5c
    iget v7, v5, Ls/j;->p:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->p:I

    goto :goto_2

    :pswitch_5d
    iget v7, v5, Ls/j;->J:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Ls/j;->J:I

    goto :goto_2

    :pswitch_5e
    iget v7, v5, Ls/j;->q:I

    invoke-static {v1, v6, v7}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Ls/j;->q:I

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    iget-object v2, v5, Ls/j;->k0:Ljava/lang/String;

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    iput-object v2, v5, Ls/j;->j0:[I

    :cond_9
    :goto_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static l(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_0
    return p2
.end method

.method public static m(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    const/16 v2, 0x15

    const/16 v3, 0x17

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eq v0, v1, :cond_b

    if-eq v0, v6, :cond_3

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, -0x4

    const/4 v0, -0x2

    if-eq p1, p2, :cond_2

    const/4 p2, -0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_4

    if-eq p1, v5, :cond_4

    :cond_1
    move v4, v7

    goto :goto_0

    :cond_2
    move v7, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    :cond_4
    move v4, v7

    move v7, p1

    :goto_0
    instance-of p1, p0, Ls/e;

    if-eqz p1, :cond_6

    check-cast p0, Ls/e;

    if-nez p3, :cond_5

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v4, p0, Ls/e;->W:Z

    goto :goto_1

    :cond_5
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v4, p0, Ls/e;->X:Z

    goto :goto_1

    :cond_6
    instance-of p1, p0, Ls/j;

    if-eqz p1, :cond_8

    check-cast p0, Ls/j;

    if-nez p3, :cond_7

    iput v7, p0, Ls/j;->c:I

    iput-boolean v4, p0, Ls/j;->m0:Z

    goto :goto_1

    :cond_7
    iput v7, p0, Ls/j;->d:I

    iput-boolean v4, p0, Ls/j;->n0:Z

    goto :goto_1

    :cond_8
    instance-of p1, p0, Ls/h;

    if-eqz p1, :cond_a

    check-cast p0, Ls/h;

    if-nez p3, :cond_9

    invoke-virtual {p0, v3, v7}, Ls/h;->b(II)V

    const/16 p1, 0x50

    invoke-virtual {p0, p1, v4}, Ls/h;->d(IZ)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v2, v7}, Ls/h;->b(II)V

    const/16 p1, 0x51

    invoke-virtual {p0, p1, v4}, Ls/h;->d(IZ)V

    :cond_a
    :goto_1
    return-void

    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    goto/16 :goto_3

    :cond_c
    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez p2, :cond_1c

    add-int/2addr v0, v5

    if-ge p2, v0, :cond_1c

    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ratio"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of p2, p0, Ls/e;

    if-eqz p2, :cond_e

    check-cast p0, Ls/e;

    if-nez p3, :cond_d

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_2

    :cond_d
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_2
    invoke-static {p0, p1}, Ls/n;->n(Ls/e;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    instance-of p2, p0, Ls/j;

    if-eqz p2, :cond_f

    check-cast p0, Ls/j;

    iput-object p1, p0, Ls/j;->z:Ljava/lang/String;

    goto/16 :goto_3

    :cond_f
    instance-of p2, p0, Ls/h;

    if-eqz p2, :cond_1c

    check-cast p0, Ls/h;

    invoke-virtual {p0, v6, p1}, Ls/h;->c(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    const-string v0, "weight"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    instance-of p2, p0, Ls/e;

    if-eqz p2, :cond_12

    check-cast p0, Ls/e;

    if-nez p3, :cond_11

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Ls/e;->H:F

    goto/16 :goto_3

    :cond_11
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Ls/e;->I:F

    goto/16 :goto_3

    :cond_12
    instance-of p2, p0, Ls/j;

    if-eqz p2, :cond_14

    check-cast p0, Ls/j;

    if-nez p3, :cond_13

    iput v7, p0, Ls/j;->c:I

    iput p1, p0, Ls/j;->V:F

    goto/16 :goto_3

    :cond_13
    iput v7, p0, Ls/j;->d:I

    iput p1, p0, Ls/j;->U:F

    goto/16 :goto_3

    :cond_14
    instance-of p2, p0, Ls/h;

    if-eqz p2, :cond_1c

    check-cast p0, Ls/h;

    if-nez p3, :cond_15

    invoke-virtual {p0, v3, v7}, Ls/h;->b(II)V

    const/16 p2, 0x27

    invoke-virtual {p0, p2, p1}, Ls/h;->a(IF)V

    goto :goto_3

    :cond_15
    invoke-virtual {p0, v2, v7}, Ls/h;->b(II)V

    const/16 p2, 0x28

    invoke-virtual {p0, p2, p1}, Ls/h;->a(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_16
    const-string v0, "parent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    instance-of p2, p0, Ls/e;

    const/4 v0, 0x2

    if-eqz p2, :cond_18

    check-cast p0, Ls/e;

    if-nez p3, :cond_17

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Ls/e;->R:F

    iput v0, p0, Ls/e;->L:I

    goto :goto_3

    :cond_17
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Ls/e;->S:F

    iput v0, p0, Ls/e;->M:I

    goto :goto_3

    :cond_18
    instance-of p2, p0, Ls/j;

    if-eqz p2, :cond_1a

    check-cast p0, Ls/j;

    if-nez p3, :cond_19

    iput v7, p0, Ls/j;->c:I

    iput p1, p0, Ls/j;->e0:F

    iput v0, p0, Ls/j;->Y:I

    goto :goto_3

    :cond_19
    iput v7, p0, Ls/j;->d:I

    iput p1, p0, Ls/j;->f0:F

    iput v0, p0, Ls/j;->Z:I

    goto :goto_3

    :cond_1a
    instance-of p1, p0, Ls/h;

    if-eqz p1, :cond_1c

    check-cast p0, Ls/h;

    if-nez p3, :cond_1b

    invoke-virtual {p0, v3, v7}, Ls/h;->b(II)V

    const/16 p1, 0x36

    invoke-virtual {p0, p1, v0}, Ls/h;->b(II)V

    goto :goto_3

    :cond_1b
    invoke-virtual {p0, v2, v7}, Ls/h;->b(II)V

    const/16 p1, 0x37

    invoke-virtual {p0, p1, v0}, Ls/h;->b(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1c
    :goto_3
    return-void
.end method

.method public static n(Ls/e;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "H"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    add-int/2addr v1, v3

    move v4, v2

    move v2, v1

    :cond_2
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v5, v0, v2

    if-lez v5, :cond_5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    if-ne v4, v3, :cond_3

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    goto :goto_1

    :cond_3
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Ls/e;->G:Ljava/lang/String;

    return-void
.end method

.method public static o(Ls/i;Landroid/content/res/TypedArray;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    new-instance v3, Ls/h;

    invoke-direct {v3}, Ls/h;-><init>()V

    iput-object v3, v0, Ls/i;->h:Ls/h;

    iget-object v4, v0, Ls/i;->d:Ls/k;

    const/4 v5, 0x0

    iput-boolean v5, v4, Ls/k;->a:Z

    iget-object v6, v0, Ls/i;->e:Ls/j;

    iput-boolean v5, v6, Ls/j;->b:Z

    iget-object v7, v0, Ls/i;->c:Ls/l;

    iput-boolean v5, v7, Ls/l;->a:Z

    iget-object v8, v0, Ls/i;->f:Ls/m;

    iput-boolean v5, v8, Ls/m;->a:Z

    move v9, v5

    :goto_0
    if-ge v9, v2, :cond_7

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    sget-object v11, Ls/n;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    sget-object v12, Ls/n;->h:Landroid/util/SparseIntArray;

    const/4 v14, 0x3

    const-string v13, "   "

    const-string v5, "ConstraintSet"

    const/4 v15, -0x1

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    const/4 v11, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Unknown attribute 0x"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_1
    iget-boolean v5, v6, Ls/j;->h:Z

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v10, 0x63

    invoke-virtual {v3, v10, v5}, Ls/h;->d(IZ)V

    goto/16 :goto_1

    :pswitch_2
    sget-boolean v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    if-eqz v5, :cond_0

    iget v5, v0, Ls/i;->a:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Ls/i;->a:I

    if-ne v5, v15, :cond_5

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Ls/i;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    if-ne v5, v14, :cond_1

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Ls/i;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    iget v5, v0, Ls/i;->a:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Ls/i;->a:I

    goto/16 :goto_1

    :pswitch_3
    iget v5, v6, Ls/j;->p0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x61

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_1

    :pswitch_4
    const/4 v5, 0x1

    invoke-static {v3, v1, v10, v5}, Ls/n;->m(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :pswitch_5
    const/4 v5, 0x0

    invoke-static {v3, v1, v10, v5}, Ls/n;->m(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    move v11, v5

    goto/16 :goto_2

    :pswitch_6
    iget v5, v6, Ls/j;->T:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x5e

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_1

    :pswitch_7
    iget v5, v6, Ls/j;->M:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x5d

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_1

    :pswitch_8
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "unused attribute 0x"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    const/4 v11, -0x2

    const/16 v12, 0x59

    const/16 v13, 0x58

    const/4 v14, 0x1

    if-ne v5, v14, :cond_2

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Ls/k;->m:I

    invoke-virtual {v3, v12, v5}, Ls/h;->b(II)V

    iget v5, v4, Ls/k;->m:I

    if-eq v5, v15, :cond_5

    iput v11, v4, Ls/k;->l:I

    invoke-virtual {v3, v13, v11}, Ls/h;->b(II)V

    goto/16 :goto_1

    :cond_2
    const/4 v14, 0x3

    if-ne v5, v14, :cond_4

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ls/k;->k:Ljava/lang/String;

    const/16 v14, 0x5a

    invoke-virtual {v3, v14, v5}, Ls/h;->c(ILjava/lang/String;)V

    iget-object v5, v4, Ls/k;->k:Ljava/lang/String;

    const-string v14, "/"

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Ls/k;->m:I

    invoke-virtual {v3, v12, v5}, Ls/h;->b(II)V

    iput v11, v4, Ls/k;->l:I

    invoke-virtual {v3, v13, v11}, Ls/h;->b(II)V

    goto/16 :goto_1

    :cond_3
    iput v15, v4, Ls/k;->l:I

    invoke-virtual {v3, v13, v15}, Ls/h;->b(II)V

    goto/16 :goto_1

    :cond_4
    iget v5, v4, Ls/k;->m:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Ls/k;->l:I

    invoke-virtual {v3, v13, v5}, Ls/h;->b(II)V

    goto/16 :goto_1

    :pswitch_a
    iget v5, v4, Ls/k;->i:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x55

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_1

    :pswitch_b
    iget v5, v4, Ls/k;->j:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    const/16 v10, 0x54

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_1

    :pswitch_c
    iget v5, v8, Ls/m;->i:I

    invoke-static {v1, v10, v5}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v5

    const/16 v10, 0x53

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_1

    :pswitch_d
    iget v5, v4, Ls/k;->c:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    const/16 v10, 0x52

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_1

    :pswitch_e
    iget-boolean v5, v6, Ls/j;->n0:Z

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v10, 0x51

    invoke-virtual {v3, v10, v5}, Ls/h;->d(IZ)V

    goto/16 :goto_1

    :pswitch_f
    iget-boolean v5, v6, Ls/j;->m0:Z

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v10, 0x50

    invoke-virtual {v3, v10, v5}, Ls/h;->d(IZ)V

    goto/16 :goto_1

    :pswitch_10
    iget v5, v4, Ls/k;->g:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x4f

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_1

    :pswitch_11
    iget v5, v7, Ls/l;->c:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x4e

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_1

    :pswitch_12
    const/16 v5, 0x4d

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Ls/h;->c(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_13
    iget v5, v4, Ls/k;->e:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x4c

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto :goto_1

    :pswitch_14
    iget-boolean v5, v6, Ls/j;->o0:Z

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v10, 0x4b

    invoke-virtual {v3, v10, v5}, Ls/h;->d(IZ)V

    goto :goto_1

    :pswitch_15
    const/16 v5, 0x4a

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Ls/h;->c(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_16
    iget v5, v6, Ls/j;->h0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x49

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto :goto_1

    :pswitch_17
    iget v5, v6, Ls/j;->g0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x48

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto :goto_1

    :pswitch_18
    const-string v10, "CURRENTLY UNSUPPORTED"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_19
    const/16 v5, 0x46

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    invoke-virtual {v3, v5, v10}, Ls/h;->a(IF)V

    goto :goto_1

    :pswitch_1a
    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v5, 0x45

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    invoke-virtual {v3, v5, v10}, Ls/h;->a(IF)V

    goto :goto_1

    :pswitch_1b
    iget v5, v7, Ls/l;->e:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x44

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto :goto_1

    :pswitch_1c
    iget v5, v4, Ls/k;->h:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x43

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    :cond_5
    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_2

    :pswitch_1d
    const/16 v5, 0x42

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {v3, v5, v10}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_1e
    const/4 v11, 0x0

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    const/16 v12, 0x41

    const/4 v13, 0x3

    if-ne v5, v13, :cond_6

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v12, v5}, Ls/h;->c(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    sget-object v5, Ll/e;->c:[Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    aget-object v5, v5, v10

    invoke-virtual {v3, v12, v5}, Ls/h;->c(ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1f
    const/4 v11, 0x0

    iget v5, v4, Ls/k;->b:I

    invoke-static {v1, v10, v5}, Ls/n;->l(Landroid/content/res/TypedArray;II)I

    move-result v5

    const/16 v10, 0x40

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_20
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->C:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x3f

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_21
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->B:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x3e

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_22
    const/4 v11, 0x0

    iget v5, v8, Ls/m;->b:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x3c

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_23
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->d0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x3b

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_24
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->c0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x3a

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_25
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->b0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x39

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_26
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->a0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x38

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_27
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->Z:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x37

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_28
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->Y:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x36

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_29
    const/4 v11, 0x0

    iget v5, v8, Ls/m;->l:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v10, 0x35

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_2a
    const/4 v11, 0x0

    iget v5, v8, Ls/m;->k:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v10, 0x34

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_2b
    const/4 v11, 0x0

    iget v5, v8, Ls/m;->j:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v10, 0x33

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_2c
    const/4 v11, 0x0

    iget v5, v8, Ls/m;->h:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v10, 0x32

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_2d
    const/4 v11, 0x0

    iget v5, v8, Ls/m;->g:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v10, 0x31

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_2e
    const/4 v11, 0x0

    iget v5, v8, Ls/m;->f:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x30

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_2f
    const/4 v11, 0x0

    iget v5, v8, Ls/m;->e:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x2f

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_30
    const/4 v11, 0x0

    iget v5, v8, Ls/m;->d:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x2e

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_31
    const/4 v11, 0x0

    iget v5, v8, Ls/m;->c:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x2d

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_32
    const/4 v11, 0x0

    const/16 v5, 0x2c

    const/4 v12, 0x1

    invoke-virtual {v3, v5, v12}, Ls/h;->d(IZ)V

    iget v12, v8, Ls/m;->n:F

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    invoke-virtual {v3, v5, v10}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_33
    const/4 v11, 0x0

    iget v5, v7, Ls/l;->d:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x2b

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_34
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->X:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x2a

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_35
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->W:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x29

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_36
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->U:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x28

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_37
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->V:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x27

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_38
    const/4 v11, 0x0

    iget v5, v0, Ls/i;->a:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Ls/i;->a:I

    const/16 v10, 0x26

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_39
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->y:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x25

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_3a
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->I:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x22

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_3b
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->L:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x1f

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_3c
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->H:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x1c

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_3d
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->F:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x1b

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_3e
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->G:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x18

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_3f
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->c:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    const/16 v10, 0x17

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_40
    const/4 v11, 0x0

    sget-object v5, Ls/n;->g:[I

    iget v12, v7, Ls/l;->b:I

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    aget v5, v5, v10

    const/16 v10, 0x16

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_41
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->d:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    const/16 v10, 0x15

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_42
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->x:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x14

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_43
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->g:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x13

    invoke-virtual {v3, v10, v5}, Ls/h;->a(IF)V

    goto/16 :goto_2

    :pswitch_44
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->f:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/16 v10, 0x12

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_45
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->e:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/16 v10, 0x11

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_46
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->O:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x10

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_47
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->S:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0xf

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto/16 :goto_2

    :pswitch_48
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->P:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0xe

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto :goto_2

    :pswitch_49
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->N:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0xd

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto :goto_2

    :pswitch_4a
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->R:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0xc

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto :goto_2

    :pswitch_4b
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->Q:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0xb

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto :goto_2

    :pswitch_4c
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->K:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x8

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto :goto_2

    :pswitch_4d
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->E:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/4 v10, 0x7

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto :goto_2

    :pswitch_4e
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->D:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/4 v10, 0x6

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    goto :goto_2

    :pswitch_4f
    const/4 v11, 0x0

    const/4 v5, 0x5

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Ls/h;->c(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_50
    const/4 v11, 0x0

    iget v5, v6, Ls/j;->J:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v10, 0x2

    invoke-virtual {v3, v10, v5}, Ls/h;->b(II)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v5, v11

    goto/16 :goto_0

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v4, p0, Ls/n;->f:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id unknown "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/material/slider/h;->o0(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConstraintSet"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    iget-boolean v5, p0, Ls/n;->e:Z

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/i;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v3, Ls/i;->g:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ls/b;->e(Landroid/view/View;Ljava/util/HashMap;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    invoke-virtual {p0, p1}, Ls/n;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Ls/n;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public final c(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Ls/n;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_d

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "ConstraintSet"

    if-nez v8, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "id unknown "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/google/android/material/slider/h;->o0(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    iget-boolean v8, p0, Ls/n;->e:Z

    const/4 v10, -0x1

    if-eqz v8, :cond_2

    if-eq v7, v10, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-ne v7, v10, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls/i;

    if-nez v8, :cond_4

    goto/16 :goto_4

    :cond_4
    instance-of v9, v6, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v9, :cond_6

    iget-object v9, v8, Ls/i;->e:Ls/j;

    iput v5, v9, Ls/j;->i0:I

    move-object v5, v6

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v5, v7}, Landroid/view/View;->setId(I)V

    iget v7, v9, Ls/j;->g0:I

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget v7, v9, Ls/j;->h0:I

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    iget-boolean v7, v9, Ls/j;->o0:Z

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    iget-object v7, v9, Ls/j;->j0:[I

    if-eqz v7, :cond_5

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_2

    :cond_5
    iget-object v7, v9, Ls/j;->k0:Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-static {v5, v7}, Ls/n;->f(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, v9, Ls/j;->j0:[I

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    :cond_6
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Ls/e;

    invoke-virtual {v5}, Ls/e;->a()V

    invoke-virtual {v8, v5}, Ls/i;->a(Ls/e;)V

    iget-object v7, v8, Ls/i;->g:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ls/b;->e(Landroid/view/View;Ljava/util/HashMap;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v8, Ls/i;->c:Ls/l;

    iget v7, v5, Ls/l;->c:I

    if-nez v7, :cond_7

    iget v7, v5, Ls/l;->b:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget v5, v5, Ls/l;->d:F

    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v8, Ls/i;->f:Ls/m;

    iget v7, v5, Ls/m;->b:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    iget v7, v5, Ls/m;->c:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotationX(F)V

    iget v7, v5, Ls/m;->d:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotationY(F)V

    iget v7, v5, Ls/m;->e:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    iget v7, v5, Ls/m;->f:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    iget v7, v5, Ls/m;->i:I

    if-eq v7, v10, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget v8, v5, Ls/m;->i:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v8

    int-to-float v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v10

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setPivotY(F)V

    goto :goto_3

    :cond_8
    iget v7, v5, Ls/m;->g:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_9

    iget v7, v5, Ls/m;->g:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    :cond_9
    iget v7, v5, Ls/m;->h:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_a

    iget v7, v5, Ls/m;->h:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    :cond_a
    :goto_3
    iget v7, v5, Ls/m;->j:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    iget v7, v5, Ls/m;->k:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    iget v7, v5, Ls/m;->l:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v7, v5, Ls/m;->m:Z

    if-eqz v7, :cond_c

    iget v5, v5, Ls/m;->n:F

    invoke-virtual {v6, v5}, Landroid/view/View;->setElevation(F)V

    goto :goto_4

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WARNING NO CONSTRAINTS for view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/i;

    if-nez v6, :cond_f

    goto :goto_5

    :cond_f
    iget-object v7, v6, Ls/i;->e:Ls/j;

    iget v8, v7, Ls/j;->i0:I

    if-ne v8, v5, :cond_12

    new-instance v8, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    iget-object v9, v7, Ls/j;->j0:[I

    if-eqz v9, :cond_10

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_6

    :cond_10
    iget-object v9, v7, Ls/j;->k0:Ljava/lang/String;

    if-eqz v9, :cond_11

    invoke-static {v8, v9}, Ls/n;->f(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, v7, Ls/j;->j0:[I

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    :cond_11
    :goto_6
    iget v9, v7, Ls/j;->g0:I

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget v9, v7, Ls/j;->h0:I

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    sget-object v9, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/r;

    new-instance v9, Ls/e;

    invoke-direct {v9}, Ls/e;-><init>()V

    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->r()V

    invoke-virtual {v6, v9}, Ls/i;->a(Ls/e;)V

    invoke-virtual {p1, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    iget-boolean v7, v7, Ls/j;->a:Z

    if-eqz v7, :cond_e

    new-instance v7, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ls/r;

    new-instance v4, Ls/e;

    invoke-direct {v4}, Ls/e;-><init>()V

    invoke-virtual {v6, v4}, Ls/i;->a(Ls/e;)V

    invoke-virtual {p1, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_13
    :goto_7
    if-ge v3, v0, :cond_15

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v2, :cond_14

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->h(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public final e(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, v1, Ls/n;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_a

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ls/e;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    iget-boolean v0, v1, Ls/n;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, Ls/i;

    invoke-direct {v10}, Ls/i;-><init>()V

    invoke-virtual {v3, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ls/i;

    if-nez v10, :cond_3

    move/from16 v16, v2

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_3
    iget-object v11, v1, Ls/n;->d:Ljava/util/HashMap;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ls/b;

    :try_start_0
    const-string v4, "BackgroundColor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v1, Ls/b;

    invoke-direct {v1, v15, v4}, Ls/b;-><init>(Ls/b;Ljava/lang/Object;)V

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMap"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v16, v2

    const/4 v4, 0x0

    :try_start_1
    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v13, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ls/b;

    invoke-direct {v2, v15, v1}, Ls/b;-><init>(Ls/b;Ljava/lang/Object;)V

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move/from16 v16, v2

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v16, v2

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v0

    move/from16 v16, v2

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    move-object/from16 v1, p0

    move/from16 v2, v16

    goto :goto_2

    :cond_5
    move/from16 v16, v2

    const/4 v4, 0x0

    iput-object v12, v10, Ls/i;->g:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v8}, Ls/i;->c(ILs/e;)V

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, v10, Ls/i;->c:Ls/l;

    iput v0, v1, Ls/l;->b:I

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, v1, Ls/l;->d:F

    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    move-result v0

    iget-object v1, v10, Ls/i;->f:Ls/m;

    iput v0, v1, Ls/m;->b:F

    invoke-virtual {v7}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, v1, Ls/m;->c:F

    invoke-virtual {v7}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, v1, Ls/m;->d:F

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, v1, Ls/m;->e:F

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, v1, Ls/m;->f:F

    invoke-virtual {v7}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getPivotY()F

    move-result v2

    float-to-double v8, v0

    const-wide/16 v11, 0x0

    cmpl-double v8, v8, v11

    if-nez v8, :cond_6

    float-to-double v8, v2

    cmpl-double v8, v8, v11

    if-eqz v8, :cond_7

    :cond_6
    iput v0, v1, Ls/m;->g:F

    iput v2, v1, Ls/m;->h:F

    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v1, Ls/m;->j:F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v1, Ls/m;->k:F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, v1, Ls/m;->l:F

    iget-boolean v0, v1, Ls/m;->m:Z

    if-eqz v0, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, v1, Ls/m;->n:F

    :cond_8
    instance-of v0, v7, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_9

    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    move-result v0

    iget-object v1, v10, Ls/i;->e:Ls/j;

    iput-boolean v0, v1, Ls/j;->o0:Z

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object v0

    iput-object v0, v1, Ls/j;->j0:[I

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v0

    iput v0, v1, Ls/j;->g0:I

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v0

    iput v0, v1, Ls/j;->h0:I

    :cond_9
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final h(I)Ls/i;
    .locals 3

    iget-object v0, p0, Ls/n;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ls/i;

    invoke-direct {v2}, Ls/i;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/i;

    return-object p1
.end method

.method public final i(I)Ls/i;
    .locals 2

    iget-object v0, p0, Ls/n;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/i;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Ls/n;->g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Ls/i;

    move-result-object v2

    const-string v3, "Guideline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Ls/i;->e:Ls/j;

    iput-boolean v1, v0, Ls/j;->a:Z

    :cond_1
    iget-object v0, p0, Ls/n;->f:Ljava/util/HashMap;

    iget v1, v2, Ls/i;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final k(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 9

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    if-eqz v0, :cond_b

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "constraintset"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v7

    goto :goto_1

    :sswitch_1
    const-string v7, "constraintoverride"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string v7, "constraint"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_1

    :sswitch_3
    const-string v7, "guideline"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v5

    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_2

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Ls/n;->f:Ljava/util/HashMap;

    iget v3, v2, Ls/i;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto/16 :goto_4

    :cond_3
    return-void

    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "Constraint"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v7

    goto :goto_2

    :sswitch_5
    const-string v5, "CustomAttribute"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_6
    const-string v6, "Barrier"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v5

    goto :goto_2

    :sswitch_7
    const-string v5, "CustomMethod"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_8
    const-string v5, "Guideline"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v6

    goto :goto_2

    :sswitch_9
    const-string v5, "Transform"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_a
    const-string v5, "PropertySet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_b
    const-string v5, "ConstraintOverride"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v3

    goto :goto_2

    :sswitch_c
    const-string v5, "Motion"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_d
    const-string v5, "Layout"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    const/4 v4, 0x6

    :cond_5
    :goto_2
    const-string v0, "XML parser error must be within a Constraint "

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v2, :cond_6

    :try_start_1
    iget-object v0, v2, Ls/i;->g:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Ls/b;->d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    goto/16 :goto_4

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-eqz v2, :cond_7

    iget-object v0, v2, Ls/i;->d:Ls/k;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ls/k;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    if-eqz v2, :cond_8

    iget-object v0, v2, Ls/i;->e:Ls/j;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ls/j;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-eqz v2, :cond_9

    iget-object v0, v2, Ls/i;->f:Ls/m;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ls/m;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-eqz v2, :cond_a

    iget-object v0, v2, Ls/i;->c:Ls/l;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ls/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p1, v0, v7}, Ls/n;->g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Ls/i;

    move-result-object v0

    iget-object v2, v0, Ls/i;->e:Ls/j;

    iput v3, v2, Ls/j;->i0:I

    goto :goto_3

    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p1, v0, v7}, Ls/n;->g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Ls/i;

    move-result-object v0

    iget-object v2, v0, Ls/i;->e:Ls/j;

    iput-boolean v3, v2, Ls/j;->a:Z

    iput-boolean v3, v2, Ls/j;->b:Z

    goto :goto_3

    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p1, v0, v3}, Ls/n;->g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Ls/i;

    move-result-object v0

    goto :goto_3

    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p1, v0, v7}, Ls/n;->g(Landroid/content/Context;Landroid/util/AttributeSet;Z)Ls/i;

    move-result-object v0

    :goto_3
    move-object v2, v0

    goto :goto_4

    :cond_b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_c
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
