.class public final Lc2/h;
.super Le0/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "indicatorLevel"

    invoke-direct {p0, v0}, Le0/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)F
    .locals 1

    check-cast p1, Lc2/i;

    iget p1, p1, Lc2/i;->p:F

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public final d(Ljava/lang/Object;F)V
    .locals 1

    check-cast p1, Lc2/i;

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p2, v0

    iput p2, p1, Lc2/i;->p:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
