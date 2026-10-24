.class public final La2/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La2/f;


# direct methods
.method public constructor <init>(La2/f;I)V
    .locals 0

    iput-object p1, p0, La2/e;->b:La2/f;

    iput p2, p0, La2/e;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, La2/e;->b:La2/f;

    iget p0, p0, La2/e;->a:I

    iput p0, p1, La2/f;->b:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, La2/e;->b:La2/f;

    iget p0, p0, La2/e;->a:I

    iput p0, p1, La2/f;->b:I

    return-void
.end method
