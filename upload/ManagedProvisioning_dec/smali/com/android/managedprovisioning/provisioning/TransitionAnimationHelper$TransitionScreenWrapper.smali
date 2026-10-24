.class final Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;
.super Ljava/lang/Object;
.source "TransitionAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransitionScreenWrapper"
.end annotation


# instance fields
.field final drawable:I

.field final header:I

.field final shouldLoop:Z

.field final showContactAdmin:Z

.field final subHeader:I


# direct methods
.method constructor <init>(II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 259
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;-><init>(IIIZZ)V

    return-void
.end method

.method constructor <init>(IIIZZ)V
    .locals 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Header resource id must be a positive number."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->header:I

    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Drawable resource id must be a positive number."

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->drawable:I

    .line 269
    iput p3, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->subHeader:I

    .line 270
    iput-boolean p4, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->showContactAdmin:Z

    .line 271
    iput-boolean p5, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;->shouldLoop:Z

    return-void
.end method
