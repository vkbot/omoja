.class public final enum Lorg/apache/poi/ss/usermodel/FormulaError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/FormulaError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum CIRCULAR_REF:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NA:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum REF:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum _NO_ERROR:Lorg/apache/poi/ss/usermodel/FormulaError;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end field

.field private static final bmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            ">;"
        }
    .end annotation
.end field

.field private static final imap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            ">;"
        }
    .end annotation
.end field

.field private static final smap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final longType:I

.field private final repr:Ljava/lang/String;

.field private final type:B


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/4 v1, -0x1

    const-string v2, "(no error)"

    const-string v3, "_NO_ERROR"

    const/4 v10, 0x0

    invoke-direct {v0, v3, v10, v1, v2}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->_NO_ERROR:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v1, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/4 v2, 0x1

    const-string v3, "#NULL!"

    const-string v4, "NULL"

    invoke-direct {v1, v4, v2, v10, v3}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v2, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v3, "#DIV/0!"

    const-string v4, "DIV0"

    const/4 v5, 0x2

    const/4 v6, 0x7

    invoke-direct {v2, v4, v5, v6, v3}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v3, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v4, 0xf

    const-string v5, "#VALUE!"

    const-string v7, "VALUE"

    const/4 v8, 0x3

    invoke-direct {v3, v7, v8, v4, v5}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v4, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v5, 0x17

    const-string v7, "#REF!"

    const-string v8, "REF"

    const/4 v9, 0x4

    invoke-direct {v4, v8, v9, v5, v7}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v5, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v7, 0x1d

    const-string v8, "#NAME?"

    const-string v9, "NAME"

    const/4 v11, 0x5

    invoke-direct {v5, v9, v11, v7, v8}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v7, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v8, 0x24

    const-string v9, "#NUM!"

    const-string v11, "NUM"

    const/4 v12, 0x6

    invoke-direct {v7, v11, v12, v8, v9}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v8, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v9, 0x2a

    const-string v11, "#N/A"

    const-string v12, "NA"

    invoke-direct {v8, v12, v6, v9, v11}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v9, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v6, -0x3c

    const-string v11, "~CIRCULAR~REF~"

    const-string v12, "CIRCULAR_REF"

    const/16 v13, 0x8

    invoke-direct {v9, v12, v13, v6, v11}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/FormulaError;->CIRCULAR_REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v11, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v6, -0x1e

    const-string v12, "~FUNCTION~NOT~IMPLEMENTED~"

    const-string v13, "FUNCTION_NOT_IMPLEMENTED"

    const/16 v14, 0x9

    invoke-direct {v11, v13, v14, v6, v12}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/FormulaError;->FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/usermodel/FormulaError;

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    filled-new-array/range {v0 .. v9}, [Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->$VALUES:[Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->smap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->imap:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/ss/usermodel/FormulaError;->values()[Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v10, v1, :cond_0

    aget-object v2, v0, v10

    sget-object v3, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/poi/ss/usermodel/FormulaError;->imap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/FormulaError;->getLongCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/poi/ss/usermodel/FormulaError;->smap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->type:B

    iput p3, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->longType:I

    iput-object p4, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->repr:Ljava/lang/String;

    return-void
.end method

.method public static forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    .line 1
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown error type: "

    .line 3
    invoke-static {v1, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->imap:Ljava/util/Map;

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    int-to-byte v1, p0

    .line 14
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown error type: "

    .line 16
    invoke-static {v1, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->smap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown error code: "

    invoke-static {v1, p0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isValidCode(I)Z
    .locals 7

    invoke-static {}, Lorg/apache/poi/ss/usermodel/FormulaError;->values()[Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v5

    const/4 v6, 0x1

    if-ne v5, p0, :cond_0

    return v6

    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/ss/usermodel/FormulaError;->getLongCode()I

    move-result v4

    if-ne v4, p0, :cond_1

    return v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/FormulaError;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->$VALUES:[Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/FormulaError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/FormulaError;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->type:B

    return p0
.end method

.method public getLongCode()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->longType:I

    return p0
.end method

.method public getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->repr:Ljava/lang/String;

    return-object p0
.end method
