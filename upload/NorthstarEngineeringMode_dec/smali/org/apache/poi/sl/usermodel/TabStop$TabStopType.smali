.class public final enum Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/TabStop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabStopType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

.field public static final enum CENTER:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

.field public static final enum DECIMAL:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

.field public static final enum LEFT:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

.field public static final enum RIGHT:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;


# instance fields
.field public final nativeId:I

.field public final ooxmlId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->LEFT:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    new-instance v1, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    const-string v2, "CENTER"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v3, v4}, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->CENTER:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    new-instance v2, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    const-string v3, "RIGHT"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v4, v5}, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->RIGHT:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    new-instance v3, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    const-string v4, "DECIMAL"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v5, v6}, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->DECIMAL:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->$VALUES:[Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->nativeId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->ooxmlId:I

    return-void
.end method

.method public static fromNativeId(I)Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->values()[Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->values()[Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->$VALUES:[Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    return-object v0
.end method
