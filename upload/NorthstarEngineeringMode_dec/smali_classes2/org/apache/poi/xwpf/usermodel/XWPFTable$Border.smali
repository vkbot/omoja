.class final enum Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xwpf/usermodel/XWPFTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Border"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

.field public static final enum BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

.field public static final enum INSIDE_H:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

.field public static final enum INSIDE_V:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

.field public static final enum LEFT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

.field public static final enum RIGHT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

.field public static final enum TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    const-string v1, "INSIDE_V"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_V:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    const-string v2, "INSIDE_H"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_H:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    const-string v3, "LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->LEFT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    const-string v4, "TOP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    const-string v5, "BOTTOM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    const-string v6, "RIGHT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->RIGHT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    return-object v0
.end method
