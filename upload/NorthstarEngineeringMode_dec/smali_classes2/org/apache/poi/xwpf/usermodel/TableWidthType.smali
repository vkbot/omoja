.class public final enum Lorg/apache/poi/xwpf/usermodel/TableWidthType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/TableWidthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/TableWidthType;

.field public static final enum AUTO:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

.field public static final enum DXA:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

.field public static final enum NIL:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

.field public static final enum PCT:Lorg/apache/poi/xwpf/usermodel/TableWidthType;


# instance fields
.field private type:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    const/4 v1, 0x0

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    const-string v3, "AUTO"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xwpf/usermodel/TableWidthType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->AUTO:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    const/4 v2, 0x1

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->DXA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    const-string v4, "DXA"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/xwpf/usermodel/TableWidthType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->DXA:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    const/4 v3, 0x2

    sget-object v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->NIL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    const-string v5, "NIL"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/xwpf/usermodel/TableWidthType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    sput-object v2, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->NIL:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    const/4 v4, 0x3

    sget-object v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->PCT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    const-string v6, "PCT"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/xwpf/usermodel/TableWidthType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    sput-object v3, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->PCT:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iput-object p3, p0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->type:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/TableWidthType;
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/TableWidthType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/TableWidthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    return-object v0
.end method


# virtual methods
.method public getStWidthType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->type:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    return-object p0
.end method
