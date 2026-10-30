.class public final synthetic Lx0/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lx0/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lx0/h;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lx0/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    .line 1
    iget v0, p0, Lx0/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx0/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v1, p0, Lx0/h;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 11
    .line 12
    invoke-static {v1, v0, p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->U(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Ljava/util/ArrayList;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lx0/h;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v1, p0, Lx0/h;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 21
    .line 22
    invoke-static {v1, v0, p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->I(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/widget/TextView;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object v0, p0, Lx0/h;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v1, p0, Lx0/h;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 31
    .line 32
    invoke-static {v1, v0, p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->K(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/widget/TextView;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    iget-object v0, p0, Lx0/h;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object v1, p0, Lx0/h;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 41
    .line 42
    invoke-static {v1, v0, p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->B(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/widget/TextView;I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_3
    iget-object v0, p0, Lx0/h;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Landroid/widget/TextView;

    .line 49
    .line 50
    iget-object v1, p0, Lx0/h;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 51
    .line 52
    invoke-static {v1, v0, p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->Z(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/widget/TextView;I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_4
    iget-object v0, p0, Lx0/h;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iget-object v1, p0, Lx0/h;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 61
    .line 62
    invoke-static {v1, v0, p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->z(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/widget/TextView;I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
