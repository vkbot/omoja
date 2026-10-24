.class public final Lcom/google/android/material/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Landroid/animation/ValueAnimator;

.field public final c:Landroidx/appcompat/widget/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/r;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/r;->b:Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/appcompat/widget/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/e;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/r;->c:Landroidx/appcompat/widget/e;

    return-void
.end method


# virtual methods
.method public final a([ILandroid/animation/ValueAnimator;)V
    .locals 1

    new-instance v0, Lg2/e;

    invoke-direct {v0, p1, p2}, Lg2/e;-><init>([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lcom/google/android/material/internal/r;->c:Landroidx/appcompat/widget/e;

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/material/internal/r;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
