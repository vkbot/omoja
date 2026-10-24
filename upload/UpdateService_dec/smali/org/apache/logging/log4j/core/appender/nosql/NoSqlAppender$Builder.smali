.class public Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
.source "NoSqlAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "AdditionalField"
    .end annotation
.end field

.field private bufferSize:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "bufferSize"
    .end annotation
.end field

.field private provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "NoSqlProvider"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 56
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;
    .locals 12

    .line 71
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "name":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    const-string v2, "NoSQL provider not specified for appender [{}]."

    invoke-interface {v0, v2, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-object v1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noSqlManager{ description="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bufferSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->bufferSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", provider="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, "managerName":Ljava/lang/String;
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->bufferSize:I

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    .line 80
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v4

    .line 79
    invoke-static {v9, v0, v2, v3, v4}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->getNoSqlDatabaseManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;

    move-result-object v10

    .line 81
    .local v10, "manager":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<*>;"
    if-nez v10, :cond_1

    .line 82
    return-object v1

    .line 85
    :cond_1
    new-instance v11, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->isIgnoreExceptions()Z

    move-result v4

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, v8

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$1;)V

    return-object v11
.end method

.method public setBufferSize(I)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->bufferSize:I

    .line 98
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;

    return-object v0
.end method

.method public setProvider(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<",
            "*>;)TB;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder<TB;>;"
    .local p1, "provider":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<*>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;

    .line 110
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlAppender$Builder;

    return-object v0
.end method
