.class public final synthetic Lorg/apache/commons/io/function/q;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOIntConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/function/IOIntConsumer;

.field public final synthetic b:Lorg/apache/commons/io/function/IOIntConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOIntConsumer;Lorg/apache/commons/io/function/IOIntConsumer;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/function/q;->a:Lorg/apache/commons/io/function/IOIntConsumer;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/io/function/q;->b:Lorg/apache/commons/io/function/IOIntConsumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/q;->a:Lorg/apache/commons/io/function/IOIntConsumer;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/function/q;->b:Lorg/apache/commons/io/function/IOIntConsumer;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/function/IOIntConsumer;->b(Lorg/apache/commons/io/function/IOIntConsumer;Lorg/apache/commons/io/function/IOIntConsumer;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
