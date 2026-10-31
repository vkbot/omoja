.class public final synthetic Lb7/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb7/h;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lb7/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget v0, p0, Lb7/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb7/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->u(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Landroid/content/DialogInterface;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p1, p0, Lb7/h;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lm0/n3;

    .line 17
    .line 18
    iget-object p2, p1, Lm0/n3;->r:Ljava/io/File;

    .line 19
    .line 20
    iput-object p2, p1, Lm0/n3;->m:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {p1}, Lm0/n3;->w()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object p1, p0, Lb7/h;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Runnable;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    iget-object p1, p0, Lb7/h;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lm0/q2;

    .line 43
    .line 44
    invoke-virtual {p1}, Lm0/q2;->t()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_3
    iget-object p1, p0, Lb7/h;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lb7/j;

    .line 51
    .line 52
    iget-object p1, p1, Lb7/j;->a:Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
