.class public Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;
.super Ljava/lang/Object;
.source "AbstractDriverManagerConnectionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected connectionString:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field protected driverClassName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field protected password:[C
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field protected properties:[Lorg/apache/logging/log4j/core/config/Property;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Properties"
    .end annotation
.end field

.field protected userName:[C
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected asBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    return-object p0
.end method

.method public getConnectionString()Ljava/lang/String;
    .locals 1

    .line 71
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->connectionString:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverClassName()Ljava/lang/String;
    .locals 1

    .line 75
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->driverClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    .line 79
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->password:[C

    return-object v0
.end method

.method public getProperties()[Lorg/apache/logging/log4j/core/config/Property;
    .locals 1

    .line 83
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    return-object v0
.end method

.method public getUserName()[C
    .locals 1

    .line 87
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->userName:[C

    return-object v0
.end method

.method public setConnectionString(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;
    .locals 1
    .param p1, "connectionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "connectionString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->connectionString:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->asBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDriverClassName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;
    .locals 1
    .param p1, "driverClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "driverClassName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->driverClassName:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->asBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPassword([C)Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;
    .locals 1
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)TB;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->password:[C

    .line 102
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->asBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setProperties([Lorg/apache/logging/log4j/core/config/Property;)Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;
    .locals 1
    .param p1, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")TB;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->properties:[Lorg/apache/logging/log4j/core/config/Property;

    .line 107
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->asBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUserName([C)Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;
    .locals 1
    .param p1, "userName"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)TB;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;, "Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->userName:[C

    .line 112
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;->asBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/AbstractDriverManagerConnectionSource$Builder;

    move-result-object v0

    return-object v0
.end method
