.class Lmega/blur/view/BlurView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/blur/view/BlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/blur/view/BlurView;


# direct methods
.method public constructor <init>(Lmega/blur/view/BlurView;)V
    .locals 0

    iput-object p1, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 15

    invoke-static {}, Lmega/blur/view/BlurView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreDraw...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v0}, Lmega/blur/view/BlurView;->access$200(Lmega/blur/view/BlurView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lmega/blur/view/BlurView;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "we don\'t support realtime in float view"

    invoke-static {p0, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v2}, Lmega/blur/view/BlurView;->access$300(Lmega/blur/view/BlurView;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v3}, Lmega/blur/view/BlurView;->access$200(Lmega/blur/view/BlurView;)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-virtual {v6}, Lmega/blur/view/BlurView;->prepare()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v8}, Lmega/blur/view/BlurView;->access$300(Lmega/blur/view/BlurView;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    if-eq v8, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v9

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v8, v0, v9

    neg-int v8, v8

    aget v10, v0, v1

    neg-int v10, v10

    iget-object v11, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-virtual {v11, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v11, v0, v9

    add-int/2addr v8, v11

    aget v0, v0, v1

    add-int/2addr v10, v0

    iget-object v0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v0}, Lmega/blur/view/BlurView;->access$500(Lmega/blur/view/BlurView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v11, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v11}, Lmega/blur/view/BlurView;->access$400(Lmega/blur/view/BlurView;)I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    invoke-virtual {v0, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v0}, Lmega/blur/view/BlurView;->access$600(Lmega/blur/view/BlurView;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v11, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v11, v1}, Lmega/blur/view/BlurView;->access$702(Lmega/blur/view/BlurView;Z)Z

    invoke-static {}, Lmega/blur/view/BlurView;->access$808()I

    :try_start_0
    iget-object v11, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v11}, Lmega/blur/view/BlurView;->access$600(Lmega/blur/view/BlurView;)Landroid/graphics/Canvas;

    move-result-object v11

    iget-object v12, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v12}, Lmega/blur/view/BlurView;->access$500(Lmega/blur/view/BlurView;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    iget-object v14, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    iget-object v14, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v14}, Lmega/blur/view/BlurView;->access$500(Lmega/blur/view/BlurView;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    iget-object v13, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v14, v13

    invoke-virtual {v11, v12, v14}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v11, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v11}, Lmega/blur/view/BlurView;->access$600(Lmega/blur/view/BlurView;)Landroid/graphics/Canvas;

    move-result-object v11

    neg-int v8, v8

    int-to-float v8, v8

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v11, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v10, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v10}, Lmega/blur/view/BlurView;->access$600(Lmega/blur/view/BlurView;)Landroid/graphics/Canvas;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v8, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v8}, Lmega/blur/view/BlurView;->access$600(Lmega/blur/view/BlurView;)Landroid/graphics/Canvas;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Lmega/blur/view/BlurView$StopException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iget-object v3, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v3, v9}, Lmega/blur/view/BlurView;->access$702(Lmega/blur/view/BlurView;Z)Z

    invoke-static {}, Lmega/blur/view/BlurView;->access$810()I

    iget-object v3, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v3}, Lmega/blur/view/BlurView;->access$600(Lmega/blur/view/BlurView;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :goto_2
    iget-object v2, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v2, v9}, Lmega/blur/view/BlurView;->access$702(Lmega/blur/view/BlurView;Z)Z

    invoke-static {}, Lmega/blur/view/BlurView;->access$810()I

    iget-object p0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {p0}, Lmega/blur/view/BlurView;->access$600(Lmega/blur/view/BlurView;)Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v1

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "draw bitmap: prepare "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", prepare & draw "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v0}, Lmega/blur/view/BlurView;->access$900(Lmega/blur/view/BlurView;)Lmega/blur/engine/BlurEngine;

    move-result-object v0

    iget-object v3, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v3}, Lmega/blur/view/BlurView;->access$500(Lmega/blur/view/BlurView;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v4}, Lmega/blur/view/BlurView;->access$300(Lmega/blur/view/BlurView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lmega/blur/engine/BlurEngine;->execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v0}, Lmega/blur/view/BlurView;->access$1000(Lmega/blur/view/BlurView;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v0}, Lmega/blur/view/BlurView;->access$1100(Lmega/blur/view/BlurView;)V

    iget-object v0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object p0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {p0}, Lmega/blur/view/BlurView;->access$300(Lmega/blur/view/BlurView;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return v1

    :cond_3
    if-nez v2, :cond_4

    iget-object v0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-static {v0}, Lmega/blur/view/BlurView;->access$1200(Lmega/blur/view/BlurView;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object p0, p0, Lmega/blur/view/BlurView$1;->this$0:Lmega/blur/view/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return v1
.end method
