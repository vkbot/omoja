.class public final enum Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xwpf/usermodel/XWPFRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontCharRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

.field public static final enum ascii:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

.field public static final enum cs:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

.field public static final enum eastAsia:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

.field public static final enum hAnsi:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    const-string v1, "ascii"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->ascii:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    const-string v2, "cs"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->cs:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    const-string v3, "eastAsia"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->eastAsia:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    const-string v4, "hAnsi"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->hAnsi:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    return-object v0
.end method
