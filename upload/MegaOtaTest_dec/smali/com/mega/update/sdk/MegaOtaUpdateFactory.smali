.class public final enum Lcom/mega/update/sdk/MegaOtaUpdateFactory;
.super Ljava/lang/Enum;
.source "MegaOtaUpdateFactory.java"


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

.field public static final SDK_VERSION:Ljava/lang/String; = "2.0.5"

.field public static final TAG:Ljava/lang/String; = "mega_ota_2.0"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mega/update/sdk/MegaOtaUpdateFactory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->INSTANCE:Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    .line 13
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    aput-object v0, v1, v2

    sput-object v1, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->$VALUES:[Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mega/update/sdk/MegaOtaUpdateFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    return-object v0
.end method

.method public static values()[Lcom/mega/update/sdk/MegaOtaUpdateFactory;
    .locals 1

    .line 13
    sget-object v0, Lcom/mega/update/sdk/MegaOtaUpdateFactory;->$VALUES:[Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    invoke-virtual {v0}, [Lcom/mega/update/sdk/MegaOtaUpdateFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mega/update/sdk/MegaOtaUpdateFactory;

    return-object v0
.end method


# virtual methods
.method public obtainApaUpdater(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const-string v0, "mega_ota_2.0"

    const-string v1, " MegaOtaUpdateFactory libmega_ota_sdk version = 2.0.5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/mega/update/sdk/impl/MegaApaOtaUpdateImpl;

    invoke-direct {v0, p1}, Lcom/mega/update/sdk/impl/MegaApaOtaUpdateImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public obtainDisplayUpdater(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const-string v0, "mega_ota_2.0"

    const-string v1, " MegaOtaUpdateFactory libmega_ota_sdk version = 2.0.5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;

    invoke-direct {v0, p1}, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public obtainDisplayUpdater(Landroid/content/Context;Ljava/lang/String;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 30
    const-string v0, "mega_ota_2.0"

    const-string v1, " MegaOtaUpdateFactory libmega_ota_sdk version = 2.0.5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;

    invoke-direct {v0, p1, p2}, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public obtainDmcAssistor(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaAssistInterface;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    const-string v0, "mega_ota_2.0"

    const-string v1, " MegaOtaUpdateFactory libmega_ota_sdk version = 2.0.5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-direct {v0, p1}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public obtainDmcUpdater(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    const-string v0, "mega_ota_2.0"

    const-string v1, " MegaOtaUpdateFactory libmega_ota_sdk version = 2.0.5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-direct {v0, p1}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public obtainMcuUpdater(Landroid/content/Context;)Lcom/mega/update/sdk/MegaOtaUpdateInterface;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const-string v0, "mega_ota_2.0"

    const-string v1, " MegaOtaUpdateFactory libmega_ota_sdk version = 2.0.5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/mega/update/sdk/impl/MegaMcuOtaUpdateImpl;

    invoke-direct {v0, p1}, Lcom/mega/update/sdk/impl/MegaMcuOtaUpdateImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
