.class public final synthetic Lb7/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb7/j;


# direct methods
.method public synthetic constructor <init>(Lb7/j;I)V
    .registers 3

    .line 1
    iput p2, p0, Lb7/g;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lb7/g;->c:Lb7/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget v0, p0, Lb7/g;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lb7/g;->c:Lb7/j;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_2c

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v2, "com.google.zxing.client.android.SCAN"

    .line 11
    .line 12
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "TIMEOUT"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    iget-object v2, v1, Lb7/j;->a:Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lb7/j;->a()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1e
    const-string v0, "j"

    .line 32
    .line 33
    const-string v2, "Finishing due to inactivity"

    .line 34
    .line 35
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v0, v1, Lb7/j;->a:Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method
