.class public final enum Lz4/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz4/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lz4/e$a;

.field public static final synthetic r:[Lz4/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lz4/e$a;

    const-string v1, "MULTIPLICATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz4/e$a;->c:Lz4/e$a;

    new-instance v1, Lz4/e$a;

    const-string v2, "ADDITIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1}, [Lz4/e$a;

    move-result-object v0

    sput-object v0, Lz4/e$a;->r:[Lz4/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lz4/e$a;
    .locals 1

    const-class v0, Lz4/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz4/e$a;

    return-object p0
.end method

.method public static values()[Lz4/e$a;
    .locals 1

    sget-object v0, Lz4/e$a;->r:[Lz4/e$a;

    invoke-virtual {v0}, [Lz4/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz4/e$a;

    return-object v0
.end method
