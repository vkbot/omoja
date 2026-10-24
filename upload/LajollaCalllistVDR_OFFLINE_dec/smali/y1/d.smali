.class public final Ly1/d;
.super Ly1/l;
.source "SourceFile"


# virtual methods
.method public final h0(FFLy1/x;)V
    .locals 5

    mul-float p0, p2, p1

    const/4 v0, 0x0

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0, p0, v1, v2}, Ly1/x;->e(FFFF)V

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    float-to-double v3, p2

    mul-double/2addr v1, v3

    float-to-double p0, p1

    mul-double/2addr v1, p0

    double-to-float p2, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    mul-double/2addr v0, p0

    double-to-float p0, v0

    invoke-virtual {p3, p2, p0}, Ly1/x;->d(FF)V

    return-void
.end method
