.class public final Ly1/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroidx/appcompat/widget/d0;

.field public final synthetic c:Ly1/q;


# direct methods
.method public constructor <init>(Ly1/q;ZLandroidx/appcompat/widget/d0;)V
    .locals 0

    iput-object p1, p0, Ly1/k;->c:Ly1/q;

    iput-boolean p2, p0, Ly1/k;->a:Z

    iput-object p3, p0, Ly1/k;->b:Landroidx/appcompat/widget/d0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    iget-object v0, p0, Ly1/k;->c:Ly1/q;

    iput p1, v0, Ly1/q;->r:I

    const/4 p1, 0x0

    iput-object p1, v0, Ly1/q;->l:Landroid/animation/Animator;

    iget-object p1, p0, Ly1/k;->b:Landroidx/appcompat/widget/d0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/slider/h;

    invoke-virtual {p1}, Lcom/google/android/material/slider/h;->Z0()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Ly1/k;->c:Ly1/q;

    iget-object v1, v0, Ly1/q;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    iget-boolean v3, p0, Ly1/k;->a:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->a(IZ)V

    const/4 v1, 0x2

    iput v1, v0, Ly1/q;->r:I

    iput-object p1, v0, Ly1/q;->l:Landroid/animation/Animator;

    return-void
.end method
