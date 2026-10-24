.class public final Lu1/h;
.super Lf0/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "indicatorLevel"

    invoke-direct {p0, v0}, Lf0/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lu1/i;

    iget p0, p1, Lu1/i;->o:F

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final d(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lu1/i;

    const p0, 0x461c4000    # 10000.0f

    div-float/2addr p2, p0

    iput p2, p1, Lu1/i;->o:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
