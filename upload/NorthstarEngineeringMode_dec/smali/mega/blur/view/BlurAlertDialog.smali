.class public Lmega/blur/view/BlurAlertDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurAlertDialog"


# instance fields
.field private mBlurAlpha:I

.field private mBlurRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lmega/blur/view/BlurAlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/16 p1, 0x18

    iput p1, p0, Lmega/blur/view/BlurAlertDialog;->mBlurRadius:I

    const/16 p1, 0x12

    iput p1, p0, Lmega/blur/view/BlurAlertDialog;->mBlurAlpha:I

    .line 3
    invoke-virtual {p0}, Lmega/blur/view/BlurAlertDialog;->configWindowAttrs()V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/16 p1, 0x18

    iput p1, p0, Lmega/blur/view/BlurAlertDialog;->mBlurRadius:I

    const/16 p1, 0x12

    iput p1, p0, Lmega/blur/view/BlurAlertDialog;->mBlurAlpha:I

    .line 5
    invoke-virtual {p0}, Lmega/blur/view/BlurAlertDialog;->configWindowAttrs()V

    return-void
.end method

.method public static synthetic access$001(Lmega/blur/view/BlurAlertDialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private getAlertContentView()Landroid/view/View;
    .locals 1

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public configWindowAttrs()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#25000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public dismiss()V
    .locals 3

    invoke-direct {p0}, Lmega/blur/view/BlurAlertDialog;->getAlertContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lmega/blur/view/BlurAlertDialog;->enableAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmega/blur/view/BlurAlertDialog;->exitAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lmega/blur/view/BlurAlertDialog$1;

    invoke-direct {v2, p0}, Lmega/blur/view/BlurAlertDialog$1;-><init>(Lmega/blur/view/BlurAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

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
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    invoke-direct {p0}, Lmega/blur/view/BlurAlertDialog;->getAlertContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lmega/blur/view/BlurAlertDialog;->enableAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmega/blur/view/BlurAlertDialog;->enterAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lmega/blur/view/BlurAlertDialog;->getAlertContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x11

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lmega/blur/view/BlurAlertDialog;->configWindowAttrs()V

    iget v0, p0, Lmega/blur/view/BlurAlertDialog;->mBlurRadius:I

    iget v1, p0, Lmega/blur/view/BlurAlertDialog;->mBlurAlpha:I

    invoke-static {p0, v0, v1}, Lmega/blur/utils/BlurUtils;->blurDialogBackground(Landroid/app/Dialog;II)V

    return-void
.end method
