.class public final synthetic Lc7/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lc7/g;

.field public final synthetic d:Lr5/c;


# direct methods
.method public synthetic constructor <init>(Lc7/g;Lr5/c;I)V
    .registers 4

    .line 1
    iput p3, p0, Lc7/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lc7/d;->c:Lc7/g;

    .line 4
    .line 5
    iput-object p2, p0, Lc7/d;->d:Lr5/c;

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
    .registers 6

    .line 1
    iget v0, p0, Lc7/d;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lc7/d;->d:Lr5/c;

    .line 4
    .line 5
    iget-object v2, p0, Lc7/d;->c:Lc7/g;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_34

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lc7/g;->c:Lc7/i;

    .line 11
    .line 12
    iget-object v2, v0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 13
    .line 14
    if-eqz v2, :cond_1a

    .line 15
    .line 16
    iget-boolean v3, v0, Lc7/i;->e:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1a

    .line 19
    .line 20
    iget-object v0, v0, Lc7/i;->l:Lc7/h;

    .line 21
    .line 22
    iput-object v1, v0, Lc7/h;->a:Lr5/c;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    return-void

    .line 28
    :pswitch_1b
    iget-boolean v0, v2, Lc7/g;->f:Z

    .line 29
    .line 30
    if-nez v0, :cond_27

    .line 31
    .line 32
    const-string v0, "g"

    .line 33
    .line 34
    const-string v1, "Camera is closed, not requesting preview"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_32

    .line 40
    :cond_27
    iget-object v0, v2, Lc7/g;->a:Lb7/p;

    .line 41
    .line 42
    new-instance v3, Lc7/d;

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-direct {v3, v2, v1, v4}, Lc7/d;-><init>(Lc7/g;Lr5/c;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lb7/p;->d(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    :goto_32
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method
