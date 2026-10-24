.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;",
        ">;"
    }
.end annotation


# instance fields
.field private final isUnspecified:Z

.field public final isVariable:Z

.field public final max:I

.field public final min:I

.field private final originalValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIZZLjava/lang/String;)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "variable"    # Z
    .param p4, "unspecified"    # Z
    .param p5, "originalValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "min",
            "max",
            "variable",
            "unspecified",
            "originalValue"
        }
    .end annotation

    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    iput p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    .line 1663
    iput p2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    .line 1664
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    .line 1665
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isUnspecified:Z

    .line 1666
    iput-object p5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->originalValue:Ljava/lang/String;

    .line 1667
    return-void
.end method

.method static adjustForType(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .locals 1
    .param p0, "result"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "result",
            "field"
        }
    .end annotation

    .line 1695
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isUnspecified:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->defaultArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static defaultArity(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;"
        }
    .end annotation

    .line 1717
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$800(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v0

    return-object v0
.end method

.method public static defaultArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 1704
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 1705
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1706
    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->defaultArity(Ljava/lang/Class;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v1

    return-object v1

    .line 1708
    :cond_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$700(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1709
    const-string v1, "0..1"

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v1

    return-object v1

    .line 1711
    :cond_1
    const-string v1, "1"

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v1

    return-object v1
.end method

.method public static optionArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 1673
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 1674
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->arity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->adjustForType(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "0"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;-><init>(IIZZLjava/lang/String;)V

    .line 1673
    :goto_0
    return-object v0
.end method

.method public static parameterArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 1682
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    .line 1683
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->arity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->adjustForType(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "0"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;-><init>(IIZZLjava/lang/String;)V

    .line 1682
    :goto_0
    return-object v0
.end method

.method static parameterCapacity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .locals 6
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 1721
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v0

    .line 1722
    .local v0, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$900(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 1723
    :cond_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterIndex(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v1

    .line 1724
    .local v1, "index":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    iget v2, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    if-nez v2, :cond_1

    return-object v0

    .line 1725
    :cond_1
    invoke-direct {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    return-object v0

    .line 1726
    :cond_2
    iget-boolean v2, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    const-string v4, "..*"

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    return-object v2

    .line 1727
    :cond_3
    invoke-direct {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->size()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    return-object v2

    .line 1728
    :cond_4
    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->size()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    return-object v2

    .line 1729
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->size()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->size()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    return-object v2
.end method

.method public static parameterIndex(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 1690
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    .line 1691
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->index()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "0"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;-><init>(IIZZLjava/lang/String;)V

    .line 1690
    :goto_0
    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "str",
            "defaultValue"
        }
    .end annotation

    .line 1757
    :try_start_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1758
    :catch_0
    move-exception v0

    .line 1759
    .local v0, "ex":Ljava/lang/Exception;
    return p1
.end method

.method private size()I
    .locals 2

    .line 1719
    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .locals 11
    .param p0, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .line 1738
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1739
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ".."

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    .line 1740
    .local v4, "unspecified":Z
    :goto_1
    const/4 v0, -0x1

    .local v0, "min":I
    const/4 v5, -0x1

    .line 1741
    .local v5, "max":I
    const/4 v6, 0x0

    .line 1742
    .local v6, "variable":Z
    const/4 v7, -0x1

    .line 1743
    .local v7, "dots":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move v7, v1

    const v8, 0x7fffffff

    if-ltz v1, :cond_3

    .line 1744
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1745
    add-int/lit8 v1, v7, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1746
    .end local v5    # "max":I
    .local v1, "max":I
    if-ne v1, v8, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    move v6, v0

    move v8, v1

    move v9, v2

    .end local v6    # "variable":Z
    .local v2, "variable":Z
    goto :goto_5

    .line 1748
    .end local v1    # "max":I
    .end local v2    # "variable":Z
    .restart local v5    # "max":I
    .restart local v6    # "variable":Z
    :cond_3
    invoke-static {p0, v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1749
    .end local v5    # "max":I
    .restart local v1    # "max":I
    if-ne v1, v8, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1750
    .end local v6    # "variable":Z
    .restart local v2    # "variable":Z
    :goto_3
    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    move v0, v3

    move v6, v0

    move v8, v1

    move v9, v2

    .line 1752
    .end local v0    # "min":I
    .end local v1    # "max":I
    .end local v2    # "variable":Z
    .local v6, "min":I
    .local v8, "max":I
    .local v9, "variable":Z
    :goto_5
    new-instance v10, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-object v0, v10

    move v1, v6

    move v2, v8

    move v3, v9

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;-><init>(IIZZLjava/lang/String;)V

    .line 1753
    .local v0, "result":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "other"
        }
    .end annotation

    .line 1645
    check-cast p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->compareTo(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;)I
    .locals 3
    .param p1, "other"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 1797
    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    iget v1, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    sub-int/2addr v0, v1

    .line 1798
    .local v0, "result":I
    if-nez v0, :cond_0

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    iget v2, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 1779
    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "object"
        }
    .end annotation

    .line 1783
    instance-of v0, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1784
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    .line 1785
    .local v0, "other":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    iget v2, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    iget v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    iget v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1789
    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public max(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .locals 7
    .param p1, "newMax"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newMax"
        }
    .end annotation

    .line 1772
    new-instance v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isUnspecified:Z

    iget-object v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->originalValue:Ljava/lang/String;

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;-><init>(IIZZLjava/lang/String;)V

    return-object v6
.end method

.method public min(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .locals 7
    .param p1, "newMin"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newMin"
        }
    .end annotation

    .line 1766
    new-instance v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isUnspecified:Z

    iget-object v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->originalValue:Ljava/lang/String;

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;-><init>(IIZZLjava/lang/String;)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1793
    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    if-eqz v1, :cond_1

    const-string v1, "*"

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
