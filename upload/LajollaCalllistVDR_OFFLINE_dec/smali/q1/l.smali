.class public final Lq1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:Landroid/graphics/Matrix;

.field public final synthetic d:Lq1/p;


# direct methods
.method public constructor <init>(Lq1/p;)V
    .locals 1

    iput-object p1, p0, Lq1/l;->d:Lq1/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9

    new-array v0, p1, [F

    iput-object v0, p0, Lq1/l;->a:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lq1/l;->b:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lq1/l;->c:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    iget-object v0, p0, Lq1/l;->d:Lq1/p;

    iput p1, v0, Lq1/p;->p:F

    iget-object v0, p0, Lq1/l;->a:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Lq1/l;->b:[F

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p3, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge p3, v1, :cond_0

    aget v1, p2, p3

    aget v2, v0, p3

    invoke-static {v1, v2, p1, v2}, La/a;->a(FFFF)F

    move-result v1

    aput v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lq1/l;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->setValues([F)V

    return-object p0
.end method
