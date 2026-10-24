.class public Lcom/mega/update/sdk/impl/MegaMcuOtaUpdateImpl;
.super Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;
.source "MegaMcuOtaUpdateImpl.java"


# static fields
.field private static final ECU_NAME:Ljava/lang/String; = "mcu"

.field private static final TAG:Ljava/lang/String; = "MegaMcuOtaUpdateImpl"

.field private static final TOPIC_TAG:Ljava/lang/String; = "mcu"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    const-string v0, "mcu"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    return-void
.end method
