.class public final enum Lorg/apache/poi/wp/usermodel/HeaderFooterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/wp/usermodel/HeaderFooterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

.field public static final enum DEFAULT:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

.field public static final enum EVEN:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

.field public static final enum FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->DEFAULT:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    new-instance v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    const-string v2, "EVEN"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->EVEN:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    new-instance v2, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    const-string v4, "FIRST"

    const/4 v5, 0x3

    invoke-direct {v2, v4, v3, v5}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->$VALUES:[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

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

    iput p3, p0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->code:I

    return-void
.end method

.method public static forInt(I)Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->values()[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid HeaderFooterType code: "

    invoke-static {v1, p0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    .locals 1

    const-class v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    .locals 1

    sget-object v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->$VALUES:[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    invoke-virtual {v0}, [Lorg/apache/poi/wp/usermodel/HeaderFooterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->code:I

    return p0
.end method
