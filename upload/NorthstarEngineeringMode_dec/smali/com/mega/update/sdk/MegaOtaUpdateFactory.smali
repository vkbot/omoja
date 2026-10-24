.class public final enum Lcom/mega/update/sdk/MegaOtaUpdateFactory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mega/update/sdk/MegaOtaUpdateFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mega/update/sdk/MegaOtaUpdateFactory;

.field public static final enum INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    filled-new-array {v0}, [Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    move-result-object v0

    sput-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->$VALUES:[Lcom/mega/update/sdk/MegaOtaUpdateFactory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mega/update/sdk/MegaOtaUpdateFactory;
    .locals 1

    const-class v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    return-object p0
.end method

.method public static values()[Lcom/mega/update/sdk/MegaOtaUpdateFactory;
    .locals 1

    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->$VALUES:[Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    invoke-virtual {v0}, [Lcom/mega/update/sdk/MegaOtaUpdateFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    return-object v0
.end method


# virtual methods
.method public obtainDmcUpdater(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;
    .locals 0

    new-instance p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-direct {p0, p1}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
