.class public final synthetic Le0/q1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Le0/q1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Le0/q1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    .line 1
    iget v0, p0, Le0/q1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Le0/q1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_48

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 9
    .line 10
    sub-int/2addr p4, p2

    .line 11
    int-to-float p2, p4

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    const/high16 p3, 0x435c0000    # 220.0f

    .line 23
    .line 24
    mul-float/2addr p1, p3

    .line 25
    div-float/2addr p2, p1

    .line 26
    float-to-int p1, p2

    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eq p1, p2, :cond_28

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 39
    .line 40
    .line 41
    :cond_28
    return-void

    .line 42
    :pswitch_29
    check-cast v1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 43
    .line 44
    sub-int/2addr p4, p2

    .line 45
    sub-int/2addr p8, p6

    .line 46
    if-ne p4, p8, :cond_33

    .line 47
    .line 48
    sub-int/2addr p5, p3

    .line 49
    sub-int/2addr p9, p7

    .line 50
    if-eq p5, p9, :cond_3c

    .line 51
    .line 52
    :cond_33
    new-instance p2, Lf5/j;

    .line 53
    .line 54
    const/4 p3, 0x6

    .line 55
    invoke-direct {p2, p3, v1}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_3c
    return-void

    .line 62
    :pswitch_3d
    check-cast v1, Lcom/example/navistart/ModernMainActivity;

    .line 63
    .line 64
    sget-object p1, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 65
    .line 66
    sub-int/2addr p4, p2

    .line 67
    sub-int/2addr p5, p3

    .line 68
    invoke-virtual {v1, p4, p5}, Lcom/example/navistart/ModernMainActivity;->R(II)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_29
    .end packed-switch
.end method
