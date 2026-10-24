.class public final Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;
.super Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;
.source "NoSqlDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$NoSQLDatabaseManagerFactory;,
        Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;"
    }
.end annotation


# static fields
.field private static final FACTORY:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$NoSQLDatabaseManagerFactory;


# instance fields
.field private final additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

.field private connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection<",
            "TW;+",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "TW;>;>;"
        }
    .end annotation
.end field

.field private final provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection<",
            "TW;+",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "TW;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$NoSQLDatabaseManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$NoSQLDatabaseManagerFactory;-><init>(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$NoSQLDatabaseManagerFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bufferSize"    # I
    .param p4, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .param p5, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "bufferSize",
            "provider",
            "additionalFields",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection<",
            "TW;+",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "TW;>;>;>;[",
            "Lorg/apache/logging/log4j/core/util/KeyValuePair;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    .local p3, "provider":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection<TW;+Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p5}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 108
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;

    .line 109
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;
    .param p4, "x3"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .param p5, "x4"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p6, "x5"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$1;

    .line 41
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    invoke-direct/range {p0 .. p5}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/config/Configuration;)V

    return-void
.end method

.method private buildMarkerEntity(Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;
    .locals 5
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "marker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/Marker;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "TW;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;->createObject()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v0

    .line 114
    .local v0, "entity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    invoke-interface {p1}, Lorg/apache/logging/log4j/Marker;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-interface {p1}, Lorg/apache/logging/log4j/Marker;->getParents()[Lorg/apache/logging/log4j/Marker;

    move-result-object v1

    .line 117
    .local v1, "parents":[Lorg/apache/logging/log4j/Marker;
    if-eqz v1, :cond_1

    .line 119
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    .line 120
    .local v2, "parentEntities":[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 121
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->buildMarkerEntity(Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v4

    aput-object v4, v2, v3

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "i":I
    :cond_0
    const-string v3, "parents"

    invoke-interface {v0, v3, v2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 125
    .end local v2    # "parentEntities":[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    :cond_1
    return-object v0
.end method

.method private convertStackTrace([Ljava/lang/StackTraceElement;)[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;
    .locals 3
    .param p1, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stackTrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            ")[",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "TW;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    array-length v1, p1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;->createList(I)[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v0

    .line 148
    .local v0, "stackTraceEntities":[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 149
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->convertStackTraceElement(Ljava/lang/StackTraceElement;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v2

    aput-object v2, v0, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private convertStackTraceElement(Ljava/lang/StackTraceElement;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;
    .locals 3
    .param p1, "element"    # Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StackTraceElement;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "TW;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;->createObject()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v0

    .line 156
    .local v0, "elementEntity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "methodName"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileName"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lineNumber"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-object v0
.end method

.method public static getNoSqlDatabaseManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "bufferSize",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<",
            "*>;)",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    .local p2, "provider":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<*>;"
    new-instance v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    sget-object v1, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$NoSQLDatabaseManagerFactory;

    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;

    return-object v0
.end method

.method public static getNoSqlDatabaseManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p3, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .param p4, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "bufferSize",
            "provider",
            "additionalFields",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<",
            "*>;[",
            "Lorg/apache/logging/log4j/core/util/KeyValuePair;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<",
            "*>;"
        }
    .end annotation

    .line 96
    .local p2, "provider":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider<*>;"
    new-instance v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;

    invoke-direct {v0, p4, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$FactoryData;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ILorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    sget-object v1, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->FACTORY:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager$NoSQLDatabaseManagerFactory;

    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;->getManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager$AbstractFactoryData;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;

    return-object v0
.end method

.method static synthetic lambda$setAdditionalFields$0(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Lorg/apache/logging/log4j/core/util/KeyValuePair;)V
    .locals 2
    .param p0, "object"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;
    .param p1, "strSubstitutor"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .param p2, "f"    # Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "object",
            "strSubstitutor",
            "f"
        }
    .end annotation

    .line 167
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {p0, v0, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setFields$1(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "contextMapEntity"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "contextMapEntity",
            "key",
            "val"
        }
    .end annotation

    .line 225
    invoke-interface {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setFields$2(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "noSqlObject"    # Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "noSqlObject",
            "key",
            "value"
        }
    .end annotation

    .line 239
    invoke-interface {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setAdditionalFields(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "TW;>;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    .local p1, "entity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;->createObject()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v0

    .line 166
    .local v0, "object":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    .line 167
    .local v1, "strSubstitutor":Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$EsszO0jl9pLBbmz1Z8XMqXy-Xiw;

    invoke-direct {v3, v0, v1}, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$EsszO0jl9pLBbmz1Z8XMqXy-Xiw;-><init>(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 168
    const-string v2, "additionalFields"

    invoke-interface {p1, v2, v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 170
    .end local v0    # "object":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    .end local v1    # "strSubstitutor":Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    :cond_0
    return-void
.end method

.method private setFields(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V
    .locals 12
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "entity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "TW;>;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    .local p2, "entity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    const-string v1, "level"

    invoke-interface {p2, v1, v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loggerName"

    invoke-interface {p2, v1, v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "message"

    invoke-interface {p2, v2, v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 178
    .local v0, "source":Ljava/lang/StackTraceElement;
    const-string v3, "source"

    if-nez v0, :cond_1

    .line 179
    invoke-interface {p2, v3, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 181
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->convertStackTraceElement(Ljava/lang/StackTraceElement;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 184
    :goto_1
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v3

    .line 185
    .local v3, "marker":Lorg/apache/logging/log4j/Marker;
    const-string v4, "marker"

    if-nez v3, :cond_2

    .line 186
    invoke-interface {p2, v4, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 188
    :cond_2
    invoke-direct {p0, v3}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->buildMarkerEntity(Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 191
    :goto_2
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "threadId"

    invoke-interface {p2, v5, v4}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "threadName"

    invoke-interface {p2, v5, v4}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "threadPriority"

    invoke-interface {p2, v5, v4}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "millis"

    invoke-interface {p2, v5, v4}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    new-instance v4, Ljava/util/Date;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    const-string v5, "date"

    invoke-interface {p2, v5, v4}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v4

    .line 199
    .local v4, "thrown":Ljava/lang/Throwable;
    const-string v5, "thrown"

    if-nez v4, :cond_3

    .line 200
    invoke-interface {p2, v5, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 202
    :cond_3
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    invoke-interface {v6}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;->createObject()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v6

    .line 203
    .local v6, "originalExceptionEntity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    move-object v7, v6

    .line 204
    .local v7, "exceptionEntity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "type"

    invoke-interface {v7, v9, v8}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->convertStackTrace([Ljava/lang/StackTraceElement;)[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v8

    const-string v10, "stackTrace"

    invoke-interface {v7, v10, v8}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 207
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 208
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 209
    iget-object v8, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    invoke-interface {v8}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;->createObject()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v8

    .line 210
    .local v8, "causingExceptionEntity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->convertStackTrace([Ljava/lang/StackTraceElement;)[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 213
    const-string v11, "cause"

    invoke-interface {v7, v11, v8}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 214
    move-object v7, v8

    .line 215
    .end local v8    # "causingExceptionEntity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    goto :goto_3

    .line 217
    :cond_4
    invoke-interface {p2, v5, v6}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 220
    .end local v6    # "originalExceptionEntity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    .end local v7    # "exceptionEntity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    :goto_4
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v2

    .line 221
    .local v2, "contextMap":Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    const-string v5, "contextMap"

    if-nez v2, :cond_5

    .line 222
    invoke-interface {p2, v5, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 224
    :cond_5
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    invoke-interface {v6}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;->createObject()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v6

    .line 225
    .local v6, "contextMapEntity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    new-instance v7, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$ykOGMiWJLui7MITPv4kqt5QEzFo;

    invoke-direct {v7, v6}, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$ykOGMiWJLui7MITPv4kqt5QEzFo;-><init>(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    invoke-interface {v2, v7}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V

    .line 226
    invoke-interface {p2, v5, v6}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 229
    .end local v6    # "contextMapEntity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    :goto_5
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v5

    .line 230
    .local v5, "contextStack":Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    const-string v6, "contextStack"

    if-nez v5, :cond_6

    .line 231
    invoke-interface {p2, v6, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 233
    :cond_6
    invoke-interface {v5}, Lorg/apache/logging/log4j/ThreadContext$ContextStack;->asList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v6, v1}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;->set(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :goto_6
    return-void
.end method

.method private setFields(Lorg/apache/logging/log4j/message/MapMessage;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mapMessage",
            "noSqlObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/message/MapMessage<",
            "**>;",
            "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<",
            "TW;>;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    .local p1, "mapMessage":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<**>;"
    .local p2, "noSqlObject":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$3z0wrnbnFoJ-69hY2XP8-VNQZVw;

    invoke-direct {v0, p2}, Lorg/apache/logging/log4j/core/appender/nosql/-$$Lambda$NoSqlDatabaseManager$3z0wrnbnFoJ-69hY2XP8-VNQZVw;-><init>(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/message/MapMessage;->forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V

    .line 240
    return-void
.end method


# virtual methods
.method protected commitAndClose()Z
    .locals 1

    .line 134
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected connectAndStart()V
    .locals 3

    .line 140
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->provider:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlProvider;->getConnection()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v2, "Failed to get connection from NoSQL connection provider."

    invoke-direct {v1, v2, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected shutdownInternal()Z
    .locals 1

    .line 245
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    move-result v0

    return v0
.end method

.method protected startupInternal()V
    .locals 0

    .line 251
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    return-void
.end method

.method protected writeInternal(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Serializable;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "serializable"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "serializable"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager<TW;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;->createObject()Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;

    move-result-object v0

    .line 260
    .local v0, "entity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    instance-of v1, p2, Lorg/apache/logging/log4j/message/MapMessage;

    if-eqz v1, :cond_0

    .line 261
    move-object v1, p2

    check-cast v1, Lorg/apache/logging/log4j/message/MapMessage;

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->setFields(Lorg/apache/logging/log4j/message/MapMessage;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->setFields(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 265
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->setAdditionalFields(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 266
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlDatabaseManager;->connection:Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/core/appender/nosql/NoSqlConnection;->insertObject(Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;)V

    .line 267
    return-void

    .line 256
    .end local v0    # "entity":Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject;, "Lorg/apache/logging/log4j/core/appender/nosql/NoSqlObject<TW;>;"
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v1, "Cannot write logging event; NoSQL manager not connected to the database."

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
