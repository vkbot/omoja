.class public final synthetic Le0/l1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/ModernMainActivity;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/ModernMainActivity;Landroid/view/View;I)V
    .registers 4

    .line 1
    iput p3, p0, Le0/l1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/l1;->c:Lcom/example/navistart/ModernMainActivity;

    .line 4
    .line 5
    iput-object p2, p0, Le0/l1;->d:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget v0, p0, Le0/l1;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Le0/l1;->d:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Le0/l1;->c:Lcom/example/navistart/ModernMainActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_2e

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v2, v0, v1}, Lcom/example/navistart/ModernMainActivity;->R(II)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_17
    sget-object v0, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v0, v3}, Lcom/example/navistart/ModernMainActivity;->R(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lcom/example/navistart/ModernMainActivity;->T(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_28
    sget-object v0, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lcom/example/navistart/ModernMainActivity;->T(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_17
    .end packed-switch
.end method
