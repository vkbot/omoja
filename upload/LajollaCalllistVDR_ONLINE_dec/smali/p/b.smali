.class public final Lp/b;
.super Lq/o;
.source "SourceFile"


# instance fields
.field public final a:Ll/n;

.field public b:Ll/k;

.field public c:Ll/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lq/o;-><init>()V

    new-instance v0, Ll/n;

    invoke-direct {v0}, Ll/n;-><init>()V

    iput-object v0, p0, Lp/b;->a:Ll/n;

    iput-object v0, p0, Lp/b;->c:Ll/m;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget-object v0, p0, Lp/b;->c:Ll/m;

    invoke-interface {v0}, Ll/m;->b()F

    move-result v0

    return v0
.end method

.method public final b(FFFFFF)V
    .locals 6

    iget-object v0, p0, Lp/b;->a:Ll/n;

    iput-object v0, p0, Lp/b;->c:Ll/m;

    iput p1, v0, Ll/n;->l:F

    cmpl-float v1, p1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Ll/n;->k:Z

    if-eqz v1, :cond_1

    neg-float v1, p3

    sub-float v2, p1, p2

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ll/n;->d(FFFFF)V

    goto :goto_1

    :cond_1
    sub-float v2, p2, p1

    move v1, p3

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ll/n;->d(FFFFF)V

    :goto_1
    return-void
.end method

.method public final getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Lp/b;->c:Ll/m;

    invoke-interface {v0, p1}, Ll/m;->getInterpolation(F)F

    move-result p1

    return p1
.end method
