.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultParamLabelRenderer"
.end annotation


# instance fields
.field public final separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "separator"
        }
    .end annotation

    .line 3676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3677
    const-string v0, "separator"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;->separator:Ljava/lang/String;

    .line 3678
    return-void
.end method

.method static synthetic access$2800(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .line 3672
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;->renderParameterName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static renderParameterName(Ljava/lang/reflect/Field;)Ljava/lang/String;
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

    .line 3715
    const/4 v0, 0x0

    .line 3716
    .local v0, "result":Ljava/lang/String;
    const-class v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3717
    const-class v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->paramLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3718
    :cond_0
    const-class v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3719
    const-class v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->paramLabel()Ljava/lang/String;

    move-result-object v0

    .line 3721
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 3722
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3724
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3725
    .local v1, "name":Ljava/lang/String;
    const-class v2, Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3726
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2500(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v2

    .line 3727
    .local v2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    aget-object v5, v2, v4

    if-nez v5, :cond_3

    goto :goto_1

    .line 3729
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3728
    :cond_4
    :goto_1
    const-string v1, "String=String"

    .line 3731
    .end local v2    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 11
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "ansi",
            "styles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;",
            ">;)",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;"
        }
    .end annotation

    .line 3683
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;>;"
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    .line 3684
    .local v0, "isOptionParameter":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->optionArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterCapacity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v1

    .line 3685
    .local v1, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    :goto_0
    if-eqz v0, :cond_1

    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->split()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->split()Ljava/lang/String;

    move-result-object v2

    .line 3686
    .local v2, "split":Ljava/lang/String;
    :goto_1
    new-instance v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, ""

    invoke-direct {v3, p2, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    .line 3687
    .local v3, "result":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    if-eqz v0, :cond_2

    iget-object v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;->separator:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v5, v4

    .line 3688
    .local v5, "sep":Ljava/lang/String;
    :goto_2
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;->renderParameterName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->apply(Ljava/lang/String;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v6

    .line 3689
    .local v6, "paramName":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "]..."

    const-string v9, "["

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v6

    .line 3690
    :cond_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    iget v10, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-ge v7, v10, :cond_4

    .line 3691
    invoke-virtual {v3, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    .line 3692
    const-string v5, " "

    .line 3690
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3694
    .end local v7    # "i":I
    :cond_4
    iget-boolean v7, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    if-eqz v7, :cond_6

    .line 3695
    invoke-static {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v4

    if-nez v4, :cond_5

    .line 3696
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    goto/16 :goto_8

    .line 3697
    :cond_5
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plainString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "..."

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3698
    invoke-virtual {v3, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    goto :goto_8

    .line 3701
    :cond_6
    invoke-static {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v7

    if-nez v7, :cond_7

    if-eqz v0, :cond_8

    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;->separator:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string v4, " "

    .line 3702
    .end local v5    # "sep":Ljava/lang/String;
    .local v4, "sep":Ljava/lang/String;
    :cond_8
    :goto_4
    iget v5, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    .local v5, "i":I
    :goto_5
    iget v7, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    if-ge v5, v7, :cond_a

    .line 3703
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    .line 3704
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    goto :goto_6

    .line 3706
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    .line 3708
    :goto_6
    const-string v4, " "

    .line 3702
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3710
    .end local v5    # "i":I
    :cond_a
    iget v5, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    .restart local v5    # "i":I
    :goto_7
    iget v7, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    if-ge v5, v7, :cond_b

    const-string v7, "]"

    invoke-virtual {v3, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    move-object v5, v4

    .line 3712
    .end local v4    # "sep":Ljava/lang/String;
    .local v5, "sep":Ljava/lang/String;
    :cond_c
    :goto_8
    return-object v3
.end method

.method public separator()Ljava/lang/String;
    .locals 1

    .line 3680
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;->separator:Ljava/lang/String;

    return-object v0
.end method
