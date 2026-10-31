.class public final synthetic Lx0/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

.field public final synthetic d:Lx0/o;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Lx0/o;I)V
    .locals 0

    .line 1
    iput p3, p0, Lx0/i;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lx0/i;->c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lx0/i;->d:Lx0/o;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lx0/i;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx0/i;->c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 7
    .line 8
    iget-object v1, p0, Lx0/i;->d:Lx0/o;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->X(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Lx0/o;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lx0/i;->c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 15
    .line 16
    iget-object v1, p0, Lx0/i;->d:Lx0/o;

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->t(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Lx0/o;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lx0/i;->c:Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 23
    .line 24
    iget-object v1, p0, Lx0/i;->d:Lx0/o;

    .line 25
    .line 26
    invoke-static {v0, v1, p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->v(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Lx0/o;Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
