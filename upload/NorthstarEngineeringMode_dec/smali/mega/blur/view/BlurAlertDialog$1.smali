.class Lmega/blur/view/BlurAlertDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/blur/view/BlurAlertDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/blur/view/BlurAlertDialog;


# direct methods
.method public constructor <init>(Lmega/blur/view/BlurAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lmega/blur/view/BlurAlertDialog$1;->this$0:Lmega/blur/view/BlurAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lmega/blur/view/BlurAlertDialog$1;->this$0:Lmega/blur/view/BlurAlertDialog;

    invoke-static {p0}, Lmega/blur/view/BlurAlertDialog;->access$001(Lmega/blur/view/BlurAlertDialog;)V

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
