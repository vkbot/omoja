.class public final enum Lcom/mega/engineeringmode/function/mic/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/mic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mega/engineeringmode/function/mic/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic Z:[Lcom/mega/engineeringmode/function/mic/a$b;

.field public static final enum c:Lcom/mega/engineeringmode/function/mic/a$b;

.field public static final enum r:Lcom/mega/engineeringmode/function/mic/a$b;

.field public static final enum x:Lcom/mega/engineeringmode/function/mic/a$b;

.field public static final enum y:Lcom/mega/engineeringmode/function/mic/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/mega/engineeringmode/function/mic/a$b;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/engineeringmode/function/mic/a$b;->c:Lcom/mega/engineeringmode/function/mic/a$b;

    new-instance v1, Lcom/mega/engineeringmode/function/mic/a$b;

    const-string v2, "STARTRECORD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mega/engineeringmode/function/mic/a$b;->r:Lcom/mega/engineeringmode/function/mic/a$b;

    new-instance v2, Lcom/mega/engineeringmode/function/mic/a$b;

    const-string v3, "STOPRECORD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mega/engineeringmode/function/mic/a$b;->x:Lcom/mega/engineeringmode/function/mic/a$b;

    new-instance v3, Lcom/mega/engineeringmode/function/mic/a$b;

    const-string v4, "PLAY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mega/engineeringmode/function/mic/a$b;->y:Lcom/mega/engineeringmode/function/mic/a$b;

    filled-new-array {v0, v1, v2, v3}, [Lcom/mega/engineeringmode/function/mic/a$b;

    move-result-object v0

    sput-object v0, Lcom/mega/engineeringmode/function/mic/a$b;->Z:[Lcom/mega/engineeringmode/function/mic/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mega/engineeringmode/function/mic/a$b;
    .locals 1

    const-class v0, Lcom/mega/engineeringmode/function/mic/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mega/engineeringmode/function/mic/a$b;

    return-object p0
.end method

.method public static values()[Lcom/mega/engineeringmode/function/mic/a$b;
    .locals 1

    sget-object v0, Lcom/mega/engineeringmode/function/mic/a$b;->Z:[Lcom/mega/engineeringmode/function/mic/a$b;

    invoke-virtual {v0}, [Lcom/mega/engineeringmode/function/mic/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mega/engineeringmode/function/mic/a$b;

    return-object v0
.end method
