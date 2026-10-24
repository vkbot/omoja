.class public abstract Lmega/blur/view/BlurDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final KEY_BLUR_ALPHA:Ljava/lang/String; = "background_alpha"

.field public static final KEY_BLUR_RADIUS:Ljava/lang/String; = "background_radius"

.field private static final TAG:Ljava/lang/String; = "BlurDialogFragment"


# instance fields
.field private mBlurAlpha:I

.field private mBlurRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/16 v0, 0x18

    iput v0, p0, Lmega/blur/view/BlurDialogFragment;->mBlurRadius:I

    const/16 v0, 0x12

    iput v0, p0, Lmega/blur/view/BlurDialogFragment;->mBlurAlpha:I

    return-void
.end method

.method public static synthetic access$001(Lmega/blur/view/BlurDialogFragment;)V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmega/blur/view/BlurDialogFragment;->enableAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmega/blur/view/BlurDialogFragment;->exitAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lmega/blur/view/BlurDialogFragment$1;

    invoke-direct {v2, p0}, Lmega/blur/view/BlurDialogFragment$1;-><init>(Lmega/blur/view/BlurDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmega/blur/view/BlurDialogFragment;->enableAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmega/blur/view/BlurDialogFragment;->enterAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "background_alpha"

    iget v1, p0, Lmega/blur/view/BlurDialogFragment;->mBlurAlpha:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmega/blur/view/BlurDialogFragment;->mBlurAlpha:I

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmega/blur/view/BlurDialogFragment;->mBlurAlpha:I

    const-string v0, "background_radius"

    iget v1, p0, Lmega/blur/view/BlurDialogFragment;->mBlurRadius:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmega/blur/view/BlurDialogFragment;->mBlurRadius:I

    const/16 v0, 0x19

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lmega/blur/view/BlurDialogFragment;->mBlurRadius:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Lmega/blur/view/BlurDialogFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lmega/blur/view/BlurDialogFragment$2;-><init>(Lmega/blur/view/BlurDialogFragment;Landroid/content/Context;I)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iget p2, p0, Lmega/blur/view/BlurDialogFragment;->mBlurRadius:I

    iget v0, p0, Lmega/blur/view/BlurDialogFragment;->mBlurAlpha:I

    invoke-static {p1, p2, v0}, Lmega/blur/utils/BlurUtils;->blurDialogBackground(Landroid/app/Dialog;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 p2, p2, 0x1006

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
