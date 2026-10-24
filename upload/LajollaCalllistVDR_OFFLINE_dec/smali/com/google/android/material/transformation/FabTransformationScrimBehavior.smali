.class public Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:Le1/g;

.field public final d:Le1/g;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    new-instance v0, Le1/g;

    const-wide/16 v1, 0x4b

    invoke-direct {v0, v1, v2}, Le1/g;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->c:Le1/g;

    .line 3
    new-instance v0, Le1/g;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Le1/g;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->d:Le1/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Le1/g;

    const-wide/16 v0, 0x4b

    invoke-direct {p1, v0, v1}, Le1/g;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->c:Le1/g;

    .line 6
    new-instance p1, Le1/g;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Le1/g;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->d:Le1/g;

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    instance-of p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return p0
.end method

.method public final r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final t(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->c:Le1/g;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->d:Le1/g;

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v2, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {p2, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    goto :goto_1

    :cond_2
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v0, v2, v1

    invoke-static {p2, p4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    :goto_1
    invoke-virtual {p0, p4}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p0, p1}, Le1/b;->a(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    new-instance p1, Ld2/c;

    invoke-direct {p1, p3, p2}, Ld2/c;-><init>(ZLandroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method
