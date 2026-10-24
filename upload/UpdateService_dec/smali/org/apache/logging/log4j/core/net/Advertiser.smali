.class public interface abstract Lorg/apache/logging/log4j/core/net/Advertiser;
.super Ljava/lang/Object;
.source "Advertiser.java"


# virtual methods
.method public abstract advertise(Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract unadvertise(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "advertisedObject"
        }
    .end annotation
.end method
