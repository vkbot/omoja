.class public final synthetic Ls1/t;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/v;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ls1/v;Ljava/lang/String;I)V
    .registers 4

    .line 1
    iput p3, p0, Ls1/t;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/t;->c:Ls1/v;

    .line 4
    .line 5
    iput-object p2, p0, Ls1/t;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    .line 1
    iget p1, p0, Ls1/t;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Ls1/t;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Ls1/t;->c:Ls1/v;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_7a

    .line 8
    .line 9
    .line 10
    sget-object p1, Ls1/v;->g:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_12

    .line 17
    .line 18
    goto :goto_5e

    .line 19
    :cond_12
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x18

    .line 29
    .line 30
    new-array v2, v2, [B

    .line 31
    .line 32
    fill-array-data v2, :array_80

    .line 33
    .line 34
    .line 35
    const/16 v3, 0x8

    .line 36
    .line 37
    new-array v4, v3, [B

    .line 38
    .line 39
    fill-array-data v4, :array_90

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v0}, Ls1/v;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/high16 v2, 0x1040000

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-virtual {p1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/16 v2, 0xe

    .line 66
    .line 67
    new-array v2, v2, [B

    .line 68
    .line 69
    fill-array-data v2, :array_98

    .line 70
    .line 71
    .line 72
    new-array v3, v3, [B

    .line 73
    .line 74
    fill-array-data v3, :array_a4

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-instance v3, Le0/e0;

    .line 82
    .line 83
    const/16 v4, 0x9

    .line 84
    .line 85
    invoke-direct {v3, v4, v1, v0}, Le0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 93
    .line 94
    .line 95
    :goto_5e
    return-void

    .line 96
    :pswitch_5f
    sget-object p1, Ls1/v;->f:Ljava/lang/String;

    .line 97
    .line 98
    iget-object p1, v1, Ls1/v;->b:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_6a

    .line 105
    .line 106
    goto :goto_78

    .line 107
    :cond_6a
    iput-object v0, v1, Ls1/v;->e:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget-object v2, Ls1/v;->f:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, v2, v0}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ls1/v;->x()V

    .line 119
    .line 120
    .line 121
    :goto_78
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5f
    .end packed-switch

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_80
    .array-data 1
        -0x37t
        -0x19t
        0x6ct
        0x30t
        -0x27t
        -0x40t
        -0x72t
        -0x40t
        -0x37t
        -0x4t
        0x6dt
        0x6t
        -0x28t
        -0x4t
        0x7et
        -0x56t
        -0x65t
        -0x6ct
        0x9t
        0x54t
        -0x4bt
        -0x5ft
        -0x23t
        0x44t
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
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
    :array_90
    .array-data 1
        0x19t
        0x44t
        -0x44t
        -0x7ct
        0x9t
        0x70t
        0x5et
        0x7bt
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_98
    .array-data 1
        -0x71t
        0x6et
        0x5t
        -0x6ft
        0x73t
        -0x13t
        -0x32t
        0x14t
        -0x71t
        0x75t
        0x4t
        -0x59t
        0x72t
        -0x2ft
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    nop

    .line 165
    :array_a4
    .array-data 1
        0x5ft
        -0x33t
        -0x2bt
        0x25t
        -0x5dt
        0x5dt
        0x1et
        -0x51t
    .end array-data
.end method
