.class public final Lx0/k;
.super Landroid/widget/ArrayAdapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;


# direct methods
.method public constructor <init>(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx0/k;->b:I

    .line 3
    .line 4
    iput-object p1, p0, Lx0/k;->c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 5
    .line 6
    const p1, 0x1090009

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lx0/k;->b:I

    .line 13
    iput-object p1, p0, Lx0/k;->c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    const p1, 0x1090003

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lx0/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    const p2, 0x7f050381

    .line 18
    .line 19
    .line 20
    iget-object p3, p0, Lx0/k;->c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 21
    .line 22
    invoke-static {p3, p2}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->b0(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    const p2, 0x7f05037f

    .line 30
    .line 31
    .line 32
    invoke-static {p3, p2}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->b0(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    const/high16 p2, 0x41700000    # 15.0f

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    iget v0, p0, Lx0/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/widget/TextView;

    .line 11
    .line 12
    const p2, 0x7f050381

    .line 13
    .line 14
    .line 15
    iget-object p3, p0, Lx0/k;->c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 16
    .line 17
    invoke-static {p3, p2}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->b0(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    const p2, 0x7f050380

    .line 25
    .line 26
    .line 27
    invoke-static {p3, p2}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->b0(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    .line 33
    .line 34
    const/high16 p2, 0x41800000    # 16.0f

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 37
    .line 38
    .line 39
    const/16 p2, 0x14

    .line 40
    .line 41
    invoke-static {p3, p2}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->c0(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/16 v1, 0xe

    .line 46
    .line 47
    invoke-static {p3, v1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->c0(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {p3, p2}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->c0(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-static {p3, v1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->c0(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;I)I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    invoke-virtual {p1, v0, v2, p2, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 60
    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/TextView;

    .line 68
    .line 69
    const/high16 p2, 0x41600000    # 14.0f

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lx0/k;->c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 75
    .line 76
    const p3, 0x7f050381

    .line 77
    .line 78
    .line 79
    invoke-static {p2, p3}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->b0(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;I)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
