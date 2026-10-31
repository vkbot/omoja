.class public final synthetic Lorg/apache/commons/io/function/c0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic b:Lorg/apache/commons/io/function/IOUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOUnaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/function/c0;->b:Lorg/apache/commons/io/function/IOUnaryOperator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/c0;->b:Lorg/apache/commons/io/function/IOUnaryOperator;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/commons/io/function/IOUnaryOperator;->s(Ljava/lang/Object;Lorg/apache/commons/io/function/IOUnaryOperator;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
