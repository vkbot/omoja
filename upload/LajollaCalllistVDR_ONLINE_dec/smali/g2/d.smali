.class public final Lg2/d;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# virtual methods
.method public final e0(FFLg2/w;)V
    .locals 6

    mul-float v0, p2, p1

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1, v0, v2, v3}, Lg2/w;->e(FFFF)V

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v4, p2

    mul-double/2addr v2, v4

    float-to-double p1, p1

    mul-double/2addr v2, p1

    double-to-float v0, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v4

    mul-double/2addr v1, p1

    double-to-float p1, v1

    invoke-virtual {p3, v0, p1}, Lg2/w;->d(FF)V

    return-void
.end method
