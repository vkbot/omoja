.class public final enum Lorg/apache/poi/ss/usermodel/ReadingOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/ReadingOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/ReadingOrder;

.field public static final enum CONTEXT:Lorg/apache/poi/ss/usermodel/ReadingOrder;

.field public static final enum LEFT_TO_RIGHT:Lorg/apache/poi/ss/usermodel/ReadingOrder;

.field public static final enum RIGHT_TO_LEFT:Lorg/apache/poi/ss/usermodel/ReadingOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/ss/usermodel/ReadingOrder;

    const-string v1, "CONTEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ReadingOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ReadingOrder;->CONTEXT:Lorg/apache/poi/ss/usermodel/ReadingOrder;

    new-instance v1, Lorg/apache/poi/ss/usermodel/ReadingOrder;

    const-string v2, "LEFT_TO_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/usermodel/ReadingOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/ReadingOrder;->LEFT_TO_RIGHT:Lorg/apache/poi/ss/usermodel/ReadingOrder;

    new-instance v2, Lorg/apache/poi/ss/usermodel/ReadingOrder;

    const-string v3, "RIGHT_TO_LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/usermodel/ReadingOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/ReadingOrder;->RIGHT_TO_LEFT:Lorg/apache/poi/ss/usermodel/ReadingOrder;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/ss/usermodel/ReadingOrder;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/ReadingOrder;->$VALUES:[Lorg/apache/poi/ss/usermodel/ReadingOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forLong(J)Lorg/apache/poi/ss/usermodel/ReadingOrder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/ss/usermodel/ReadingOrder;->values()[Lorg/apache/poi/ss/usermodel/ReadingOrder;

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/ss/usermodel/ReadingOrder;->values()[Lorg/apache/poi/ss/usermodel/ReadingOrder;

    move-result-object v0

    long-to-int p0, p0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ReadingOrder code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ReadingOrder;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/ReadingOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/ReadingOrder;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/ReadingOrder;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/ReadingOrder;->$VALUES:[Lorg/apache/poi/ss/usermodel/ReadingOrder;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/ReadingOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/ReadingOrder;

    return-object v0
.end method


# virtual methods
.method public getCode()S
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method
