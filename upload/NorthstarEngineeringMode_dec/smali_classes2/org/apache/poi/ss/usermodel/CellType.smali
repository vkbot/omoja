.class public final enum Lorg/apache/poi/ss/usermodel/CellType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/CellType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum BLANK:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum ERROR:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum STRING:Lorg/apache/poi/ss/usermodel/CellType;

.field public static final enum _NONE:Lorg/apache/poi/ss/usermodel/CellType;
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "POI 3.15 beta 3"
    .end annotation
.end field


# instance fields
.field private final code:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v1, -0x1

    const-string v2, "_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/CellType;->_NONE:Lorg/apache/poi/ss/usermodel/CellType;

    new-instance v1, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v2, "NUMERIC"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    new-instance v2, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v3, "STRING"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    new-instance v3, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v4, "FORMULA"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    new-instance v4, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v5, "BLANK"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    new-instance v5, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v6, "BOOLEAN"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    new-instance v6, Lorg/apache/poi/ss/usermodel/CellType;

    const-string v7, "ERROR"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lorg/apache/poi/ss/usermodel/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    filled-new-array/range {v0 .. v6}, [Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/CellType;->$VALUES:[Lorg/apache/poi/ss/usermodel/CellType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ss/usermodel/CellType;->code:I

    return-void
.end method

.method public static forInt(I)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/poi/ss/usermodel/CellType;->values()[Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/ss/usermodel/CellType;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid CellType code: "

    invoke-static {v1, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->$VALUES:[Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/CellType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lorg/apache/poi/ss/usermodel/CellType;->code:I

    return p0
.end method
