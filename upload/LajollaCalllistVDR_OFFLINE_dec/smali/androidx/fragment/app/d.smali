.class public final Landroidx/fragment/app/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/g1;

.field public final synthetic e:Landroidx/fragment/app/h;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/g1;Landroidx/fragment/app/h;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/d;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/d;->b:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/d;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/d;->d:Landroidx/fragment/app/g1;

    iput-object p5, p0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/d;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, Landroidx/fragment/app/d;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/d;->d:Landroidx/fragment/app/g1;

    iget-object p1, p1, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/i;->a()V

    return-void
.end method
