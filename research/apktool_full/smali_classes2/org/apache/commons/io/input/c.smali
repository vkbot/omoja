.class public final synthetic Lorg/apache/commons/io/input/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Ljava/io/IOException;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/commons/io/input/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/input/c;->b:Ljava/io/IOException;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/input/c;->b:Ljava/io/IOException;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/apache/commons/io/output/BrokenWriter;->b(Ljava/io/IOException;)Ljava/lang/Throwable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/input/c;->b:Ljava/io/IOException;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/apache/commons/io/input/BrokenReader;->b(Ljava/io/IOException;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/input/c;->b:Ljava/io/IOException;

    .line 21
    .line 22
    invoke-static {v0}, Lorg/apache/commons/io/input/BrokenInputStream;->b(Ljava/io/IOException;)Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
