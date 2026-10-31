.class public final Ld4/h;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Ld4/h;->b:I

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld4/h;->b:I

    .line 3
    .line 4
    iput-object p1, p0, Ld4/h;->d:Landroid/view/View;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 8

    .line 1
    iget-object v0, p0, Ld4/h;->d:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 4
    .line 5
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->W:I

    .line 6
    .line 7
    if-eqz v1, :cond_22

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-ne v1, v2, :cond_21

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    if-eq v1, v2, :cond_22

    .line 33
    .line 34
    :cond_21
    return-void

    .line 35
    :cond_22
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout;->K:Lc5/e;

    .line 40
    .line 41
    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lc5/e;->p(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 51
    .line 52
    float-to-int v2, v2

    .line 53
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 60
    .line 61
    float-to-int v1, v1

    .line 62
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 67
    .line 68
    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    .line 70
    .line 71
    iput p1, v0, Lcom/google/android/material/tabs/TabLayout;->b:I

    .line 72
    .line 73
    return-void
.end method

.method public b(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Ld4/h;->d:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/View;F)V
    .registers 11

    .line 1
    iget-object v0, p0, Ld4/h;->d:Landroid/view/View;

    .line 2
    .line 3
    move-object v2, v0

    .line 4
    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    .line 5
    .line 6
    if-eqz p1, :cond_18

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_18

    .line 13
    .line 14
    iget-object v1, v2, Lcom/google/android/material/tabs/TabLayout;->K:Lc5/e;

    .line 15
    .line 16
    iget-object v6, v2, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p2

    .line 20
    move v5, p3

    .line 21
    invoke-virtual/range {v1 .. v6}, Lc5/e;->u(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    goto :goto_2c

    .line 25
    :cond_18
    iget-object p1, v2, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    iget-object p3, v2, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    const/4 v0, -0x1

    .line 42
    invoke-virtual {p1, v0, p2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    .line 44
    .line 45
    :goto_2c
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public d(IIZ)V
    .registers 7

    .line 1
    iget-object v0, p0, Ld4/h;->d:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 4
    .line 5
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->b:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_1f

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p1}, Ld4/h;->a(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    iput p1, v0, Lcom/google/android/material/tabs/TabLayout;->b:I

    .line 33
    .line 34
    new-instance p1, Ld4/g;

    .line 35
    .line 36
    invoke-direct {p1, p0, v1, v2}, Ld4/g;-><init>(Ld4/h;Landroid/view/View;Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    if-eqz p3, :cond_48

    .line 40
    .line 41
    new-instance p3, Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p3, p0, Ld4/h;->c:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->L:Landroid/animation/TimeInterpolator;

    .line 49
    .line 50
    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    .line 52
    .line 53
    int-to-long v0, p2

    .line 54
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x2

    .line 58
    new-array p2, p2, [F

    .line 59
    .line 60
    fill-array-data p2, :array_58

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_48
    iget-object p2, p0, Ld4/h;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p2, Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Ld4/h;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p2, Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    :array_58
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget v0, p0, Ld4/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_72

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    iget-object v0, p0, Ld4/h;->d:Landroid/view/View;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-gez v1, :cond_1f

    .line 25
    .line 26
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :cond_1f
    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->D:I

    .line 33
    .line 34
    if-eqz v2, :cond_43

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x2

    .line 38
    if-eq v2, v3, :cond_34

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eq v2, v4, :cond_4d

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    if-eq v2, v1, :cond_2f

    .line 45
    .line 46
    move v1, v3

    .line 47
    goto :goto_4d

    .line 48
    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_4d

    .line 53
    :cond_34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sub-int/2addr v2, v1

    .line 58
    div-int/lit8 v3, v2, 0x2

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    add-int/2addr v2, v1

    .line 65
    div-int/lit8 v1, v2, 0x2

    .line 66
    .line 67
    goto :goto_4d

    .line 68
    :cond_43
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    sub-int v3, v2, v1

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    :cond_4d
    :goto_4d
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-lez v2, :cond_6d

    .line 89
    .line 90
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v4, v0, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 99
    .line 100
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 101
    .line 102
    invoke-virtual {v4, v5, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    .line 109
    .line 110
    :cond_6d
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget v0, p0, Ld4/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_5e

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    fill-array-data v0, :array_64

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    new-array v2, v1, [B

    .line 24
    .line 25
    fill-array-data v2, :array_6c

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {p1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 40
    .line 41
    new-array v2, v1, [B

    .line 42
    .line 43
    fill-array-data v2, :array_74

    .line 44
    .line 45
    .line 46
    new-array v1, v1, [B

    .line 47
    .line 48
    fill-array-data v1, :array_7c

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/util/Date;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Ld4/h;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Ld4/h;->d:Landroid/view/View;

    .line 79
    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v0, 0x2710

    .line 90
    .line 91
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_64
    .array-data 1
        -0x4bt
        0x28t
        -0x1bt
        -0x36t
        -0xbt
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    nop

    .line 109
    :array_6c
    .array-data 1
        -0x3t
        0x60t
        -0x21t
        -0x59t
        -0x68t
        0x3ct
        -0x30t
        -0x5dt
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_74
    .array-data 1
        0x7ft
        -0x4t
        -0x3ct
        -0x26t
        0x4ct
        -0x64t
        -0x47t
        0x4at
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_7c
    .array-data 1
        0x1bt
        -0x68t
        -0x2t
        -0x69t
        0x1t
        -0x5at
        -0x40t
        0x33t
    .end array-data
.end method

.method public onLayout(ZIIII)V
    .registers 8

    .line 1
    iget v0, p0, Ld4/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_42

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 7
    .line 8
    .line 9
    move-object p1, p0

    .line 10
    return-void

    .line 11
    :pswitch_a
    move v0, p5

    .line 12
    move p5, p4

    .line 13
    move p4, p3

    .line 14
    move p3, p2

    .line 15
    move-object p2, p0

    .line 16
    iget-object v1, p2, Ld4/h;->d:Landroid/view/View;

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 19
    .line 20
    move p2, p3

    .line 21
    move p3, p4

    .line 22
    move p4, p5

    .line 23
    move p5, v0

    .line 24
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 25
    .line 26
    .line 27
    move-object p1, p0

    .line 28
    iget-object p2, p1, Ld4/h;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p2, Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    const/4 p3, -0x1

    .line 33
    if-eqz p2, :cond_31

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_31

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    invoke-virtual {p0, p4, p3, p2}, Ld4/h;->d(IIZ)V

    .line 47
    .line 48
    .line 49
    goto :goto_40

    .line 50
    :cond_31
    iget p2, v1, Lcom/google/android/material/tabs/TabLayout;->b:I

    .line 51
    .line 52
    if-ne p2, p3, :cond_3b

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iput p2, v1, Lcom/google/android/material/tabs/TabLayout;->b:I

    .line 59
    .line 60
    :cond_3b
    iget p2, v1, Lcom/google/android/material/tabs/TabLayout;->b:I

    .line 61
    .line 62
    invoke-virtual {p0, p2}, Ld4/h;->a(I)V

    .line 63
    .line 64
    .line 65
    :goto_40
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public onMeasure(II)V
    .registers 12

    .line 1
    iget v0, p0, Ld4/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_88

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    iget-object v0, p0, Ld4/h;->d:Landroid/view/View;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/high16 v2, 0x40000000    # 2.0f

    .line 22
    .line 23
    if-eq v1, v2, :cond_1a

    .line 24
    .line 25
    goto/16 :goto_86

    .line 26
    .line 27
    :cond_1a
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->B:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v1, v3, :cond_24

    .line 32
    .line 33
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->E:I

    .line 34
    .line 35
    if-ne v1, v2, :cond_86

    .line 36
    .line 37
    :cond_24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v4, 0x0

    .line 42
    move v5, v4

    .line 43
    move v6, v5

    .line 44
    :goto_2b
    if-ge v5, v1, :cond_42

    .line 45
    .line 46
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-nez v8, :cond_3f

    .line 55
    .line 56
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_2b

    .line 67
    :cond_42
    if-gtz v6, :cond_45

    .line 68
    .line 69
    goto :goto_86

    .line 70
    :cond_45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/16 v7, 0x10

    .line 75
    .line 76
    invoke-static {v7, v5}, Ls3/q;->a(ILandroid/content/Context;)F

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    float-to-int v5, v5

    .line 81
    mul-int v7, v6, v1

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    mul-int/2addr v5, v2

    .line 88
    sub-int/2addr v8, v5

    .line 89
    if-gt v7, v8, :cond_7c

    .line 90
    .line 91
    move v0, v4

    .line 92
    :goto_5b
    if-ge v4, v1, :cond_7a

    .line 93
    .line 94
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 103
    .line 104
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    if-ne v5, v6, :cond_72

    .line 108
    .line 109
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 110
    .line 111
    cmpl-float v5, v5, v7

    .line 112
    .line 113
    if-eqz v5, :cond_77

    .line 114
    .line 115
    :cond_72
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 116
    .line 117
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 118
    .line 119
    move v0, v3

    .line 120
    :cond_77
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    goto :goto_5b

    .line 123
    :cond_7a
    move v3, v0

    .line 124
    goto :goto_81

    .line 125
    :cond_7c
    iput v4, v0, Lcom/google/android/material/tabs/TabLayout;->B:I

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->p(Z)V

    .line 128
    .line 129
    .line 130
    :goto_81
    if-eqz v3, :cond_86

    .line 131
    .line 132
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 133
    .line 134
    .line 135
    :cond_86
    :goto_86
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
