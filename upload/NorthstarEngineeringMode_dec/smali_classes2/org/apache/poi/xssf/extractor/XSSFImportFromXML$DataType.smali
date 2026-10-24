.class final enum Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/extractor/XSSFImportFromXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

.field public static final enum BOOLEAN:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

.field public static final enum DATE:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

.field public static final enum DOUBLE:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

.field public static final enum INTEGER:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

.field public static final enum STRING:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;


# instance fields
.field private xmlDataTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    const-string v1, "boolean"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->BOOLEAN:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-instance v1, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    const-string v2, "double"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "DOUBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->DOUBLE:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-instance v2, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    const-string v3, "unsignedInt"

    const-string v4, "integer"

    const-string v5, "int"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "INTEGER"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v2, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->INTEGER:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-instance v3, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    const-string v4, "string"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "STRING"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v3, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->STRING:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    new-instance v4, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    const-string v5, "date"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "DATE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v4, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->DATE:Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->$VALUES:[Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->xmlDataTypes:Ljava/util/Set;

    return-void
.end method

.method public static getDataType(Ljava/lang/String;)Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->values()[Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->xmlDataTypes:Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->$VALUES:[Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    invoke-virtual {v0}, [Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xssf/extractor/XSSFImportFromXML$DataType;

    return-object v0
.end method
