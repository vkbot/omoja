.class public final synthetic Lx0/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx0/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lx0/g;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lx0/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx0/g;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->x(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/widget/CompoundButton;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lx0/g;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 13
    .line 14
    invoke-static {v0, p1, p2}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->E(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/widget/CompoundButton;Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Lx0/g;->b:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 19
    .line 20
    invoke-static {v0, p1, p2}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->T(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/widget/CompoundButton;Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
