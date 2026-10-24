.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Help"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByOptionArityAndNameAlphabetically;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByShortestOptionNameAlphabetically;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ShortestFirst;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParameterRenderer;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$MinimalParameterRenderer;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$MinimalOptionRenderer;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;
    }
.end annotation


# static fields
.field protected static final DEFAULT_COMMAND_NAME:Ljava/lang/String; = "<main class>"

.field protected static final DEFAULT_SEPARATOR:Ljava/lang/String; = "="

.field private static final optionsColumnWidth:I = 0x1d

.field private static final usageHelpWidth:I = 0x50


# instance fields
.field public abbreviateSynopsis:Ljava/lang/Boolean;

.field final colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

.field private final command:Ljava/lang/Object;

.field public commandListHeading:Ljava/lang/String;

.field public commandName:Ljava/lang/String;

.field private final commands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;",
            ">;"
        }
    .end annotation
.end field

.field public customSynopsis:[Ljava/lang/String;

.field public description:[Ljava/lang/String;

.field public descriptionHeading:Ljava/lang/String;

.field public footer:[Ljava/lang/String;

.field public footerHeading:Ljava/lang/String;

.field public header:[Ljava/lang/String;

.field public headerHeading:Ljava/lang/String;

.field public final optionFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public optionListHeading:Ljava/lang/String;

.field public parameterLabelRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

.field public parameterListHeading:Ljava/lang/String;

.field public final positionalParametersFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public requiredOptionMarker:Ljava/lang/Character;

.field public separator:Ljava/lang/String;

.field public showDefaultValues:Ljava/lang/Boolean;

.field public sortOptions:Ljava/lang/Boolean;

.field public synopsisHeading:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "command"
        }
    .end annotation

    .line 2907
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->AUTO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;-><init>(Ljava/lang/Object;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    .line 2908
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Object;
    .param p2, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "command",
            "ansi"
        }
    .end annotation

    .line 2915
    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->defaultColorScheme(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;-><init>(Ljava/lang/Object;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)V

    .line 2916
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)V
    .locals 17
    .param p1, "command"    # Ljava/lang/Object;
    .param p2, "colorScheme"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "command",
            "colorScheme"
        }
    .end annotation

    .line 2922
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2822
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commands:Ljava/util/Map;

    .line 2838
    const-string v1, "<main class>"

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandName:Ljava/lang/String;

    .line 2844
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->description:[Ljava/lang/String;

    .line 2850
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->customSynopsis:[Ljava/lang/String;

    .line 2856
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->header:[Ljava/lang/String;

    .line 2862
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footer:[Ljava/lang/String;

    .line 2923
    const-string v3, "command"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->command:Ljava/lang/Object;

    .line 2924
    const-string v3, "colorScheme"

    move-object/from16 v5, p2

    invoke-static {v5, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->applySystemProperties()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    .line 2925
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2926
    .local v3, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2927
    .local v6, "operands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 2928
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-string v8, "Commands:%n"

    const-string v9, "Usage: "

    const/4 v10, 0x1

    if-eqz v7, :cond_17

    .line 2929
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11

    move v13, v2

    :goto_1
    if-ge v13, v12, :cond_2

    aget-object v14, v11, v13

    .line 2930
    .local v14, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v14, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2931
    const-class v15, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2932
    const-class v15, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    check-cast v15, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 2933
    .local v15, "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    invoke-interface {v15}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->hidden()Z

    move-result v16

    if-nez v16, :cond_0

    .line 2935
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2938
    .end local v15    # "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    :cond_0
    const-class v15, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2939
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2929
    .end local v14    # "field":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2943
    :cond_2
    const-class v10, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;

    invoke-virtual {v7, v10}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 2944
    const-class v10, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;

    .line 2945
    .local v10, "cmd":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2946
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->name()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandName:Ljava/lang/String;

    .line 2948
    :cond_3
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->separator:Ljava/lang/String;

    if-nez v11, :cond_4

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->separator()Ljava/lang/String;

    move-result-object v11

    :cond_4
    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->separator:Ljava/lang/String;

    .line 2949
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->abbreviateSynopsis:Ljava/lang/Boolean;

    if-nez v11, :cond_5

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->abbreviateSynopsis()Z

    move-result v11

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->abbreviateSynopsis:Ljava/lang/Boolean;

    .line 2950
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->sortOptions:Ljava/lang/Boolean;

    if-nez v11, :cond_6

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->sortOptions()Z

    move-result v11

    goto :goto_3

    :cond_6
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :goto_3
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->sortOptions:Ljava/lang/Boolean;

    .line 2951
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->requiredOptionMarker:Ljava/lang/Character;

    if-nez v11, :cond_7

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->requiredOptionMarker()C

    move-result v11

    goto :goto_4

    :cond_7
    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    move-result v11

    :goto_4
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->requiredOptionMarker:Ljava/lang/Character;

    .line 2952
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->showDefaultValues:Ljava/lang/Boolean;

    if-nez v11, :cond_8

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->showDefaultValues()Z

    move-result v11

    goto :goto_5

    :cond_8
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :goto_5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->showDefaultValues:Ljava/lang/Boolean;

    .line 2953
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->customSynopsis:[Ljava/lang/String;

    invoke-static {v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2700([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->customSynopsis()[Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_9
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->customSynopsis:[Ljava/lang/String;

    :goto_6
    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->customSynopsis:[Ljava/lang/String;

    .line 2954
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->description:[Ljava/lang/String;

    invoke-static {v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2700([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->description()[Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_a
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->description:[Ljava/lang/String;

    :goto_7
    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->description:[Ljava/lang/String;

    .line 2955
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->header:[Ljava/lang/String;

    invoke-static {v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2700([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->header()[Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_b
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->header:[Ljava/lang/String;

    :goto_8
    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->header:[Ljava/lang/String;

    .line 2956
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footer:[Ljava/lang/String;

    invoke-static {v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2700([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->footer()[Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_c
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footer:[Ljava/lang/String;

    :goto_9
    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footer:[Ljava/lang/String;

    .line 2957
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->headerHeading:Ljava/lang/String;

    invoke-static {v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->headerHeading()Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_d
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->headerHeading:Ljava/lang/String;

    :goto_a
    iput-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->headerHeading:Ljava/lang/String;

    .line 2958
    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsisHeading:Ljava/lang/String;

    invoke-static {v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsisHeading:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_b

    :cond_e
    iget-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsisHeading:Ljava/lang/String;

    goto :goto_c

    :cond_f
    :goto_b
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->synopsisHeading()Ljava/lang/String;

    move-result-object v9

    :goto_c
    iput-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsisHeading:Ljava/lang/String;

    .line 2959
    iget-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->descriptionHeading:Ljava/lang/String;

    invoke-static {v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->descriptionHeading()Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :cond_10
    iget-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->descriptionHeading:Ljava/lang/String;

    :goto_d
    iput-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->descriptionHeading:Ljava/lang/String;

    .line 2960
    iget-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterListHeading:Ljava/lang/String;

    invoke-static {v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->parameterListHeading()Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_11
    iget-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterListHeading:Ljava/lang/String;

    :goto_e
    iput-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterListHeading:Ljava/lang/String;

    .line 2961
    iget-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionListHeading:Ljava/lang/String;

    invoke-static {v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->optionListHeading()Ljava/lang/String;

    move-result-object v9

    goto :goto_f

    :cond_12
    iget-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionListHeading:Ljava/lang/String;

    :goto_f
    iput-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionListHeading:Ljava/lang/String;

    .line 2962
    iget-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandListHeading:Ljava/lang/String;

    invoke-static {v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandListHeading:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_10

    :cond_13
    iget-object v8, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandListHeading:Ljava/lang/String;

    goto :goto_11

    :cond_14
    :goto_10
    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->commandListHeading()Ljava/lang/String;

    move-result-object v8

    :goto_11
    iput-object v8, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandListHeading:Ljava/lang/String;

    .line 2963
    iget-object v8, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footerHeading:Ljava/lang/String;

    invoke-static {v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->footerHeading()Ljava/lang/String;

    move-result-object v8

    goto :goto_12

    :cond_15
    iget-object v8, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footerHeading:Ljava/lang/String;

    :goto_12
    iput-object v8, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footerHeading:Ljava/lang/String;

    .line 2965
    .end local v10    # "cmd":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;
    :cond_16
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto/16 :goto_0

    .line 2967
    :cond_17
    iget-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->sortOptions:Ljava/lang/Boolean;

    if-nez v1, :cond_18

    goto :goto_13

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :goto_13
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->sortOptions:Ljava/lang/Boolean;

    .line 2968
    iget-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->abbreviateSynopsis:Ljava/lang/Boolean;

    if-nez v1, :cond_19

    move v1, v2

    goto :goto_14

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->abbreviateSynopsis:Ljava/lang/Boolean;

    .line 2969
    iget-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->requiredOptionMarker:Ljava/lang/Character;

    if-nez v1, :cond_1a

    const/16 v1, 0x20

    goto :goto_15

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    :goto_15
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->requiredOptionMarker:Ljava/lang/Character;

    .line 2970
    iget-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->showDefaultValues:Ljava/lang/Boolean;

    if-nez v1, :cond_1b

    goto :goto_16

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->showDefaultValues:Ljava/lang/Boolean;

    .line 2971
    iget-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsisHeading:Ljava/lang/String;

    if-nez v1, :cond_1c

    goto :goto_17

    :cond_1c
    move-object v9, v1

    :goto_17
    iput-object v9, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsisHeading:Ljava/lang/String;

    .line 2972
    iget-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandListHeading:Ljava/lang/String;

    if-nez v1, :cond_1d

    goto :goto_18

    :cond_1d
    move-object v8, v1

    :goto_18
    iput-object v8, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandListHeading:Ljava/lang/String;

    .line 2973
    iget-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->separator:Ljava/lang/String;

    if-nez v1, :cond_1e

    const-string v1, "="

    :cond_1e
    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->separator:Ljava/lang/String;

    .line 2974
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createDefaultParamLabelRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterLabelRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    .line 2975
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PositionalParametersSorter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PositionalParametersSorter;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$1;)V

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2976
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->positionalParametersFields:Ljava/util/List;

    .line 2977
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionFields:Ljava/util/List;

    .line 2978
    return-void
.end method

.method static synthetic access$3000([Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 2812
    invoke-static {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->join([Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(I)[C
    .locals 1
    .param p0, "x0"    # I

    .line 2812
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->spaces(I)[C

    move-result-object v0

    return-object v0
.end method

.method private appendOptionSynopsis(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 3
    .param p1, "optionText"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "optionName"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "optionText",
            "field",
            "optionName",
            "prefix",
            "suffix"
        }
    .end annotation

    .line 3130
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterLabelRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    iget-object v2, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionParamStyles:Ljava/util/List;

    invoke-interface {v0, p2, v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    .line 3131
    .local v0, "optionParamText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-virtual {p1, p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    .line 3132
    invoke-virtual {v2, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    .line 3133
    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    .line 3134
    invoke-virtual {v1, p5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    .line 3131
    return-object v1
.end method

.method private static countTrailingSpaces(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    .line 3204
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3205
    :cond_0
    const/4 v0, 0x0

    .line 3206
    .local v0, "trailingSpaces":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3207
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static createMinimalOptionRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;
    .locals 1

    .line 3387
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$MinimalOptionRenderer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$MinimalOptionRenderer;-><init>()V

    return-object v0
.end method

.method public static createMinimalParamLabelRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .locals 1

    .line 3418
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$1;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$1;-><init>()V

    return-object v0
.end method

.method public static createMinimalParameterRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;
    .locals 1

    .line 3412
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$MinimalParameterRenderer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$MinimalParameterRenderer;-><init>()V

    return-object v0
.end method

.method public static createShortOptionArityAndNameComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 3446
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByOptionArityAndNameAlphabetically;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByOptionArityAndNameAlphabetically;-><init>()V

    return-object v0
.end method

.method public static createShortOptionNameComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 3440
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByShortestOptionNameAlphabetically;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$SortByShortestOptionNameAlphabetically;-><init>()V

    return-object v0
.end method

.method public static defaultColorScheme(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .locals 5
    .param p0, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ansi"
        }
    .end annotation

    .line 4241
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    sget-object v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bold:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4242
    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->commands([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v0

    new-array v2, v1, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    sget-object v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_yellow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v3, v2, v4

    .line 4243
    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->options([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v0

    new-array v2, v1, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    sget-object v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_yellow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v3, v2, v4

    .line 4244
    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->parameters([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v0

    new-array v1, v1, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->italic:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v2, v1, v4

    .line 4245
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionParams([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v0

    .line 4241
    return-object v0
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "formatString"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formatString",
            "params"
        }
    .end annotation

    .line 3229
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static varargs heading(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ansi",
            "values",
            "params"
        }
    .end annotation

    .line 3196
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0, v2, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->join(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3197
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3198
    .local v2, "result":Ljava/lang/String;
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3199
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v4, v3

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3200
    .end local v2    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->countTrailingSpaces(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->spaces(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static join([Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "names"    # [Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "names",
            "offset",
            "length",
            "separator"
        }
    .end annotation

    .line 3343
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 3344
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3345
    .local v1, "result":Ljava/lang/StringBuilder;
    move v2, p1

    .local v2, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_2

    .line 3346
    if-le v2, p1, :cond_1

    move-object v3, p3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3345
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3348
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs join(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 11
    .param p0, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p1, "values"    # [Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "ansi",
            "values",
            "sb",
            "params"
        }
    .end annotation

    .line 3217
    if-eqz p1, :cond_2

    .line 3218
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x50

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-direct {v0, p0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[I)V

    .line 3219
    .local v0, "table":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;
    iput v4, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->indentWrappedLines:I

    .line 3220
    array-length v2, p1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, p1, v3

    .line 3221
    .local v5, "summaryLine":Ljava/lang/String;
    new-instance v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->splitLines()[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v6

    .line 3222
    .local v6, "lines":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .local v9, "line":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    new-array v10, v1, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    aput-object v9, v10, v4

    invoke-virtual {v0, v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->addRowValues([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)V

    .end local v9    # "line":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3220
    .end local v5    # "summaryLine":Ljava/lang/String;
    .end local v6    # "lines":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3224
    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 3226
    .end local v0    # "table":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;
    :cond_2
    return-object p2
.end method

.method private static maxLength(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "any"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3338
    .local p0, "any":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3339
    .local v0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->shortestFirst()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3340
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    return v1
.end method

.method public static shortestFirst()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3451
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ShortestFirst;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ShortestFirst;-><init>()V

    return-object v0
.end method

.method private static spaces(I)[C
    .locals 2
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "length"
        }
    .end annotation

    .line 3202
    new-array v0, p0, [C

    .local v0, "result":[C
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    return-object v0
.end method

.method private static stringOf(CI)Ljava/lang/String;
    .locals 2
    .param p0, "chr"    # C
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "chr",
            "length"
        }
    .end annotation

    .line 3351
    new-array v0, p1, [C

    .line 3352
    .local v0, "buff":[C
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([CC)V

    .line 3353
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public abbreviatedSynopsis()Ljava/lang/String;
    .locals 6

    .line 3031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3032
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3033
    const-string v1, " [OPTIONS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->positionalParametersFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 3037
    .local v2, "positionalParam":Ljava/lang/reflect/Field;
    const-class v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->hidden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3038
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterLabelRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    iget-object v5, v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->parameterStyles:Ljava/util/List;

    invoke-interface {v3, v2, v4, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3040
    .end local v2    # "positionalParam":Ljava/lang/reflect/Field;
    :cond_1
    goto :goto_0

    .line 3041
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->commandText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3042
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3041
    return-object v1
.end method

.method public addAllSubcommands(Ljava/util/Map;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "commands"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            ">;)",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;"
        }
    .end annotation

    .line 2986
    .local p1, "commands":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    if-eqz p1, :cond_0

    .line 2987
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2988
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->getCommand()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->addSubcommand(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;

    .line 2989
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    goto :goto_0

    .line 2991
    :cond_0
    return-object p0
.end method

.method public addSubcommand(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
    .locals 2
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "commandName",
            "command"
        }
    .end annotation

    .line 3000
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commands:Ljava/util/Map;

    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;

    invoke-direct {v1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3001
    return-object p0
.end method

.method public ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .locals 1

    .line 3458
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->access$2900(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    return-object v0
.end method

.method public commandList()Ljava/lang/String;
    .locals 13

    .line 3323
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 3324
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->maxLength(Ljava/util/Collection;)I

    move-result v0

    .line 3325
    .local v0, "commandLength":I
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    new-instance v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    add-int/lit8 v7, v0, 0x2

    sget-object v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->SPAN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;-><init>(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;

    add-int/lit8 v8, v0, 0x2

    rsub-int/lit8 v8, v8, 0x50

    sget-object v9, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->WRAP:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    invoke-direct {v6, v8, v4, v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;-><init>(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;)V

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-direct {v2, v3, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;)V

    .line 3329
    .local v2, "textTable":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commands:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3330
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;

    .line 3331
    .local v6, "command":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
    iget-object v9, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->header:[Ljava/lang/String;

    if-eqz v9, :cond_1

    array-length v10, v9

    if-lez v10, :cond_1

    aget-object v9, v9, v7

    goto :goto_1

    :cond_1
    iget-object v9, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->description:[Ljava/lang/String;

    if-eqz v9, :cond_2

    array-length v10, v9

    if-lez v10, :cond_2

    aget-object v9, v9, v7

    goto :goto_1

    :cond_2
    move-object v9, v1

    .line 3333
    .local v9, "header":Ljava/lang/String;
    :goto_1
    new-array v10, v4, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    iget-object v11, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->commandText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v11

    aput-object v11, v10, v7

    new-instance v11, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v11, v12, v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    aput-object v11, v10, v8

    invoke-virtual {v2, v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->addRowValues([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)V

    .line 3334
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;>;"
    .end local v6    # "command":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
    .end local v9    # "header":Ljava/lang/String;
    goto :goto_0

    .line 3335
    :cond_3
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs commandListHeading([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3311
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandListHeading:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->heading(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public createDefaultLayout()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;
    .locals 5

    .line 3359
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createDefaultOptionRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createDefaultParameterRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;)V

    return-object v0
.end method

.method public createDefaultOptionRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;
    .locals 2

    .line 3376
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;-><init>()V

    .line 3377
    .local v0, "result":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->requiredOptionMarker:Ljava/lang/Character;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->requiredMarker:Ljava/lang/String;

    .line 3378
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->showDefaultValues:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3379
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->command:Ljava/lang/Object;

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;->command:Ljava/lang/Object;

    .line 3381
    :cond_0
    return-object v0
.end method

.method public createDefaultParamLabelRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .locals 2

    .line 3434
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->separator:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParamLabelRenderer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createDefaultParameterRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;
    .locals 2

    .line 3404
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParameterRenderer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParameterRenderer;-><init>()V

    .line 3405
    .local v0, "result":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParameterRenderer;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->requiredOptionMarker:Ljava/lang/Character;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParameterRenderer;->requiredMarker:Ljava/lang/String;

    .line 3406
    return-object v0
.end method

.method public varargs customSynopsis([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3238
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->customSynopsis:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v2, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->join(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs description([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3247
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->description:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v2, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->join(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs descriptionHeading([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3287
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->descriptionHeading:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->descriptionHeading:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->heading(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public detailedSynopsis(ILjava/util/Comparator;Z)Ljava/lang/String;
    .locals 16
    .param p1, "synopsisHeadingLength"    # I
    .param p3, "clusterBooleanOptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "synopsisHeadingLength",
            "optionSort",
            "clusterBooleanOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Field;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3062
    .local p2, "optionSort":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;I)V

    .line 3063
    .local v0, "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionFields:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v1

    .line 3064
    .local v10, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    if-eqz v8, :cond_0

    .line 3065
    invoke-static {v10, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3067
    :cond_0
    const-string v11, " "

    const/4 v12, 0x2

    if-eqz p3, :cond_6

    .line 3068
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3069
    .local v1, "booleanOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3070
    .local v2, "clusteredRequired":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3071
    .local v4, "clusteredOptional":Ljava/lang/StringBuilder;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Field;

    .line 3072
    .local v14, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v15, v13, :cond_1

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    const-class v15, Ljava/lang/Boolean;

    if-ne v13, v15, :cond_3

    .line 3073
    :cond_1
    const-class v13, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {v14, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 3074
    .local v13, "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    invoke-interface {v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ShortestFirst;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v9

    .line 3075
    .local v15, "shortestName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v12, :cond_3

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3076
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3077
    invoke-interface {v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->required()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3078
    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3080
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3084
    .end local v13    # "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    .end local v14    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "shortestName":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v9, 0x0

    const/4 v12, 0x2

    goto :goto_0

    .line 3085
    :cond_4
    invoke-interface {v10, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3086
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_5

    .line 3087
    invoke-virtual {v0, v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    iget-object v5, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    .line 3089
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_6

    .line 3090
    const-string v3, " ["

    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    iget-object v5, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->optionText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    .line 3093
    .end local v1    # "booleanOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v2    # "clusteredRequired":Ljava/lang/StringBuilder;
    .end local v4    # "clusteredOptional":Ljava/lang/StringBuilder;
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v12, v0

    .end local v0    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .local v12, "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/reflect/Field;

    .line 3094
    .local v13, "field":Ljava/lang/reflect/Field;
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 3095
    .local v14, "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    invoke-interface {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->hidden()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3096
    invoke-interface {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->required()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3097
    invoke-interface {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ShortestFirst;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const-string v4, " "

    const-string v5, ""

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->appendOptionSynopsis(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v12

    .line 3098
    invoke-static {v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$900(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3099
    invoke-interface {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ShortestFirst;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const-string v4, " ["

    const-string v5, "]..."

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->appendOptionSynopsis(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    move-object v12, v0

    .end local v12    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .restart local v0    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    goto :goto_3

    .line 3102
    .end local v0    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .restart local v12    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    :cond_7
    invoke-interface {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ShortestFirst;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const-string v4, " ["

    const-string v5, "]"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->appendOptionSynopsis(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    .line 3103
    .end local v12    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .restart local v0    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-static {v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$900(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3104
    const-string v1, "..."

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    move-object v12, v0

    goto :goto_3

    .line 3103
    :cond_8
    move-object v12, v0

    .line 3108
    .end local v0    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .end local v13    # "field":Ljava/lang/reflect/Field;
    .end local v14    # "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    .restart local v12    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    :cond_9
    :goto_3
    goto :goto_2

    .line 3109
    :cond_a
    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->positionalParametersFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 3110
    .local v1, "positionalParam":Ljava/lang/reflect/Field;
    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->hidden()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3111
    invoke-virtual {v12, v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v2

    .line 3112
    .end local v12    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .local v2, "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    iget-object v3, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterLabelRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    iget-object v4, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v4

    iget-object v5, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    iget-object v5, v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->parameterStyles:Ljava/util/List;

    invoke-interface {v3, v1, v4, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v3

    .line 3113
    .local v3, "label":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v2

    move-object v12, v2

    .line 3115
    .end local v1    # "positionalParam":Ljava/lang/reflect/Field;
    .end local v2    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .end local v3    # "label":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .restart local v12    # "optionText":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    :cond_b
    goto :goto_4

    .line 3117
    :cond_c
    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    .line 3120
    .local v0, "firstColumnLength":I
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v3, 0x0

    aput v0, v4, v3

    rsub-int/lit8 v3, v0, 0x50

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-direct {v1, v2, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[I)V

    .line 3121
    .local v1, "textTable":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;
    iput v5, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->indentWrappedLines:I

    .line 3124
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    sget-object v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x58

    invoke-static {v4, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->stringOf(CI)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    .line 3125
    .local v2, "PADDING":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    iget-object v4, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    iget-object v5, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->commandText(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v12, v3, v4

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->addRowValues([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)V

    .line 3126
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public detailedSynopsis(Ljava/util/Comparator;Z)Ljava/lang/String;
    .locals 1
    .param p2, "clusterBooleanOptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "optionSort",
            "clusterBooleanOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Field;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3052
    .local p1, "optionSort":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->detailedSynopsis(ILjava/util/Comparator;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs footer([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3265
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footer:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v2, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->join(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs footerHeading([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3318
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footerHeading:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->heading(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs header([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3256
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->header:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v2, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->join(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs headerHeading([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3272
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->headerHeading:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->heading(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optionList()Ljava/lang/String;
    .locals 3

    .line 3154
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->sortOptions:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3155
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createShortOptionNameComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 3157
    .local v0, "sortOrder":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    :goto_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createDefaultLayout()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterLabelRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionList(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;Ljava/util/Comparator;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public optionList(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;Ljava/util/Comparator;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)Ljava/lang/String;
    .locals 2
    .param p1, "layout"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;
    .param p3, "valueLabelRenderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "layout",
            "optionSort",
            "valueLabelRenderer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;",
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3169
    .local p2, "optionSort":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionFields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3170
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    if-eqz p2, :cond_0

    .line 3171
    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3173
    :cond_0
    invoke-virtual {p1, v0, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->addOptions(Ljava/util/List;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)V

    .line 3174
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs optionListHeading([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3303
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionListHeading:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->heading(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public parameterList()Ljava/lang/String;
    .locals 2

    .line 3182
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createDefaultLayout()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterLabelRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterList(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parameterList(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)Ljava/lang/String;
    .locals 1
    .param p1, "layout"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;
    .param p2, "paramLabelRenderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "layout",
            "paramLabelRenderer"
        }
    .end annotation

    .line 3191
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->positionalParametersFields:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->addPositionalParameters(Ljava/util/List;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)V

    .line 3192
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs parameterListHeading([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3295
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->positionalParametersFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterListHeading:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->heading(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public synopsis()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3011
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsis(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synopsis(I)Ljava/lang/String;
    .locals 2
    .param p1, "synopsisHeadingLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "synopsisHeadingLength"
        }
    .end annotation

    .line 3022
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->customSynopsis:[Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2700([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->customSynopsis([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3023
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->abbreviateSynopsis:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->abbreviatedSynopsis()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3024
    :cond_1
    invoke-static {}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createShortOptionArityAndNameComparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->detailedSynopsis(ILjava/util/Comparator;Z)Ljava/lang/String;

    move-result-object v0

    .line 3023
    :goto_0
    return-object v0
.end method

.method public varargs synopsisHeading([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .line 3279
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsisHeading:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->heading(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synopsisHeadingLength()I
    .locals 3

    .line 3142
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    sget-object v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsisHeading:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\r?\\n|\\r|%n"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3143
    .local v0, "lines":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    return v1
.end method
