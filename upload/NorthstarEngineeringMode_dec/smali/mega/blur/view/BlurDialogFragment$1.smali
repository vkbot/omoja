.class Lmega/blur/view/BlurDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/blur/view/BlurDialogFragment;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/blur/view/BlurDialogFragment;


# direct methods
.method public constructor <init>(Lmega/blur/view/BlurDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lmega/blur/view/BlurDialogFragment$1;->this$0:Lmega/blur/view/BlurDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lmega/blur/view/BlurDialogFragment$1;->this$0:Lmega/blur/view/BlurDialogFragment;

    invoke-static {p0}, Lmega/blur/view/BlurDialogFragment;->access$001(Lmega/blur/view/BlurDialogFragment;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
