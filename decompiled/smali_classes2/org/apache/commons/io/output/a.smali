.class public final synthetic Lorg/apache/commons/io/output/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/io/output/a;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/output/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/output/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->a(Lorg/apache/commons/net/ftp/FTPListParseEngine;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/output/a;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Throwable;

    .line 20
    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lorg/apache/commons/io/output/BrokenOutputStream;->y(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/output/a;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/io/IOException;

    .line 31
    .line 32
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/BrokenOutputStream;->b(Ljava/io/IOException;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/io/output/a;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/util/function/Supplier;

    .line 42
    .line 43
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/BrokenOutputStream;->S(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
