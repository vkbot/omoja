.class public final synthetic Lp0/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 1
    iput p4, p0, Lp0/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lp0/f;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lp0/f;->c:I

    .line 6
    .line 7
    iput p3, p0, Lp0/f;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lp0/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp0/f;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw0/i0;

    .line 9
    .line 10
    iget-object v0, v0, Lw0/i0;->c:Lw0/l0;

    .line 11
    .line 12
    iget v1, p0, Lp0/f;->c:I

    .line 13
    .line 14
    iget v2, p0, Lp0/f;->d:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lw0/l0;->y(II)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-boolean v3, v0, Lw0/l0;->r:Z

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    sget-object v3, Lw0/k0;->c:Lw0/k0;

    .line 27
    .line 28
    invoke-virtual {v0, v3, v1, v2}, Lw0/l0;->b(Lw0/k0;II)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lp0/f;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lw0/l0;

    .line 35
    .line 36
    iget v1, p0, Lp0/f;->c:I

    .line 37
    .line 38
    iget v2, p0, Lp0/f;->d:I

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lw0/l0;->y(II)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iget-object v3, v0, Lw0/l0;->s:Lw0/w0;

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    sget-object v3, Lw0/k0;->d:Lw0/k0;

    .line 51
    .line 52
    invoke-virtual {v0, v3, v1, v2}, Lw0/l0;->b(Lw0/k0;II)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :pswitch_1
    iget-object v0, p0, Lp0/f;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lp0/j;

    .line 59
    .line 60
    iget v1, p0, Lp0/f;->c:I

    .line 61
    .line 62
    iget v2, p0, Lp0/f;->d:I

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lp0/j;->i(II)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
