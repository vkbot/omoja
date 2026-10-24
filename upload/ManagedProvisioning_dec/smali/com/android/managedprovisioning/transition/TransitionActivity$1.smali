.class Lcom/android/managedprovisioning/transition/TransitionActivity$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "TransitionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/managedprovisioning/transition/TransitionActivity;->setupAnimation(Lcom/google/android/setupdesign/GlifLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/transition/TransitionActivity;

.field final synthetic val$animationHolder:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/transition/TransitionActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/managedprovisioning/transition/TransitionActivity$1;->this$0:Lcom/android/managedprovisioning/transition/TransitionActivity;

    iput-object p2, p0, Lcom/android/managedprovisioning/transition/TransitionActivity$1;->val$animationHolder:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/android/managedprovisioning/transition/TransitionActivity$1;->val$animationHolder:Landroid/widget/ImageView;

    const v0, 0x7f081d0b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object p1, p0, Lcom/android/managedprovisioning/transition/TransitionActivity$1;->val$animationHolder:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 99
    iget-object v0, p0, Lcom/android/managedprovisioning/transition/TransitionActivity$1;->this$0:Lcom/android/managedprovisioning/transition/TransitionActivity;

    new-instance v1, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    invoke-direct {v1, p1}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-static {v0, v1}, Lcom/android/managedprovisioning/transition/TransitionActivity;->access$002(Lcom/android/managedprovisioning/transition/TransitionActivity;Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;)Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    .line 100
    iget-object p1, p0, Lcom/android/managedprovisioning/transition/TransitionActivity$1;->this$0:Lcom/android/managedprovisioning/transition/TransitionActivity;

    invoke-static {p1}, Lcom/android/managedprovisioning/transition/TransitionActivity;->access$000(Lcom/android/managedprovisioning/transition/TransitionActivity;)Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->start()V

    .line 101
    iget-object p0, p0, Lcom/android/managedprovisioning/transition/TransitionActivity$1;->this$0:Lcom/android/managedprovisioning/transition/TransitionActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/managedprovisioning/transition/TransitionActivity;->access$102(Lcom/android/managedprovisioning/transition/TransitionActivity;Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-void
.end method
