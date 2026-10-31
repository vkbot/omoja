.class public final synthetic Le0/i2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/PermActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/PermActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/i2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/i2;->c:Lcom/example/navistart/PermActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    iget p1, p0, Le0/i2;->b:I

    .line 2
    .line 3
    iget-object p2, p0, Le0/i2;->c:Lcom/example/navistart/PermActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_46

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/example/navistart/PermActivity;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Landroid/content/Intent;

    .line 11
    .line 12
    const/16 v0, 0x2d

    .line 13
    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    fill-array-data v0, :array_4c

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    new-array v2, v1, [B

    .line 22
    .line 23
    fill-array-data v2, :array_68

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x7

    .line 34
    new-array v0, v0, [B

    .line 35
    .line 36
    fill-array-data v0, :array_70

    .line 37
    .line 38
    .line 39
    new-array v1, v1, [B

    .line 40
    .line 41
    fill-array-data v1, :array_78

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p1, v2}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_3f
    sget-object p1, Lcom/example/navistart/PermActivity;->c:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/example/navistart/PermActivity;->x()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3f
    .end packed-switch

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_4c
    .array-data 1
        0x7at
        -0x6at
        0xat
        -0x26t
        0x19t
        -0x24t
        0x2ft
        0x69t
        0x68t
        -0x63t
        0x1at
        -0x24t
        0x1ft
        -0x25t
        0x2ct
        0x34t
        0x35t
        -0x47t
        0x3et
        -0x8t
        0x3at
        -0x4t
        0x8t
        0x6t
        0x4ft
        -0x4ft
        0x21t
        -0x1at
        0x29t
        -0xft
        0xet
        0x13t
        0x5at
        -0x4ft
        0x22t
        -0x5t
        0x29t
        -0x1at
        0xet
        0x13t
        0x4ft
        -0x4ft
        0x20t
        -0x11t
        0x25t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    nop

    .line 105
    :array_68
    .array-data 1
        0x1bt
        -0x8t
        0x6et
        -0x58t
        0x76t
        -0x4bt
        0x4bt
        0x47t
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_70
    .array-data 1
        -0x67t
        -0x36t
        0x18t
        -0x18t
        0x49t
        0x35t
        0x39t
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_78
    .array-data 1
        -0x17t
        -0x55t
        0x7bt
        -0x7dt
        0x28t
        0x52t
        0x5ct
        0x7et
    .end array-data
.end method
