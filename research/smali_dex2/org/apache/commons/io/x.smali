.class public final synthetic Lorg/apache/commons/io/x;
.super Ljava/lang/ThreadLocal;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/x;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/apache/commons/io/x;->b:Ljava/util/function/Supplier;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/x;->b:Ljava/util/function/Supplier;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/w;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lorg/apache/commons/io/IOUtils$ScratchChars;->b()[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :pswitch_11
    iget-object v0, p0, Lorg/apache/commons/io/x;->b:Ljava/util/function/Supplier;

    .line 19
    .line 20
    check-cast v0, Lorg/apache/commons/io/w;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lorg/apache/commons/io/IOUtils$ScratchBytes;->b()[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method
