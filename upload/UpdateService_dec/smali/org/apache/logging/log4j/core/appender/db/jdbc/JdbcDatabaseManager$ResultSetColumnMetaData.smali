.class final Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;
.super Ljava/lang/Object;
.source "JdbcDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultSetColumnMetaData"
.end annotation


# instance fields
.field private final catalogName:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final displaySize:I

.field private final isStringType:Z

.field private final label:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final nameKey:Ljava/lang/String;

.field private final precision:I

.field private final scale:I

.field private final schemaName:Ljava/lang/String;

.field private final tableName:Ljava/lang/String;

.field private final type:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "schemaName"    # Ljava/lang/String;
    .param p2, "catalogName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "displaySize"    # I
    .param p7, "type"    # I
    .param p8, "typeName"    # Ljava/lang/String;
    .param p9, "className"    # Ljava/lang/String;
    .param p10, "precision"    # I
    .param p11, "scale"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "schemaName",
            "catalogName",
            "tableName",
            "name",
            "label",
            "displaySize",
            "type",
            "typeName",
            "className",
            "precision",
            "scale"
        }
    .end annotation

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->schemaName:Ljava/lang/String;

    .line 249
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->catalogName:Ljava/lang/String;

    .line 250
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->tableName:Ljava/lang/String;

    .line 251
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->name:Ljava/lang/String;

    .line 252
    invoke-static {p4}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->nameKey:Ljava/lang/String;

    .line 253
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->label:Ljava/lang/String;

    .line 254
    iput p6, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->displaySize:I

    .line 255
    iput p7, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->type:I

    .line 256
    iput-object p8, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->typeName:Ljava/lang/String;

    .line 257
    iput-object p9, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->className:Ljava/lang/String;

    .line 258
    iput p10, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->precision:I

    .line 259
    iput p11, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->scale:I

    .line 262
    const/4 v0, 0x1

    if-eq p7, v0, :cond_1

    const/16 v1, -0x10

    if-eq p7, v1, :cond_1

    const/4 v1, -0x1

    if-eq p7, v1, :cond_1

    const/16 v1, -0x9

    if-eq p7, v1, :cond_1

    const/16 v1, 0xc

    if-ne p7, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->isStringType:Z

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSetMetaData;I)V
    .locals 12
    .param p1, "rsMetaData"    # Ljava/sql/ResultSetMetaData;
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "rsMetaData",
            "j"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 231
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getSchemaName(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getCatalogName(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v6

    .line 237
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v7

    .line 238
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnTypeName(I)Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnClassName(I)Ljava/lang/String;

    move-result-object v9

    .line 240
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v10

    .line 241
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v11

    .line 231
    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    .line 243
    return-void
.end method


# virtual methods
.method public getCatalogName()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->catalogName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 1

    .line 280
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->displaySize:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameKey()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->nameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()I
    .locals 1

    .line 296
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->precision:I

    return v0
.end method

.method public getScale()I
    .locals 1

    .line 300
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->scale:I

    return v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->schemaName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 312
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->type:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public isStringType()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->isStringType:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 325
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->schemaName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->catalogName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->tableName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->name:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->nameKey:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->label:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->displaySize:I

    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->typeName:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->className:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->precision:I

    .line 328
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->scale:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->isStringType:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 325
    const-string v1, "ColumnMetaData [schemaName=%s, catalogName=%s, tableName=%s, name=%s, nameKey=%s, label=%s, displaySize=%s, type=%s, typeName=%s, className=%s, precision=%s, scale=%s, isStringType=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "string"
        }
    .end annotation

    .line 332
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/JdbcDatabaseManager$ResultSetColumnMetaData;->precision:I

    if-lez v0, :cond_0

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/util/Strings;->left(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method
