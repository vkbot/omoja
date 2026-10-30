.class public final synthetic Lf1/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lf1/e;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lf1/e;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lf1/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lf1/a;->c:Lf1/e;

    .line 4
    .line 5
    iput p2, p0, Lf1/a;->d:I

    .line 6
    .line 7
    iput-object p3, p0, Lf1/a;->e:Ljava/lang/String;

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
    .locals 6

    .line 1
    iget v0, p0, Lf1/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/16 v2, 0x15

    .line 6
    .line 7
    iget-object v3, p0, Lf1/a;->e:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lf1/a;->d:I

    .line 10
    .line 11
    iget-object v5, p0, Lf1/a;->c:Lf1/e;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget v0, Lf1/e;->q:I

    .line 17
    .line 18
    new-array v0, v2, [B

    .line 19
    .line 20
    fill-array-data v0, :array_0

    .line 21
    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    fill-array-data v1, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v5, v4, v3, v0}, Lf1/e;->y(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    sget v0, Lf1/e;->q:I

    .line 37
    .line 38
    new-array v0, v2, [B

    .line 39
    .line 40
    fill-array-data v0, :array_2

    .line 41
    .line 42
    .line 43
    new-array v1, v1, [B

    .line 44
    .line 45
    fill-array-data v1, :array_3

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v5, v4, v3, v0}, Lf1/e;->y(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_0
    .array-data 1
        -0x6at
        0x7bt
        0x5bt
        0x75t
        0x2dt
        0x4bt
        -0xet
        -0x12t
        -0x7at
        0x72t
        0x46t
        0x47t
        0x3ft
        0x5at
        -0xat
        -0x3bt
        -0x56t
        0x61t
        0x57t
        0x76t
        0x38t
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    nop

    .line 79
    :array_1
    .array-data 1
        -0xbt
        0x17t
        0x32t
        0x18t
        0x4ct
        0x3ft
        -0x69t
        -0x4ft
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_2
    .array-data 1
        0x3t
        -0x24t
        -0x39t
        0x7dt
        0x7dt
        -0x2bt
        -0x7ct
        -0x51t
        0x13t
        -0x2bt
        -0x26t
        0x4ft
        0x6ft
        -0x3ct
        -0x80t
        -0x7ct
        0x3ft
        -0x28t
        -0x35t
        0x71t
        0x68t
    .end array-data

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
    nop

    .line 103
    :array_3
    .array-data 1
        0x60t
        -0x50t
        -0x52t
        0x10t
        0x1ct
        -0x5ft
        -0x1ft
        -0x10t
    .end array-data
.end method
