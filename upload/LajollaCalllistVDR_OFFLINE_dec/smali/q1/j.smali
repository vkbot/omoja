.class public final Lq1/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Z

.field public final synthetic c:Landroidx/appcompat/widget/d0;

.field public final synthetic d:Lq1/p;


# direct methods
.method public constructor <init>(Lq1/p;ZLandroidx/appcompat/widget/d0;)V
    .locals 0

    iput-object p1, p0, Lq1/j;->d:Lq1/p;

    iput-boolean p2, p0, Lq1/j;->b:Z

    iput-object p3, p0, Lq1/j;->c:Landroidx/appcompat/widget/d0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq1/j;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    iget-object v0, p0, Lq1/j;->d:Lq1/p;

    iput p1, v0, Lq1/p;->r:I

    const/4 p1, 0x0

    iput-object p1, v0, Lq1/p;->l:Landroid/animation/Animator;

    iget-boolean p1, p0, Lq1/j;->a:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lq1/j;->b:Z

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    iget-object v0, v0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->a(IZ)V

    iget-object p0, p0, Lq1/j;->c:Landroidx/appcompat/widget/d0;

    if-eqz p0, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p1, Ly1/l;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, p0}, Ly1/l;->Z0(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lq1/j;->d:Lq1/p;

    iget-object v1, v0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v2, p0, Lq1/j;->b:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->a(IZ)V

    const/4 v1, 0x1

    iput v1, v0, Lq1/p;->r:I

    iput-object p1, v0, Lq1/p;->l:Landroid/animation/Animator;

    iput-boolean v3, p0, Lq1/j;->a:Z

    return-void
.end method
