.class public final synthetic Le0/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/n;


# direct methods
.method public synthetic constructor <init>(Ls1/n;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/d;->c:Ls1/n;

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
    iget v0, p0, Le0/d;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le0/d;->c:Ls1/n;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_58

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x32

    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    fill-array-data v1, :array_60

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    new-array v2, v2, [B

    .line 23
    .line 24
    fill-array-data v2, :array_7e

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_22
    iget-boolean v0, v2, Ls1/n;->r:Z

    .line 36
    .line 37
    if-eqz v0, :cond_36

    .line 38
    .line 39
    iget-object v0, v2, Ls1/n;->b:Ls1/r;

    .line 40
    .line 41
    iget-object v0, v0, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    sget-object v3, Ls1/r;->h:Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_36

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {v2, v0}, Ls1/n;->m(Z)V

    .line 53
    .line 54
    .line 55
    :cond_36
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const v1, 0x3ef5c28f    # 0.48f

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-wide/16 v1, 0x1a4

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_4b
    invoke-virtual {v2}, Ls1/n;->j()V

    .line 77
    .line 78
    .line 79
    iget-boolean v0, v2, Ls1/n;->r:Z

    .line 80
    .line 81
    xor-int/2addr v0, v1

    .line 82
    invoke-virtual {v2, v0}, Ls1/n;->m(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ls1/n;->l()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_22
    .end packed-switch

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_60
    .array-data 1
        -0x5ft
        -0x3et
        0x7ft
        -0x58t
        -0x61t
        -0x41t
        0x6dt
        -0x48t
        -0x60t
        -0x2ct
        0x7ft
        -0x51t
        -0x61t
        -0x42t
        0x6ct
        -0x74t
        0x51t
        -0x79t
        0x2et
        -0x33t
        -0x6t
        -0x2at
        0x5t
        -0x18t
        -0xat
        -0x7at
        0x1ft
        -0x34t
        -0x32t
        0x26t
        0x6ct
        -0x7ct
        -0x5ft
        -0x1dt
        0x7ft
        -0x57t
        -0x61t
        -0x48t
        0x6dt
        -0x48t
        -0x60t
        -0x2ct
        0x7et
        -0x62t
        -0x61t
        -0x47t
        0x6ct
        -0x7ct
        -0x5ft
        -0x18t
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    nop

    .line 127
    :array_7e
    .array-data 1
        0x71t
        0x56t
        -0x51t
        0x1dt
        0x4ft
        0x6t
        -0x44t
        0x39t
    .end array-data
.end method
