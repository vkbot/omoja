.class public final synthetic Le0/q2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/example/navistart/SpeedBoardActi;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/SpeedBoardActi;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/q2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/q2;->b:Lcom/example/navistart/SpeedBoardActi;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget v0, p0, Le0/q2;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Le0/q2;->b:Lcom/example/navistart/SpeedBoardActi;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_84

    .line 6
    .line 7
    .line 8
    check-cast p1, Ls0/a;

    .line 9
    .line 10
    if-eqz p1, :cond_13

    .line 11
    .line 12
    iget-object v0, v1, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    if-eqz v0, :cond_15

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lv0/g;->k(Ls0/a;)V

    .line 17
    .line 18
    .line 19
    goto :goto_15

    .line 20
    :cond_13
    sget p1, Lcom/example/navistart/SpeedBoardActi;->f:I

    .line 21
    .line 22
    :cond_15
    :goto_15
    return-void

    .line 23
    :pswitch_16
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz p1, :cond_22

    .line 26
    .line 27
    iget-object v0, v1, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    if-eqz v0, :cond_24

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lv0/g;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_24

    .line 35
    :cond_22
    sget p1, Lcom/example/navistart/SpeedBoardActi;->f:I

    .line 36
    .line 37
    :cond_24
    :goto_24
    return-void

    .line 38
    :pswitch_25
    check-cast p1, Lcom/example/navistart/cores/HUDMassageObj;

    .line 39
    .line 40
    if-eqz p1, :cond_31

    .line 41
    .line 42
    iget-object v0, v1, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    if-eqz v0, :cond_33

    .line 45
    .line 46
    invoke-interface {v0, p1}, Lv0/g;->o(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 47
    .line 48
    .line 49
    goto :goto_33

    .line 50
    :cond_31
    sget p1, Lcom/example/navistart/SpeedBoardActi;->f:I

    .line 51
    .line 52
    :cond_33
    :goto_33
    return-void

    .line 53
    :pswitch_34
    check-cast p1, Lk7/b;

    .line 54
    .line 55
    sget v0, Lcom/example/navistart/SpeedBoardActi;->f:I

    .line 56
    .line 57
    if-eqz p1, :cond_5e

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v2, p1, Lk7/b;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    new-array v2, v2, [B

    .line 71
    .line 72
    fill-array-data v2, :array_92

    .line 73
    .line 74
    .line 75
    const/16 v3, 0x8

    .line 76
    .line 77
    new-array v3, v3, [B

    .line 78
    .line 79
    fill-array-data v3, :array_98

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget p1, p1, Lk7/b;->d:I

    .line 87
    .line 88
    iget-object v1, v1, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 89
    .line 90
    if-eqz v1, :cond_5e

    .line 91
    .line 92
    invoke-interface {v1, p1, v0}, Lv0/g;->g(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_5e
    return-void

    .line 96
    :pswitch_5f
    check-cast p1, Ljava/lang/Integer;

    .line 97
    .line 98
    sget v0, Lcom/example/navistart/SpeedBoardActi;->f:I

    .line 99
    .line 100
    if-eqz p1, :cond_70

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iget-object v0, v1, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 107
    .line 108
    if-eqz v0, :cond_70

    .line 109
    .line 110
    invoke-interface {v0, p1}, Lv0/g;->l(I)V

    .line 111
    .line 112
    .line 113
    :cond_70
    return-void

    .line 114
    :pswitch_71
    check-cast p1, Ljava/lang/Integer;

    .line 115
    .line 116
    sget v0, Lcom/example/navistart/SpeedBoardActi;->f:I

    .line 117
    .line 118
    if-eqz p1, :cond_82

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    iget-object v0, v1, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 125
    .line 126
    if-eqz v0, :cond_82

    .line 127
    .line 128
    invoke-interface {v0, p1}, Lv0/g;->d(I)V

    .line 129
    .line 130
    .line 131
    :cond_82
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_71
        :pswitch_5f
        :pswitch_34
        :pswitch_25
        :pswitch_16
    .end packed-switch

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_92
    .array-data 1
        -0xct
        -0xat
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    nop

    .line 153
    :array_98
    .array-data 1
        0x36t
        0x46t
        0x2ct
        -0x23t
        -0x3et
        -0x27t
        0x46t
        -0x49t
    .end array-data
.end method
