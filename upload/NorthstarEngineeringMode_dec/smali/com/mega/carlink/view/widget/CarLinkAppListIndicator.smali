.class public Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Landroid/graphics/Paint;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    iput p1, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->d:I

    const/16 p1, 0x18

    iput p1, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->e:I

    const-string p1, "#ffffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-string p1, "#0D000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->c:Landroid/graphics/Paint;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->d:I

    mul-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->a:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    add-int/lit8 v4, v4, -0x1

    iget v2, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->e:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->a:I

    if-ge v3, v4, :cond_1

    iget v4, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->b:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060091

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060090

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v0

    mul-int v5, v3, v1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    mul-int v4, v2, v3

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    int-to-float v6, v1

    iget-object v7, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setCellCount(I)V
    .locals 0

    iput p1, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->a:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    iput p1, p0, Lcom/mega/carlink/view/widget/CarLinkAppListIndicator;->b:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
