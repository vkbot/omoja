.class public Landroid/net/IpConfiguration;
.super Ljava/lang/Object;
.source "IpConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpConfiguration$ProxySettings;,
        Landroid/net/IpConfiguration$IpAssignment;
    }
.end annotation


# instance fields
.field public httpProxy:Landroid/net/ProxyInfo;

.field public ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field public proxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field public staticIpConfiguration:Landroid/net/StaticIpConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;
    .param p2, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p3, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;
    .param p4, "httpProxy"    # Landroid/net/ProxyInfo;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/net/IpConfiguration;)V
    .locals 2
    .param p1, "source"    # Landroid/net/IpConfiguration;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .locals 2
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .locals 2
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .locals 2
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
