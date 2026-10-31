.class public final synthetic Lm0/o2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lp0/d;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/q2;


# direct methods
.method public synthetic constructor <init>(Lm0/q2;I)V
    .registers 3

    .line 1
    iput p2, p0, Lm0/o2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/o2;->c:Lm0/q2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(II)V
    .registers 7

    .line 1
    iget v0, p0, Lm0/o2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/o2;->c:Lm0/q2;

    .line 7
    .line 8
    iget-object v1, v0, Lm0/q2;->i:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v2, Le0/s1;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, v0, p1, p2, v3}, Le0/s1;-><init>(Lm0/q2;IIZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    iget-object v0, p0, Lm0/o2;->c:Lm0/q2;

    .line 21
    .line 22
    iget-object v1, v0, Lm0/q2;->i:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v2, Le0/s1;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v2, v0, p1, p2, v3}, Le0/s1;-><init>(Lm0/q2;IIZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method
