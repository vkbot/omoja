.class Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
.super Ljava/lang/Object;
.source "Rfc5424Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StructuredDataElement"
.end annotation


# instance fields
.field private final discardIfEmpty:Z

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefix:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "discardIfEmpty"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "fields",
            "prefix",
            "discardIfEmpty"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 673
    .local p2, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->this$0:Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->discardIfEmpty:Z

    .line 675
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->fields:Ljava/util/Map;

    .line 676
    iput-object p3, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->prefix:Ljava/lang/String;

    .line 677
    return-void
.end method


# virtual methods
.method discard()Z
    .locals 4

    .line 680
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->discardIfEmpty:Z

    if-nez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    return v0

    .line 683
    :cond_0
    const/4 v0, 0x0

    .line 684
    .local v0, "foundNotEmptyValue":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 685
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 686
    const/4 v0, 0x1

    .line 687
    goto :goto_1

    .line 689
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 690
    :cond_2
    :goto_1
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->fields:Ljava/util/Map;

    return-object v0
.end method

.method getPrefix()Ljava/lang/String;
    .locals 1

    .line 702
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method union(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "addFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 694
    .local p1, "addFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 695
    return-void
.end method
