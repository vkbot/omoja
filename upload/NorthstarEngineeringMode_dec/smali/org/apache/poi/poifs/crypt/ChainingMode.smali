.class public final enum Lorg/apache/poi/poifs/crypt/ChainingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/crypt/ChainingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/ChainingMode;

.field public static final enum cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field public static final enum cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field public static final enum ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;


# instance fields
.field public final ecmaId:I

.field public final jceId:Ljava/lang/String;

.field public final xmlId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lorg/apache/poi/poifs/crypt/ChainingMode;

    const-string v1, "ecb"

    const/4 v2, 0x0

    const-string v3, "ECB"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/ChainingMode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    new-instance v0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    const-string v8, "cbc"

    const/4 v9, 0x1

    const-string v10, "CBC"

    const/4 v11, 0x2

    const-string v12, "ChainingModeCBC"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/poifs/crypt/ChainingMode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    new-instance v1, Lorg/apache/poi/poifs/crypt/ChainingMode;

    const-string v14, "cfb"

    const/4 v15, 0x2

    const-string v16, "CFB8"

    const/16 v17, 0x3

    const-string v18, "ChainingModeCFB"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/poifs/crypt/ChainingMode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    filled-new-array {v6, v0, v1}, [Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->$VALUES:[Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/ChainingMode;->jceId:Ljava/lang/String;

    iput p4, p0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    iput-object p5, p0, Lorg/apache/poi/poifs/crypt/ChainingMode;->xmlId:Ljava/lang/String;

    return-void
.end method

.method public static fromXmlId(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 5

    invoke-static {}, Lorg/apache/poi/poifs/crypt/ChainingMode;->values()[Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/poifs/crypt/ChainingMode;->xmlId:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->$VALUES:[Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/ChainingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object v0
.end method
