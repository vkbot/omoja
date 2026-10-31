.class public final Lr0/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ld6/d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_28

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_38

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lr0/e;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0xd

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_40

    .line 26
    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    fill-array-data v1, :array_4c

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lr0/e;->d:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_28
    .array-data 1
        -0x7at
        -0x65t
        0x5t
        0x15t
        0x4ft
        0x45t
        -0x56t
        0x46t
        -0x72t
        -0x4ft
        0xct
        0x8t
        0x41t
        0x72t
        -0x55t
        0x6at
        -0x77t
        -0x65t
        0x1dt
        0x15t
        0x49t
        0x74t
        -0x54t
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_38
    .array-data 1
        -0x15t
        -0x12t
        0x69t
        0x61t
        0x26t
        0x1at
        -0x21t
        0x35t
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_40
    .array-data 1
        -0x1et
        0x7ct
        -0x80t
        -0x1ft
        -0x10t
        -0xbt
        0x3ct
        -0xdt
        -0x5t
        0x60t
        -0x7dt
        -0x5t
        -0x3at
    .end array-data

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
    nop

    :array_4c
    .array-data 1
        -0x71t
        0x9t
        -0x14t
        -0x6bt
        -0x67t
        -0x56t
        0x5dt
        -0x70t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr0/e;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Ld6/d;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Ld6/d;->a:Z

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    new-array v2, v1, [Lj0/e;

    .line 17
    .line 18
    iput-object v2, v0, Ld6/d;->b:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_14
    if-ge v2, v1, :cond_25

    .line 22
    .line 23
    iget-object v3, v0, Ld6/d;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, [Lj0/e;

    .line 26
    .line 27
    sget-object v4, Ln0/d;->e:Ln0/d;

    .line 28
    .line 29
    invoke-static {v4, p1}, Lj0/e;->c(Ln0/d;Landroid/content/Context;)Lj0/e;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    aput-object v4, v3, v2

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_14

    .line 38
    :cond_25
    iput-object v0, p0, Lr0/e;->b:Ld6/d;

    .line 39
    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_5
    if-ge v2, v0, :cond_2b

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v4, Lr0/e;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {p0, v3}, Lj0/f;->e(Landroid/content/Context;Ljava/lang/String;)Lj0/e;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lj0/f;->d(Lj0/e;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_25

    .line 34
    .line 35
    iget-object v3, v3, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    goto :goto_26

    .line 38
    :cond_25
    const/4 v3, 0x0

    .line 39
    :goto_26
    aput-object v3, v1, v2

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_5

    .line 44
    :cond_2b
    return-object v1
.end method
