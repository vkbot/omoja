.class public final synthetic Lorg/apache/commons/io/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOSupplier;
.implements Lorg/apache/commons/io/function/IOLongSupplier;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/f;->c:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    :pswitch_5
    iget-object v0, p0, Lorg/apache/commons/io/f;->c:Ljava/io/File;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->d(Ljava/io/File;)Ljava/math/BigInteger;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :pswitch_c
    iget-object v0, p0, Lorg/apache/commons/io/f;->c:Ljava/io/File;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->h(Ljava/io/File;)Ljava/math/BigInteger;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :pswitch_13
    iget-object v0, p0, Lorg/apache/commons/io/f;->c:Ljava/io/File;

    .line 21
    .line 22
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->o(Ljava/io/File;)Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_13
        :pswitch_5
        :pswitch_c
    .end packed-switch
.end method

.method public getAsLong()J
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/f;->c:Ljava/io/File;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->i(Ljava/io/File;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0

    .line 13
    :pswitch_c
    iget-object v0, p0, Lorg/apache/commons/io/f;->c:Ljava/io/File;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->f(Ljava/io/File;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    nop

    .line 21
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
