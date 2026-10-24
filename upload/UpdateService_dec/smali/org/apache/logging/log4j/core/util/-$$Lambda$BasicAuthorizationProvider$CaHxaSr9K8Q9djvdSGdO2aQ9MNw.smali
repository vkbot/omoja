.class public final synthetic Lorg/apache/logging/log4j/core/util/-$$Lambda$BasicAuthorizationProvider$CaHxaSr9K8Q9djvdSGdO2aQ9MNw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/logging/log4j/util/PropertiesUtil;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/util/PropertiesUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/-$$Lambda$BasicAuthorizationProvider$CaHxaSr9K8Q9djvdSGdO2aQ9MNw;->f$0:Lorg/apache/logging/log4j/util/PropertiesUtil;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/-$$Lambda$BasicAuthorizationProvider$CaHxaSr9K8Q9djvdSGdO2aQ9MNw;->f$0:Lorg/apache/logging/log4j/util/PropertiesUtil;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/BasicAuthorizationProvider;->lambda$new$1(Lorg/apache/logging/log4j/util/PropertiesUtil;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
