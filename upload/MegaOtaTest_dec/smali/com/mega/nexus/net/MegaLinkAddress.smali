.class public Lcom/mega/nexus/net/MegaLinkAddress;
.super Ljava/lang/Object;
.source "MegaLinkAddress.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/net/InetAddress;I)Landroid/net/LinkAddress;
    .locals 1
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .line 10
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method
