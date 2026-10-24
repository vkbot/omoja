.class public final Ly1/k;
.super Ly1/l;
.source "SourceFile"


# virtual methods
.method public final h0(FFLy1/x;)V
    .locals 10

    mul-float p0, p2, p1

    const/high16 v0, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p3, v1, p0, v2, v0}, Ly1/x;->e(FFFF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p2, p0

    mul-float v7, p2, p1

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, 0x42b40000    # 90.0f

    move-object v3, p3

    move v6, v7

    invoke-virtual/range {v3 .. v9}, Ly1/x;->a(FFFFFF)V

    return-void
.end method
