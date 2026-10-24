.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByShortestOptionNameAlphabetically;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SortByShortestOptionNameAlphabetically"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "f1",
            "f2"
        }
    .end annotation

    .line 3852
    check-cast p1, Ljava/lang/reflect/Field;

    check-cast p2, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByShortestOptionNameAlphabetically;->compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 9
    .param p1, "f1"    # Ljava/lang/reflect/Field;
    .param p2, "f2"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "f1",
            "f2"
        }
    .end annotation

    .line 3855
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 3856
    .local v0, "o1":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    const-class v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 3857
    .local v1, "o2":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v3, -0x1

    if-nez v1, :cond_1

    return v3

    .line 3858
    :cond_1
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ShortestFirst;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3859
    .local v4, "names1":[Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ShortestFirst;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3860
    .local v5, "names2":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v6

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    .line 3861
    .local v7, "result":I
    if-nez v7, :cond_2

    aget-object v8, v4, v6

    aget-object v6, v5, v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    neg-int v6, v6

    goto :goto_0

    :cond_2
    move v6, v7

    .line 3862
    .end local v7    # "result":I
    .local v6, "result":I
    :goto_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->help()Z

    move-result v7

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->help()Z

    move-result v8

    if-ne v7, v8, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->help()Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v3

    :cond_4
    :goto_1
    return v2
.end method
