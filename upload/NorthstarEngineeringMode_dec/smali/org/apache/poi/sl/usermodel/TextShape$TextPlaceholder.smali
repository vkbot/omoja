.class public final enum Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/TextShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextPlaceholder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

.field public static final enum BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

.field public static final enum CENTER_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

.field public static final enum CENTER_TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

.field public static final enum HALF_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

.field public static final enum NOTES:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

.field public static final enum OTHER:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

.field public static final enum QUARTER_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

.field public static final enum TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;


# instance fields
.field public final nativeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    new-instance v1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    const-string v2, "BODY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    new-instance v2, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    const-string v3, "CENTER_TITLE"

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    new-instance v3, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    const-string v6, "CENTER_BODY"

    const/4 v7, 0x3

    const/4 v8, 0x5

    invoke-direct {v3, v6, v7, v8}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    new-instance v6, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    const-string v7, "HALF_BODY"

    const/4 v9, 0x4

    const/4 v10, 0x7

    invoke-direct {v6, v7, v9, v10}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->HALF_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    new-instance v7, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    const-string v11, "QUARTER_BODY"

    const/16 v12, 0x8

    invoke-direct {v7, v11, v8, v12}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->QUARTER_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    new-instance v8, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    const-string v11, "NOTES"

    invoke-direct {v8, v11, v5, v4}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->NOTES:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    new-instance v11, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    const-string v4, "OTHER"

    invoke-direct {v11, v4, v10, v9}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->OTHER:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v11

    filled-new-array/range {v0 .. v7}, [Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->$VALUES:[Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

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

    iput p3, p0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    return-void
.end method

.method public static fromNativeId(I)Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->values()[Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isTitle(I)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget v0, v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget v0, v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->$VALUES:[Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    return-object v0
.end method
