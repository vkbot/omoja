.class public final enum Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/ObjectMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

.field public static final enum CUSTOM:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

.field public static final enum EXCEL_V12:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

.field public static final enum EXCEL_V8:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

.field public static final enum PDF:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

.field public static final enum WORD_V12:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

.field public static final enum WORD_V8:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;


# instance fields
.field classId:Lorg/apache/poi/hpsf/ClassID;

.field objectName:Ljava/lang/String;

.field oleEntry:Ljava/lang/String;

.field progId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v7, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    const-string v1, "EXCEL_V8"

    const/4 v2, 0x0

    const-string v3, "Worksheet"

    const-string v4, "Excel.Sheet.8"

    const-string v5, "Package"

    sget-object v6, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/hpsf/ClassIDPredefined;)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->EXCEL_V8:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    new-instance v1, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    const-string v9, "EXCEL_V12"

    const/4 v10, 0x1

    const-string v11, "Worksheet"

    const-string v12, "Excel.Sheet.12"

    const-string v13, "Package"

    sget-object v14, Lorg/apache/poi/hpsf/ClassIDPredefined;->EXCEL_V12:Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/hpsf/ClassIDPredefined;)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->EXCEL_V12:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    new-instance v2, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    const-string v16, "WORD_V8"

    const/16 v17, 0x2

    const-string v18, "Document"

    const-string v19, "Word.Document.8"

    const-string v20, "Package"

    sget-object v21, Lorg/apache/poi/hpsf/ClassIDPredefined;->WORD_V8:Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/hpsf/ClassIDPredefined;)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->WORD_V8:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    new-instance v3, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    const-string v9, "WORD_V12"

    const/4 v10, 0x3

    const-string v11, "Document"

    const-string v12, "Word.Document.12"

    const-string v13, "Package"

    sget-object v14, Lorg/apache/poi/hpsf/ClassIDPredefined;->WORD_V12:Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/hpsf/ClassIDPredefined;)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->WORD_V12:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    new-instance v4, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    const-string v16, "PDF"

    const/16 v17, 0x4

    const-string v18, "PDF"

    const-string v19, "AcroExch.Document"

    const-string v20, "Contents"

    sget-object v21, Lorg/apache/poi/hpsf/ClassIDPredefined;->PDF:Lorg/apache/poi/hpsf/ClassIDPredefined;

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/hpsf/ClassIDPredefined;)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->PDF:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    new-instance v5, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    const-string v9, "CUSTOM"

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/hpsf/ClassIDPredefined;)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->CUSTOM:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->$VALUES:[Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/hpsf/ClassIDPredefined;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hpsf/ClassIDPredefined;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->objectName:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->progId:Ljava/lang/String;

    if-nez p6, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->classId:Lorg/apache/poi/hpsf/ClassID;

    iput-object p5, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->oleEntry:Ljava/lang/String;

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->values()[Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->progId:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->$VALUES:[Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    return-object v0
.end method


# virtual methods
.method public getMetaData()Lorg/apache/poi/sl/usermodel/ObjectMetaData;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application$1;-><init>(Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;)V

    return-object v0
.end method
