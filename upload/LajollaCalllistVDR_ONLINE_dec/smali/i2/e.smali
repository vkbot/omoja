.class public final Li2/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Li2/f;


# direct methods
.method public constructor <init>(Li2/f;I)V
    .locals 0

    iput-object p1, p0, Li2/e;->b:Li2/f;

    iput p2, p0, Li2/e;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Li2/e;->b:Li2/f;

    iget v0, p0, Li2/e;->a:I

    iput v0, p1, Li2/f;->c:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Li2/e;->b:Li2/f;

    iget v0, p0, Li2/e;->a:I

    iput v0, p1, Li2/f;->c:I

    return-void
.end method
