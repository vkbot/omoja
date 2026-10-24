.class Lmega/widget/ToastUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/widget/ToastUtil;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/widget/ToastUtil;


# direct methods
.method public constructor <init>(Lmega/widget/ToastUtil;)V
    .locals 0

    iput-object p1, p0, Lmega/widget/ToastUtil$1;->this$0:Lmega/widget/ToastUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lmega/widget/ToastUtil;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd"

    invoke-static {p1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lmega/widget/ToastUtil$1;->this$0:Lmega/widget/ToastUtil;

    invoke-static {p0}, Lmega/widget/ToastUtil;->access$300(Lmega/widget/ToastUtil;)V

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
