.class public final Lq1/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroidx/appcompat/widget/d0;

.field public final synthetic c:Lq1/p;


# direct methods
.method public constructor <init>(Lq1/p;ZLandroidx/appcompat/widget/d0;)V
    .locals 0

    iput-object p1, p0, Lq1/k;->c:Lq1/p;

    iput-boolean p2, p0, Lq1/k;->a:Z

    iput-object p3, p0, Lq1/k;->b:Landroidx/appcompat/widget/d0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    iget-object v0, p0, Lq1/k;->c:Lq1/p;

    iput p1, v0, Lq1/p;->r:I

    const/4 p1, 0x0

    iput-object p1, v0, Lq1/p;->l:Landroid/animation/Animator;

    iget-object p0, p0, Lq1/k;->b:Landroidx/appcompat/widget/d0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Ly1/l;

    invoke-virtual {p0}, Ly1/l;->c1()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lq1/k;->c:Lq1/p;

    iget-object v1, v0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    iget-boolean p0, p0, Lq1/k;->a:Z

    invoke-virtual {v1, v2, p0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->a(IZ)V

    const/4 p0, 0x2

    iput p0, v0, Lq1/p;->r:I

    iput-object p1, v0, Lq1/p;->l:Landroid/animation/Animator;

    return-void
.end method
