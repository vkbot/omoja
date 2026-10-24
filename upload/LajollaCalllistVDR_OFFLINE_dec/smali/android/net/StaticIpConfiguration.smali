.class public Landroid/net/StaticIpConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dnsServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public domains:Ljava/lang/String;

.field public gateway:Ljava/net/InetAddress;

.field public ipAddress:Landroid/net/LinkAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/net/StaticIpConfiguration;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
