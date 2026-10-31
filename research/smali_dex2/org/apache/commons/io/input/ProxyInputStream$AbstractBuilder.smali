.class public abstract Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ProxyInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "TT;TB;>;>",
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "TT;TB;>;"
    }
.end annotation


# instance fields
.field private afterRead:Lorg/apache/commons/io/function/IOIntConsumer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->afterRead:Lorg/apache/commons/io/function/IOIntConsumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOIntConsumer;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->afterRead:Lorg/apache/commons/io/function/IOIntConsumer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 8
    .line 9
    return-object p1
.end method
