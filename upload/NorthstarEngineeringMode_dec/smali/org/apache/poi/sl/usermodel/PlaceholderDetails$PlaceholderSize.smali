.class public final enum Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/PlaceholderDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaceholderSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

.field public static final enum full:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

.field public static final enum half:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

.field public static final enum quarter:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    const-string/jumbo v1, "quarter"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->quarter:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    new-instance v1, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    const-string v2, "half"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->half:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    new-instance v2, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    const-string v3, "full"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->full:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->$VALUES:[Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->$VALUES:[Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    return-object v0
.end method
