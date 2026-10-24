.class public final Lq/b;
.super Lr/o;
.source "SourceFile"


# instance fields
.field public final a:Lm/n;

.field public b:Lm/k;

.field public c:Lm/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr/o;-><init>()V

    new-instance v0, Lm/n;

    invoke-direct {v0}, Lm/n;-><init>()V

    iput-object v0, p0, Lq/b;->a:Lm/n;

    iput-object v0, p0, Lq/b;->c:Lm/m;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget-object p0, p0, Lq/b;->c:Lm/m;

    invoke-interface {p0}, Lm/m;->b()F

    move-result p0

    return p0
.end method

.method public final b(FFFFFF)V
    .locals 6

    iget-object v0, p0, Lq/b;->a:Lm/n;

    iput-object v0, p0, Lq/b;->c:Lm/m;

    iput p1, v0, Lm/n;->l:F

    cmpl-float p0, p1, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Lm/n;->k:Z

    if-eqz p0, :cond_1

    neg-float v1, p3

    sub-float v2, p1, p2

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lm/n;->d(FFFFF)V

    goto :goto_1

    :cond_1
    sub-float v2, p2, p1

    move v1, p3

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lm/n;->d(FFFFF)V

    :goto_1
    return-void
.end method

.method public final getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Lq/b;->c:Lm/m;

    invoke-interface {p0, p1}, Lm/m;->getInterpolation(F)F

    move-result p0

    return p0
.end method
