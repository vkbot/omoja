.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PositionalParametersSorter;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PositionalParametersSorter"
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
.method private constructor <init>()V
    .locals 0

    .line 2631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$1;

    .line 2631
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PositionalParametersSorter;-><init>()V

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
            "o1",
            "o2"
        }
    .end annotation

    .line 2631
    check-cast p1, Ljava/lang/reflect/Field;

    check-cast p2, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PositionalParametersSorter;->compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 3
    .param p1, "o1"    # Ljava/lang/reflect/Field;
    .param p2, "o2"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 2634
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterIndex(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterIndex(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->compareTo(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;)I

    move-result v0

    .line 2635
    .local v0, "result":I
    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->compareTo(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method
