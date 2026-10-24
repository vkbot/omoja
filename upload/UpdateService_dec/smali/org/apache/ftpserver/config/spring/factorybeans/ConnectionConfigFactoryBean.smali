.class public Lorg/apache/ftpserver/config/spring/factorybeans/ConnectionConfigFactoryBean;
.super Lorg/apache/ftpserver/ConnectionConfigFactory;
.source "ConnectionConfigFactoryBean.java"

# interfaces
.implements Lorg/springframework/beans/factory/FactoryBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/ftpserver/ConnectionConfigFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lorg/apache/ftpserver/config/spring/factorybeans/ConnectionConfigFactoryBean;->createConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getObjectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 41
    const-class v0, Lorg/apache/ftpserver/ConnectionConfig;

    return-object v0
.end method

.method public isSingleton()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method
