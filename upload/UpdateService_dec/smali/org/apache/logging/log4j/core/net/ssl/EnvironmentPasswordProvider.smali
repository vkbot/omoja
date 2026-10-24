.class Lorg/apache/logging/log4j/core/net/ssl/EnvironmentPasswordProvider;
.super Ljava/lang/Object;
.source "EnvironmentPasswordProvider.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/net/ssl/PasswordProvider;


# instance fields
.field private final passwordEnvironmentVariable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "passwordEnvironmentVariable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "passwordEnvironmentVariable"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "passwordEnvironmentVariable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/EnvironmentPasswordProvider;->passwordEnvironmentVariable:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getPassword()[C
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/ssl/EnvironmentPasswordProvider;->passwordEnvironmentVariable:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "password":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    return-object v1
.end method
