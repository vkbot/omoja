.class public final Lo7/f1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lo7/k1;


# direct methods
.method public synthetic constructor <init>(Lo7/k1;I)V
    .registers 3

    .line 1
    iput p2, p0, Lo7/f1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/f1;->c:Lo7/k1;

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
    .registers 6

    .line 1
    iget v0, p0, Lo7/f1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_6c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/f1;->c:Lo7/k1;

    .line 7
    .line 8
    iget-object v1, v0, Lo7/k1;->i:Ln7/e;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    const-string v3, "Terminated"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Ln7/e;->m(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lo7/k1;->d:Lo7/w4;

    .line 17
    .line 18
    iget-object v1, v1, Lo7/w4;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lo7/e2;

    .line 21
    .line 22
    iget-object v1, v1, Lo7/e2;->m:Lo7/f2;

    .line 23
    .line 24
    iget-object v2, v1, Lo7/f2;->A:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lo7/f2;->O:Ln7/x;

    .line 30
    .line 31
    iget-object v2, v2, Ln7/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {v0}, Lo7/k1;->c()Ln7/a0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-wide v3, v0, Ln7/a0;->c:J

    .line 38
    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ln7/z;

    .line 48
    .line 49
    invoke-static {v1}, Lo7/f2;->g(Lo7/f2;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_34
    iget-object v0, p0, Lo7/f1;->c:Lo7/k1;

    .line 54
    .line 55
    iget-object v0, v0, Lo7/k1;->w:Ln7/k;

    .line 56
    .line 57
    iget-object v0, v0, Ln7/k;->a:Ln7/j;

    .line 58
    .line 59
    sget-object v1, Ln7/j;->e:Ln7/j;

    .line 60
    .line 61
    if-ne v0, v1, :cond_54

    .line 62
    .line 63
    iget-object v0, p0, Lo7/f1;->c:Lo7/k1;

    .line 64
    .line 65
    iget-object v0, v0, Lo7/k1;->i:Ln7/e;

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    const-string v2, "CONNECTING as requested"

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ln7/e;->m(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lo7/f1;->c:Lo7/k1;

    .line 74
    .line 75
    sget-object v1, Ln7/j;->b:Ln7/j;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lo7/k1;->e(Lo7/k1;Ln7/j;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lo7/f1;->c:Lo7/k1;

    .line 81
    .line 82
    invoke-static {v0}, Lo7/k1;->f(Lo7/k1;)V

    .line 83
    .line 84
    .line 85
    :cond_54
    return-void

    .line 86
    :pswitch_55
    iget-object v0, p0, Lo7/f1;->c:Lo7/k1;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    iput-object v1, v0, Lo7/k1;->p:Ll/d;

    .line 90
    .line 91
    iget-object v1, v0, Lo7/k1;->i:Ln7/e;

    .line 92
    .line 93
    const/4 v2, 0x2

    .line 94
    const-string v3, "CONNECTING after backoff"

    .line 95
    .line 96
    invoke-virtual {v1, v2, v3}, Ln7/e;->m(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v1, Ln7/j;->b:Ln7/j;

    .line 100
    .line 101
    invoke-static {v0, v1}, Lo7/k1;->e(Lo7/k1;Ln7/j;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lo7/k1;->f(Lo7/k1;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_55
        :pswitch_34
    .end packed-switch
.end method
