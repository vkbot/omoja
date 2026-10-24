.class public final enum Lorg/apache/poi/common/usermodel/HyperlinkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/HyperlinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/HyperlinkType;

.field public static final enum DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

.field public static final enum EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

.field public static final enum FILE:Lorg/apache/poi/common/usermodel/HyperlinkType;

.field public static final enum NONE:Lorg/apache/poi/common/usermodel/HyperlinkType;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end field

.field public static final enum URL:Lorg/apache/poi/common/usermodel/HyperlinkType;


# instance fields
.field private final code:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 3"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/common/usermodel/HyperlinkType;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/usermodel/HyperlinkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->NONE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v1, Lorg/apache/poi/common/usermodel/HyperlinkType;

    const-string v2, "URL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/poi/common/usermodel/HyperlinkType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v2, Lorg/apache/poi/common/usermodel/HyperlinkType;

    const-string v3, "DOCUMENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/common/usermodel/HyperlinkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v3, Lorg/apache/poi/common/usermodel/HyperlinkType;

    const-string v4, "EMAIL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/common/usermodel/HyperlinkType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v4, Lorg/apache/poi/common/usermodel/HyperlinkType;

    const-string v5, "FILE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/poi/common/usermodel/HyperlinkType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/common/usermodel/HyperlinkType;->FILE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->$VALUES:[Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 3"
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 1

    const-class v0, Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->$VALUES:[Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/HyperlinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 3"
    .end annotation

    iget p0, p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->code:I

    return p0
.end method
