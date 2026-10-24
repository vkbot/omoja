.class Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap$1;
.super Ljava/lang/InheritableThreadLocal;
.source "GarbageFreeSortedArrayThreadContextMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->createThreadLocalMap()Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal<",
        "Lorg/apache/logging/log4j/util/StringMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap$1;->this$0:Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;

    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "parentValue"
        }
    .end annotation

    .line 83
    check-cast p1, Lorg/apache/logging/log4j/util/StringMap;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap$1;->childValue(Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object p1

    return-object p1
.end method

.method protected childValue(Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 1
    .param p1, "parentValue"    # Lorg/apache/logging/log4j/util/StringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parentValue"
        }
    .end annotation

    .line 86
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap$1;->this$0:Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/spi/GarbageFreeSortedArrayThreadContextMap;->createStringMap(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
