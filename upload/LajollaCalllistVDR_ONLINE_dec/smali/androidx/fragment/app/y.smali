.class public final Landroidx/fragment/app/y;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/fragment/app/t;

.field public final synthetic d:Landroidx/fragment/app/e0;

.field public final synthetic e:Lc0/c;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/t;Landroidx/fragment/app/e0;Lc0/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/y;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/y;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/t;

    iput-object p4, p0, Landroidx/fragment/app/y;->d:Landroidx/fragment/app/e0;

    iput-object p5, p0, Landroidx/fragment/app/y;->e:Lc0/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object p1, p0, Landroidx/fragment/app/y;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/y;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/t;

    iget-object v2, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/r;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroidx/fragment/app/r;->b:Landroid/animation/Animator;

    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/t;->e()Landroidx/fragment/app/r;

    move-result-object v4

    iput-object v3, v4, Landroidx/fragment/app/r;->b:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/y;->d:Landroidx/fragment/app/e0;

    iget-object v0, p0, Landroidx/fragment/app/y;->e:Lc0/c;

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/e0;->c(Landroidx/fragment/app/t;Lc0/c;)V

    :cond_1
    return-void
.end method
