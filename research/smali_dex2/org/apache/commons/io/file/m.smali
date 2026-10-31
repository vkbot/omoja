.class public final synthetic Lorg/apache/commons/io/file/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOBiFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/commons/io/file/SimplePathVisitor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/file/SimplePathVisitor;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/file/m;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/file/m;->b:Lorg/apache/commons/io/file/SimplePathVisitor;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/file/m;->a:I

    .line 2
    .line 3
    check-cast p1, Ljava/nio/file/Path;

    .line 4
    .line 5
    check-cast p2, Ljava/io/IOException;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_18

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/io/file/m;->b:Lorg/apache/commons/io/file/SimplePathVisitor;

    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/file/SimplePathVisitor;->a(Lorg/apache/commons/io/file/SimplePathVisitor;Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_10
    iget-object v0, p0, Lorg/apache/commons/io/file/m;->b:Lorg/apache/commons/io/file/SimplePathVisitor;

    .line 18
    .line 19
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/file/SimplePathVisitor;->b(Lorg/apache/commons/io/file/SimplePathVisitor;Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
