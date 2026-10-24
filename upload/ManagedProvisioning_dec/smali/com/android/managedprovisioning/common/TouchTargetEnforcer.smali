.class public Lcom/android/managedprovisioning/common/TouchTargetEnforcer;
.super Ljava/lang/Object;
.source "TouchTargetEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/common/TouchTargetEnforcer$TouchDelegateProvider;
    }
.end annotation


# static fields
.field static final MIN_TARGET_DP:I = 0x30
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mDensity:F

.field private final mTouchDelegateProvider:Lcom/android/managedprovisioning/common/TouchTargetEnforcer$TouchDelegateProvider;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 46
    sget-object v0, Lcom/android/managedprovisioning/common/-$$Lambda$EZRJZzincYeBtnngrO1qLLSebHg;->INSTANCE:Lcom/android/managedprovisioning/common/-$$Lambda$EZRJZzincYeBtnngrO1qLLSebHg;

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;-><init>(FLcom/android/managedprovisioning/common/TouchTargetEnforcer$TouchDelegateProvider;)V

    return-void
.end method

.method constructor <init>(FLcom/android/managedprovisioning/common/TouchTargetEnforcer$TouchDelegateProvider;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->mDensity:F

    .line 57
    iput-object p2, p0, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->mTouchDelegateProvider:Lcom/android/managedprovisioning/common/TouchTargetEnforcer$TouchDelegateProvider;

    return-void
.end method

.method private createNewBounds(Landroid/view/View;III)Landroid/graphics/Rect;
    .locals 1

    .line 101
    div-int/lit8 p3, p3, 0x2

    .line 102
    div-int/lit8 p4, p4, 0x2

    .line 104
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 105
    invoke-virtual {p1, p0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 106
    iget p1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 107
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 108
    iget p4, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p3

    iput p4, p0, Landroid/graphics/Rect;->left:I

    .line 109
    iget p4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p4, p3

    iput p4, p0, Landroid/graphics/Rect;->right:I

    sub-int p1, v0, p1

    sub-int p1, p2, p1

    if-lez p1, :cond_0

    add-int/2addr v0, p1

    .line 114
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 116
    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget p3, p0, Landroid/graphics/Rect;->left:I

    sub-int p3, p1, p3

    sub-int/2addr p2, p3

    if-lez p2, :cond_1

    add-int/2addr p1, p2

    .line 118
    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_1
    return-object p0
.end method

.method private dpToPx(I)F
    .locals 0

    int-to-float p1, p1

    .line 124
    iget p0, p0, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->mDensity:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$enforce$0(Landroid/view/View;IIILandroid/view/View;)V
    .locals 2

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->createNewBounds(Landroid/view/View;III)Landroid/graphics/Rect;

    move-result-object p2

    .line 81
    monitor-enter p5

    .line 82
    :try_start_0
    invoke-virtual {p5}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p3, :cond_0

    .line 83
    iget-object p0, p0, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->mTouchDelegateProvider:Lcom/android/managedprovisioning/common/TouchTargetEnforcer$TouchDelegateProvider;

    .line 84
    invoke-interface {p0, p2, p1}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer$TouchDelegateProvider;->getInstance(Landroid/graphics/Rect;Landroid/view/View;)Landroid/view/TouchDelegate;

    move-result-object p0

    .line 83
    invoke-virtual {p5, p0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    const-string p0, "Successfully set touch delegate on ancestor %s delegating to target %s."

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p5, p2, v0

    aput-object p1, p2, p4

    .line 85
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Ancestor %s already has an assigned touch delegate %s. Unable to assign another one. Ignoring target."

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p5, p2, v0

    aput-object p1, p2, p4

    .line 90
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 95
    :goto_0
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$enforce$1(Landroid/view/View;Landroid/view/View;)V
    .locals 9

    const/16 v0, 0x30

    .line 71
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->dpToPx(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v5, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v5, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-gtz v7, :cond_0

    if-gtz v6, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$cH28g3l5zEf8il8foqCJnvujwLA;-><init>(Lcom/android/managedprovisioning/common/TouchTargetEnforcer;Landroid/view/View;IIILandroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public enforce(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$tgFrrT_Mv-y-9gKy3ppJRQHGozM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$tgFrrT_Mv-y-9gKy3ppJRQHGozM;-><init>(Lcom/android/managedprovisioning/common/TouchTargetEnforcer;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public synthetic lambda$enforce$0$TouchTargetEnforcer(Landroid/view/View;IIILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->lambda$enforce$0(Landroid/view/View;IIILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$enforce$1$TouchTargetEnforcer(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->lambda$enforce$1(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
