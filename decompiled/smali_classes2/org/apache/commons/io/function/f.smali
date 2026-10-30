.class public final synthetic Lorg/apache/commons/io/function/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOBiFunction;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/function/IOBiFunction;

.field public final synthetic b:Lorg/apache/commons/io/function/IOFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOBiFunction;Lorg/apache/commons/io/function/IOFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/function/f;->a:Lorg/apache/commons/io/function/IOBiFunction;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/io/function/f;->b:Lorg/apache/commons/io/function/IOFunction;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/f;->a:Lorg/apache/commons/io/function/IOBiFunction;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/function/f;->b:Lorg/apache/commons/io/function/IOFunction;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/io/function/IOBiFunction;->e(Lorg/apache/commons/io/function/IOBiFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
