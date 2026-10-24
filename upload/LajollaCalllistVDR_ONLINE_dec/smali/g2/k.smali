.class public final Lg2/k;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# virtual methods
.method public final e0(FFLg2/w;)V
    .locals 11

    mul-float v0, p2, p1

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p3, v2, v0, v3, v1}, Lg2/w;->e(FFFF)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    mul-float v8, p2, p1

    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v10, 0x42b40000    # 90.0f

    move-object v4, p3

    move v7, v8

    invoke-virtual/range {v4 .. v10}, Lg2/w;->a(FFFFFF)V

    return-void
.end method
