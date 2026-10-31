.class public final Le0/m2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_24

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_32

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const/16 v0, 0xb

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_3a

    .line 23
    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    fill-array-data v1, :array_44

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Le0/m2;->b:Ljava/lang/String;

    .line 35
    .line 36
    return-void

    .line 37
    :array_24
    .array-data 1
        -0x3ct
        0x5ct
        0x27t
        -0x39t
        -0x7ft
        -0x52t
        0x59t
        -0x73t
        -0xdt
        0x5at
        0x2et
        -0x33t
        -0x64t
        -0x76t
        0x68t
        -0x80t
        -0x10t
        0x4at
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    nop

    .line 51
    :array_32
    .array-data 1
        -0x6at
        0x39t
        0x45t
        -0x58t
        -0x12t
        -0x26t
        0x1at
        -0x1bt
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_3a
    .array-data 1
        0x54t
        -0x3dt
        0x4at
        0x2bt
        0x66t
        0x2bt
        -0x22t
        -0x7ft
        0x51t
        -0x31t
        0x5ct
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_44
    .array-data 1
        0x38t
        -0x5et
        0x39t
        0x5ft
        0x39t
        0x5et
        -0x52t
        -0xbt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x12

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    fill-array-data v0, :array_1e

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    fill-array-data v1, :array_2c

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Le0/m2;->a:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_1e
    .array-data 1
        0x56t
        -0x33t
        -0x5dt
        -0x48t
        -0x1et
        0x3at
        0x19t
        -0x69t
        0x61t
        -0x35t
        -0x56t
        -0x4et
        -0x1t
        0x1et
        0x28t
        -0x66t
        0x62t
        -0x25t
    .end array-data

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    nop

    .line 45
    :array_2c
    .array-data 1
        0x4t
        -0x58t
        -0x3ft
        -0x29t
        -0x73t
        0x4et
        0x5at
        -0x1t
    .end array-data
.end method
