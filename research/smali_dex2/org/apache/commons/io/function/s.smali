.class public final synthetic Lorg/apache/commons/io/function/s;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/function/IOIntConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOIntConsumer;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/function/s;->a:Lorg/apache/commons/io/function/IOIntConsumer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/s;->a:Lorg/apache/commons/io/function/IOIntConsumer;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/IOIntConsumer;->a(Lorg/apache/commons/io/function/IOIntConsumer;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
