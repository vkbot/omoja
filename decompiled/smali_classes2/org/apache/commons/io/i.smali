.class public final synthetic Lorg/apache/commons/io/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/apache/commons/io/i;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/i;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Lorg/apache/commons/io/i;->c:Z

    .line 6
    .line 7
    iput-object p3, p0, Lorg/apache/commons/io/i;->e:Ljava/io/Serializable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/i;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/i;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/net/finger/FingerClient;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/io/i;->e:Ljava/io/Serializable;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v2, p0, Lorg/apache/commons/io/i;->c:Z

    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Lorg/apache/commons/net/finger/FingerClient;->a(Lorg/apache/commons/net/finger/FingerClient;ZLjava/lang/String;)Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/i;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/io/File;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/apache/commons/io/i;->e:Ljava/io/Serializable;

    .line 26
    .line 27
    check-cast v1, [Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean v2, p0, Lorg/apache/commons/io/i;->c:Z

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Lorg/apache/commons/io/FileUtils;->a(Ljava/io/File;Z[Ljava/lang/String;)Ljava/util/stream/Stream;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
