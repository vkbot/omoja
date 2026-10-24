.class final enum Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/macros/VBAMacroReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DIR_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

.field public static final enum INFORMATION_RECORD:Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

.field public static final enum MODULES_RECORD:Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

.field public static final enum REFERENCES_RECORD:Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    const-string v1, "INFORMATION_RECORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;->INFORMATION_RECORD:Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    new-instance v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    const-string v2, "REFERENCES_RECORD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;->REFERENCES_RECORD:Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    new-instance v2, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    const-string v3, "MODULES_RECORD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;->MODULES_RECORD:Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;->$VALUES:[Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;->$VALUES:[Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/macros/VBAMacroReader$DIR_STATE;

    return-object v0
.end method
