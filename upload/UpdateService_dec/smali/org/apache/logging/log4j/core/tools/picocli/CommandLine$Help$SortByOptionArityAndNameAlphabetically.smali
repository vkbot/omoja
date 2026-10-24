.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByOptionArityAndNameAlphabetically;
.super Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByShortestOptionNameAlphabetically;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SortByOptionArityAndNameAlphabetically"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3866
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByShortestOptionNameAlphabetically;-><init>()V

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

    .line 3866
    check-cast p1, Ljava/lang/reflect/Field;

    check-cast p2, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByOptionArityAndNameAlphabetically;->compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 7
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

    .line 3869
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 3870
    .local v0, "o1":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    const-class v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 3871
    .local v1, "o2":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->optionArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    .line 3872
    .local v2, "arity1":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->optionArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v3

    .line 3873
    .local v3, "arity2":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    iget v4, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    iget v5, v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    sub-int/2addr v4, v5

    .line 3874
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 3875
    iget v5, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    iget v6, v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    sub-int v4, v5, v6

    .line 3877
    :cond_0
    if-nez v4, :cond_2

    .line 3878
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$900(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$900(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x1

    .line 3879
    :cond_1
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$900(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$900(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, -0x1

    .line 3881
    :cond_2
    if-nez v4, :cond_3

    invoke-super {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByShortestOptionNameAlphabetically;->compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    move-result v5

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    return v5
.end method
