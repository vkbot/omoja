.class public final Ln/c0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln/s;
.implements Lh/b;


# static fields
.field public static final c:Ln/c0;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln/c0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ln/c0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ln/c0;->c:Ln/c0;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Ln/c0;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .registers 5

    .line 1
    const-string v0, "data:image"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3b

    .line 8
    .line 9
    const/16 v0, 0x2c

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq v0, v1, :cond_35

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, ";base64"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2e

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2e
    const-string p0, "Not a base64 image data URL."

    .line 48
    .line 49
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_33
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_35
    const-string p0, "Missing comma in data URL."

    .line 55
    .line 56
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_33

    .line 60
    :cond_3b
    const-string p0, "Not a valid image data URL."

    .line 61
    .line 62
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_33
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .registers 2

    .line 1
    iget v0, p0, Ln/c0;->b:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_12

    .line 4
    .line 5
    .line 6
    const-class v0, Ljava/io/InputStream;

    .line 7
    .line 8
    return-object v0

    .line 9
    :sswitch_8
    const-class v0, Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    return-object v0

    .line 12
    :sswitch_b
    const-class v0, Ljava/io/InputStream;

    .line 13
    .line 14
    return-object v0

    .line 15
    :sswitch_e
    const-class v0, Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_e
        0x3 -> :sswitch_b
        0x8 -> :sswitch_8
    .end sparse-switch
.end method

.method public h(Ljava/lang/Object;Ljava/io/File;Lh/h;)Z
    .registers 4

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    :try_start_2
    invoke-static {p1, p2}, Lc0/b;->d(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_7

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    :catch_7
    move-exception p1

    .line 9
    const/4 p2, 0x3

    .line 10
    const-string p3, "ByteBufferEncoder"

    .line 11
    .line 12
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_16

    .line 17
    .line 18
    const-string p2, "Failed to write data"

    .line 19
    .line 20
    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public j(Ln/z;)Ln/r;
    .registers 5

    .line 1
    iget v0, p0, Ln/c0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_64

    .line 4
    .line 5
    .line 6
    :pswitch_5
    new-instance v0, Ln/g0;

    .line 7
    .line 8
    const-class v1, Ln/g;

    .line 9
    .line 10
    const-class v2, Ljava/io/InputStream;

    .line 11
    .line 12
    invoke-virtual {p1, v1, v2}, Ln/z;->b(Ljava/lang/Class;Ljava/lang/Class;)Ln/r;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ln/g0;-><init>(Ln/r;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_13
    new-instance v0, Ln/b0;

    .line 21
    .line 22
    const-class v1, Landroid/net/Uri;

    .line 23
    .line 24
    const-class v2, Ljava/io/InputStream;

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2}, Ln/z;->b(Ljava/lang/Class;Ljava/lang/Class;)Ln/r;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, p1, v1}, Ln/b0;-><init>(Ln/r;I)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_22
    new-instance v0, Ln/b0;

    .line 36
    .line 37
    const-class v1, Landroid/net/Uri;

    .line 38
    .line 39
    const-class v2, Landroid/os/ParcelFileDescriptor;

    .line 40
    .line 41
    invoke-virtual {p1, v1, v2}, Ln/z;->b(Ljava/lang/Class;Ljava/lang/Class;)Ln/r;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, p1, v1}, Ln/b0;-><init>(Ln/r;I)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_31
    new-instance v0, Ln/b0;

    .line 51
    .line 52
    const-class v1, Landroid/net/Uri;

    .line 53
    .line 54
    const-class v2, Landroid/content/res/AssetFileDescriptor;

    .line 55
    .line 56
    invoke-virtual {p1, v1, v2}, Ln/z;->b(Ljava/lang/Class;Ljava/lang/Class;)Ln/r;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, p1, v1}, Ln/b0;-><init>(Ln/r;I)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :pswitch_40
    new-instance p1, Ln/d0;

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-direct {p1, v0}, Ln/d0;-><init>(I)V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_47
    new-instance p1, Ln/c;

    .line 73
    .line 74
    new-instance v0, Ln/c0;

    .line 75
    .line 76
    const/4 v1, 0x3

    .line 77
    invoke-direct {v0, v1}, Ln/c0;-><init>(I)V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-direct {p1, v1, v0}, Ln/c;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :pswitch_54
    new-instance p1, Ln/c;

    .line 86
    .line 87
    new-instance v0, Ln/c0;

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    invoke-direct {v0, v1}, Ln/c0;-><init>(I)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-direct {p1, v1, v0}, Ln/c;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :pswitch_61
    sget-object p1, Ln/d0;->b:Ln/d0;

    .line 99
    .line 100
    return-object p1

    .line 101
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5
        :pswitch_54
        :pswitch_5
        :pswitch_47
        :pswitch_5
        :pswitch_40
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_31
        :pswitch_22
        :pswitch_13
    .end packed-switch
.end method
