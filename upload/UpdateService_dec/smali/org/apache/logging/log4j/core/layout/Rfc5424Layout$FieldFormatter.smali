.class Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;
.super Ljava/lang/Object;
.source "Rfc5424Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldFormatter"
.end annotation


# instance fields
.field private final delegateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final discardIfEmpty:Z

.field final synthetic this$0:Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;Ljava/util/Map;Z)V
    .locals 0
    .param p3, "discardIfEmpty"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "fieldMap",
            "discardIfEmpty"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;>;Z)V"
        }
    .end annotation

    .line 647
    .local p2, "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;->this$0:Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;->discardIfEmpty:Z

    .line 649
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;->delegateMap:Ljava/util/Map;

    .line 650
    return-void
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    .locals 6
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 653
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;->delegateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 655
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;->delegateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 656
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .local v3, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 658
    .local v5, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v5, p1, v3}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 659
    .end local v5    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    goto :goto_1

    .line 660
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;>;"
    .end local v3    # "buffer":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 662
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;->this$0:Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->access$000(Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;->discardIfEmpty:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;-><init>(Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;Ljava/util/Map;Ljava/lang/String;Z)V

    return-object v1
.end method
