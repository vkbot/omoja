.class public final synthetic Lr0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Landroid/widget/GridLayout;

.field public final synthetic b:Landroidx/appcompat/view/ContextThemeWrapper;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/GridLayout;Landroidx/appcompat/view/ContextThemeWrapper;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr0/b;->a:Landroid/widget/GridLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lr0/b;->b:Landroidx/appcompat/view/ContextThemeWrapper;

    .line 7
    .line 8
    iput p3, p0, Lr0/b;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11

    .line 1
    sub-int/2addr p4, p2

    .line 2
    if-lez p4, :cond_6d

    .line 3
    .line 4
    sub-int/2addr p8, p6

    .line 5
    iget-object p1, p0, Lr0/b;->a:Landroid/widget/GridLayout;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    if-ne p4, p8, :cond_16

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    .line 20
    if-lez p3, :cond_16

    .line 21
    .line 22
    goto :goto_6d

    .line 23
    :cond_16
    iget-object p3, p0, Lr0/b;->b:Landroidx/appcompat/view/ContextThemeWrapper;

    .line 24
    .line 25
    invoke-virtual {p3}, Landroidx/appcompat/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .line 35
    const/high16 p5, 0x44200000    # 640.0f

    .line 36
    .line 37
    mul-float/2addr p3, p5

    .line 38
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-lt p4, p3, :cond_2d

    .line 43
    .line 44
    const/4 p3, 0x2

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    const/4 p3, 0x1

    .line 47
    :goto_2e
    invoke-virtual {p1, p3}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 48
    .line 49
    .line 50
    move p5, p2

    .line 51
    :goto_32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result p6

    .line 55
    if-ge p5, p6, :cond_6d

    .line 56
    .line 57
    new-instance p6, Landroid/widget/GridLayout$LayoutParams;

    .line 58
    .line 59
    invoke-direct {p6}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 60
    .line 61
    .line 62
    div-int p7, p5, p3

    .line 63
    .line 64
    invoke-static {p7}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    .line 65
    .line 66
    .line 67
    move-result-object p7

    .line 68
    iput-object p7, p6, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 69
    .line 70
    rem-int p7, p5, p3

    .line 71
    .line 72
    invoke-static {p7}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    .line 73
    .line 74
    .line 75
    move-result-object p8

    .line 76
    iput-object p8, p6, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 77
    .line 78
    add-int/lit8 p8, p3, -0x1

    .line 79
    .line 80
    iget p9, p0, Lr0/b;->c:I

    .line 81
    .line 82
    mul-int v0, p8, p9

    .line 83
    .line 84
    sub-int v0, p4, v0

    .line 85
    .line 86
    div-int/2addr v0, p3

    .line 87
    iput v0, p6, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 88
    .line 89
    const/4 v0, -0x2

    .line 90
    iput v0, p6, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 91
    .line 92
    iput p9, p6, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    .line 93
    .line 94
    if-ne p7, p8, :cond_60

    .line 95
    .line 96
    move p9, p2

    .line 97
    :cond_60
    invoke-virtual {p6, p9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p7

    .line 104
    invoke-virtual {p7, p6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 p5, p5, 0x1

    .line 108
    .line 109
    goto :goto_32

    .line 110
    :cond_6d
    :goto_6d
    return-void
.end method
