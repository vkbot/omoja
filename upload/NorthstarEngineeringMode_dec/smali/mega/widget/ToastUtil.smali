.class public Lmega/widget/ToastUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/widget/ToastUtil$InnerToast;
    }
.end annotation


# static fields
.field private static final ALPHA_0:F = 0.0f

.field private static final ALPHA_1:F = 1.0f

.field private static final ANIMATION_DURING:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ToastUtil"

.field private static final TOAST_SHOW_DURATION:I = 0xbb8


# instance fields
.field private mContainer:Landroid/widget/FrameLayout;

.field private mEndAnimation:Landroid/view/animation/AlphaAnimation;

.field private mEndAnimationRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mRootView:Landroid/view/View;

.field private mStartAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTvContent:Landroid/widget/TextView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmega/widget/ToastUtil;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-direct {p0}, Lmega/widget/ToastUtil;->initParams()V

    .line 5
    invoke-direct {p0}, Lmega/widget/ToastUtil;->initAnimation()V

    return-void
.end method

.method public synthetic constructor <init>(Lmega/widget/ToastUtil$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmega/widget/ToastUtil;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lmega/widget/ToastUtil;->lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmega/widget/ToastUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lmega/widget/ToastUtil;)V
    .locals 0

    invoke-direct {p0}, Lmega/widget/ToastUtil;->removeContainer()V

    return-void
.end method

.method public static synthetic b(Lmega/widget/ToastUtil;)V
    .locals 0

    invoke-direct {p0}, Lmega/widget/ToastUtil;->lambda$initAnimation$1()V

    return-void
.end method

.method private initAnimation()V
    .locals 5

    iget-object v0, p0, Lmega/widget/ToastUtil;->mStartAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lmega/widget/ToastUtil;->mStartAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lmega/widget/ToastUtil;->mEndAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lmega/widget/ToastUtil;->mEndAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lmega/widget/ToastUtil;->mEndAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lmega/widget/ToastUtil$1;

    invoke-direct {v1, p0}, Lmega/widget/ToastUtil$1;-><init>(Lmega/widget/ToastUtil;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    new-instance v0, Ls0/b;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lmega/widget/ToastUtil;->mEndAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private initContainer(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lmega/widget/ToastUtil;->removeContainer()V

    iget-object v0, p0, Lmega/widget/ToastUtil;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmega/widget/ToastUtil;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmega/widget/ToastUtil;->mRootView:Landroid/view/View;

    const v1, 0x7f0a03c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmega/widget/ToastUtil;->mTvContent:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmega/widget/ToastUtil;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmega/widget/ToastUtil;->mContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lmega/widget/ToastUtil;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private initParams()V
    .locals 1

    iget-object v0, p0, Lmega/widget/ToastUtil;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lmega/widget/ToastUtil;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 p0, 0x51

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, -0x2

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p0, -0x3

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p0, 0x7f6

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x98

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$initAnimation$1()V
    .locals 1

    iget-object v0, p0, Lmega/widget/ToastUtil;->mRootView:Landroid/view/View;

    iget-object p0, p0, Lmega/widget/ToastUtil;->mEndAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static synthetic lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lmega/widget/ToastUtil$InnerToast;->access$100()Lmega/widget/ToastUtil;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lmega/widget/ToastUtil;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private removeContainer()V
    .locals 2

    iget-object v0, p0, Lmega/widget/ToastUtil;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmega/widget/ToastUtil;->mContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lmega/widget/ToastUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeContainer"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmega/widget/ToastUtil;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lmega/widget/ToastUtil;->mContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static setViewType(I)V
    .locals 1

    invoke-static {}, Lmega/widget/ToastUtil$InnerToast;->access$100()Lmega/widget/ToastUtil;

    move-result-object v0

    iget-object v0, v0, Lmega/widget/ToastUtil;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return-void
.end method

.method private showTextToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-direct {p0, p1}, Lmega/widget/ToastUtil;->initContainer(Landroid/content/Context;)V

    iget-object v0, p0, Lmega/widget/ToastUtil;->mTvContent:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lmega/widget/ToastUtil;->mTvContent:Landroid/widget/TextView;

    const v0, 0x7f06004d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lmega/widget/ToastUtil;->mTvContent:Landroid/widget/TextView;

    const v0, 0x7f080157

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Lmega/widget/ToastUtil;->TAG:Ljava/lang/String;

    const-string p2, "addView..."

    invoke-static {p1, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lmega/widget/ToastUtil;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lmega/widget/ToastUtil;->mContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmega/widget/ToastUtil;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lmega/widget/ToastUtil;->mRootView:Landroid/view/View;

    iget-object p2, p0, Lmega/widget/ToastUtil;->mStartAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lmega/widget/ToastUtil;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lmega/widget/ToastUtil;->mEndAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lmega/widget/ToastUtil;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lmega/widget/ToastUtil;->mEndAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lmega/widget/ToastUtil$InnerToast;->access$100()Lmega/widget/ToastUtil;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmega/widget/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lmega/widget/ToastUtil$InnerToast;->access$100()Lmega/widget/ToastUtil;

    move-result-object v0

    iget-object v0, v0, Lmega/widget/ToastUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lq0/b;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, p1}, Lq0/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
