.class public Lmega/widget/BlurHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/widget/BlurHelper$InnerBlur;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA:F = 0.3f

.field private static final DEFAULT_BLUR_RADIUS:I = 0xc8

.field private static final MAX_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "BlurHelper"


# instance fields
.field private mAlpha:F

.field private mBlurRadius:I

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0}, Lmega/widget/BlurHelper;->init()V

    return-void
.end method

.method public synthetic constructor <init>(Lmega/widget/BlurHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmega/widget/BlurHelper;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmega/widget/BlurHelper;)V
    .locals 0

    invoke-direct {p0}, Lmega/widget/BlurHelper;->lambda$init$0()V

    return-void
.end method

.method private applyBackgroundBlur()V
    .locals 3

    sget-object v0, Lmega/widget/BlurHelper;->TAG:Ljava/lang/String;

    const-string v1, "applyBackgroundBlur start"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmega/widget/BlurHelper;->mView:Landroid/view/View;

    iget v2, p0, Lmega/widget/BlurHelper;->mAlpha:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lmega/widget/BlurHelper;->mView:Landroid/view/View;

    iget v2, p0, Lmega/widget/BlurHelper;->mBlurRadius:I

    invoke-static {v2, v1}, Lu2/a;->b(ILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lmega/widget/BlurHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object p0, p0, Lmega/widget/BlurHelper;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const-string p0, "applyBackgroundBlur end and isBlurSuccess="

    invoke-static {p0, v1, v0}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lmega/widget/BlurHelper;
    .locals 1

    invoke-static {}, Lmega/widget/BlurHelper$InnerBlur;->access$100()Lmega/widget/BlurHelper;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    const/16 v0, 0xc8

    iput v0, p0, Lmega/widget/BlurHelper;->mBlurRadius:I

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmega/widget/BlurHelper;->mAlpha:F

    new-instance v0, Lmega/widget/a;

    invoke-direct {v0, p0}, Lmega/widget/a;-><init>(Lmega/widget/BlurHelper;)V

    iput-object v0, p0, Lmega/widget/BlurHelper;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 2

    sget-object v0, Lmega/widget/BlurHelper;->TAG:Ljava/lang/String;

    const-string v1, "mGlobalLayoutListener"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lmega/widget/BlurHelper;->applyBackgroundBlur()V

    return-void
.end method


# virtual methods
.method public addBlur(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lmega/widget/BlurHelper;->mView:Landroid/view/View;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lmega/widget/BlurHelper;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    invoke-direct {p0}, Lmega/widget/BlurHelper;->applyBackgroundBlur()V

    return-void
.end method

.method public addBlur(Landroid/view/View;IF)V
    .locals 0

    if-lez p2, :cond_0

    iput p2, p0, Lmega/widget/BlurHelper;->mBlurRadius:I

    :cond_0
    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p3, p2

    if-gez p2, :cond_1

    iput p3, p0, Lmega/widget/BlurHelper;->mAlpha:F

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lmega/widget/BlurHelper;->addBlur(Landroid/view/View;)V

    return-void
.end method
