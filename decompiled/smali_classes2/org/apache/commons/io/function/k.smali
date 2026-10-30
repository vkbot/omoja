.class public final synthetic Lorg/apache/commons/io/function/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/apache/commons/io/function/IOComparator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOComparator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/commons/io/function/k;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/function/k;->c:Lorg/apache/commons/io/function/IOComparator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/function/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/k;->c:Lorg/apache/commons/io/function/IOComparator;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOStream;->F(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/function/k;->c:Lorg/apache/commons/io/function/IOComparator;

    .line 14
    .line 15
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOStream;->B(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/function/k;->c:Lorg/apache/commons/io/function/IOComparator;

    .line 21
    .line 22
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOStream;->q(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/io/function/k;->c:Lorg/apache/commons/io/function/IOComparator;

    .line 28
    .line 29
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOComparator;->a(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
