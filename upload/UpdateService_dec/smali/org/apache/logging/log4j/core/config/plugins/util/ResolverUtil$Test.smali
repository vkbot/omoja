.class public interface abstract Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil$Test;
.super Ljava/lang/Object;
.source "ResolverUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/plugins/util/ResolverUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Test"
.end annotation


# virtual methods
.method public abstract doesMatchClass()Z
.end method

.method public abstract doesMatchResource()Z
.end method

.method public abstract matches(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract matches(Ljava/net/URI;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource"
        }
    .end annotation
.end method
