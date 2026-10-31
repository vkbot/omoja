.class public final synthetic Lw0/f0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lw0/l0;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lw0/l0;II)V
    .registers 4

    .line 1
    iput p3, p0, Lw0/f0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/f0;->c:Lw0/l0;

    .line 4
    .line 5
    iput p2, p0, Lw0/f0;->d:I

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
    .registers 4

    .line 1
    iget v0, p0, Lw0/f0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_28

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw0/f0;->c:Lw0/l0;

    .line 7
    .line 8
    iget-object v1, v0, Lw0/l0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget v2, p0, Lw0/f0;->d:I

    .line 15
    .line 16
    if-ne v2, v1, :cond_17

    .line 17
    .line 18
    invoke-virtual {v0}, Lw0/l0;->c0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lw0/l0;->S()V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void

    .line 25
    :pswitch_18
    iget-object v0, p0, Lw0/f0;->c:Lw0/l0;

    .line 26
    .line 27
    iget-object v1, v0, Lw0/l0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget v2, p0, Lw0/f0;->d:I

    .line 34
    .line 35
    if-ne v2, v1, :cond_27

    .line 36
    .line 37
    invoke-virtual {v0}, Lw0/l0;->c0()V

    .line 38
    .line 39
    .line 40
    :cond_27
    return-void

    .line 41
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_18
    .end packed-switch
.end method
