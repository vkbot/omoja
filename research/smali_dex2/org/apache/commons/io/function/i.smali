.class public final synthetic Lorg/apache/commons/io/function/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOBinaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/commons/io/function/IOComparator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOComparator;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/function/i;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/function/i;->b:Lorg/apache/commons/io/function/IOComparator;

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
    iget v0, p0, Lorg/apache/commons/io/function/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/function/i;->b:Lorg/apache/commons/io/function/IOComparator;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOBinaryOperator;->a(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :pswitch_c
    iget-object v0, p0, Lorg/apache/commons/io/function/i;->b:Lorg/apache/commons/io/function/IOComparator;

    .line 14
    .line 15
    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/function/IOBinaryOperator;->d(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    nop

    .line 21
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method
