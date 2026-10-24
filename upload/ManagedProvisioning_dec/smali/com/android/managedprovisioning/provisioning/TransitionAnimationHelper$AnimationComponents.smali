.class final Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;
.super Ljava/lang/Object;
.source "TransitionAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimationComponents"
.end annotation


# instance fields
.field private final header:Landroid/widget/TextView;

.field private final image:Landroid/widget/ImageView;

.field private final providerInfo:Landroid/widget/TextView;

.field private final subHeader:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->header:Landroid/widget/TextView;

    .line 294
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->subHeader:Landroid/widget/TextView;

    .line 295
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->image:Landroid/widget/ImageView;

    .line 296
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->providerInfo:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$300(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/ImageView;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->image:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/TextView;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->header:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/TextView;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->subHeader:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;)Landroid/widget/TextView;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->providerInfo:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method asList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 300
    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->header:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->subHeader:Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->image:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;->providerInfo:Landroid/widget/TextView;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
