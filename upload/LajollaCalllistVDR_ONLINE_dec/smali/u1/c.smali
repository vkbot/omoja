.class public final Lu1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# static fields
.field public static final b:Lu1/c;


# instance fields
.field public final a:Lu1/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu1/c;

    invoke-direct {v0}, Lu1/c;-><init>()V

    sput-object v0, Lu1/c;->b:Lu1/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu1/f;

    invoke-direct {v0}, Lu1/f;-><init>()V

    iput-object v0, p0, Lu1/c;->a:Lu1/f;

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Lu1/f;

    check-cast p3, Lu1/f;

    iget v0, p2, Lu1/f;->a:F

    iget v1, p3, Lu1/f;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v0, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iget v0, p2, Lu1/f;->b:F

    iget v3, p3, Lu1/f;->b:F

    mul-float/2addr v0, v2

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    iget p2, p2, Lu1/f;->c:F

    iget p3, p3, Lu1/f;->c:F

    mul-float/2addr v2, p2

    mul-float/2addr p1, p3

    add-float/2addr p1, v2

    iget-object p2, p0, Lu1/c;->a:Lu1/f;

    iput v1, p2, Lu1/f;->a:F

    iput v3, p2, Lu1/f;->b:F

    iput p1, p2, Lu1/f;->c:F

    return-object p2
.end method
