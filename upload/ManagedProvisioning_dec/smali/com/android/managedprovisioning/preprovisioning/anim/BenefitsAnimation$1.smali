.class Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "BenefitsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->chainAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation$1;->this$0:Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation$1;->this$0:Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;

    invoke-static {p1}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->access$000(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 219
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation$1;->this$0:Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;

    invoke-static {p1}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->access$100(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 220
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation$1;->this$0:Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;

    invoke-static {p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->access$200(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation$1;->this$0:Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;

    invoke-static {p0}, Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;->access$000(Lcom/android/managedprovisioning/preprovisioning/anim/BenefitsAnimation;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
