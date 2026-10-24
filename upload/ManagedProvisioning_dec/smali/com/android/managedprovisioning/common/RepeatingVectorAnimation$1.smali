.class Lcom/android/managedprovisioning/common/RepeatingVectorAnimation$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "RepeatingVectorAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation$1;->this$0:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation$1;->this$0:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    invoke-static {p1}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->access$000(Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation$1;->this$0:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    invoke-static {p1}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->access$200(Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation$1;->this$0:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    invoke-static {p0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->access$100(Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/managedprovisioning/common/-$$Lambda$gyolWyjrsKb6UbbWOJ3sI9oBdn8;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/common/-$$Lambda$gyolWyjrsKb6UbbWOJ3sI9oBdn8;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
