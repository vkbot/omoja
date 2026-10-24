.class public final enum Lv3/a0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv3/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lv3/a0;

.field public static final synthetic r:[Lv3/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lv3/a0;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv3/a0;->c:Lv3/a0;

    new-instance v1, Lv3/a0;

    const-string v2, "LAZY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lv3/a0;

    const-string v3, "ATOMIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lv3/a0;

    const-string v4, "UNDISPATCHED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3}, [Lv3/a0;

    move-result-object v0

    sput-object v0, Lv3/a0;->r:[Lv3/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lv3/a0;
    .locals 1

    const-class v0, Lv3/a0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv3/a0;

    return-object p0
.end method

.method public static values()[Lv3/a0;
    .locals 1

    sget-object v0, Lv3/a0;->r:[Lv3/a0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv3/a0;

    return-object v0
.end method
