.class public final Lq1/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Lq1/a;


# direct methods
.method public constructor <init>(Lq1/a;)V
    .locals 0

    iput-object p1, p0, Lq1/d;->b:Lq1/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq1/d;->a:Z

    iget-object p0, p0, Lq1/d;->b:Lq1/a;

    invoke-virtual {p0}, Lq1/a;->d()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lq1/d;->b:Lq1/a;

    invoke-virtual {p1}, Lq1/a;->e()V

    iget-boolean p0, p0, Lq1/d;->a:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lq1/a;->g()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lq1/d;->b:Lq1/a;

    invoke-virtual {v0, p1}, Lq1/a;->f(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq1/d;->a:Z

    return-void
.end method
