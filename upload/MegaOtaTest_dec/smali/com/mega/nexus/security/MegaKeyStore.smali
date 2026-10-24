.class public Lcom/mega/nexus/security/MegaKeyStore;
.super Ljava/lang/Object;
.source "MegaKeyStore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 8
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
