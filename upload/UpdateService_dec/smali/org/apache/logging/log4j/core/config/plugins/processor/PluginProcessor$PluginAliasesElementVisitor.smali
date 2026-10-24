.class Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginAliasesElementVisitor;
.super Ljavax/lang/model/util/SimpleElementVisitor7;
.source "PluginProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginAliasesElementVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleElementVisitor7<",
        "Ljava/util/Collection<",
        "Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;",
        ">;",
        "Lorg/apache/logging/log4j/core/config/plugins/Plugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljavax/lang/model/util/Elements;


# direct methods
.method private constructor <init>(Ljavax/lang/model/util/Elements;)V
    .locals 1
    .param p1, "elements"    # Ljavax/lang/model/util/Elements;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elements"
        }
    .end annotation

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/lang/model/util/SimpleElementVisitor7;-><init>(Ljava/lang/Object;)V

    .line 158
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginAliasesElementVisitor;->elements:Ljavax/lang/model/util/Elements;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Ljavax/lang/model/util/Elements;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/lang/model/util/Elements;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$1;

    .line 152
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginAliasesElementVisitor;-><init>(Ljavax/lang/model/util/Elements;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "e",
            "plugin"
        }
    .end annotation

    .line 152
    check-cast p2, Lorg/apache/logging/log4j/core/config/plugins/Plugin;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginAliasesElementVisitor;->visitType(Ljavax/lang/model/element/TypeElement;Lorg/apache/logging/log4j/core/config/plugins/Plugin;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Lorg/apache/logging/log4j/core/config/plugins/Plugin;)Ljava/util/Collection;
    .locals 9
    .param p1, "e"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "plugin"    # Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "e",
            "plugin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lorg/apache/logging/log4j/core/config/plugins/Plugin;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;",
            ">;"
        }
    .end annotation

    .line 163
    const-class v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;

    invoke-interface {p1, v0}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;

    .line 164
    .local v0, "aliases":Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
    if-nez v0, :cond_0

    .line 165
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginAliasesElementVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    return-object v1

    .line 167
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;->value()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;>;"
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;->value()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 169
    .local v5, "alias":Ljava/lang/String;
    new-instance v6, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    invoke-direct {v6}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;-><init>()V

    .line 170
    .local v6, "entry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setKey(Ljava/lang/String;)V

    .line 171
    iget-object v7, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginAliasesElementVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v7, p1}, Ljavax/lang/model/util/Elements;->getBinaryName(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setClassName(Ljava/lang/String;)V

    .line 172
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->elementType()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->elementType()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setName(Ljava/lang/String;)V

    .line 173
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->printObject()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setPrintable(Z)V

    .line 174
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->deferChildren()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setDefer(Z)V

    .line 175
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->category()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setCategory(Ljava/lang/String;)V

    .line 176
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "entry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    :cond_2
    return-object v1
.end method
