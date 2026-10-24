.class public final enum Lorg/apache/poi/ss/usermodel/CellReferenceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/CellReferenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/CellReferenceType;

.field public static final enum A1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

.field public static final enum R1C1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

.field public static final enum UNKNOWN:Lorg/apache/poi/ss/usermodel/CellReferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/ss/usermodel/CellReferenceType;

    const-string v1, "A1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/CellReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->A1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    new-instance v1, Lorg/apache/poi/ss/usermodel/CellReferenceType;

    const-string v2, "R1C1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/usermodel/CellReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/CellReferenceType;->R1C1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    new-instance v2, Lorg/apache/poi/ss/usermodel/CellReferenceType;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/usermodel/CellReferenceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/CellReferenceType;->UNKNOWN:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/ss/usermodel/CellReferenceType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->$VALUES:[Lorg/apache/poi/ss/usermodel/CellReferenceType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/CellReferenceType;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/CellReferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/CellReferenceType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/CellReferenceType;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->$VALUES:[Lorg/apache/poi/ss/usermodel/CellReferenceType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/CellReferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/CellReferenceType;

    return-object v0
.end method
