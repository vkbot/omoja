.class public Lmega/blur/view/BlurDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurDialog"


# instance fields
.field private mBlurAlpha:I

.field private mBlurRadius:I

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lmega/blur/view/BlurDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/16 p2, 0x18

    iput p2, p0, Lmega/blur/view/BlurDialog;->mBlurRadius:I

    const/16 p2, 0x12

    iput p2, p0, Lmega/blur/view/BlurDialog;->mBlurAlpha:I

    .line 3
    invoke-direct {p0, p1}, Lmega/blur/view/BlurDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/16 p2, 0x18

    iput p2, p0, Lmega/blur/view/BlurDialog;->mBlurRadius:I

    const/16 p2, 0x12

    iput p2, p0, Lmega/blur/view/BlurDialog;->mBlurAlpha:I

    .line 5
    invoke-direct {p0, p1}, Lmega/blur/view/BlurDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$001(Lmega/blur/view/BlurDialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmega/blur/view/BlurDialog;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lmega/blur/view/BlurDialog;->configWindowAttrs()V

    return-void
.end method


# virtual methods
.method public blurBackground()V
    .locals 2

    iget v0, p0, Lmega/blur/view/BlurDialog;->mBlurRadius:I

    iget v1, p0, Lmega/blur/view/BlurDialog;->mBlurAlpha:I

    invoke-static {p0, v0, v1}, Lmega/blur/utils/BlurUtils;->blurDialogBackground(Landroid/app/Dialog;II)V

    return-void
.end method

.method public configDecorLayoutParams()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method public configWindowAttrs()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v1, v1, 0x1006

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Lmega/blur/view/BlurDialog;->enableAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmega/blur/view/BlurDialog;->exitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lmega/blur/view/BlurDialog$1;

    invoke-direct {v1, p0}, Lmega/blur/view/BlurDialog$1;-><init>(Lmega/blur/view/BlurDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lmega/blur/view/BlurDialog;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public enableAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public enterAnimation()Landroid/view/animation/Animation;
    .locals 0

    invoke-static {}, Lmega/blur/utils/AnimUtils;->defaultEnterAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public exitAnimation()Landroid/view/animation/Animation;
    .locals 0

    invoke-static {}, Lmega/blur/utils/AnimUtils;->defaultExitAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmega/blur/view/BlurDialog;->enableAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmega/blur/view/BlurDialog;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmega/blur/view/BlurDialog;->enterAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lmega/blur/view/BlurDialog;->mContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x11

    .line 5
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmega/blur/view/BlurDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    invoke-virtual {p0, p1, v0}, Lmega/blur/view/BlurDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lmega/blur/view/BlurDialog;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lmega/blur/view/BlurDialog;->mContainer:Landroid/widget/FrameLayout;

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lmega/blur/view/BlurDialog;->mContainer:Landroid/widget/FrameLayout;

    .line 10
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {p0}, Lmega/blur/view/BlurDialog;->configDecorLayoutParams()V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmega/blur/view/BlurDialog;->showWithBlur(Z)V

    return-void
.end method

.method public showWithBlur(Z)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmega/blur/view/BlurDialog;->blurBackground()V

    :cond_0
    return-void
.end method
