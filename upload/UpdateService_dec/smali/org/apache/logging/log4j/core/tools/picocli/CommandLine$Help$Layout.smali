.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# instance fields
.field protected final colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

.field protected optionRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;

.field protected parameterRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;

.field protected final table:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)V
    .locals 2
    .param p1, "colorScheme"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "colorScheme"
        }
    .end annotation

    .line 3753
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;->ansi()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;)V
    .locals 2
    .param p1, "colorScheme"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .param p2, "textTable"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "colorScheme",
            "textTable"
        }
    .end annotation

    .line 3761
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultOptionRenderer;-><init>()V

    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParameterRenderer;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$DefaultParameterRenderer;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;)V

    .line 3762
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;)V
    .locals 1
    .param p1, "colorScheme"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .param p2, "textTable"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;
    .param p3, "optionRenderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;
    .param p4, "parameterRenderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "colorScheme",
            "textTable",
            "optionRenderer",
            "parameterRenderer"
        }
    .end annotation

    .line 3769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3770
    const-string v0, "colorScheme"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    .line 3771
    const-string v0, "textTable"

    invoke-static {p2, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->table:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;

    .line 3772
    const-string v0, "optionRenderer"

    invoke-static {p3, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->optionRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;

    .line 3773
    const-string v0, "parameterRenderer"

    invoke-static {p4, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->parameterRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;

    .line 3774
    return-void
.end method


# virtual methods
.method public addOption(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "paramLabelRenderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "paramLabelRenderer"
        }
    .end annotation

    .line 3806
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 3807
    .local v0, "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->optionRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    invoke-interface {v1, v0, p1, p2, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IOptionRenderer;->render(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    .line 3808
    .local v1, "values":[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-virtual {p0, p1, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->layout(Ljava/lang/reflect/Field;[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)V

    .line 3809
    return-void
.end method

.method public addOptions(Ljava/util/List;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)V
    .locals 4
    .param p2, "paramLabelRenderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fields",
            "paramLabelRenderer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;",
            ")V"
        }
    .end annotation

    .line 3791
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 3792
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 3793
    .local v2, "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    invoke-interface {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->hidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3794
    invoke-virtual {p0, v1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->addOption(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)V

    .line 3796
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    :cond_0
    goto :goto_0

    .line 3797
    :cond_1
    return-void
.end method

.method public addPositionalParameter(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "paramLabelRenderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "paramLabelRenderer"
        }
    .end annotation

    .line 3829
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    .line 3830
    .local v0, "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->parameterRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->colorScheme:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    invoke-interface {v1, v0, p1, p2, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParameterRenderer;->render(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v1

    .line 3831
    .local v1, "values":[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-virtual {p0, p1, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->layout(Ljava/lang/reflect/Field;[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)V

    .line 3832
    return-void
.end method

.method public addPositionalParameters(Ljava/util/List;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)V
    .locals 4
    .param p2, "paramLabelRenderer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fields",
            "paramLabelRenderer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;",
            ")V"
        }
    .end annotation

    .line 3814
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 3815
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    .line 3816
    .local v2, "parameters":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;
    invoke-interface {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->hidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3817
    invoke-virtual {p0, v1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->addPositionalParameter(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;)V

    .line 3819
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "parameters":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;
    :cond_0
    goto :goto_0

    .line 3820
    :cond_1
    return-void
.end method

.method public layout(Ljava/lang/reflect/Field;[[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "cellValues"    # [[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "cellValues"
        }
    .end annotation

    .line 3783
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 3784
    .local v2, "oneRow":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->table:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;

    invoke-virtual {v3, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->addRowValues([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)V

    .line 3783
    .end local v2    # "oneRow":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3786
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 3835
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Layout;->table:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
