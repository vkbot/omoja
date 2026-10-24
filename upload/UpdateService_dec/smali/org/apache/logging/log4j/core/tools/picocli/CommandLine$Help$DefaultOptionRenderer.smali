.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultOptionRenderer"
.end annotation


# instance fields
.field public command:Ljava/lang/Object;

.field public requiredMarker:Ljava/lang/String;

.field private sep:Ljava/lang/String;

.field private showDefault:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3489
    const-string v0, " "

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->requiredMarker:Ljava/lang/String;

    return-void
.end method

.method private createDefaultValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 3511
    const/4 v0, 0x0

    .line 3513
    .local v0, "defaultValue":Ljava/lang/Object;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->command:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 3514
    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->showDefault:Z

    goto :goto_2

    .line 3515
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3517
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 3518
    if-lez v3, :cond_1

    const-string v4, ", "

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3517
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3520
    .end local v3    # "i":I
    :cond_2
    const-string v3, "["

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3524
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    goto :goto_3

    .line 3522
    :catch_0
    move-exception v2

    .line 3523
    .local v2, "ex":Ljava/lang/Exception;
    iput-boolean v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->showDefault:Z

    .line 3525
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_3
    return-object v0
.end method

.method private createLongOptionText(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "renderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .param p3, "scheme"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .param p4, "longOption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "renderer",
            "scheme",
            "longOption"
        }
    .end annotation

    .line 3529
    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionParamStyles:Ljava/util/List;

    invoke-interface {p2, p1, v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    .line 3532
    .local v0, "paramLabelText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 3533
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->separator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->sep:Ljava/lang/String;

    .line 3535
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plainString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->sep:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3536
    .local v1, "sepStart":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->substring(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v2

    .line 3537
    .local v2, "prefix":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->sep:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->substring(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    .line 3539
    .end local v1    # "sepStart":I
    .end local v2    # "prefix":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    :cond_0
    invoke-virtual {p3, p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    .line 3540
    .local v1, "longOptionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    .line 3541
    return-object v1
.end method

.method private renderDescriptionLines(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Ljava/lang/Object;)[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 20
    .param p1, "option"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    .param p2, "scheme"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .param p3, "requiredOption"    # Ljava/lang/String;
    .param p4, "shortOption"    # Ljava/lang/String;
    .param p5, "longOptionText"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .param p6, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "option",
            "scheme",
            "requiredOption",
            "shortOption",
            "longOptionText",
            "defaultValue"
        }
    .end annotation

    .line 3550
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->EMPTY_TEXT:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 3551
    .local v2, "EMPTY":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3552
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;>;"
    new-instance v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->description()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$3200([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->splitLines()[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v4

    .line 3553
    .local v4, "descriptionFirstLines":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    array-length v5, v4

    const-string v6, "  Default: "

    const/4 v8, 0x1

    if-nez v5, :cond_1

    .line 3554
    iget-boolean v5, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->showDefault:Z

    if-eqz v5, :cond_0

    .line 3555
    new-array v5, v8, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    new-instance v9, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    aput-object v9, v5, v7

    move-object v4, v5

    .line 3556
    iput-boolean v7, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->showDefault:Z

    goto :goto_0

    .line 3558
    :cond_0
    new-array v5, v8, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    aput-object v2, v5, v7

    move-object v4, v5

    .line 3561
    :cond_1
    :goto_0
    const/4 v5, 0x5

    new-array v9, v5, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual/range {p2 .. p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v10

    aput-object v10, v9, v7

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    invoke-virtual {v10, v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v12

    aput-object v12, v9, v8

    new-instance v12, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 3562
    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->sep:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    const/4 v13, 0x2

    aput-object v12, v9, v13

    const/4 v12, 0x3

    aput-object p5, v9, v12

    aget-object v14, v4, v7

    const/4 v15, 0x4

    aput-object v14, v9, v15

    .line 3561
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3563
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    array-length v14, v4

    if-ge v9, v14, :cond_2

    .line 3564
    new-array v14, v5, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    aput-object v2, v14, v7

    aput-object v2, v14, v8

    aput-object v2, v14, v13

    aput-object v2, v14, v12

    aget-object v16, v4, v9

    aput-object v16, v14, v15

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3563
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3566
    .end local v9    # "i":I
    :cond_2
    const/4 v9, 0x1

    .restart local v9    # "i":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->description()[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    if-ge v9, v14, :cond_4

    .line 3567
    new-instance v14, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->description()[Ljava/lang/String;

    move-result-object v17

    aget-object v12, v17, v9

    invoke-direct {v14, v15, v12}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->splitLines()[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v12

    .line 3568
    .local v12, "descriptionNextLines":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    array-length v14, v12

    move v15, v7

    :goto_3
    if-ge v15, v14, :cond_3

    aget-object v17, v12, v15

    .line 3569
    .local v17, "line":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    new-array v13, v5, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    aput-object v2, v13, v7

    aput-object v2, v13, v8

    const/16 v19, 0x2

    aput-object v2, v13, v19

    const/16 v18, 0x3

    aput-object v2, v13, v18

    const/16 v16, 0x4

    aput-object v17, v13, v16

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3568
    .end local v17    # "line":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x2

    goto :goto_3

    .line 3566
    .end local v12    # "descriptionNextLines":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v15, 0x4

    goto :goto_2

    .line 3572
    .end local v9    # "i":I
    :cond_4
    iget-boolean v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->showDefault:Z

    if-eqz v9, :cond_5

    .line 3573
    new-array v5, v5, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    aput-object v2, v5, v7

    aput-object v2, v5, v8

    const/4 v7, 0x2

    aput-object v2, v5, v7

    const/4 v7, 0x3

    aput-object v2, v5, v7

    new-instance v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    const/4 v6, 0x4

    aput-object v7, v5, v6

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3575
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    return-object v5
.end method


# virtual methods
.method public render(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 16
    .param p1, "option"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "paramLabelRenderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .param p4, "scheme"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "option",
            "field",
            "paramLabelRenderer",
            "scheme"
        }
    .end annotation

    .line 3495
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ShortestFirst;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3496
    .local v9, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v1, v9, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v10, v1

    .line 3497
    .local v10, "shortOptionCount":I
    const-string v1, ""

    if-lez v10, :cond_1

    aget-object v3, v9, v0

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 3498
    .local v4, "shortOption":Ljava/lang/String;
    :goto_1
    if-lez v10, :cond_2

    array-length v3, v9

    if-le v3, v2, :cond_2

    const-string v3, ","

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    iput-object v3, v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->sep:Ljava/lang/String;

    .line 3500
    array-length v3, v9

    sub-int/2addr v3, v10

    const-string v5, ", "

    invoke-static {v9, v10, v3, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->access$3000([Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3501
    .local v11, "longOption":Ljava/lang/String;
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct {v7, v8, v12, v13, v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->createLongOptionText(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v14

    .line 3503
    .local v14, "longOptionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    iget-object v3, v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->command:Ljava/lang/Object;

    if-eqz v3, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->help()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$800(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    :cond_3
    iput-boolean v0, v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->showDefault:Z

    .line 3504
    invoke-direct {v7, v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->createDefaultValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v15

    .line 3506
    .local v15, "defaultValue":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->required()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->requiredMarker:Ljava/lang/String;

    move-object v3, v0

    goto :goto_3

    :cond_4
    move-object v3, v1

    .line 3507
    .local v3, "requiredOption":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object v5, v14

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->renderDescriptionLines(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Ljava/lang/Object;)[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    return-object v0
.end method
