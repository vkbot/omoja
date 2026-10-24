.class public Lcom/mega/engineeringmode/function/screen/PaintView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/screen/PaintView$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/PaintView;->a:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/PaintView;->b:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/screen/PaintView;->b:Landroid/graphics/Paint;

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Lcom/mega/engineeringmode/function/screen/PaintView$a;

    invoke-direct {p1, p0}, Lcom/mega/engineeringmode/function/screen/PaintView$a;-><init>(Lcom/mega/engineeringmode/function/screen/PaintView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDraw "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/screen/PaintView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PaintView"

    invoke-static {v3, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    move-object v4, v3

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    move-object v3, v4

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_3

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v5

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v5

    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v10, v5

    iget-object v11, p0, Lcom/mega/engineeringmode/function/screen/PaintView;->b:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x4

    new-array v5, v5, [F

    iget v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    aput v7, v5, v2

    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const/4 v8, 0x1

    aput v7, v5, v8

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    aput v7, v5, v6

    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const/4 v7, 0x3

    aput v6, v5, v7

    iget-object v6, p0, Lcom/mega/engineeringmode/function/screen/PaintView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    return-void
.end method
