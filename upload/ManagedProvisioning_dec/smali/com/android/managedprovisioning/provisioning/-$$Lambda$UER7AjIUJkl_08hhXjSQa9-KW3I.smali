.class public final synthetic Lcom/android/managedprovisioning/provisioning/-$$Lambda$UER7AjIUJkl_08hhXjSQa9-KW3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$UER7AjIUJkl_08hhXjSQa9-KW3I;->f$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$UER7AjIUJkl_08hhXjSQa9-KW3I;->f$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->startNextAnimation()V

    return-void
.end method
