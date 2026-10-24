.class Lmega/blur/view/BlurDialogFragment$2;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/blur/view/BlurDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/blur/view/BlurDialogFragment;


# direct methods
.method public constructor <init>(Lmega/blur/view/BlurDialogFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lmega/blur/view/BlurDialogFragment$2;->this$0:Lmega/blur/view/BlurDialogFragment;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$100(Lmega/blur/view/BlurDialogFragment$2;)V
    .locals 0

    invoke-direct {p0}, Lmega/blur/view/BlurDialogFragment$2;->callSuperCancel()V

    return-void
.end method

.method private callSuperCancel()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method private doExitAnimation()V
    .locals 3

    iget-object v0, p0, Lmega/blur/view/BlurDialogFragment$2;->this$0:Lmega/blur/view/BlurDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmega/blur/view/BlurDialogFragment$2;->callSuperCancel()V

    return-void

    :cond_0
    iget-object v1, p0, Lmega/blur/view/BlurDialogFragment$2;->this$0:Lmega/blur/view/BlurDialogFragment;

    invoke-virtual {v1}, Lmega/blur/view/BlurDialogFragment;->exitAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lmega/blur/view/BlurDialogFragment$2$1;

    invoke-direct {v2, p0}, Lmega/blur/view/BlurDialogFragment$2$1;-><init>(Lmega/blur/view/BlurDialogFragment$2;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lmega/blur/view/BlurDialogFragment$2;->this$0:Lmega/blur/view/BlurDialogFragment;

    invoke-virtual {v0}, Lmega/blur/view/BlurDialogFragment;->enableAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmega/blur/view/BlurDialogFragment$2;->doExitAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmega/blur/view/BlurDialogFragment$2;->callSuperCancel()V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
