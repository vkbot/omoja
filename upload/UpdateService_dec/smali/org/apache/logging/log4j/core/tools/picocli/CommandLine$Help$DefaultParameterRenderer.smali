.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParameterRenderer;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultParameterRenderer"
.end annotation


# instance fields
.field public requiredMarker:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3627
    const-string v0, " "

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParameterRenderer;->requiredMarker:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public render(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 20
    .param p1, "params"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;
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
            "params",
            "field",
            "paramLabelRenderer",
            "scheme"
        }
    .end annotation

    .line 3630
    move-object/from16 v0, p4

    invoke-virtual/range {p4 .. p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->parameterStyles:Ljava/util/List;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-interface {v4, v3, v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    .line 3631
    .local v1, "label":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    iget v2, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-lez v2, :cond_0

    move-object/from16 v2, p0

    iget-object v5, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParameterRenderer;->requiredMarker:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    const-string v5, ""

    :goto_0
    invoke-virtual {v0, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->parameterText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v5

    .line 3633
    .local v5, "requiredParameter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    sget-object v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->EMPTY_TEXT:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 3634
    .local v6, "EMPTY":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3635
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;>;"
    new-instance v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual/range {p4 .. p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->description()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$3200([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->splitLines()[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v8

    .line 3636
    .local v8, "descriptionFirstLines":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    array-length v9, v8

    const/4 v10, 0x1

    if-nez v9, :cond_1

    new-array v9, v10, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    aput-object v6, v9, v11

    move-object v8, v9

    .line 3637
    :cond_1
    const/4 v9, 0x5

    new-array v12, v9, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    aput-object v5, v12, v11

    aput-object v6, v12, v10

    const/4 v13, 0x2

    aput-object v6, v12, v13

    const/4 v14, 0x3

    aput-object v1, v12, v14

    aget-object v15, v8, v11

    const/16 v16, 0x4

    aput-object v15, v12, v16

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3638
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    array-length v15, v8

    if-ge v12, v15, :cond_2

    .line 3639
    new-array v15, v9, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    aput-object v6, v15, v11

    aput-object v6, v15, v10

    aput-object v6, v15, v13

    aput-object v6, v15, v14

    aget-object v17, v8, v12

    aput-object v17, v15, v16

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3638
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3641
    .end local v12    # "i":I
    :cond_2
    const/4 v12, 0x1

    .restart local v12    # "i":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->description()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    if-ge v12, v15, :cond_4

    .line 3642
    new-instance v15, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual/range {p4 .. p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->description()[Ljava/lang/String;

    move-result-object v18

    aget-object v13, v18, v12

    invoke-direct {v15, v14, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->splitLines()[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v13

    .line 3643
    .local v13, "descriptionNextLines":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    array-length v14, v13

    move v15, v11

    :goto_3
    if-ge v15, v14, :cond_3

    aget-object v18, v13, v15

    .line 3644
    .local v18, "line":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    new-array v0, v9, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    aput-object v6, v0, v11

    aput-object v6, v0, v10

    const/16 v19, 0x2

    aput-object v6, v0, v19

    const/16 v17, 0x3

    aput-object v6, v0, v17

    aput-object v18, v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3643
    .end local v18    # "line":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p4

    goto :goto_3

    :cond_3
    const/16 v17, 0x3

    const/16 v19, 0x2

    .line 3641
    .end local v13    # "descriptionNextLines":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p4

    move/from16 v14, v17

    move/from16 v13, v19

    goto :goto_2

    .line 3647
    .end local v12    # "i":I
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    return-object v0
.end method
