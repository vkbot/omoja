.class public final Lk2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;II)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 13

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/16 p2, 0x7d0

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const/16 p2, 0xdac

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lk2/c;

    invoke-direct {v1, p0, p1, p2}, Lk2/c;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    int-to-long v1, p2

    sget-object p2, Lb1/f;->a:Landroid/util/ArraySet;

    new-instance p2, Lb1/f$a;

    invoke-direct {p2, p0, p1, v1, v2}, Lb1/f$a;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    sget-object p0, Lb1/f;->a:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    iget-object v1, p2, Lb1/f$a;->b:Landroid/view/WindowManager;

    if-nez p1, :cond_6

    iget-object p1, p2, Lb1/f$a;->c:Landroid/os/Handler;

    if-eqz p1, :cond_3

    iget-object v2, p2, Lb1/f$a;->d:Lb1/e;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v1, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    sget-object p0, Lb1/f;->a:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    :cond_6
    iget-object p0, p2, Lb1/f$a;->a:Landroid/view/View;

    iget-object p1, p2, Lb1/f$a;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p2, Lb1/f$a;->h:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-nez v2, :cond_7

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x7ea

    const/16 v9, 0x208

    const/4 v10, -0x3

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v2, p2, Lb1/f$a;->h:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p2, Lb1/f$a;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lb1/f$a;->h:Landroid/view/WindowManager$LayoutParams;

    const v6, 0x7f130309

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v6, 0x31

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x42c00000    # 96.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v3

    float-to-int v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p2, Lb1/f$a;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    :cond_7
    iget-object v2, p2, Lb1/f$a;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lb1/f;->a:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0a0423

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p2, Lb1/f$a;->i:Z

    if-nez p1, :cond_b

    iget-object v6, p2, Lb1/f$a;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    float-to-int p1, v1

    rsub-int p1, p1, 0x778

    new-instance v1, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    const v8, 0x7fffffff

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/4 v2, 0x0

    move v3, v4

    :goto_2
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    if-ge v3, v5, :cond_9

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    cmpl-float v6, v5, v2

    if-lez v6, :cond_8

    move v2, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    int-to-float v1, p1

    cmpl-float v3, v2, v1

    if-lez v3, :cond_a

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    move v2, v1

    goto :goto_3

    :cond_a
    const/4 p1, -0x2

    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v2, v2

    add-int/2addr v2, v0

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    const-wide/16 p0, -0x1

    iget-wide v0, p2, Lb1/f$a;->g:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_c

    const-string p0, "ToastViewUtils"

    const-string p1, "duration == -1"

    invoke-static {p0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    iget-object p0, p2, Lb1/f$a;->c:Landroid/os/Handler;

    if-nez p0, :cond_d

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p0, p2, Lb1/f$a;->c:Landroid/os/Handler;

    :cond_d
    iget-object p0, p2, Lb1/f$a;->d:Lb1/e;

    if-eqz p0, :cond_e

    iget-object p1, p2, Lb1/f$a;->c:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    new-instance p0, Lb1/e;

    invoke-direct {p0, p2}, Lb1/e;-><init>(Lb1/f$a;)V

    iput-object p0, p2, Lb1/f$a;->d:Lb1/e;

    iget-object p1, p2, Lb1/f$a;->c:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void
.end method
