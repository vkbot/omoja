.class public final synthetic Ls1/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/k;


# direct methods
.method public synthetic constructor <init>(Ls1/k;I)V
    .registers 3

    .line 1
    iput p2, p0, Ls1/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/f;->c:Ls1/k;

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
    .registers 3

    .line 1
    iget v0, p0, Ls1/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_26

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls1/f;->c:Ls1/k;

    .line 7
    .line 8
    invoke-virtual {v0}, Ls1/k;->z()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    iget-object v0, p0, Ls1/f;->c:Ls1/k;

    .line 13
    .line 14
    invoke-virtual {v0}, Ls1/k;->l()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    iget-object v0, p0, Ls1/f;->c:Ls1/k;

    .line 19
    .line 20
    invoke-virtual {v0}, Ls1/k;->d()V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Ls1/k;->b:Ls1/r;

    .line 24
    .line 25
    invoke-virtual {v1}, Ls1/r;->f()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_22

    .line 30
    .line 31
    invoke-virtual {v0}, Ls1/k;->l()V

    .line 32
    .line 33
    .line 34
    goto :goto_25

    .line 35
    :cond_22
    invoke-virtual {v0}, Ls1/k;->y()V

    .line 36
    .line 37
    .line 38
    :goto_25
    return-void

    .line 39
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method
