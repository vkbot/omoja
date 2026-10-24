.class Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginElementVisitor;
.super Ljavax/lang/model/util/SimpleElementVisitor7;
.source "PluginProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginElementVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleElementVisitor7<",
        "Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;",
        "Lorg/apache/logging/log4j/core/config/plugins/Plugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljavax/lang/model/util/Elements;


# direct methods
.method private constructor <init>(Ljavax/lang/model/util/Elements;)V
    .locals 0
    .param p1, "elements"    # Ljavax/lang/model/util/Elements;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elements"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleElementVisitor7;-><init>()V

    .line 132
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginElementVisitor;->elements:Ljavax/lang/model/util/Elements;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Ljavax/lang/model/util/Elements;Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/lang/model/util/Elements;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$1;

    .line 127
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginElementVisitor;-><init>(Ljavax/lang/model/util/Elements;)V

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

    .line 127
    check-cast p2, Lorg/apache/logging/log4j/core/config/plugins/Plugin;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginElementVisitor;->visitType(Ljavax/lang/model/element/TypeElement;Lorg/apache/logging/log4j/core/config/plugins/Plugin;)Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Lorg/apache/logging/log4j/core/config/plugins/Plugin;)Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    .locals 3
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

    .line 137
    const-string v0, "Plugin annotation is null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;-><init>()V

    .line 139
    .local v0, "entry":Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setKey(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginProcessor$PluginElementVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v1, p1}, Ljavax/lang/model/util/Elements;->getBinaryName(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setClassName(Ljava/lang/String;)V

    .line 141
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->elementType()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->elementType()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setName(Ljava/lang/String;)V

    .line 142
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->printObject()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setPrintable(Z)V

    .line 143
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->deferChildren()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setDefer(Z)V

    .line 144
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/config/plugins/Plugin;->category()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginEntry;->setCategory(Ljava/lang/String;)V

    .line 145
    return-object v0
.end method
